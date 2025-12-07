@interface GEOGenericSubstitutes
- (int)waypointCategory;
@end

@implementation GEOGenericSubstitutes

- (int)waypointCategory
{
  if (*&self->_flags)
  {
    return self->_waypointCategory;
  }

  else
  {
    return 0;
  }
}

@end