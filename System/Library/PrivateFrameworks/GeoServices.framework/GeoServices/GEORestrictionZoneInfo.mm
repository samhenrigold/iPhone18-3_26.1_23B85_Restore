@interface GEORestrictionZoneInfo
- (int)licensePlateRestrictionImpact;
@end

@implementation GEORestrictionZoneInfo

- (int)licensePlateRestrictionImpact
{
  if ((*&self->_flags & 2) != 0)
  {
    return self->_licensePlateRestrictionImpact;
  }

  else
  {
    return 0;
  }
}

@end