@interface GEOPDAmenitiesFilter
- (unint64_t)hash;
@end

@implementation GEOPDAmenitiesFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    return 2654435761 * self->_includeAmenityV2;
  }

  else
  {
    return 0;
  }
}

@end