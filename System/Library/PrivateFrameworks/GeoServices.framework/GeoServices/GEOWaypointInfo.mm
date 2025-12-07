@interface GEOWaypointInfo
- (GEOARInfo)arInfo;
- (GEOEVChargingInfo)evChargingInfo;
- (GEOPBTransitArtwork)artwork;
- (GEOStyleAttributes)styleAttributes;
- (GEOWaypointInfo)init;
- (NSString)name;
- (void)_readArInfo;
- (void)_readArtwork;
- (void)_readEvChargingInfo;
- (void)_readName;
- (void)_readPosition;
- (void)_readStyleAttributes;
- (void)_readWaypointCaption;
@end

@implementation GEOWaypointInfo

- (GEOEVChargingInfo)evChargingInfo
{
  [(GEOWaypointInfo *)self _readEvChargingInfo];
  evChargingInfo = self->_evChargingInfo;

  return evChargingInfo;
}

- (GEOWaypointInfo)init
{
  v6.receiver = self;
  v6.super_class = GEOWaypointInfo;
  v2 = [(GEOWaypointInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readEvChargingInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readEvChargingInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (void)_readWaypointCaption
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readWaypointCaption_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (NSString)name
{
  [(GEOWaypointInfo *)self _readName];
  name = self->_name;

  return name;
}

- (void)_readPosition
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readPosition_tags_9707);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (GEOARInfo)arInfo
{
  [(GEOWaypointInfo *)self _readArInfo];
  arInfo = self->_arInfo;

  return arInfo;
}

- (void)_readArInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readArInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (GEOPBTransitArtwork)artwork
{
  [(GEOWaypointInfo *)self _readArtwork];
  artwork = self->_artwork;

  return artwork;
}

- (void)_readArtwork
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readArtwork_tags_9709);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (GEOStyleAttributes)styleAttributes
{
  [(GEOWaypointInfo *)self _readStyleAttributes];
  styleAttributes = self->_styleAttributes;

  return styleAttributes;
}

- (void)_readStyleAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readStyleAttributes_tags_9708);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (void)_readName
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 120) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointInfoReadSpecified(self, *(self + 8), &_readName_tags_9706);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

@end