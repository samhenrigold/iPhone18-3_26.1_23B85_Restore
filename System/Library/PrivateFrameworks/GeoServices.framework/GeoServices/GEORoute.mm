@interface GEORoute
- (GEODrivingWalkingInstruction)destinationListInstruction;
- (GEODrivingWalkingInstruction)originListInstruction;
- (GEOElevationProfile)elevationProfile;
- (GEOPathMapMatcherInstructions)pathMapMatcherInstructions;
- (GEORoute)init;
- (GEOWaypointInfo)destinationWaypointInfo;
- (GEOWaypointInfo)originWaypointInfo;
- (NSData)pathLeg;
- (NSData)routeID;
- (NSMutableArray)enrouteNotices;
- (NSMutableArray)guidanceEvents;
- (NSMutableArray)routeCameraInputInfos;
- (NSMutableArray)routeLineStyleInfos;
- (NSMutableArray)routeNames;
- (NSMutableArray)steps;
- (NSMutableArray)updateLocations;
- (int)drivingSide;
- (unint64_t)enrouteNoticesCount;
- (void)_readCellularCoverageOffsets;
- (void)_readCellularCoverages;
- (void)_readDestinationListInstruction;
- (void)_readDestinationWaypointInfo;
- (void)_readElevationProfile;
- (void)_readEnrouteNotices;
- (void)_readGuidanceEvents;
- (void)_readIncidentEndOffsetsInRoutes;
- (void)_readIncidentIndices;
- (void)_readOriginListInstruction;
- (void)_readOriginWaypointInfo;
- (void)_readPathLeg;
- (void)_readPathMapMatcherInstructions;
- (void)_readRouteCameraInputInfos;
- (void)_readRouteID;
- (void)_readRouteLineStyleInfos;
- (void)_readRouteNames;
- (void)_readSteps;
- (void)_readTrafficColorOffsets;
- (void)_readTrafficColors;
- (void)_readUpdateLocations;
- (void)dealloc;
@end

@implementation GEORoute

- (void)_readPathLeg
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 585) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readPathLeg_tags_5513);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)steps
{
  [(GEORoute *)self _readSteps];
  steps = self->_steps;

  return steps;
}

- (void)_readSteps
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 587) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readSteps_tags_48613);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (int)drivingSide
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 0x10) != 0)
  {
    return self->_drivingSide;
  }

  else
  {
    return 0;
  }
}

- (GEORoute)init
{
  v6.receiver = self;
  v6.super_class = GEORoute;
  v2 = [(GEORoute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSData)pathLeg
{
  [(GEORoute *)self _readPathLeg];
  pathLeg = self->_pathLeg;

  return pathLeg;
}

- (GEOPathMapMatcherInstructions)pathMapMatcherInstructions
{
  [(GEORoute *)self _readPathMapMatcherInstructions];
  pathMapMatcherInstructions = self->_pathMapMatcherInstructions;

  return pathMapMatcherInstructions;
}

- (void)_readPathMapMatcherInstructions
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 585) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readPathMapMatcherInstructions_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readDestinationListInstruction
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 583) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readDestinationListInstruction_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)guidanceEvents
{
  [(GEORoute *)self _readGuidanceEvents];
  guidanceEvents = self->_guidanceEvents;

  return guidanceEvents;
}

- (void)_readGuidanceEvents
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 584) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readGuidanceEvents_tags_48734);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (unint64_t)enrouteNoticesCount
{
  [(GEORoute *)self _readEnrouteNotices];
  enrouteNotices = self->_enrouteNotices;

  return [(NSMutableArray *)enrouteNotices count];
}

- (NSData)routeID
{
  [(GEORoute *)self _readRouteID];
  routeID = self->_routeID;

  return routeID;
}

- (void)_readRouteID
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 586) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readRouteID_tags_48739);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readOriginListInstruction
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 585) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readOriginListInstruction_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (GEODrivingWalkingInstruction)destinationListInstruction
{
  [(GEORoute *)self _readDestinationListInstruction];
  destinationListInstruction = self->_destinationListInstruction;

  return destinationListInstruction;
}

- (void)_readCellularCoverages
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 582) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readCellularCoverages_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readRouteNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 586) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readRouteNames_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)routeCameraInputInfos
{
  [(GEORoute *)self _readRouteCameraInputInfos];
  routeCameraInputInfos = self->_routeCameraInputInfos;

  return routeCameraInputInfos;
}

- (NSMutableArray)updateLocations
{
  [(GEORoute *)self _readUpdateLocations];
  updateLocations = self->_updateLocations;

  return updateLocations;
}

- (void)_readUpdateLocations
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 588) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readUpdateLocations_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (GEOWaypointInfo)originWaypointInfo
{
  [(GEORoute *)self _readOriginWaypointInfo];
  originWaypointInfo = self->_originWaypointInfo;

  return originWaypointInfo;
}

- (void)_readTrafficColors
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 583) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readTrafficColors_tags_48738);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readIncidentIndices
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 582) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readIncidentIndices_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readIncidentEndOffsetsInRoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 582) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readIncidentEndOffsetsInRoutes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (GEODrivingWalkingInstruction)originListInstruction
{
  [(GEORoute *)self _readOriginListInstruction];
  originListInstruction = self->_originListInstruction;

  return originListInstruction;
}

- (void)_readOriginWaypointInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 585) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readOriginWaypointInfo_tags_5524);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (GEOWaypointInfo)destinationWaypointInfo
{
  [(GEORoute *)self _readDestinationWaypointInfo];
  destinationWaypointInfo = self->_destinationWaypointInfo;

  return destinationWaypointInfo;
}

- (void)_readDestinationWaypointInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 584) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readDestinationWaypointInfo_tags_5525);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readEnrouteNotices
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 584) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readEnrouteNotices_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)_readCellularCoverageOffsets
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 582) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readCellularCoverageOffsets_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)routeLineStyleInfos
{
  [(GEORoute *)self _readRouteLineStyleInfos];
  routeLineStyleInfos = self->_routeLineStyleInfos;

  return routeLineStyleInfos;
}

- (void)_readRouteLineStyleInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 586) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readRouteLineStyleInfos_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)routeNames
{
  [(GEORoute *)self _readRouteNames];
  routeNames = self->_routeNames;

  return routeNames;
}

- (void)_readRouteCameraInputInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 586) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readRouteCameraInputInfos_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (GEOElevationProfile)elevationProfile
{
  [(GEORoute *)self _readElevationProfile];
  elevationProfile = self->_elevationProfile;

  return elevationProfile;
}

- (void)_readElevationProfile
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 584) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readElevationProfile_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (NSMutableArray)enrouteNotices
{
  [(GEORoute *)self _readEnrouteNotices];
  enrouteNotices = self->_enrouteNotices;

  return enrouteNotices;
}

- (void)_readTrafficColorOffsets
{
  if (self)
  {
    os_unfair_lock_lock((self + 512));
    if ((*(self + 582) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORouteReadSpecified(self, *(self + 8), &_readTrafficColorOffsets_tags_48737);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 512));
  }
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEORoute;
  [(GEORoute *)&v3 dealloc];
}

@end