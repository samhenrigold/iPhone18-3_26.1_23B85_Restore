@interface GEOPDComponentInfo
- (id)filter;
- (unint64_t)hash;
@end

@implementation GEOPDComponentInfo

- (unint64_t)hash
{
  if ((*&self->_flags & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_flags)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_type;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_startIndex;
  if (*&self->_flags)
  {
LABEL_4:
    v5 = 2654435761 * self->_count;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(GEOPDComponentFilter *)self->_filter hash];
  if ((*&self->_flags & 0x10) != 0)
  {
    v7 = 2654435761 * self->_includeSource;
    if ((*&self->_flags & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6;
  }

  v7 = 0;
  if ((*&self->_flags & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = 2654435761 * self->_urgency;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v6;
}

- (id)filter
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

@end