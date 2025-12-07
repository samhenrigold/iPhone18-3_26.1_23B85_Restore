@interface GEOCondition
- (int)type;
@end

@implementation GEOCondition

- (int)type
{
  if ((*&self->_flags & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end