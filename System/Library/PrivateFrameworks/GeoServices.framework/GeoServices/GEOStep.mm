@interface GEOStep
- (GEOEVStateInfo)evStateInfo;
- (GEOStep)init;
- (GEOTimeCheckpoints)timeCheckpoints;
- (NSMutableArray)guidanceEvents;
- (NSMutableArray)maneuverNames;
- (NSMutableArray)roadDescriptions;
- (NSMutableArray)signposts;
- (id)firstNameInfo;
- (int)junctionType;
- (int)maneuverType;
- (void)_readEvStateInfo;
- (void)_readGuidanceEvents;
- (void)_readJunctionElements;
- (void)_readManeuverNames;
- (void)_readRoadDescriptions;
- (void)_readSignposts;
- (void)_readTimeCheckpoints;
- (void)clearJunctionElements;
- (void)dealloc;
@end

@implementation GEOStep

- (GEOTimeCheckpoints)timeCheckpoints
{
  [(GEOStep *)self _readTimeCheckpoints];
  timeCheckpoints = self->_timeCheckpoints;

  return timeCheckpoints;
}

- (void)_readTimeCheckpoints
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 252) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readTimeCheckpoints_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (NSMutableArray)roadDescriptions
{
  [(GEOStep *)self _readRoadDescriptions];
  roadDescriptions = self->_roadDescriptions;

  return roadDescriptions;
}

- (void)_readRoadDescriptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 252) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readRoadDescriptions_tags_48599);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (int)maneuverType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x800) != 0)
  {
    return self->_maneuverType;
  }

  else
  {
    return 0;
  }
}

- (void)_readEvStateInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 251) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readEvStateInfo_tags_7644);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (GEOEVStateInfo)evStateInfo
{
  [(GEOStep *)self _readEvStateInfo];
  evStateInfo = self->_evStateInfo;

  return evStateInfo;
}

- (GEOStep)init
{
  v6.receiver = self;
  v6.super_class = GEOStep;
  v2 = [(GEOStep *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSMutableArray)signposts
{
  [(GEOStep *)self _readSignposts];
  signposts = self->_signposts;

  return signposts;
}

- (void)_readManeuverNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 252) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readManeuverNames_tags_48606);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (int)junctionType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x40) != 0)
  {
    return self->_junctionType;
  }

  else
  {
    return 0;
  }
}

- (NSMutableArray)guidanceEvents
{
  [(GEOStep *)self _readGuidanceEvents];
  guidanceEvents = self->_guidanceEvents;

  return guidanceEvents;
}

- (void)_readGuidanceEvents
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 251) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readGuidanceEvents_tags_7643);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)clearJunctionElements
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x2000000uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x10000000000uLL;
  self->_junctionElementsSpace = 0;
  self->_junctionElementsCount = 0;
  free(self->_junctionElements);
  self->_junctionElements = 0;
}

- (void)_readJunctionElements
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 251) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readJunctionElements_tags_48605);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (void)_readSignposts
{
  if (self)
  {
    os_unfair_lock_lock((self + 168));
    if ((*(self + 252) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOStepReadSpecified(self, *(self + 8), &_readSignposts_tags_48604);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 168));
  }
}

- (id)firstNameInfo
{
  maneuverNames = [(GEOStep *)self maneuverNames];
  v3 = maneuverNames;
  if (maneuverNames && [maneuverNames count])
  {
    v4 = [v3 objectAtIndex:0];
    nameInfos = [v4 nameInfos];

    if ([nameInfos count])
    {
      v6 = [nameInfos objectAtIndex:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSMutableArray)maneuverNames
{
  [(GEOStep *)self _readManeuverNames];
  maneuverNames = self->_maneuverNames;

  return maneuverNames;
}

- (void)dealloc
{
  [(GEOStep *)self clearJunctionElements];
  v3.receiver = self;
  v3.super_class = GEOStep;
  [(GEOStep *)&v3 dealloc];
}

@end