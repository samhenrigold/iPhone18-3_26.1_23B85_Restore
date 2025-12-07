@interface GEOPDCaptionedPhotoFilter
- (GEOPDCaptionedPhotoFilter)init;
- (unint64_t)hash;
- (void)_readPhotoSizeFilters;
- (void)dealloc;
@end

@implementation GEOPDCaptionedPhotoFilter

- (GEOPDCaptionedPhotoFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCaptionedPhotoFilter;
  v2 = [(GEOPDCaptionedPhotoFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readPhotoSizeFilters
{
  os_unfair_lock_lock((self + 64));
  if ((*(self + 68) & 2) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDCaptionedPhotoFilterReadSpecified(self, *(self + 8), &_readPhotoSizeFilters_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 64));
}

- (unint64_t)hash
{
  [(GEOPDCaptionedPhotoFilter *)self readAll:?];
  v3 = PBHashBytes();
  return [(NSString *)self->_vendorId hash]^ v3;
}

- (void)dealloc
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    *&self->_flags |= 2u;
    os_unfair_lock_unlock(&self->_readerLock);
    *&self->_flags |= 8u;
    self->_photoSizeFiltersSpace = 0;
    self->_photoSizeFiltersCount = 0;
    free(self->_photoSizeFilters);
    self->_photoSizeFilters = 0;
  }

  v3.receiver = self;
  v3.super_class = GEOPDCaptionedPhotoFilter;
  [(GEOPDCaptionedPhotoFilter *)&v3 dealloc];
}

@end