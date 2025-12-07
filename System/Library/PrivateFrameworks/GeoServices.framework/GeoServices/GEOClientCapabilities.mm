@interface GEOClientCapabilities
- (GEOArtworkCapabilities)artworkCapabilities;
- (GEOClientCapabilities)init;
- (GEOFormattedStringClientCapabilities)formattedStringClientCapabilities;
- (GEOWalkingSupportedFeatures)walkingSupportedFeatures;
- (void)_readArtworkCapabilities;
- (void)_readFormattedStringClientCapabilities;
- (void)_readSupportedElevationModels;
- (void)_readSupportedTransitFeatures;
- (void)_readSupportsMultipointRoutings;
- (void)_readWalkingSupportedFeatures;
- (void)dealloc;
@end

@implementation GEOClientCapabilities

- (GEOClientCapabilities)init
{
  v6.receiver = self;
  v6.super_class = GEOClientCapabilities;
  v2 = [(GEOClientCapabilities *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOFormattedStringClientCapabilities)formattedStringClientCapabilities
{
  [(GEOClientCapabilities *)self _readFormattedStringClientCapabilities];
  formattedStringClientCapabilities = self->_formattedStringClientCapabilities;

  return formattedStringClientCapabilities;
}

- (GEOWalkingSupportedFeatures)walkingSupportedFeatures
{
  [(GEOClientCapabilities *)self _readWalkingSupportedFeatures];
  walkingSupportedFeatures = self->_walkingSupportedFeatures;

  return walkingSupportedFeatures;
}

- (void)_readWalkingSupportedFeatures
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 324) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readWalkingSupportedFeatures_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (void)_readSupportsMultipointRoutings
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 322) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readSupportsMultipointRoutings_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (void)_readArtworkCapabilities
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 323) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readArtworkCapabilities_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (void)_readFormattedStringClientCapabilities
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 323) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readFormattedStringClientCapabilities_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (GEOArtworkCapabilities)artworkCapabilities
{
  [(GEOClientCapabilities *)self _readArtworkCapabilities];
  artworkCapabilities = self->_artworkCapabilities;

  return artworkCapabilities;
}

- (void)_readSupportedTransitFeatures
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 322) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readSupportedTransitFeatures_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (void)_readSupportedElevationModels
{
  if (self)
  {
    os_unfair_lock_lock((self + 240));
    if ((*(self + 322) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientCapabilitiesReadSpecified(self, *(self + 8), &_readSupportedElevationModels_tags_104566);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 240));
  }
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOClientCapabilities;
  [(GEOClientCapabilities *)&v3 dealloc];
}

@end