@interface GEOPDScorecardLayout
- (GEOPDScorecardLayout)init;
- (void)_readRatingCategorys;
@end

@implementation GEOPDScorecardLayout

- (GEOPDScorecardLayout)init
{
  v6.receiver = self;
  v6.super_class = GEOPDScorecardLayout;
  v2 = [(GEOPDScorecardLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readRatingCategorys
{
  os_unfair_lock_lock((self + 40));
  if ((*(self + 44) & 1) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDScorecardLayoutReadSpecified(self, *(self + 8), &_readRatingCategorys_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 40));
}

@end