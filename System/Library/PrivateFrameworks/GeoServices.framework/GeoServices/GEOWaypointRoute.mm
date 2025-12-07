@interface GEOWaypointRoute
- (GEORestrictionZoneInfo)restrictionZoneInfo;
- (GEORoutePlanningInfo)routePlanningInfo;
- (GEOTraversalTimes)traversalTimes;
- (GEOWaypointRoute)init;
- (GEOWaypointRouteFeatures)feature;
- (NSMutableArray)incidentsOnRouteLegs;
- (NSMutableArray)names;
- (NSMutableArray)routeLegs;
- (NSMutableArray)trafficCameras;
- (NSMutableArray)trafficSignals;
- (id)_geoTrafficCameras;
- (id)_geoTrafficSignals;
- (int)transportType;
- (unint64_t)routeLegsCount;
- (void)_readArrivalParameters;
- (void)_readFeature;
- (void)_readIncidentsOnRouteLegs;
- (void)_readInitialPromptTypes;
- (void)_readNames;
- (void)_readRestrictionZoneInfo;
- (void)_readRouteLegs;
- (void)_readRoutePlanningInfo;
- (void)_readTrafficCameras;
- (void)_readTrafficSignals;
- (void)_readTraversalTimes;
- (void)dealloc;
@end

@implementation GEOWaypointRoute

- (GEOWaypointRoute)init
{
  v6.receiver = self;
  v6.super_class = GEOWaypointRoute;
  v2 = [(GEOWaypointRoute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEORoutePlanningInfo)routePlanningInfo
{
  [(GEOWaypointRoute *)self _readRoutePlanningInfo];
  routePlanningInfo = self->_routePlanningInfo;

  return routePlanningInfo;
}

- (GEOTraversalTimes)traversalTimes
{
  [(GEOWaypointRoute *)self _readTraversalTimes];
  traversalTimes = self->_traversalTimes;

  return traversalTimes;
}

- (void)_readRouteLegs
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readRouteLegs_tags_9795);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (void)_readNames
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readNames_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (int)transportType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 8) != 0)
  {
    return self->_transportType;
  }

  else
  {
    return 0;
  }
}

- (void)_readTraversalTimes
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 190) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readTraversalTimes_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (GEOWaypointRouteFeatures)feature
{
  [(GEOWaypointRoute *)self _readFeature];
  feature = self->_feature;

  return feature;
}

- (void)_readFeature
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readFeature_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (unint64_t)routeLegsCount
{
  [(GEOWaypointRoute *)self _readRouteLegs];
  routeLegs = self->_routeLegs;

  return [(NSMutableArray *)routeLegs count];
}

- (NSMutableArray)names
{
  [(GEOWaypointRoute *)self _readNames];
  names = self->_names;

  return names;
}

- (void)_readRoutePlanningInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readRoutePlanningInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (id)_geoTrafficCameras
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  trafficCameras = [(GEOWaypointRoute *)self trafficCameras];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(trafficCameras, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  trafficCameras2 = [(GEOWaypointRoute *)self trafficCameras];
  v7 = [trafficCameras2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(trafficCameras2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        identifier = [v11 identifier];

        if (identifier)
        {
          identifier2 = [v11 identifier];
          [v5 setObject:v11 forKeyedSubscript:identifier2];
        }
      }

      v8 = [trafficCameras2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_readTrafficCameras
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 190) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readTrafficCameras_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (NSMutableArray)trafficSignals
{
  [(GEOWaypointRoute *)self _readTrafficSignals];
  trafficSignals = self->_trafficSignals;

  return trafficSignals;
}

- (void)_readTrafficSignals
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 190) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readTrafficSignals_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (NSMutableArray)incidentsOnRouteLegs
{
  [(GEOWaypointRoute *)self _readIncidentsOnRouteLegs];
  incidentsOnRouteLegs = self->_incidentsOnRouteLegs;

  return incidentsOnRouteLegs;
}

- (void)_readArrivalParameters
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readArrivalParameters_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (void)_readRestrictionZoneInfo
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readRestrictionZoneInfo_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (GEORestrictionZoneInfo)restrictionZoneInfo
{
  [(GEOWaypointRoute *)self _readRestrictionZoneInfo];
  restrictionZoneInfo = self->_restrictionZoneInfo;

  return restrictionZoneInfo;
}

- (NSMutableArray)trafficCameras
{
  [(GEOWaypointRoute *)self _readTrafficCameras];
  trafficCameras = self->_trafficCameras;

  return trafficCameras;
}

- (id)_geoTrafficSignals
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  trafficSignals = [(GEOWaypointRoute *)self trafficSignals];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(trafficSignals, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  trafficSignals2 = [(GEOWaypointRoute *)self trafficSignals];
  v7 = [trafficSignals2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(trafficSignals2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        identifier = [v11 identifier];

        if (identifier)
        {
          identifier2 = [v11 identifier];
          [v5 setObject:v11 forKeyedSubscript:identifier2];
        }
      }

      v8 = [trafficSignals2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_readIncidentsOnRouteLegs
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 189) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readIncidentsOnRouteLegs_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (void)_readInitialPromptTypes
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    if ((*(self + 188) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOWaypointRouteReadSpecified(self, *(self + 8), &_readInitialPromptTypes_tags_9801);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 160));
  }
}

- (NSMutableArray)routeLegs
{
  [(GEOWaypointRoute *)self _readRouteLegs];
  routeLegs = self->_routeLegs;

  return routeLegs;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOWaypointRoute;
  [(GEOWaypointRoute *)&v3 dealloc];
}

@end