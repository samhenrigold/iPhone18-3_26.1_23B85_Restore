@interface GEOPDPhoto
- (GEOPDPhoto)init;
- (id)photoVersions;
- (os_unfair_lock_s)photoId;
- (void)_readPhotoVersions;
@end

@implementation GEOPDPhoto

- (id)photoVersions
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPhoto *)self _readPhotoVersions];
    self = selfCopy[4];
    v1 = vars8;
  }

  return self;
}

- (void)_readPhotoVersions
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 52) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPhotoReadSpecified(self, *(self + 8), &_readPhotoVersions_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

- (GEOPDPhoto)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPhoto;
  v2 = [(GEOPDPhoto *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)photoId
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 12);
    if ((selfCopy[13]._os_unfair_lock_opaque & 2) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPhotoReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readPhotoId_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 12);
    self = *&selfCopy[6]._os_unfair_lock_opaque;
  }

  return self;
}

@end