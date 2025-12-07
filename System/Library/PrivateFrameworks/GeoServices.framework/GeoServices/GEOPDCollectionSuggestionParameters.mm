@interface GEOPDCollectionSuggestionParameters
- (GEOPDCollectionSuggestionParameters)init;
- (unint64_t)hash;
@end

@implementation GEOPDCollectionSuggestionParameters

- (GEOPDCollectionSuggestionParameters)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCollectionSuggestionParameters;
  v2 = [(GEOPDCollectionSuggestionParameters *)&v6 init];
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
  [(GEOPDCollectionSuggestionParameters *)self readAll:?];
  v3 = [(GEOPDViewportInfo *)self->_viewportInfo hash];
  if (*&self->_flags)
  {
    requestLocalTimestamp = self->_requestLocalTimestamp;
    if (requestLocalTimestamp < 0.0)
    {
      requestLocalTimestamp = -requestLocalTimestamp;
    }

    *v4.i64 = floor(requestLocalTimestamp + 0.5);
    v8 = (requestLocalTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = v6 ^ v3;
  v11 = [(NSMutableArray *)self->_publisherIds hash];
  v12 = v10 ^ v11 ^ [(NSMutableArray *)self->_geoIds hash];
  return v12 ^ [(NSMutableArray *)self->_categoryIds hash];
}

@end