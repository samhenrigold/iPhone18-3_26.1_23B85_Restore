@interface GEOPDPlaceGlobalResult
- (GEOPDPlaceGlobalResult)init;
- (os_unfair_lock_s)browseCategorySuggestionResult;
- (void)_readAutocompleteResult;
@end

@implementation GEOPDPlaceGlobalResult

- (GEOPDPlaceGlobalResult)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlaceGlobalResult;
  v2 = [(GEOPDPlaceGlobalResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readAutocompleteResult
{
  os_unfair_lock_lock((self + 456));
  if ((*(self + 460) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceGlobalResultReadSpecified(self, *(self + 8), &_readAutocompleteResult_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 456));
}

- (os_unfair_lock_s)browseCategorySuggestionResult
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 114);
    if ((selfCopy[115]._os_unfair_lock_opaque & 0x2000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceGlobalResultReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readBrowseCategorySuggestionResult_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 114);
    self = *&selfCopy[30]._os_unfair_lock_opaque;
  }

  return self;
}

@end