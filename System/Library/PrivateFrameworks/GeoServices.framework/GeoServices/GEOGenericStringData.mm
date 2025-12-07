@interface GEOGenericStringData
- (int)privacyFilterType;
- (int)stringSubstituteType;
@end

@implementation GEOGenericStringData

- (int)stringSubstituteType
{
  if ((*&self->_flags & 2) != 0)
  {
    return self->_stringSubstituteType;
  }

  else
  {
    return 0;
  }
}

- (int)privacyFilterType
{
  if (*&self->_flags)
  {
    return self->_privacyFilterType;
  }

  else
  {
    return 1;
  }
}

@end