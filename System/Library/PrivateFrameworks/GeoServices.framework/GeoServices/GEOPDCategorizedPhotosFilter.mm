@interface GEOPDCategorizedPhotosFilter
- (GEOPDCategorizedPhotosFilter)init;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOPDCategorizedPhotosFilter

- (GEOPDCategorizedPhotosFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCategorizedPhotosFilter;
  v2 = [(GEOPDCategorizedPhotosFilter *)&v6 init];
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
  [(GEOPDCategorizedPhotosFilter *)self readAll:?];
  v3 = PBHashBytes();
  v4 = [(NSString *)self->_categoryId hash];
  if ((*&self->_flags & 2) != 0)
  {
    v5 = 2654435761 * self->_startIndex;
    if (*&self->_flags)
    {
LABEL_3:
      v6 = 2654435761 * self->_count;
      if ((*&self->_flags & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if ((*&self->_flags & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if (*&self->_flags)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_flags & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_includeCoverPhoto;
  if ((*&self->_flags & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761 * self->_coverPhotoFirst;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)dealloc
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    *&self->_flags |= 0x20u;
    os_unfair_lock_unlock(&self->_readerLock);
    *&self->_flags |= 0x80u;
    self->_photoSizeFiltersSpace = 0;
    self->_photoSizeFiltersCount = 0;
    free(self->_photoSizeFilters);
    self->_photoSizeFilters = 0;
  }

  v3.receiver = self;
  v3.super_class = GEOPDCategorizedPhotosFilter;
  [(GEOPDCategorizedPhotosFilter *)&v3 dealloc];
}

@end