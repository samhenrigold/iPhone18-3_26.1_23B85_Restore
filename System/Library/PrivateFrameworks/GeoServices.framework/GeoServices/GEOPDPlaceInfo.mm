@interface GEOPDPlaceInfo
- (GEOPDPlaceInfo)init;
- (id)center;
- (void)_readCenter;
- (void)_readEnhancedCenter;
@end

@implementation GEOPDPlaceInfo

- (GEOPDPlaceInfo)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlaceInfo;
  v2 = [(GEOPDPlaceInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readCenter
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 92) & 0x20) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceInfoReadSpecified(self, *(self + 8), &_readCenter_tags_8095);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

- (id)center
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDPlaceInfo *)self _readCenter];
    self = selfCopy[5];
    v1 = vars8;
  }

  return self;
}

- (void)_readEnhancedCenter
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 92) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDPlaceInfoReadSpecified(self, *(self + 8), &_readEnhancedCenter_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

@end