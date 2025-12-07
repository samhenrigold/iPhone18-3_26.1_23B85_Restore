@interface GEOArrivalRegion
- (int)arrivalRegionAction;
@end

@implementation GEOArrivalRegion

- (int)arrivalRegionAction
{
  if (*&self->_flags)
  {
    return self->_arrivalRegionAction;
  }

  else
  {
    return 1;
  }
}

@end