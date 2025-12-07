@interface GEOResource
- (GEOResource)init;
- (NSData)checksum;
- (NSMutableArray)filters;
- (NSString)filename;
- (int)resourceType;
- (int)updateMethod;
- (int)validationMethod;
- (unint64_t)hash;
- (void)_readChecksum;
- (void)_readFilename;
- (void)_readFilters;
- (void)clearRegions;
- (void)dealloc;
@end

@implementation GEOResource

- (NSString)filename
{
  [(GEOResource *)self _readFilename];
  filename = self->_filename;

  return filename;
}

- (void)_readFilename
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 116) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceReadSpecified(self, *(self + 8), &_readFilename_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEOResource)init
{
  v6.receiver = self;
  v6.super_class = GEOResource;
  v2 = [(GEOResource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSData)checksum
{
  [(GEOResource *)self _readChecksum];
  checksum = self->_checksum;

  return checksum;
}

- (void)_readChecksum
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 116) & 0x400) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceReadSpecified(self, *(self + 8), &_readChecksum_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (int)updateMethod
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x40) != 0)
  {
    return self->_updateMethod;
  }

  else
  {
    return 0;
  }
}

- (int)resourceType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x10) != 0)
  {
    return self->_resourceType;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  [(GEOResource *)self readAll:1];
  if ((*&self->_flags & 0x10) != 0)
  {
    v3 = 2654435761 * self->_resourceType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_filename hash];
  v5 = [(NSData *)self->_checksum hash];
  v6 = PBHashBytes();
  v7 = [(NSMutableArray *)self->_filters hash];
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    v9 = 2654435761 * self->_connectionType;
    if ((flags & 4) != 0)
    {
LABEL_6:
      v10 = 2654435761 * self->_preferWiFiAllowedStaleThreshold;
      if ((flags & 0x80) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    if ((flags & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
  if ((flags & 0x80) != 0)
  {
LABEL_7:
    v11 = 2654435761 * self->_validationMethod;
    if (flags)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = 0;
  if (flags)
  {
LABEL_8:
    v12 = 2654435761 * self->_alternateResourceURLIndex;
    if ((flags & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
  if ((flags & 0x40) != 0)
  {
LABEL_9:
    v13 = 2654435761 * self->_updateMethod;
    if ((flags & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v14 = 0;
    if ((flags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_16:
  v13 = 0;
  if ((flags & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v14 = 2654435761 * self->_timeToLiveSeconds;
  if ((flags & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v15 = 2654435761 * self->_resourceSource;
  return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)clearRegions
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x200u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_regionsSpace = 0;
  self->_regionsCount = 0;
  free(self->_regions);
  self->_regions = 0;
}

- (void)dealloc
{
  [(GEOResource *)self clearRegions];
  v3.receiver = self;
  v3.super_class = GEOResource;
  [(GEOResource *)&v3 dealloc];
}

- (int)validationMethod
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x80) != 0)
  {
    return self->_validationMethod;
  }

  else
  {
    return 0;
  }
}

- (void)_readFilters
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 116) & 0x1000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceReadSpecified(self, *(self + 8), &_readFilters_tags_30129);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (NSMutableArray)filters
{
  [(GEOResource *)self _readFilters];
  filters = self->_filters;

  return filters;
}

@end