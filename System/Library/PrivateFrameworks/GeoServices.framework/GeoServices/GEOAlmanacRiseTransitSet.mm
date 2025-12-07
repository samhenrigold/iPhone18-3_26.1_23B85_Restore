@interface GEOAlmanacRiseTransitSet
- (BOOL)isIdeal;
- (NSDate)rise;
- (NSDate)set;
- (NSDate)transit;
- (_GEORiseTransitSetEvent)firstItem;
- (_GEORiseTransitSetEvent)lastItem;
- (id).cxx_construct;
- (id)description;
@end

@implementation GEOAlmanacRiseTransitSet

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@: %p> {\n", v5, self];

  v6 = StringFromGEOSolarEventType(self->_rise.type);
  [string appendFormat:@"  %@: %f\n", v6, *&self->_rise.JD];

  v7 = StringFromGEOSolarEventType(self->_transit.type);
  [string appendFormat:@"  %@: %f\n", v7, *&self->_transit.JD];

  v8 = StringFromGEOSolarEventType(self->_set.type);
  [string appendFormat:@"  %@: %f\n", v8, *&self->_set.JD];

  [string appendString:@"}"];

  return string;
}

- (id).cxx_construct
{
  *(self + 1) = 0xBFF0000000000000;
  *(self + 4) = -1;
  *(self + 3) = 0xBFF0000000000000;
  *(self + 8) = -1;
  *(self + 5) = 0xBFF0000000000000;
  *(self + 12) = -1;
  return self;
}

- (_GEORiseTransitSetEvent)firstItem
{
  p_transit = &self->_transit;
  JD = self->_transit.JD;
  v4 = 1.79769313e308;
  if (self->_rise.JD <= 0.0)
  {
    v5 = 1.79769313e308;
  }

  else
  {
    v5 = self->_rise.JD;
  }

  if (JD <= 0.0)
  {
    JD = 1.79769313e308;
  }

  if (self->_set.JD > 0.0)
  {
    v4 = self->_set.JD;
  }

  if (v5 < JD && v5 < v4)
  {
    v8 = self->_rise.JD;
    v7 = 16;
  }

  else
  {
    v7 = 48;
    if (JD < v5 && JD < v4)
    {
      v7 = 32;
    }

    else
    {
      p_transit = &self->_set;
    }

    v8 = p_transit->JD;
  }

  v9 = *(&self->super.isa + v7);
  v10 = v8;
  result.type = v9;
  result.JD = v10;
  return result;
}

- (NSDate)transit
{
  if (self->_transit.JD <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] geo_dateWithJulianDay:v2];
  }

  return v4;
}

- (NSDate)set
{
  if (self->_set.JD <= 0.0 || ([MEMORY[0x1E695DF00] geo_dateWithJulianDay:?], (distantPast = objc_claimAutoreleasedReturnValue()) == 0))
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  return distantPast;
}

- (_GEORiseTransitSetEvent)lastItem
{
  p_transit = &self->_transit;
  JD = self->_transit.JD;
  v4 = 2.22507386e-308;
  if (self->_rise.JD <= 0.0)
  {
    v5 = 2.22507386e-308;
  }

  else
  {
    v5 = self->_rise.JD;
  }

  if (JD <= 0.0)
  {
    JD = 2.22507386e-308;
  }

  if (self->_set.JD > 0.0)
  {
    v4 = self->_set.JD;
  }

  if (v5 <= JD || v5 <= v4)
  {
    v8 = 48;
    if (JD > v5 && JD > v4)
    {
      v8 = 32;
    }

    else
    {
      p_transit = &self->_set;
    }

    v7 = p_transit->JD;
  }

  else
  {
    v7 = self->_rise.JD;
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v10 = v7;
  result.type = v9;
  result.JD = v10;
  return result;
}

- (BOOL)isIdeal
{
  JD = self->_rise.JD;
  if (JD <= 0.0)
  {
    return 0;
  }

  v3 = self->_transit.JD;
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = self->_set.JD;
  v5 = JD < v3;
  if (v3 >= v4)
  {
    v5 = 0;
  }

  return v4 > 0.0 && v5;
}

- (NSDate)rise
{
  if (self->_rise.JD <= 0.0 || ([MEMORY[0x1E695DF00] geo_dateWithJulianDay:?], (distantFuture = objc_claimAutoreleasedReturnValue()) == 0))
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  return distantFuture;
}

@end