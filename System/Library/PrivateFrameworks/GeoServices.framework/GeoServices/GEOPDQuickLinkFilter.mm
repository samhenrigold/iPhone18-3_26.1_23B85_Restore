@interface GEOPDQuickLinkFilter
- (unint64_t)hash;
@end

@implementation GEOPDQuickLinkFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    return 2654435761 * self->_quickLinkItemsCount;
  }

  else
  {
    return 0;
  }
}

@end