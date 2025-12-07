@interface GEOPDSearchBrowseCategorySuggestionParameters
- (GEOPDSearchBrowseCategorySuggestionParameters)init;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOPDSearchBrowseCategorySuggestionParameters

- (GEOPDSearchBrowseCategorySuggestionParameters)init
{
  v6.receiver = self;
  v6.super_class = GEOPDSearchBrowseCategorySuggestionParameters;
  v2 = [(GEOPDSearchBrowseCategorySuggestionParameters *)&v6 init];
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
  [(GEOPDSearchBrowseCategorySuggestionParameters *)self readAll:?];
  v3 = [(GEOPDViewportInfo *)self->_viewportInfo hash];
  flags = self->_flags;
  if (flags)
  {
    requestLocalTimestamp = self->_requestLocalTimestamp;
    if (requestLocalTimestamp < 0.0)
    {
      requestLocalTimestamp = -requestLocalTimestamp;
    }

    *v4.i64 = floor(requestLocalTimestamp + 0.5);
    v9 = (requestLocalTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((flags & 2) == 0)
  {
    v11 = 0;
    if ((flags & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((flags & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v11 = 2654435761 * self->_minimumNumberOfCategories;
  if ((flags & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_isCarplayRequest;
  if ((flags & 8) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_suggestionType;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = PBRepeatedInt32Hash();
  v15 = [(GEOPDVenueIdentifier *)self->_venueFilter hash];
  v16 = self->_flags;
  if ((v16 & 0x40) != 0)
  {
    v17 = 2654435761 * self->_isFromNoQueryState;
    if ((v16 & 0x20) != 0)
    {
LABEL_18:
      v18 = 2654435761 * self->_isFlatCategoryListRequest;
      if ((v16 & 4) != 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      v19 = 0;
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v17 = 0;
    if ((v16 & 0x20) != 0)
    {
      goto LABEL_18;
    }
  }

  v18 = 0;
  if ((v16 & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v19 = 2654435761 * self->_preferredTransportType;
  if ((v16 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v20 = 2654435761 * self->_isWidgetRequest;
LABEL_25:
  v21 = v7 ^ v3 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  v22 = v17 ^ v18 ^ v19 ^ v20 ^ [(GEOPDSSearchEvChargingParameters *)self->_evChargingParameters hash];
  v23 = v21 ^ v22 ^ [(GEOPDSearchOriginationInfo *)self->_searchOriginationInfo hash];
  return v23 ^ [(NSMutableArray *)self->_inputCategorys hash];
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDSearchBrowseCategorySuggestionParameters;
  [(GEOPDSearchBrowseCategorySuggestionParameters *)&v3 dealloc];
}

@end