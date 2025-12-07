@interface GEOETATrafficUpdateWaypointRoute
- (GEOETATrafficUpdateWaypointRoute)init;
- (GEOTraversalTimes)traversalTimes;
- (NSMutableArray)incidentsOnUserWaypointRoutes;
- (NSMutableArray)newWaypointRoutes;
- (NSMutableArray)routeLegs;
- (NSMutableArray)trafficBannerTexts;
- (void)_readIncidentsOnUserWaypointRoutes;
- (void)_readNewWaypointRoutes;
- (void)_readRouteLegs;
- (void)_readTrafficBannerTexts;
- (void)_readTraversalTimes;
@end

@implementation GEOETATrafficUpdateWaypointRoute

- (GEOETATrafficUpdateWaypointRoute)init
{
  v6.receiver = self;
  v6.super_class = GEOETATrafficUpdateWaypointRoute;
  v2 = [(GEOETATrafficUpdateWaypointRoute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readRouteLegs
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 100) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateWaypointRouteReadSpecified(self, *(self + 8), &_readRouteLegs_tags_184466);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (GEOTraversalTimes)traversalTimes
{
  [(GEOETATrafficUpdateWaypointRoute *)self _readTraversalTimes];
  traversalTimes = self->_traversalTimes;

  return traversalTimes;
}

- (NSMutableArray)newWaypointRoutes
{
  [(GEOETATrafficUpdateWaypointRoute *)self _readNewWaypointRoutes];
  newWaypointRoutes = self->_newWaypointRoutes;

  return newWaypointRoutes;
}

- (void)_readTraversalTimes
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 100) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateWaypointRouteReadSpecified(self, *(self + 8), &_readTraversalTimes_tags_184507);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (void)_readNewWaypointRoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 100) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateWaypointRouteReadSpecified(self, *(self + 8), &_readNewWaypointRoutes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (void)_readTrafficBannerTexts
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 100) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateWaypointRouteReadSpecified(self, *(self + 8), &_readTrafficBannerTexts_tags_184465);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (NSMutableArray)trafficBannerTexts
{
  [(GEOETATrafficUpdateWaypointRoute *)self _readTrafficBannerTexts];
  trafficBannerTexts = self->_trafficBannerTexts;

  return trafficBannerTexts;
}

- (NSMutableArray)routeLegs
{
  [(GEOETATrafficUpdateWaypointRoute *)self _readRouteLegs];
  routeLegs = self->_routeLegs;

  return routeLegs;
}

- (NSMutableArray)incidentsOnUserWaypointRoutes
{
  [(GEOETATrafficUpdateWaypointRoute *)self _readIncidentsOnUserWaypointRoutes];
  incidentsOnUserWaypointRoutes = self->_incidentsOnUserWaypointRoutes;

  return incidentsOnUserWaypointRoutes;
}

- (void)_readIncidentsOnUserWaypointRoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 100) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateWaypointRouteReadSpecified(self, *(self + 8), &_readIncidentsOnUserWaypointRoutes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

@end