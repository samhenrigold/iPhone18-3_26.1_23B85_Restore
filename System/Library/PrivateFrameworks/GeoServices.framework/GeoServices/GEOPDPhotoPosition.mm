@interface GEOPDPhotoPosition
- (GEOPDPhotoPosition)init;
- (void)_readCameraMetadatas;
- (void)dealloc;
@end

@implementation GEOPDPhotoPosition

- (GEOPDPhotoPosition)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPhotoPosition;
  v2 = [(GEOPDPhotoPosition *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDPhotoPosition;
  [(GEOPDPhotoPosition *)&v3 dealloc];
}

- (void)_readCameraMetadatas
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 132) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPhotoPositionReadSpecified(self, *(self + 8), &_readCameraMetadatas_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

@end