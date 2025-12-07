@interface GEODirectionsRequest
- (GEODirectionsRequest)init;
- (void)_readWaypointTypeds;
- (void)initDefaultFeedbackInfo;
@end

@implementation GEODirectionsRequest

- (void)initDefaultFeedbackInfo
{
  if (![(GEODirectionsRequest *)self hasSessionID])
  {
    v3 = +[GEOUserSession sharedInstance];
    mapsUserSessionEntity = [v3 mapsUserSessionEntity];
    sessionID = [mapsUserSessionEntity sessionID];
    [(GEODirectionsRequest *)self setSessionID:sessionID, v6];
  }

  if (![(GEODirectionsRequest *)self hasSessionRelativeTimestamp])
  {
    v8 = +[GEOUserSession sharedInstance];
    mapsUserSessionEntity2 = [v8 mapsUserSessionEntity];
    [mapsUserSessionEntity2 sessionRelativeTimestamp];
    [(GEODirectionsRequest *)self setSessionRelativeTimestamp:?];
  }
}

- (GEODirectionsRequest)init
{
  v6.receiver = self;
  v6.super_class = GEODirectionsRequest;
  v2 = [(GEODirectionsRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    [(GEODirectionsRequest *)v2 initDefaultFeedbackInfo];
    v4 = v3;
  }

  return v3;
}

- (void)_readWaypointTypeds
{
  if (self)
  {
    os_unfair_lock_lock((self + 344));
    if ((*(self + 390) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEODirectionsRequestReadSpecified(self, *(self + 8), &_readWaypointTypeds_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 344));
  }
}

@end