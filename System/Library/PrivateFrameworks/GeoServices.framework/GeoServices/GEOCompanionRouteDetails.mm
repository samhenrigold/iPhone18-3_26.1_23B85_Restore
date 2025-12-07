@interface GEOCompanionRouteDetails
- (GEOCompanionRouteDetails)init;
- (NSMutableArray)steps;
- (int)transportType;
- (unint64_t)stepsCount;
- (void)_readSteps;
- (void)_readWaypoints;
- (void)dealloc;
@end

@implementation GEOCompanionRouteDetails

- (GEOCompanionRouteDetails)init
{
  v6.receiver = self;
  v6.super_class = GEOCompanionRouteDetails;
  v2 = [(GEOCompanionRouteDetails *)&v6 init];
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
    os_unfair_lock_lock((self + 272));
    if ((*(self + 307) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionRouteDetailsReadSpecified(self, *(self + 8), &_readSteps_tags_37067);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 272));
  }
}

- (NSMutableArray)steps
{
  [(GEOCompanionRouteDetails *)self _readSteps];
  steps = self->_steps;

  return steps;
}

- (unint64_t)stepsCount
{
  [(GEOCompanionRouteDetails *)self _readSteps];
  steps = self->_steps;

  return [(NSMutableArray *)steps count];
}

- (void)_readWaypoints
{
  if (self)
  {
    os_unfair_lock_lock((self + 272));
    if ((*(self + 308) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionRouteDetailsReadSpecified(self, *(self + 8), &_readWaypoints_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 272));
  }
}

- (int)transportType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x20) != 0)
  {
    return self->_transportType;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  PBRepeatedDoubleClear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOCompanionRouteDetails;
  [(GEOCompanionRouteDetails *)&v3 dealloc];
}

@end