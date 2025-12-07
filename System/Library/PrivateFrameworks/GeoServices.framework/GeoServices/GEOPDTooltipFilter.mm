@interface GEOPDTooltipFilter
- (unint64_t)hash;
@end

@implementation GEOPDTooltipFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    return 2654435761 * self->_isHikingSuggestion;
  }

  else
  {
    return 0;
  }
}

@end