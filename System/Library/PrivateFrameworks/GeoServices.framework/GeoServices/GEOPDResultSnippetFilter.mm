@interface GEOPDResultSnippetFilter
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOPDResultSnippetFilter

- (unint64_t)hash
{
  if ((*&self->_flags & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_flags & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_flags)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4 ^ PBRepeatedInt32Hash();
  }

  v2 = 2654435761 * self->_maxChildPlaces;
  if ((*&self->_flags & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_supportChildItems;
  if ((*&self->_flags & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_maxChildItems;
  return v3 ^ v2 ^ v4 ^ PBRepeatedInt32Hash();
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDResultSnippetFilter;
  [(GEOPDResultSnippetFilter *)&v3 dealloc];
}

@end