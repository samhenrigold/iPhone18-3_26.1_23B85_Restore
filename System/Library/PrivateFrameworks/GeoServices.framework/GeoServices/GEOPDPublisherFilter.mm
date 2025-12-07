@interface GEOPDPublisherFilter
- (unint64_t)hash;
@end

@implementation GEOPDPublisherFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    return 2654435761 * self->_partiallyClientize;
  }

  else
  {
    return 0;
  }
}

@end