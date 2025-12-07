@interface GEOPDAnalyticMetadata
- (GEOPDAnalyticMetadata)init;
- (unint64_t)hash;
- (void)_readServiceTags;
@end

@implementation GEOPDAnalyticMetadata

- (void)_readServiceTags
{
  if (self)
  {
    os_unfair_lock_lock((self + 152));
    if ((*(self + 174) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDAnalyticMetadataReadSpecified(self, *(self + 8), &_readServiceTags_tags_96452);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 152));
  }
}

- (GEOPDAnalyticMetadata)init
{
  v6.receiver = self;
  v6.super_class = GEOPDAnalyticMetadata;
  v2 = [(GEOPDAnalyticMetadata *)&v6 init];
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
  [(GEOPDAnalyticMetadata *)self readAll:1];
  v31 = [(NSString *)self->_appIdentifier hash];
  v30 = [(NSString *)self->_appMajorVersion hash];
  v29 = [(NSString *)self->_appMinorVersion hash];
  v28 = [(NSString *)self->_hardwareModel hash];
  v27 = [(NSString *)self->_hardwareClass hash];
  v26 = [(NSString *)self->_osVersion hash];
  flags = self->_flags;
  if ((*&flags & 0x100) != 0)
  {
    v25 = 2654435761 * self->_isInternalTool;
    if ((*&flags & 0x80) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_isInternalInstall;
      if (*&flags)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = 0;
    if ((*&flags & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if (*&flags)
  {
LABEL_4:
    v23 = PBHashBytes();
    flags = self->_flags;
    if ((*&flags & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v23 = 0;
  if ((*&flags & 0x20) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_sequenceNumber;
    if ((*&flags & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if ((*&flags & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
  if ((*&flags & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = 2654435761 * self->_requestSource;
  if ((*&flags & 0x40) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_isFromApi;
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
LABEL_14:
  v7 = [(NSMutableArray *)self->_serviceTags hash];
  v8 = [(NSString *)self->_productName hash];
  v9 = [(NSString *)self->_loggedAbExperiment hash];
  v10 = [(GEOAbAssignInfo *)self->_abAssignInfo hash];
  v11 = [(GEOLocalTime *)self->_requestTime hash];
  v14 = self->_flags;
  if ((*&v14 & 2) != 0)
  {
    relativeTimestamp = self->_relativeTimestamp;
    if (relativeTimestamp < 0.0)
    {
      relativeTimestamp = -relativeTimestamp;
    }

    *v12.i64 = floor(relativeTimestamp + 0.5);
    v17 = (relativeTimestamp - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v13, v12).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&v14 & 0x200) == 0)
  {
    v19 = 0;
    if ((*&v14 & 0x10) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v20 = 0;
    if ((*&v14 & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    v21 = 0;
    return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v19 ^ v20 ^ v21;
  }

  v19 = 2654435761 * self->_isSiriOriginalRequest;
  if ((*&v14 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v20 = 2654435761 * self->_routeStopCount;
  if ((*&v14 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v21 = 2654435761u * self->_sessionCreateHour;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v19 ^ v20 ^ v21;
}

@end