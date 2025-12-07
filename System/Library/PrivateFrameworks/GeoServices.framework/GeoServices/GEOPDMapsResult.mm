@interface GEOPDMapsResult
- (GEOPDMapsResult)init;
- (GEOPDPlace)place;
- (int)resultType;
- (void)_readPlace;
@end

@implementation GEOPDMapsResult

- (GEOPDMapsResult)init
{
  v6.receiver = self;
  v6.super_class = GEOPDMapsResult;
  v2 = [(GEOPDMapsResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readPlace
{
  if (self)
  {
    os_unfair_lock_lock((self + 72));
    if ((*(self + 80) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDMapsResultReadSpecified(self, *(self + 8), &_readPlace_tags_6780);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 72));
  }
}

- (GEOPDPlace)place
{
  [(GEOPDMapsResult *)self _readPlace];
  place = self->_place;

  return place;
}

- (int)resultType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (flags)
  {
    return self->_resultType;
  }

  else
  {
    return 0;
  }
}

@end