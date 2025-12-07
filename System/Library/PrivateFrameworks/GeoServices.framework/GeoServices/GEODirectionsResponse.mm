@interface GEODirectionsResponse
- (GEODirectionsResponse)init;
- (NSData)sessionState;
- (NSMutableArray)incidentsOffRoutes;
- (void)_readIncidentsOffRoutes;
- (void)_readSessionState;
- (void)clearProblemDetails;
- (void)dealloc;
@end

@implementation GEODirectionsResponse

- (void)_readSessionState
{
  if (self)
  {
    os_unfair_lock_lock((self + 376));
    if ((*(self + 408) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEODirectionsResponseReadSpecified(self, *(self + 8), &_readSessionState_tags_726);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 376));
  }
}

- (NSData)sessionState
{
  [(GEODirectionsResponse *)self _readSessionState];
  sessionState = self->_sessionState;

  return sessionState;
}

- (void)dealloc
{
  [(GEODirectionsResponse *)self clearProblemDetails];
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEODirectionsResponse;
  [(GEODirectionsResponse *)&v3 dealloc];
}

- (void)clearProblemDetails
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 0x400uLL;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x400000000000uLL;
  self->_problemDetailsSpace = 0;
  self->_problemDetailsCount = 0;
  free(self->_problemDetails);
  self->_problemDetails = 0;
}

- (GEODirectionsResponse)init
{
  v6.receiver = self;
  v6.super_class = GEODirectionsResponse;
  v2 = [(GEODirectionsResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (NSMutableArray)incidentsOffRoutes
{
  [(GEODirectionsResponse *)self _readIncidentsOffRoutes];
  incidentsOffRoutes = self->_incidentsOffRoutes;

  return incidentsOffRoutes;
}

- (void)_readIncidentsOffRoutes
{
  if (self)
  {
    os_unfair_lock_lock((self + 376));
    if ((*(self + 406) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEODirectionsResponseReadSpecified(self, *(self + 8), &_readIncidentsOffRoutes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 376));
  }
}

@end