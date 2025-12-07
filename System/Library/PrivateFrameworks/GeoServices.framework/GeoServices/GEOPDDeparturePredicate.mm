@interface GEOPDDeparturePredicate
- (unint64_t)hash;
@end

@implementation GEOPDDeparturePredicate

- (unint64_t)hash
{
  flags = self->_flags;
  if (flags)
  {
    v4 = PBHashBytes();
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v5 ^ v4;
  }

  v4 = 0;
  if ((flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_numAdditionalDepartures;
  return v5 ^ v4;
}

@end