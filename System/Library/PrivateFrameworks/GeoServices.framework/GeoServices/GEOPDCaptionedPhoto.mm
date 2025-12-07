@interface GEOPDCaptionedPhoto
- (GEOPDCaptionedPhoto)init;
- (id)photo;
- (os_unfair_lock_s)attribution;
- (void)_readPhoto;
@end

@implementation GEOPDCaptionedPhoto

- (GEOPDCaptionedPhoto)init
{
  v6.receiver = self;
  v6.super_class = GEOPDCaptionedPhoto;
  v2 = [(GEOPDCaptionedPhoto *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)attribution
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 24);
    if ((selfCopy[27]._os_unfair_lock_opaque & 0x100) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDCaptionedPhotoReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readAttribution_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 24);
    self = *&selfCopy[6]._os_unfair_lock_opaque;
  }

  return self;
}

- (id)photo
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDCaptionedPhoto *)self _readPhoto];
    self = selfCopy[10];
    v1 = vars8;
  }

  return self;
}

- (void)_readPhoto
{
  os_unfair_lock_lock((self + 96));
  if ((*(self + 108) & 0x4000) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDCaptionedPhotoReadSpecified(self, *(self + 8), &_readPhoto_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 96));
}

@end