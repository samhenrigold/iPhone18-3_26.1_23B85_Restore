@interface GEOPDPlaceCollectionFilter
- (unint64_t)hash;
@end

@implementation GEOPDPlaceCollectionFilter

- (unint64_t)hash
{
  if (*&self->_flags)
  {
    v2 = 2654435761 * self->_expectedResultCount;
    if ((*&self->_flags & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_partiallyClientize;
      if ((*&self->_flags & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_flags & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_flags & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isCollectionView;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_flags & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_enableCollectionItemDescription;
    if ((*&self->_flags & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_flags & 0x20) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_overrideSuppress;
    if ((*&self->_flags & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_flags & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_flags & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_enableMediaLink;
  if ((*&self->_flags & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_includePlaceCollectionItemPhotos;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

@end