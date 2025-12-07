@interface GEOPDTransitScheduleFilter
- (GEOPDTransitScheduleFilter)init;
- (unint64_t)hash;
@end

@implementation GEOPDTransitScheduleFilter

- (unint64_t)hash
{
  [(GEOPDTransitScheduleFilter *)self readAll:?];
  v3 = [(GEOPDDeparturePredicate *)self->_departurePredicateCountdown hash];
  v4 = [(GEOPDDeparturePredicate *)self->_departurePredicateStamp hash];
  if (*&self->_flags)
  {
    v5 = PBHashBytes();
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_includeRealTimeDepartures;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (GEOPDTransitScheduleFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOPDTransitScheduleFilter;
  v2 = [(GEOPDTransitScheduleFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end