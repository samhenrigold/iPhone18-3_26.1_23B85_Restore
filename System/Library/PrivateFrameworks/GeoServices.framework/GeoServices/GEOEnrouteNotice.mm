@interface GEOEnrouteNotice
- (GEOEnrouteNotice)init;
- (NSMutableArray)guidances;
- (NSString)objectIdentifier;
- (int)type;
- (void)_readGuidances;
- (void)_readObjectIdentifier;
@end

@implementation GEOEnrouteNotice

- (int)type
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x20) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)_readGuidances
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 88) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOEnrouteNoticeReadSpecified(self, *(self + 8), &_readGuidances_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOEnrouteNotice)init
{
  v6.receiver = self;
  v6.super_class = GEOEnrouteNotice;
  v2 = [(GEOEnrouteNotice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSString)objectIdentifier
{
  [(GEOEnrouteNotice *)self _readObjectIdentifier];
  objectIdentifier = self->_objectIdentifier;

  return objectIdentifier;
}

- (void)_readObjectIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 88) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOEnrouteNoticeReadSpecified(self, *(self + 8), &_readObjectIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (NSMutableArray)guidances
{
  [(GEOEnrouteNotice *)self _readGuidances];
  guidances = self->_guidances;

  return guidances;
}

@end