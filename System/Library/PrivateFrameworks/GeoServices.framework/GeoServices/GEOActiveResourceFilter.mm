@interface GEOActiveResourceFilter
- (int)scale;
- (void)resetFilter;
@end

@implementation GEOActiveResourceFilter

- (void)resetFilter
{
  self->_scale = 0;
  self->_scenario = 0;
  name = self->_name;
  self->_name = 0;

  self->_whichFilter = 0;
}

- (int)scale
{
  if (self->_whichFilter == 1)
  {
    return self->_scale;
  }

  else
  {
    return 0;
  }
}

@end