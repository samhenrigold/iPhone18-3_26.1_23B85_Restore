@interface GEOPDRatingData
- (GEOPDRatingData)init;
- (id)vendorId;
- (void)_readVendorId;
@end

@implementation GEOPDRatingData

- (GEOPDRatingData)init
{
  v6.receiver = self;
  v6.super_class = GEOPDRatingData;
  v2 = [(GEOPDRatingData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)vendorId
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDRatingData *)self _readVendorId];
    self = selfCopy[4];
    v1 = vars8;
  }

  return self;
}

- (void)_readVendorId
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 52) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDRatingDataReadSpecified(self, *(self + 8), &_readVendorId_tags_8647);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

@end