@interface GEOPDReverseGeocodingParameters
- (GEOPDReverseGeocodingParameters)init;
- (id)extendedLocations;
- (unint64_t)hash;
- (void)_readExtendedLocations;
@end

@implementation GEOPDReverseGeocodingParameters

- (GEOPDReverseGeocodingParameters)init
{
  v6.receiver = self;
  v6.super_class = GEOPDReverseGeocodingParameters;
  v2 = [(GEOPDReverseGeocodingParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readExtendedLocations
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 60) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDReverseGeocodingParametersReadSpecified(self, *(self + 8), &_readExtendedLocations_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (id)extendedLocations
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDReverseGeocodingParameters *)self _readExtendedLocations];
    self = selfCopy[3];
    v1 = vars8;
  }

  return self;
}

- (unint64_t)hash
{
  [(GEOPDReverseGeocodingParameters *)self readAll:?];
  v3 = [(NSMutableArray *)self->_locations hash];
  if (*&self->_flags)
  {
    v4 = 2654435761 * self->_placeTypeLimit;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_extendedLocations hash];
  }

  v4 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_preserveOriginalLocation;
  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_extendedLocations hash];
}

@end