@interface GEOPDActionLink
- (GEOPDActionLink)init;
- (void)_readLinks;
@end

@implementation GEOPDActionLink

- (void)_readLinks
{
  os_unfair_lock_lock((self + 48));
  if ((*(self + 52) & 4) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDActionLinkReadSpecified(self, *(self + 8), &_readLinks_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 48));
}

- (GEOPDActionLink)init
{
  v6.receiver = self;
  v6.super_class = GEOPDActionLink;
  v2 = [(GEOPDActionLink *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end