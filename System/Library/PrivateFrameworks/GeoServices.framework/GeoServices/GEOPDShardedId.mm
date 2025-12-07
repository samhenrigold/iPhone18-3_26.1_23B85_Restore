@interface GEOPDShardedId
- (unint64_t)hash;
@end

@implementation GEOPDShardedId

- (unint64_t)hash
{
  [(GEOPDShardedId *)self readAll:1];
  if ((*&self->_flags & 2) != 0)
  {
    v3 = 2654435761u * self->_muid;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(GEOLatLng *)self->_center hash];
  if ((*&self->_flags & 8) != 0)
  {
    v5 = 2654435761 * self->_resultProviderId;
    if (*&self->_flags)
    {
LABEL_6:
      v6 = 2654435761u * self->_basemapId;
      if ((*&self->_flags & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if (*&self->_flags)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_flags & 0x10) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_sourceId;
    if ((*&self->_flags & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_flags & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_flags & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_mapsResultType;
  if ((*&self->_flags & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_isExternalVisibleId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

@end