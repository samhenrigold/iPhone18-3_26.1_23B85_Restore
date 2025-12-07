@interface GEOPDMessageLink
- (GEOPDMessageLink)init;
- (id)navBackgroundColor;
- (id)timezone;
- (void)_readNavBackgroundColor;
- (void)_readNavTintColor;
- (void)_readTimezone;
@end

@implementation GEOPDMessageLink

- (GEOPDMessageLink)init
{
  v6.receiver = self;
  v6.super_class = GEOPDMessageLink;
  v2 = [(GEOPDMessageLink *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readTimezone
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 92) & 0x100) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDMessageLinkReadSpecified(self, *(self + 8), &_readTimezone_tags_71747);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

- (id)timezone
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDMessageLink *)self _readTimezone];
    self = selfCopy[8];
    v1 = vars8;
  }

  return self;
}

- (void)_readNavBackgroundColor
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 92) & 0x40) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDMessageLinkReadSpecified(self, *(self + 8), &_readNavBackgroundColor_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

- (id)navBackgroundColor
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDMessageLink *)self _readNavBackgroundColor];
    self = selfCopy[6];
    v1 = vars8;
  }

  return self;
}

- (void)_readNavTintColor
{
  os_unfair_lock_lock((self + 80));
  if ((*(self + 92) & 0x80) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDMessageLinkReadSpecified(self, *(self + 8), &_readNavTintColor_tags);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 80));
}

@end