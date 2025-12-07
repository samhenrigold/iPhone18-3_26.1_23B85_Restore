@interface GEOPDRelatedPlaceFilter
- (unint64_t)hash;
@end

@implementation GEOPDRelatedPlaceFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    v2 = 2654435761 * self->_relatedPlaceTemplateItemCount;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_canSupportTemplateModule;
  return v3 ^ v2;
}

@end