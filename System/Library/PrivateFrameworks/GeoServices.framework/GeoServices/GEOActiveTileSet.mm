@interface GEOActiveTileSet
- (GEOActiveTileSet)init;
- (NSMutableArray)countryRegionAllowlists;
- (NSMutableArray)supportedLanguages;
- (int)checksumType;
- (void)_readAvailableTiles;
- (void)_readBaseURL;
- (void)_readCountryRegionAllowlists;
- (void)_readSupportedLanguages;
- (void)clearAvailableTiles;
- (void)dealloc;
@end

@implementation GEOActiveTileSet

- (void)_readBaseURL
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 144) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileSetReadSpecified(self, *(self + 8), &_readBaseURL_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)_readAvailableTiles
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 144) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileSetReadSpecified(self, *(self + 8), &_readAvailableTiles_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (GEOActiveTileSet)init
{
  v6.receiver = self;
  v6.super_class = GEOActiveTileSet;
  v2 = [(GEOActiveTileSet *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (int)checksumType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (flags)
  {
    return self->_checksumType;
  }

  else
  {
    return 0;
  }
}

- (NSMutableArray)supportedLanguages
{
  [(GEOActiveTileSet *)self _readSupportedLanguages];
  supportedLanguages = self->_supportedLanguages;

  return supportedLanguages;
}

- (void)_readSupportedLanguages
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 144) & 0x1000) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileSetReadSpecified(self, *(self + 8), &_readSupportedLanguages_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (NSMutableArray)countryRegionAllowlists
{
  [(GEOActiveTileSet *)self _readCountryRegionAllowlists];
  countryRegionAllowlists = self->_countryRegionAllowlists;

  return countryRegionAllowlists;
}

- (void)_readCountryRegionAllowlists
{
  if (self)
  {
    os_unfair_lock_lock((self + 104));
    if ((*(self + 144) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOActiveTileSetReadSpecified(self, *(self + 8), &_readCountryRegionAllowlists_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 104));
  }
}

- (void)dealloc
{
  [(GEOActiveTileSet *)self clearAvailableTiles];
  v3.receiver = self;
  v3.super_class = GEOActiveTileSet;
  [(GEOActiveTileSet *)&v3 dealloc];
}

- (void)clearAvailableTiles
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x40u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x2000u;
  self->_availableTilesSpace = 0;
  self->_availableTilesCount = 0;
  free(self->_availableTiles);
  self->_availableTiles = 0;
}

@end