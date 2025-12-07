@interface GEOPDQuickLink
- (GEOPDQuickLink)init;
- (void)_readQuickLinkItems;
@end

@implementation GEOPDQuickLink

- (GEOPDQuickLink)init
{
  v6.receiver = self;
  v6.super_class = GEOPDQuickLink;
  v2 = [(GEOPDQuickLink *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readQuickLinkItems
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 52) & 2) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDQuickLinkReadSpecified(self, *(self + 8), &_readQuickLinkItems_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

@end