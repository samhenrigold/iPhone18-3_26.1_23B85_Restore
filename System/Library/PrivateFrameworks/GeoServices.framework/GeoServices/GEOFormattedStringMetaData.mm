@interface GEOFormattedStringMetaData
- (int)spokenPrivacyFilterType;
@end

@implementation GEOFormattedStringMetaData

- (int)spokenPrivacyFilterType
{
  if ((*&self->_flags & 2) != 0)
  {
    return self->_spokenPrivacyFilterType;
  }

  else
  {
    return 0;
  }
}

@end