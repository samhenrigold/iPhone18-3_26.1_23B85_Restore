@interface GEOPDDataItem
- (GEOPDDataItem)init;
- (id)ratingData;
- (void)_readRatingData;
@end

@implementation GEOPDDataItem

- (GEOPDDataItem)init
{
  v6.receiver = self;
  v6.super_class = GEOPDDataItem;
  v2 = [(GEOPDDataItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readRatingData
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 80) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDDataItemReadSpecified(self, *(self + 8), &_readRatingData_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

- (id)ratingData
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDDataItem *)self _readRatingData];
    self = selfCopy[7];
    v1 = vars8;
  }

  return self;
}

@end