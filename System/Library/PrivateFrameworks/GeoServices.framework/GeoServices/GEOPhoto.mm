@interface GEOPhoto
- (void)_readPhotoInfos;
@end

@implementation GEOPhoto

- (void)_readPhotoInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPhotoReadSpecified(self, *(self + 8), &_readPhotoInfos_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end