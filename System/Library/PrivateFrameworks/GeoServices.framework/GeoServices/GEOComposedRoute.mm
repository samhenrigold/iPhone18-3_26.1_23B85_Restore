@interface GEOComposedRoute
- (BOOL)isEVRoute;
- (GEOComposedRoute)init;
- (GEOComposedRouteMutableData)mutableData;
- (GEOComposedRouteTraffic)traffic;
- (GEOComposedWaypoint)destination;
- (GEOPolylineCoordinateRange)routeCoordinateRange;
- (NSArray)waypoints;
- (id)lastEVStep;
- (void)_initializeManeuverDisplaySteps;
- (void)dealloc;
@end

@implementation GEOComposedRoute

- (GEOPolylineCoordinateRange)routeCoordinateRange
{
  startRouteCoordinate = [(GEOComposedRoute *)self startRouteCoordinate];
  endRouteCoordinate = [(GEOComposedRoute *)self endRouteCoordinate];
  v5 = startRouteCoordinate;
  result.end = endRouteCoordinate;
  result.start = v5;
  return result;
}

- (GEOComposedRouteMutableData)mutableData
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__28135;
  v8 = __Block_byref_object_dispose__28136;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)lastEVStep
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  steps = [(GEOComposedRoute *)self steps];
  reverseObjectEnumerator = [steps reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        evInfo = [v7 evInfo];
        v9 = evInfo == 0;

        if (!v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)isEVRoute
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_steps;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        evInfo = [*(*(&v9 + 1) + 8 * i) evInfo];
        v7 = evInfo == 0;

        if (!v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (GEOComposedWaypoint)destination
{
  lastObject = [(NSArray *)self->_legs lastObject];
  destination = [lastObject destination];

  return destination;
}

void __27__GEOComposedRoute_traffic__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 608) traffic];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)waypoints
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_legs count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_legs;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          origin = [*(*(&v12 + 1) + 8 * i) origin];
          [v3 addObject:origin];
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    lastObject = [(NSArray *)self->_legs lastObject];
    destination = [lastObject destination];
    [v3 addObject:destination];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (GEOComposedRouteTraffic)traffic
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__28135;
  v8 = __Block_byref_object_dispose__28136;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (GEOComposedRoute)init
{
  v12.receiver = self;
  v12.super_class = GEOComposedRoute;
  v2 = [(GEOComposedRoute *)&v12 init];
  if (v2)
  {
    v3 = geo_reentrant_isolater_create();
    snappedRoutesIsolater = v2->_snappedRoutesIsolater;
    v2->_snappedRoutesIsolater = v3;

    v5 = geo_isolater_create();
    mutableDataLock = v2->_mutableDataLock;
    v2->_mutableDataLock = v5;

    v7 = geo_isolater_create();
    encodeIsolater = v2->_encodeIsolater;
    v2->_encodeIsolater = v7;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueRouteID = v2->_uniqueRouteID;
    v2->_uniqueRouteID = uUID;

    v2->_indexInResponse = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_steps;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v16 + 1) + 8 * v6++) setComposedRoute:0];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_segments;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) setComposedRoute:0];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = GEOComposedRoute;
  [(GEOComposedRoute *)&v11 dealloc];
}

- (void)_initializeManeuverDisplaySteps
{
  steps = [(GEOComposedRoute *)self steps];
  maneuverDisplaySteps = self->_maneuverDisplaySteps;
  self->_maneuverDisplaySteps = steps;
}

@end