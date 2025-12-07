@interface GEOPDCategorizedPhotos
- (GEOPDCategorizedPhotos)init;
- (id)photos;
- (void)_readPhotos;
@end

@implementation GEOPDCategorizedPhotos

- (GEOPDCategorizedPhotos)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCategorizedPhotos;
  v2 = [(GEOPDCategorizedPhotos *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)photos
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDCategorizedPhotos *)self _readPhotos];
    self = selfCopy[5];
    v1 = vars8;
  }

  return self;
}

- (void)_readPhotos
{
  os_unfair_lock_lock((self + 56));
  if ((*(self + 64) & 0x10) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDCategorizedPhotosReadSpecified(self, *(self + 8), &_readPhotos_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 56));
}

@end