@interface GEOSignGuidance
- (GEONameInfo)shieldName;
- (GEOPBTransitArtwork)artworkOverride;
- (GEOSignGuidance)init;
- (NSMutableArray)signDetails;
- (NSMutableArray)signTitles;
- (int)maneuverArrowOverride;
- (unint64_t)secondarySignsCount;
- (void)_readArtworkOverride;
- (void)_readJunctionInfo;
- (void)_readSecondarySigns;
- (void)_readShieldName;
- (void)_readSignDetails;
- (void)_readSignTitles;
@end

@implementation GEOSignGuidance

- (void)_readSignDetails
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readSignDetails_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEONameInfo)shieldName
{
  [(GEOSignGuidance *)self _readShieldName];
  shieldName = self->_shieldName;

  return shieldName;
}

- (NSMutableArray)signDetails
{
  [(GEOSignGuidance *)self _readSignDetails];
  signDetails = self->_signDetails;

  return signDetails;
}

- (void)_readShieldName
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readShieldName_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (NSMutableArray)signTitles
{
  [(GEOSignGuidance *)self _readSignTitles];
  signTitles = self->_signTitles;

  return signTitles;
}

- (void)_readSignTitles
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readSignTitles_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (unint64_t)secondarySignsCount
{
  [(GEOSignGuidance *)self _readSecondarySigns];
  secondarySigns = self->_secondarySigns;

  return [(NSMutableArray *)secondarySigns count];
}

- (GEOPBTransitArtwork)artworkOverride
{
  [(GEOSignGuidance *)self _readArtworkOverride];
  artworkOverride = self->_artworkOverride;

  return artworkOverride;
}

- (void)_readArtworkOverride
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readArtworkOverride_tags_7255);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (GEOSignGuidance)init
{
  v6.receiver = self;
  v6.super_class = GEOSignGuidance;
  v2 = [(GEOSignGuidance *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readSecondarySigns
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readSecondarySigns_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (void)_readJunctionInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOSignGuidanceReadSpecified(self, *(self + 8), &_readJunctionInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (int)maneuverArrowOverride
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if (flags)
  {
    return self->_maneuverArrowOverride;
  }

  else
  {
    return 0;
  }
}

@end