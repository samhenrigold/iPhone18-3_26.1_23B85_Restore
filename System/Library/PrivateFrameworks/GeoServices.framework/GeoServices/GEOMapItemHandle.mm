@interface GEOMapItemHandle
- (GEOPDPlaceRefinementParameters)placeRefinementParameters;
- (int)handleType;
- (unint64_t)hash;
- (void)_readPlaceRefinementParameters;
- (void)_readPlaceRequestData;
@end

@implementation GEOMapItemHandle

- (GEOPDPlaceRefinementParameters)placeRefinementParameters
{
  [(GEOMapItemHandle *)self _readPlaceRefinementParameters];
  placeRefinementParameters = self->_placeRefinementParameters;

  return placeRefinementParameters;
}

- (void)_readPlaceRefinementParameters
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
        GEOMapItemHandleReadSpecified(self, *(self + 8), &_readPlaceRefinementParameters_tags_124895);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (unint64_t)hash
{
  [(GEOMapItemHandle *)self readAll:1];
  if (*&self->_flags)
  {
    v3 = 2654435761 * self->_handleType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(GEOPDPlaceRefinementParameters *)self->_placeRefinementParameters hash]^ v3;
  v5 = [(GEOMapItemInitialRequestData *)self->_placeRequestData hash];
  return v4 ^ v5 ^ [(GEOMapItemClientAttributes *)self->_clientAttributes hash];
}

- (int)handleType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (flags)
  {
    return self->_handleType;
  }

  else
  {
    return 0;
  }
}

- (void)_readPlaceRequestData
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 56) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapItemHandleReadSpecified(self, *(self + 8), &_readPlaceRequestData_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

@end