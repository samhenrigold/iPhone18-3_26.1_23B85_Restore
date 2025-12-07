@interface GEOLogMsgStateApplicationIdentifier
- (GEOLogMsgStateApplicationIdentifier)init;
- (NSString)appIdentifier;
- (void)_readAppIdentifier;
@end

@implementation GEOLogMsgStateApplicationIdentifier

- (NSString)appIdentifier
{
  [(GEOLogMsgStateApplicationIdentifier *)self _readAppIdentifier];
  appIdentifier = self->_appIdentifier;

  return appIdentifier;
}

- (void)_readAppIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 76) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateApplicationIdentifierReadSpecified(self, *(self + 8), &_readAppIdentifier_tags_190937);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (GEOLogMsgStateApplicationIdentifier)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgStateApplicationIdentifier;
  v2 = [(GEOLogMsgStateApplicationIdentifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end