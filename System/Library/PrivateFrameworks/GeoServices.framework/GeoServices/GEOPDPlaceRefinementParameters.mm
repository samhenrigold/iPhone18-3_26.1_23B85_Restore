@interface GEOPDPlaceRefinementParameters
- (GEOPDPlaceRefinementParameters)init;
- (unint64_t)hash;
@end

@implementation GEOPDPlaceRefinementParameters

- (GEOPDPlaceRefinementParameters)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlaceRefinementParameters;
  v2 = [(GEOPDPlaceRefinementParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)hash
{
  [(GEOPDPlaceRefinementParameters *)self readAll:?];
  flags = self->_flags;
  if ((flags & 8) != 0)
  {
    v15 = 2654435761 * self->_resultProviderId;
    if (flags)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (flags)
    {
LABEL_3:
      v4 = 2654435761u * self->_muid;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(GEOLatLng *)self->_locationHint hash];
  v6 = [(GEOStructuredAddress *)self->_addressHint hash];
  v7 = [(NSString *)self->_placeNameHint hash];
  v8 = [(NSMutableArray *)self->_formattedAddressLineHints hash];
  v9 = self->_flags;
  if ((v9 & 4) != 0)
  {
    v10 = 2654435761 * self->_placeTypeHint;
    if ((v9 & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    if ((v9 & 2) != 0)
    {
LABEL_8:
      v11 = 2654435761 * self->_addressGeocodeAccuracyHint;
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_11:
  v12 = [(NSData *)self->_addressObjectHint hash];
  if ((*&self->_flags & 0x10) != 0)
  {
    v13 = 2654435761 * self->_supportCoordinatesOnlyRefinement;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v15 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(GEOPDMapsIdentifier *)self->_mapsId hash];
}

@end