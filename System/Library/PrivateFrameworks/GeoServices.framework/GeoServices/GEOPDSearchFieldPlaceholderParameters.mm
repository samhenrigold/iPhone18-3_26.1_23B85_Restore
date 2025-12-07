@interface GEOPDSearchFieldPlaceholderParameters
- (unint64_t)hash;
@end

@implementation GEOPDSearchFieldPlaceholderParameters

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    v6 = 2654435761 * self->_version;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(GEOPDViewportInfo *)self->_viewportInfo hash:v3];
  }

  v6 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isEditServerRecommendedStop;
  return v7 ^ v6 ^ [(GEOPDViewportInfo *)self->_viewportInfo hash:v3];
}

@end