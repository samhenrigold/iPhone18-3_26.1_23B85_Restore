@interface GEOCompanionRouteStatus
- (BOOL)isNavigating;
- (GEOCompanionRouteStatus)init;
- (GEOCompanionTransitAlightMessage)alightMessage;
- (NSArray)selectedRideIndices;
- (NSData)routeID;
- (int)feedbackType;
- (int)hapticsType;
- (unsigned)effectiveStepID;
- (void)_readAlightMessage;
- (void)_readRouteID;
- (void)_readSelectedRideIndexs;
- (void)dealloc;
@end

@implementation GEOCompanionRouteStatus

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOCompanionRouteStatus;
  [(GEOCompanionRouteStatus *)&v3 dealloc];
}

- (GEOCompanionRouteStatus)init
{
  v6.receiver = self;
  v6.super_class = GEOCompanionRouteStatus;
  v2 = [(GEOCompanionRouteStatus *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)isNavigating
{
  hasFeedbackType = [(GEOCompanionRouteStatus *)self hasFeedbackType];
  if (hasFeedbackType)
  {
    hasFeedbackType = [(GEOCompanionRouteStatus *)self feedbackType];
    if (hasFeedbackType)
    {
      LOBYTE(hasFeedbackType) = [(GEOCompanionRouteStatus *)self feedbackType]!= 8;
    }
  }

  return hasFeedbackType;
}

- (NSData)routeID
{
  [(GEOCompanionRouteStatus *)self _readRouteID];
  routeID = self->_routeID;

  return routeID;
}

- (void)_readRouteID
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 138) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionRouteStatusReadSpecified(self, *(self + 8), &_readRouteID_tags_698);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (int)feedbackType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x20) != 0)
  {
    return self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

- (int)hapticsType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x40) != 0)
  {
    return self->_hapticsType;
  }

  else
  {
    return 0;
  }
}

- (unsigned)effectiveStepID
{
  feedbackType = [(GEOCompanionRouteStatus *)self feedbackType];
  if (feedbackType == 1 || feedbackType == 8)
  {
    return 0;
  }

  return [(GEOCompanionRouteStatus *)self stepID];
}

- (NSArray)selectedRideIndices
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[GEOCompanionRouteStatus selectedRideIndexsCount](self, "selectedRideIndexsCount")}];
  if ([(GEOCompanionRouteStatus *)self selectedRideIndexsCount])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GEOCompanionRouteStatus selectedRideIndexAtIndex:](self, "selectedRideIndexAtIndex:", v4)}];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(GEOCompanionRouteStatus *)self selectedRideIndexsCount]);
  }

  v6 = [v3 copy];

  return v6;
}

- (void)_readSelectedRideIndexs
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 137) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionRouteStatusReadSpecified(self, *(self + 8), &_readSelectedRideIndexs_tags_699);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

- (GEOCompanionTransitAlightMessage)alightMessage
{
  [(GEOCompanionRouteStatus *)self _readAlightMessage];
  alightMessage = self->_alightMessage;

  return alightMessage;
}

- (void)_readAlightMessage
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    if ((*(self + 138) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOCompanionRouteStatusReadSpecified(self, *(self + 8), &_readAlightMessage_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 88));
  }
}

@end