@interface GEOPDViewportInfo
- (unint64_t)hash;
@end

@implementation GEOPDViewportInfo

- (unint64_t)hash
{
  [(GEOPDViewportInfo *)self readAll:1];
  v3 = [(GEOMapRegion *)self->_mapRegion hash];
  if ((*&self->_flags & 2) != 0)
  {
    v4 = 2654435761 * self->_timeSinceMapViewportChanged;
    if (*&self->_flags)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_flags & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_mapType;
  return v4 ^ v3 ^ v5;
}

@end