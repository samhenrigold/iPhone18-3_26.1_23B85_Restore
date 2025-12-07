@interface GEOETARoute
- (GEOETARoute)init;
- (GEOWaypointInfo)destinationWaypointInfo;
- (GEOWaypointInfo)originWaypointInfo;
- (NSMutableArray)routeCameraInputInfos;
- (NSMutableArray)routeLineStyleInfos;
- (NSMutableArray)steps;
- (void)_readDestinationWaypointInfo;
- (void)_readIncidentEndOffsetsInETARoutes;
- (void)_readIncidentIndexs;
- (void)_readOriginWaypointInfo;
- (void)_readRouteCameraInputInfos;
- (void)_readRouteLineStyleInfos;
- (void)_readSteps;
- (void)_readTrafficColorOffsets;
- (void)_readTrafficColors;
- (void)dealloc;
@end

@implementation GEOETARoute

- (GEOETARoute)init
{
  v6.receiver = self;
  v6.super_class = GEOETARoute;
  v2 = [(GEOETARoute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readSteps
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 311) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readSteps_tags_184239);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEOWaypointInfo)originWaypointInfo
{
  [(GEOETARoute *)self _readOriginWaypointInfo];
  originWaypointInfo = self->_originWaypointInfo;

  return originWaypointInfo;
}

- (GEOWaypointInfo)destinationWaypointInfo
{
  [(GEOETARoute *)self _readDestinationWaypointInfo];
  destinationWaypointInfo = self->_destinationWaypointInfo;

  return destinationWaypointInfo;
}

- (void)_readDestinationWaypointInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 309) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readDestinationWaypointInfo_tags_184114);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readOriginWaypointInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 310) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readOriginWaypointInfo_tags_184113);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (NSMutableArray)steps
{
  [(GEOETARoute *)self _readSteps];
  steps = self->_steps;

  return steps;
}

- (void)_readTrafficColors
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 309) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readTrafficColors_tags_184236);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readTrafficColorOffsets
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 309) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readTrafficColorOffsets_tags_184235);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readIncidentIndexs
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 309) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readIncidentIndexs_tags_184232);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readIncidentEndOffsetsInETARoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 308) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readIncidentEndOffsetsInETARoutes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (NSMutableArray)routeLineStyleInfos
{
  [(GEOETARoute *)self _readRouteLineStyleInfos];
  routeLineStyleInfos = self->_routeLineStyleInfos;

  return routeLineStyleInfos;
}

- (void)_readRouteLineStyleInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 311) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readRouteLineStyleInfos_tags_184234);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (NSMutableArray)routeCameraInputInfos
{
  [(GEOETARoute *)self _readRouteCameraInputInfos];
  routeCameraInputInfos = self->_routeCameraInputInfos;

  return routeCameraInputInfos;
}

- (void)_readRouteCameraInputInfos
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 311) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETARouteReadSpecified(self, *(self + 8), &_readRouteCameraInputInfos_tags_184233);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOETARoute;
  [(GEOETARoute *)&v3 dealloc];
}

@end