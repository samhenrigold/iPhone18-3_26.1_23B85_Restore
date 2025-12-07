@interface GEOPDBounds
- (GEOPDBounds)init;
- (id)displayMapRegion;
- (void)_readDisplayMapRegion;
@end

@implementation GEOPDBounds

- (GEOPDBounds)init
{
  v6.receiver = self;
  v6.super_class = GEOPDBounds;
  v2 = [(GEOPDBounds *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readDisplayMapRegion
{
  os_unfair_lock_lock((self + 56));
  if ((*(self + 68) & 8) == 0)
  {
    v2 = *(self + 8);
    if (v2)
    {
      v3 = v2;
      objc_sync_enter(v3);
      GEOPDBoundsReadSpecified(self, *(self + 8), &_readDisplayMapRegion_tags_72636);
      objc_sync_exit(v3);
    }
  }

  os_unfair_lock_unlock((self + 56));
}

- (id)displayMapRegion
{
  if (self)
  {
    selfCopy = self;
    [(GEOPDBounds *)self _readDisplayMapRegion];
    self = selfCopy[3];
    v1 = vars8;
  }

  return self;
}

@end