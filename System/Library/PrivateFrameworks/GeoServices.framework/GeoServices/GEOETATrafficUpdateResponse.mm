@interface GEOETATrafficUpdateResponse
- (GEOCommonResponseAttributes)responseAttributes;
- (GEOETATrafficUpdateResponse)init;
- (GEOETATrafficUpdateWaypointRoute)waypointRoute;
- (GEOPDDatasetABStatus)datasetAbStatus;
- (NSData)responseId;
- (NSMutableArray)routes;
- (int)status;
- (void)_readDatasetAbStatus;
- (void)_readResponseAttributes;
- (void)_readResponseId;
- (void)_readRoutes;
- (void)_readWaypointRoute;
- (void)clearProblemDetails;
- (void)dealloc;
@end

@implementation GEOETATrafficUpdateResponse

- (GEOETATrafficUpdateResponse)init
{
  v6.receiver = self;
  v6.super_class = GEOETATrafficUpdateResponse;
  v2 = [(GEOETATrafficUpdateResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (int)status
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 2) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (GEOPDDatasetABStatus)datasetAbStatus
{
  [(GEOETATrafficUpdateResponse *)self _readDatasetAbStatus];
  datasetAbStatus = self->_datasetAbStatus;

  return datasetAbStatus;
}

- (void)_readDatasetAbStatus
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 172) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateResponseReadSpecified(self, *(self + 8), &_readDatasetAbStatus_tags_1690);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (GEOETATrafficUpdateWaypointRoute)waypointRoute
{
  [(GEOETATrafficUpdateResponse *)self _readWaypointRoute];
  waypointRoute = self->_waypointRoute;

  return waypointRoute;
}

- (NSData)responseId
{
  [(GEOETATrafficUpdateResponse *)self _readResponseId];
  responseId = self->_responseId;

  return responseId;
}

- (void)_readResponseId
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 173) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateResponseReadSpecified(self, *(self + 8), &_readResponseId_tags_184627);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (NSMutableArray)routes
{
  [(GEOETATrafficUpdateResponse *)self _readRoutes];
  routes = self->_routes;

  return routes;
}

- (void)_readRoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 173) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateResponseReadSpecified(self, *(self + 8), &_readRoutes_tags_1687);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (void)_readWaypointRoute
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 174) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateResponseReadSpecified(self, *(self + 8), &_readWaypointRoute_tags_1688);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (GEOCommonResponseAttributes)responseAttributes
{
  [(GEOETATrafficUpdateResponse *)self _readResponseAttributes];
  responseAttributes = self->_responseAttributes;

  return responseAttributes;
}

- (void)_readResponseAttributes
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 173) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOETATrafficUpdateResponseReadSpecified(self, *(self + 8), &_readResponseAttributes_tags_1696);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (void)clearProblemDetails
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 8u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x20000u;
  self->_problemDetailsSpace = 0;
  self->_problemDetailsCount = 0;
  free(self->_problemDetails);
  self->_problemDetails = 0;
}

- (void)dealloc
{
  [(GEOETATrafficUpdateResponse *)self clearProblemDetails];
  v3.receiver = self;
  v3.super_class = GEOETATrafficUpdateResponse;
  [(GEOETATrafficUpdateResponse *)&v3 dealloc];
}

@end