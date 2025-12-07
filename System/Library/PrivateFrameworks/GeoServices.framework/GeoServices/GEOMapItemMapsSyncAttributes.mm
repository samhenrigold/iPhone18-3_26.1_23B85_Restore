@interface GEOMapItemMapsSyncAttributes
- (GEOMapItemMapsSyncAttributes)init;
- (NSString)mapsSyncIdentifier;
- (unint64_t)hash;
- (void)_readMapsSyncIdentifier;
@end

@implementation GEOMapItemMapsSyncAttributes

- (GEOMapItemMapsSyncAttributes)init
{
  v6.receiver = self;
  v6.super_class = GEOMapItemMapsSyncAttributes;
  v2 = [(GEOMapItemMapsSyncAttributes *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)hash
{
  [(GEOMapItemMapsSyncAttributes *)self readAll:1];
  v3 = [(NSString *)self->_mapsSyncIdentifier hash];
  v4 = [(NSString *)self->_mapsSyncObjectType hash];
  if (*&self->_flags)
  {
    v5 = 2654435761 * self->_secondaryObjectType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (NSString)mapsSyncIdentifier
{
  [(GEOMapItemMapsSyncAttributes *)self _readMapsSyncIdentifier];
  mapsSyncIdentifier = self->_mapsSyncIdentifier;

  return mapsSyncIdentifier;
}

- (void)_readMapsSyncIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemMapsSyncAttributesReadSpecified(self, *(self + 8), &_readMapsSyncIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end