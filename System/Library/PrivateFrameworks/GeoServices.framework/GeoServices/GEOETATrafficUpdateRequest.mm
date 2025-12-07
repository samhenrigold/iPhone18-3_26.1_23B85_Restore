@interface GEOETATrafficUpdateRequest
- (GEOETATrafficUpdateRequest)init;
- (GEOLocation)currentUserLocation;
- (GEOLocation)tripOrigin;
- (GEORouteAttributes)routeAttributes;
- (NSString)xpcUuid;
- (void)_readCurrentUserLocation;
- (void)_readDestinationWaypointTypeds;
- (void)_readRouteAttributes;
- (void)_readTripOrigin;
- (void)_readUserIncidentReports;
- (void)_readWaypointTypeds;
- (void)_readXpcUuid;
@end

@implementation GEOETATrafficUpdateRequest

- (GEOETATrafficUpdateRequest)init
{
  v6.receiver = self;
  v6.super_class = GEOETATrafficUpdateRequest;
  v2 = [(GEOETATrafficUpdateRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readCurrentUserLocation
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 314) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readCurrentUserLocation_tags_184638);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEOLocation)currentUserLocation
{
  [(GEOETATrafficUpdateRequest *)self _readCurrentUserLocation];
  currentUserLocation = self->_currentUserLocation;

  return currentUserLocation;
}

- (void)_readDestinationWaypointTypeds
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 314) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readDestinationWaypointTypeds_tags_1398);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readWaypointTypeds
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 316) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readWaypointTypeds_tags_184635);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readTripOrigin
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 316) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readTripOrigin_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEOLocation)tripOrigin
{
  [(GEOETATrafficUpdateRequest *)self _readTripOrigin];
  tripOrigin = self->_tripOrigin;

  return tripOrigin;
}

- (void)_readUserIncidentReports
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 316) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readUserIncidentReports_tags_184636);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (NSString)xpcUuid
{
  [(GEOETATrafficUpdateRequest *)self _readXpcUuid];
  xpcUuid = self->_xpcUuid;

  return xpcUuid;
}

- (void)_readXpcUuid
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 316) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readXpcUuid_tags_184396);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (void)_readRouteAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 280));
    if ((*(self + 315) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateRequestReadSpecified(self, *(self + 8), &_readRouteAttributes_tags_184771);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 280));
  }
}

- (GEORouteAttributes)routeAttributes
{
  [(GEOETATrafficUpdateRequest *)self _readRouteAttributes];
  routeAttributes = self->_routeAttributes;

  return routeAttributes;
}

@end