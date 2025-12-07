@interface GEOPDReview
- (GEOPDReview)init;
- (void)_readSnippets;
@end

@implementation GEOPDReview

- (GEOPDReview)init
{
  v6.receiver = self;
  v6.super_class = GEOPDReview;
  v2 = [(GEOPDReview *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readSnippets
{
  os_unfair_lock_lock((self + 72));
  if ((*(self + 76) & 0x20) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDReviewReadSpecified(self, *(self + 8), &_readSnippets_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 72));
}

@end