@interface GEOLogMsgEvent
- (GEOLogMsgEvent)init;
- (GEOLogMsgEventDirections)directionsEvent;
- (GEOLogMsgEventMapsEngagement)mapsEngagement;
- (GEOLogMsgEventNetworkSelectionHarvest)networkSelectionHarvest;
- (GEOLogMsgEventUserAction)userActionEvent;
- (GEOLogMsgEventWifiConnectionQualityProbe)wifiConnectionQualityProbeEvent;
- (NSMutableArray)logMsgStates;
- (int)eventType;
- (void)_readDirectionsEvent;
- (void)_readLogMsgStates;
- (void)_readMapsEngagement;
- (void)_readNetworkSelectionHarvest;
- (void)_readUserActionEvent;
- (void)_readWifiConnectionQualityProbeEvent;
@end

@implementation GEOLogMsgEvent

- (GEOLogMsgEventMapsEngagement)mapsEngagement
{
  [(GEOLogMsgEvent *)self _readMapsEngagement];
  mapsEngagement = self->_mapsEngagement;

  return mapsEngagement;
}

- (void)_readMapsEngagement
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 547) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readMapsEngagement_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

- (void)_readDirectionsEvent
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 545) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readDirectionsEvent_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

- (GEOLogMsgEventDirections)directionsEvent
{
  [(GEOLogMsgEvent *)self _readDirectionsEvent];
  directionsEvent = self->_directionsEvent;

  return directionsEvent;
}

- (GEOLogMsgEventWifiConnectionQualityProbe)wifiConnectionQualityProbeEvent
{
  [(GEOLogMsgEvent *)self _readWifiConnectionQualityProbeEvent];
  wifiConnectionQualityProbeEvent = self->_wifiConnectionQualityProbeEvent;

  return wifiConnectionQualityProbeEvent;
}

- (void)_readWifiConnectionQualityProbeEvent
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 552) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readWifiConnectionQualityProbeEvent_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

- (GEOLogMsgEvent)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgEvent;
  v2 = [(GEOLogMsgEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readLogMsgStates
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 546) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readLogMsgStates_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

- (int)eventType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (GEOLogMsgEventUserAction)userActionEvent
{
  [(GEOLogMsgEvent *)self _readUserActionEvent];
  userActionEvent = self->_userActionEvent;

  return userActionEvent;
}

- (void)_readUserActionEvent
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 551) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readUserActionEvent_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

- (NSMutableArray)logMsgStates
{
  [(GEOLogMsgEvent *)self _readLogMsgStates];
  logMsgStates = self->_logMsgStates;

  return logMsgStates;
}

- (GEOLogMsgEventNetworkSelectionHarvest)networkSelectionHarvest
{
  [(GEOLogMsgEvent *)self _readNetworkSelectionHarvest];
  networkSelectionHarvest = self->_networkSelectionHarvest;

  return networkSelectionHarvest;
}

- (void)_readNetworkSelectionHarvest
{
  if (self)
  {
    os_unfair_lock_lock((self + 536));
    if ((*(self + 548) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgEventReadSpecified(self, *(self + 8), &_readNetworkSelectionHarvest_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 536));
  }
}

@end