@interface GEORoutePlanningInfo
- (GEOAdvisoriesInfo)advisoriesInfo;
- (GEOFormattedString)infrastructureDescription;
- (GEOFormattedString)labelDetailText;
- (GEOFormattedString)trafficDescriptionText;
- (GEOLabelAction)labelAction;
- (GEOPBTransitArtwork)labelArtwork;
- (GEOPBTransitArtwork)trafficDescriptionArtwork;
- (GEORouteInformation)routePlanningDescription;
- (GEORoutePlanningInfo)init;
- (NSMutableArray)routeGeniusDescriptions;
- (void)_readAdvisoriesInfo;
- (void)_readInfrastructureDescription;
- (void)_readLabelAction;
- (void)_readLabelArtwork;
- (void)_readLabelDetailText;
- (void)_readRouteGeniusDescriptions;
- (void)_readRoutePlanningDescription;
- (void)_readTrafficDescriptionArtwork;
- (void)_readTrafficDescriptionText;
@end

@implementation GEORoutePlanningInfo

- (GEORoutePlanningInfo)init
{
  v6.receiver = self;
  v6.super_class = GEORoutePlanningInfo;
  v2 = [(GEORoutePlanningInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOFormattedString)trafficDescriptionText
{
  [(GEORoutePlanningInfo *)self _readTrafficDescriptionText];
  trafficDescriptionText = self->_trafficDescriptionText;

  return trafficDescriptionText;
}

- (void)_readTrafficDescriptionText
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readTrafficDescriptionText_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOFormattedString)labelDetailText
{
  [(GEORoutePlanningInfo *)self _readLabelDetailText];
  labelDetailText = self->_labelDetailText;

  return labelDetailText;
}

- (void)_readLabelDetailText
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readLabelDetailText_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOLabelAction)labelAction
{
  [(GEORoutePlanningInfo *)self _readLabelAction];
  labelAction = self->_labelAction;

  return labelAction;
}

- (void)_readLabelAction
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readLabelAction_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOPBTransitArtwork)labelArtwork
{
  [(GEORoutePlanningInfo *)self _readLabelArtwork];
  labelArtwork = self->_labelArtwork;

  return labelArtwork;
}

- (void)_readLabelArtwork
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readLabelArtwork_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOFormattedString)infrastructureDescription
{
  [(GEORoutePlanningInfo *)self _readInfrastructureDescription];
  infrastructureDescription = self->_infrastructureDescription;

  return infrastructureDescription;
}

- (void)_readInfrastructureDescription
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readInfrastructureDescription_tags_7002);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEORouteInformation)routePlanningDescription
{
  [(GEORoutePlanningInfo *)self _readRoutePlanningDescription];
  routePlanningDescription = self->_routePlanningDescription;

  return routePlanningDescription;
}

- (void)_readRoutePlanningDescription
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readRoutePlanningDescription_tags_7001);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOPBTransitArtwork)trafficDescriptionArtwork
{
  [(GEORoutePlanningInfo *)self _readTrafficDescriptionArtwork];
  trafficDescriptionArtwork = self->_trafficDescriptionArtwork;

  return trafficDescriptionArtwork;
}

- (void)_readTrafficDescriptionArtwork
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x400) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readTrafficDescriptionArtwork_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  [(GEORoutePlanningInfo *)self _readAdvisoriesInfo];
  advisoriesInfo = self->_advisoriesInfo;

  return advisoriesInfo;
}

- (NSMutableArray)routeGeniusDescriptions
{
  [(GEORoutePlanningInfo *)self _readRouteGeniusDescriptions];
  routeGeniusDescriptions = self->_routeGeniusDescriptions;

  return routeGeniusDescriptions;
}

- (void)_readAdvisoriesInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readAdvisoriesInfo_tags_48777);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (void)_readRouteGeniusDescriptions
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 124) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEORoutePlanningInfoReadSpecified(self, *(self + 8), &_readRouteGeniusDescriptions_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

@end