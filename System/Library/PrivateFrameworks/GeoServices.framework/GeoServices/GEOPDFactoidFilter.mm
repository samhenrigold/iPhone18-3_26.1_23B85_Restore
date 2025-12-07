@interface GEOPDFactoidFilter
- (unint64_t)hash;
@end

@implementation GEOPDFactoidFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    return 2654435761 * self->_canSupportStructuredData;
  }

  else
  {
    return 0;
  }
}

@end