@interface PCOutOfPatternLogic
- (BOOL)_requestRetrainIfNeededWithReason:(id)reason;
- (BOOL)isOutOfPatternForInputSignals:(id)signals;
- (PCOutOfPatternLogic)initWithCoder:(id)coder;
- (PCOutOfPatternLogic)initWithModelCentroidLatLon:(id)lon;
- (id)closestHomeLOIFromCandidates:(id)candidates toLocation:(id)location;
- (id)filterCalendarEvents:(id)events;
- (id)filterInputSignals:(id)signals;
- (id)filterItems:(id)items usingLocationBlock:(id)block;
- (id)filterMapsViewedPlaces:(id)places;
- (id)filterTransitions:(id)transitions withLocationOfInterests:(id)interests;
- (id)filterVisits:(id)visits;
- (id)homeLOIsWithinBoundingBoxCenteredAtLocation:(id)location fromLocationOfInterests:(id)interests;
- (id)locationOfInterestForIdentifier:(id)identifier fromArray:(id)array;
- (id)processInputSignals:(id)signals isOutOfPattern:(BOOL *)pattern;
- (id)snapModelCentroidForCurrentLocation:(id)location withInputSignals:(id)signals;
- (void)encodeWithCoder:(id)coder;
- (void)resetAwaitingRetrainWithCurrentLocation:(id)location inputSignals:(id)signals;
@end

@implementation PCOutOfPatternLogic

- (PCOutOfPatternLogic)initWithModelCentroidLatLon:(id)lon
{
  lonCopy = lon;
  v9.receiver = self;
  v9.super_class = PCOutOfPatternLogic;
  v6 = [(PCOutOfPatternLogic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelCentroid, lon);
    v7->_isAwaitingRetrain = 0;
  }

  return v7;
}

- (id)processInputSignals:(id)signals isOutOfPattern:(BOOL *)pattern
{
  v29 = *MEMORY[0x1E69E9840];
  signalsCopy = signals;
  v7 = [(PCOutOfPatternLogic *)self isOutOfPatternForInputSignals:signalsCopy];
  visits = [signalsCopy visits];
  v9 = [visits count];

  transitions = [signalsCopy transitions];
  v11 = [transitions count];

  v12 = [(PCOutOfPatternLogic *)self filterInputSignals:signalsCopy];

  v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    visits2 = [v12 visits];
    v16 = [visits2 count];
    transitions2 = [v12 transitions];
    v19 = 136316162;
    v20 = v14;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v16;
    v27 = 2048;
    v28 = [transitions2 count];
    _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "out of pattern? %s, num input visits, %lu, num input transitions, %lu, num output visits, %lu, num output transitions, %lu", &v19, 0x34u);
  }

  if (pattern)
  {
    *pattern = v7;
  }

  return v12;
}

- (BOOL)isOutOfPatternForInputSignals:(id)signals
{
  v23 = *MEMORY[0x1E69E9840];
  signalsCopy = signals;
  locationHistorys = [signalsCopy locationHistorys];
  [signalsCopy currentTimeCFAbsolute];
  v7 = v6;

  v8 = [PCLocationUtils currentLocationWithLocationHistory:locationHistorys currentTime:v7];

  modelCentroid = [(PCOutOfPatternLogic *)self modelCentroid];

  if (!modelCentroid)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Missing model centroid, indicating no trained model", &v19, 2u);
    }

    v14 = @"initial model training";
    goto LABEL_10;
  }

  modelCentroid2 = [(PCOutOfPatternLogic *)self modelCentroid];
  v11 = [(PCOutOfPatternLogic *)self isLatLon:v8 insideBoundingBoxWithCentroid:modelCentroid2];

  if (!v11)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      modelCentroid3 = [(PCOutOfPatternLogic *)self modelCentroid];
      v16 = [modelCentroid3 description];
      v17 = [v8 description];
      v19 = 138740227;
      v20 = v16;
      v21 = 2117;
      v22 = v17;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Out-of-pattern detected. modelCentroid:%{sensitive}@, currentLatLon:%{sensitive}@", &v19, 0x16u);
    }

    v14 = @"GOOP detection";
LABEL_10:

    v12 = [(PCOutOfPatternLogic *)self _requestRetrainIfNeededWithReason:v14];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)filterInputSignals:(id)signals
{
  signalsCopy = signals;
  modelCentroid = [(PCOutOfPatternLogic *)self modelCentroid];

  if (modelCentroid)
  {
    v6 = [signalsCopy copy];
    visits = [signalsCopy visits];
    v8 = [(PCOutOfPatternLogic *)self filterVisits:visits];
    [v6 setVisits:v8];

    transitions = [signalsCopy transitions];
    locationOfInterests = [signalsCopy locationOfInterests];
    v11 = [(PCOutOfPatternLogic *)self filterTransitions:transitions withLocationOfInterests:locationOfInterests];
    [v6 setTransitions:v11];

    calendarEvents = [signalsCopy calendarEvents];
    v13 = [(PCOutOfPatternLogic *)self filterCalendarEvents:calendarEvents];
    [v6 setCalendarEvents:v13];

    mapsViewedPlaces = [signalsCopy mapsViewedPlaces];
    v15 = [(PCOutOfPatternLogic *)self filterMapsViewedPlaces:mapsViewedPlaces];
    [v6 setMapsViewedPlaces:v15];
  }

  else
  {
    v6 = signalsCopy;
  }

  return v6;
}

- (void)resetAwaitingRetrainWithCurrentLocation:(id)location inputSignals:(id)signals
{
  v14 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  signalsCopy = signals;
  if ([(PCOutOfPatternLogic *)self isAwaitingRetrain])
  {
    v8 = [(PCOutOfPatternLogic *)self snapModelCentroidForCurrentLocation:locationCopy withInputSignals:signalsCopy];
    [(PCOutOfPatternLogic *)self setModelCentroid:v8];

    [(PCOutOfPatternLogic *)self setIsAwaitingRetrain:0];
    v9 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      modelCentroid = [(PCOutOfPatternLogic *)self modelCentroid];
      v11 = [modelCentroid description];
      v12 = 138739971;
      v13 = v11;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_DEFAULT, "Reset awaiting retrain state after successful retrain. New modelCentroid: %{sensitive}@", &v12, 0xCu);
    }
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_INFO, "Reset awaiting retrain state while not waiting for a retrain, no-op", &v12, 2u);
    }
  }
}

- (id)homeLOIsWithinBoundingBoxCenteredAtLocation:(id)location fromLocationOfInterests:(id)interests
{
  v29 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  interestsCopy = interests;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = interestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 placeType] == 1)
        {
          v14 = [PCLatLon alloc];
          location = [v13 location];
          [location locationLatitudeDeg];
          v17 = v16;
          location2 = [v13 location];
          [location2 locationLongitudeDeg];
          v20 = [(PCLatLon *)v14 initWithLatitude:v17 longitude:v19];

          if ([(PCOutOfPatternLogic *)self isLatLon:v20 insideBoundingBoxWithCentroid:locationCopy])
          {
            [array addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = [array copy];

  return v21;
}

- (id)closestHomeLOIFromCandidates:(id)candidates toLocation:(id)location
{
  v31 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  locationCopy = location;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = candidatesCopy;
  v7 = [candidatesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [PCLatLon alloc];
        location = [v13 location];
        [location locationLatitudeDeg];
        v17 = v16;
        location2 = [v13 location];
        [location2 locationLongitudeDeg];
        v20 = [(PCLatLon *)v14 initWithLatitude:v17 longitude:v19];

        [locationCopy distanceTo:v20];
        if (v21 < v11)
        {
          v22 = v21;
          v23 = v13;

          v11 = v22;
          v9 = v23;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)snapModelCentroidForCurrentLocation:(id)location withInputSignals:(id)signals
{
  v24 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  locationOfInterests = [signals locationOfInterests];
  v8 = [(PCOutOfPatternLogic *)self homeLOIsWithinBoundingBoxCenteredAtLocation:locationCopy fromLocationOfInterests:locationOfInterests];

  v9 = [(PCOutOfPatternLogic *)self closestHomeLOIFromCandidates:v8 toLocation:locationCopy];
  if (v9)
  {
    v10 = [PCLatLon alloc];
    location = [v9 location];
    [location locationLatitudeDeg];
    v13 = v12;
    location2 = [v9 location];
    [location2 locationLongitudeDeg];
    v16 = [(PCLatLon *)v10 initWithLatitude:v13 longitude:v15];

    v17 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PCLatLon *)v16 description];
      v22 = 138739971;
      v23 = v18;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "Assign home LOI as model centroid. modelCentroid:%{sensitive}@", &v22, 0xCu);
    }
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [locationCopy description];
      v22 = 138739971;
      v23 = v20;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEFAULT, "Assign current location as model centroid. modelCentroid:%{sensitive}@", &v22, 0xCu);
    }

    v16 = locationCopy;
  }

  return v16;
}

- (id)locationOfInterestForIdentifier:(id)identifier fromArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  arrayCopy = array;
  v7 = arrayCopy;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          loiIdentifier = [v12 loiIdentifier];
          v14 = [loiIdentifier isEqualToData:identifierCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)filterItems:(id)items usingLocationBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 138739971;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = blockCopy[2](blockCopy, v13);
        if (v14 && ([(PCOutOfPatternLogic *)self modelCentroid], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(PCOutOfPatternLogic *)self isLatLon:v14 insideBoundingBoxWithCentroid:v15], v15, !v16))
        {
          v17 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v14 description];
            *buf = v20;
            v28 = v18;
            _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "Filtering out item at location: %{sensitive}@", buf, 0xCu);
          }
        }

        else
        {
          [array addObject:{v13, v20}];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)filterVisits:(id)visits
{
  v12 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  v5 = [(PCOutOfPatternLogic *)self filterItems:visitsCopy usingLocationBlock:&__block_literal_global_8];
  v6 = [visitsCopy count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu visits", &v10, 0xCu);
  }

  return v5;
}

PCLatLon *__36__PCOutOfPatternLogic_filterVisits___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasLocation])
  {
    v3 = [v2 location];

    if (v3)
    {
      v4 = [v2 location];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterCalendarEvents:(id)events
{
  v12 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v5 = [(PCOutOfPatternLogic *)self filterItems:eventsCopy usingLocationBlock:&__block_literal_global_17];
  v6 = [eventsCopy count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu calendar events", &v10, 0xCu);
  }

  return v5;
}

PCLatLon *__44__PCOutOfPatternLogic_filterCalendarEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasLocation])
  {
    v3 = [v2 location];

    if (v3)
    {
      v4 = [v2 location];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterMapsViewedPlaces:(id)places
{
  v12 = *MEMORY[0x1E69E9840];
  placesCopy = places;
  v5 = [(PCOutOfPatternLogic *)self filterItems:placesCopy usingLocationBlock:&__block_literal_global_20];
  v6 = [placesCopy count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu maps viewed place events", &v10, 0xCu);
  }

  return v5;
}

PCLatLon *__46__PCOutOfPatternLogic_filterMapsViewedPlaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasDestinationLocation])
  {
    v3 = [v2 destinationLocation];

    if (v3)
    {
      v4 = [v2 destinationLocation];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterTransitions:(id)transitions withLocationOfInterests:(id)interests
{
  v55 = *MEMORY[0x1E69E9840];
  transitionsCopy = transitions;
  interestsCopy = interests;
  array = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = transitionsCopy;
  v45 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v45)
  {
    v11 = *v47;
    *&v10 = 138740227;
    v40 = v10;
    v43 = v9;
    v44 = array;
    v41 = interestsCopy;
    v42 = *v47;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        visitIdentifierOrigin = [v13 visitIdentifierOrigin];
        v15 = [(PCOutOfPatternLogic *)self locationOfInterestForIdentifier:visitIdentifierOrigin fromArray:interestsCopy];

        visitIdentifierDestination = [v13 visitIdentifierDestination];
        v17 = [(PCOutOfPatternLogic *)self locationOfInterestForIdentifier:visitIdentifierDestination fromArray:interestsCopy];

        if (!v15)
        {
          goto LABEL_18;
        }

        v18 = ![v15 hasLocation] || v17 == 0;
        if (v18 || ![v17 hasLocation])
        {
          goto LABEL_18;
        }

        v19 = [PCLatLon alloc];
        location = [v15 location];
        [location locationLatitudeDeg];
        v22 = v21;
        location2 = [v15 location];
        [location2 locationLongitudeDeg];
        v25 = [(PCLatLon *)v19 initWithLatitude:v22 longitude:v24];

        v26 = [PCLatLon alloc];
        location3 = [v17 location];
        [location3 locationLatitudeDeg];
        v29 = v28;
        location4 = [v17 location];
        [location4 locationLongitudeDeg];
        v32 = [(PCLatLon *)v26 initWithLatitude:v29 longitude:v31];

        modelCentroid = [(PCOutOfPatternLogic *)self modelCentroid];
        LOBYTE(location4) = [(PCOutOfPatternLogic *)self isLatLon:v25 insideBoundingBoxWithCentroid:modelCentroid];

        modelCentroid2 = [(PCOutOfPatternLogic *)self modelCentroid];
        v35 = [(PCOutOfPatternLogic *)self isLatLon:v32 insideBoundingBoxWithCentroid:modelCentroid2];

        if ((location4 & 1) != 0 || v35)
        {

          v9 = v43;
          array = v44;
          interestsCopy = v41;
          v11 = v42;
LABEL_18:
          [array addObject:v13];
          goto LABEL_19;
        }

        v36 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(PCLatLon *)v25 description];
          v38 = [(PCLatLon *)v32 description];
          *buf = v40;
          v51 = v37;
          v52 = 2117;
          v53 = v38;
          _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEFAULT, "Filtering out transition. Origin: %{sensitive}@, Destination: %{sensitive}@", buf, 0x16u);
        }

        v9 = v43;
        array = v44;
        interestsCopy = v41;
        v11 = v42;
LABEL_19:
      }

      v45 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v45);
  }

  return array;
}

- (BOOL)_requestRetrainIfNeededWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  isAwaitingRetrain = [(PCOutOfPatternLogic *)self isAwaitingRetrain];
  v6 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isAwaitingRetrain)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "Already awaiting retrain, not requesting again (reason: %@)", &v9, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "Setting awaiting retrain flag for %@", &v9, 0xCu);
    }

    [(PCOutOfPatternLogic *)self setIsAwaitingRetrain:1];
  }

  return !isAwaitingRetrain;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  modelCentroid = [(PCOutOfPatternLogic *)self modelCentroid];
  [coderCopy encodeObject:modelCentroid forKey:@"modelCentroid"];

  [coderCopy encodeBool:-[PCOutOfPatternLogic isAwaitingRetrain](self forKey:{"isAwaitingRetrain"), @"isAwaitingRetrain"}];
}

- (PCOutOfPatternLogic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelCentroid"];
  if ([coderCopy containsValueForKey:@"isAwaitingRetrain"])
  {
    v6 = [coderCopy decodeBoolForKey:@"isAwaitingRetrain"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PCOutOfPatternLogic *)self initWithModelCentroidLatLon:v5];
  [(PCOutOfPatternLogic *)v7 setIsAwaitingRetrain:v6];

  return v7;
}

@end