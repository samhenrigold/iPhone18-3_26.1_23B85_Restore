@interface RELocationPredictor
+ (id)supportedFeatures;
- (NSDictionary)routineDataByEngine;
- (id)_init;
- (id)_routineDataForEngine:(id)engine;
- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context;
- (id)locationForEngine:(id)engine userLocation:(int64_t)location;
- (id)predictedLocationIdentifierForEngine:(id)engine;
- (id)predictedLocationNameForEngine:(id)engine;
- (void)_setOverrideLocation:(int64_t)location forEngine:(id)engine;
- (void)addRelevanceEngine:(id)engine;
- (void)removeRelevanceEngine:(id)engine;
- (void)update;
@end

@implementation RELocationPredictor

+ (id)supportedFeatures
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature locationOfInterestFeature];
  v4 = +[REFeature knownLocationOfInterestFeature];
  v9[1] = v4;
  v5 = +[REFeature travelingFeature];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v7 = [(REFeatureSet *)v2 initWithFeatures:v6];

  return v7;
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = RELocationPredictor;
  _init = [(REPredictor *)&v14 _init];
  if (_init)
  {
    if (CoreRoutineLibraryCore(0))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v3 = getRTRoutineManagerClass_softClass;
      v19 = getRTRoutineManagerClass_softClass;
      if (!getRTRoutineManagerClass_softClass)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __getRTRoutineManagerClass_block_invoke;
        v15[3] = &unk_2785F9BC0;
        v15[4] = &v16;
        __getRTRoutineManagerClass_block_invoke(v15);
        v3 = v17[3];
      }

      v4 = v3;
      _Block_object_dispose(&v16, 8);
      defaultManager = [v3 defaultManager];
      v6 = _init[8];
      _init[8] = defaultManager;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = _init[10];
    _init[10] = dictionary;

    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:2];
    v10 = _init[9];
    _init[9] = v9;

    v11 = objc_opt_new();
    v12 = _init[11];
    _init[11] = v11;
  }

  return _init;
}

- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  elementCopy = element;
  engineCopy = engine;
  contextCopy = context;
  [(NSLock *)self->_routineDataLock lock];
  v14 = [(NSMapTable *)self->_routineData objectForKey:engineCopy];
  [(NSLock *)self->_routineDataLock unlock];
  overrideRoutineType = self->_overrideRoutineType;
  name = [engineCopy name];
  v17 = [(NSMutableDictionary *)overrideRoutineType objectForKeyedSubscript:name];

  v18 = +[REFeature travelingFeature];
  v19 = [featureCopy isEqual:v18];

  if (v19)
  {
    if (v14)
    {
      mode = [v14 mode];
    }

    else
    {
      mode = 0;
    }

    goto LABEL_11;
  }

  v21 = +[REFeature locationOfInterestFeature];
  v22 = [featureCopy isEqual:v21];

  if (v22)
  {
    if (!v17)
    {
      locationsOfInterest = [v14 locationsOfInterest];
      [locationsOfInterest firstObject];
      v29 = contextCopy;
      v31 = v30 = elementCopy;

      identifier = [v31 identifier];
      uUIDString = [identifier UUIDString];
      v34 = uUIDString;
      if (uUIDString)
      {
        v35 = uUIDString;
      }

      else
      {
        v35 = &stru_283B97458;
      }

      v26 = [REFeatureValue featureValueWithString:v35];

      elementCopy = v30;
      contextCopy = v29;
      v17 = 0;
      goto LABEL_13;
    }

    v23 = [REFeatureValue featureValueWithString:&stru_283B97458];
    goto LABEL_12;
  }

  v24 = +[REFeature knownLocationOfInterestFeature];
  v25 = [featureCopy isEqual:v24];

  if (v25)
  {
    if (v17)
    {
      mode = [v17 integerValue];
LABEL_11:
      v23 = [REFeatureValue featureValueWithInt64:mode];
LABEL_12:
      v26 = v23;
      goto LABEL_13;
    }

    v49 = elementCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    locationsOfInterest2 = [v14 locationsOfInterest];
    v37 = locationsOfInterest2;
    v38 = MEMORY[0x277CBEBF8];
    if (locationsOfInterest2)
    {
      v38 = locationsOfInterest2;
    }

    v39 = v38;

    v40 = [v39 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v40)
    {
      v41 = v40;
      v48 = contextCopy;
      v42 = 0;
      v43 = *v51;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v50 + 1) + 8 * i);
          if ([v45 type] != -1)
          {
            v46 = v45;

            v42 = v46;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v41);

      contextCopy = v48;
      if (v42)
      {
        type = [v42 type];
      }

      else
      {
        type = -1;
      }

      elementCopy = v49;
      v17 = 0;
    }

    else
    {

      v42 = 0;
      type = -1;
    }

    v26 = [REFeatureValue featureValueWithInt64:type];
  }

  else
  {
    v26 = 0;
  }

LABEL_13:

  return v26;
}

- (void)update
{
  v48 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v3 = dispatch_group_create();
  [(REPredictor *)self beginFetchingData];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  engines = [(REPredictor *)self engines];
  v5 = [engines countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v22 = *v42;
    obj = engines;
    do
    {
      v6 = 0;
      v21 = v5;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * v6);
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x2020000000;
        v40[3] = 0;
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = __Block_byref_object_copy__29;
        v38[4] = __Block_byref_object_dispose__29;
        v39 = 0;
        v8 = dispatch_group_create();
        locationManager = [v7 locationManager];
        currentLocation = [locationManager currentLocation];

        if (currentLocation)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __29__RELocationPredictor_update__block_invoke;
          v36[3] = &unk_2785FDC60;
          v11 = currentLocation;
          v37 = v11;
          v12 = MEMORY[0x22AABC5E0](v36);
          dispatch_group_enter(v8);
          manager = self->_manager;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __29__RELocationPredictor_update__block_invoke_2;
          v33[3] = &unk_2785FDC88;
          v35 = v40;
          selfCopy = self;
          v15 = v8;
          v34 = v15;
          [(RTRoutineManager *)manager fetchRoutineModeFromLocation:v11 withHandler:v33];
          dispatch_group_enter(v15);
          v16 = selfCopy->_manager;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __29__RELocationPredictor_update__block_invoke_49;
          v29[3] = &unk_2785FDCB0;
          v32 = v38;
          v17 = v12;
          v31 = v17;
          v30 = v15;
          [(RTRoutineManager *)v16 fetchLocationsOfInterestWithinDistance:v11 ofLocation:v29 withHandler:1000.0];

          self = selfCopy;
          v5 = v21;
        }

        dispatch_group_enter(v3);
        queue = [(REPredictor *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __29__RELocationPredictor_update__block_invoke_2_54;
        block[3] = &unk_2785FDCD8;
        v26 = v40;
        v27 = v38;
        block[4] = self;
        block[5] = v7;
        v28 = v45;
        v25 = v3;
        dispatch_group_notify(v8, queue, block);

        _Block_object_dispose(v38, 8);
        _Block_object_dispose(v40, 8);
        ++v6;
      }

      while (v5 != v6);
      engines = obj;
      v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  queue2 = [(REPredictor *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __29__RELocationPredictor_update__block_invoke_3;
  v23[3] = &unk_2785FADE0;
  v23[4] = self;
  v23[5] = v45;
  dispatch_group_notify(v3, queue2, v23);

  _Block_object_dispose(v45, 8);
}

double __29__RELocationPredictor_update__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE41F8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 location];
  [v6 latitude];
  v8 = v7;
  v9 = [v4 location];

  [v9 longitude];
  v11 = [v5 initWithLatitude:v8 longitude:v10];

  [*(a1 + 32) distanceFromLocation:v11];
  v13 = v12;

  return v13;
}

void __29__RELocationPredictor_update__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = RELogForDomain(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __29__RELocationPredictor_update__block_invoke_2_cold_1(v5, v6);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __29__RELocationPredictor_update__block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = RELogForDomain(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __29__RELocationPredictor_update__block_invoke_49_cold_1(v6, v7);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__RELocationPredictor_update__block_invoke_50;
  v11[3] = &unk_2785FAB80;
  v12 = *(a1 + 40);
  v8 = [v5 sortedArrayUsingComparator:v11];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __29__RELocationPredictor_update__block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a3;
  v7(v6, a2);
  v9 = [v5 numberWithDouble:?];
  v10 = MEMORY[0x277CCABB0];
  v11 = (*(*(a1 + 32) + 16))();

  v12 = [v10 numberWithDouble:v11];
  v13 = [v9 compare:v12];

  return v13;
}

void __29__RELocationPredictor_update__block_invoke_2_54(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setMode:*(*(*(a1 + 56) + 8) + 24)];
  [v3 setLocationsOfInterest:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(a1 + 32) + 88) lock];
  if (v3 && *(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 72) objectForKey:?];
    *(*(*(a1 + 72) + 8) + 24) |= [v2 isEqual:v3] ^ 1;
    [*(*(a1 + 32) + 72) setObject:v3 forKey:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 88) unlock];
  dispatch_group_leave(*(a1 + 48));
}

void *__29__RELocationPredictor_update__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) finishFetchingData];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 updateObservers];
  }

  return result;
}

- (void)addRelevanceEngine:(id)engine
{
  v6.receiver = self;
  v6.super_class = RELocationPredictor;
  engineCopy = engine;
  [(REPredictor *)&v6 addRelevanceEngine:engineCopy];
  locationManager = [engineCopy locationManager];

  [locationManager addObserver:self];
  [(REPredictor *)self invalidate];
}

- (void)removeRelevanceEngine:(id)engine
{
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = RELocationPredictor;
  [(REPredictor *)&v13 removeRelevanceEngine:engineCopy];
  name = [engineCopy name];
  if (name)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __45__RELocationPredictor_removeRelevanceEngine___block_invoke;
    v10 = &unk_2785F9AE0;
    v11 = engineCopy;
    selfCopy = self;
    [(REPredictor *)self onQueue:&v7];
  }

  locationManager = [engineCopy locationManager];
  [locationManager removeObserver:self];
}

void *__45__RELocationPredictor_removeRelevanceEngine___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    [*(result[5] + 88) lock];
    [*(v1[5] + 72) removeObjectForKey:v1[4]];
    v2 = *(v1[5] + 88);

    return [v2 lock];
  }

  return result;
}

- (id)locationForEngine:(id)engine userLocation:(int64_t)location
{
  v26 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  [(NSLock *)self->_routineDataLock lock];
  v7 = [(NSMapTable *)self->_routineData objectForKey:engineCopy];
  [(NSLock *)self->_routineDataLock unlock];
  v23 = 0u;
  v24 = 0u;
  if ((location + 1) >= 5)
  {
    locationCopy = 0;
  }

  else
  {
    locationCopy = location;
  }

  *(&v21 + 1) = 0;
  v22 = 0uLL;
  locationsOfInterest = [v7 locationsOfInterest];
  v10 = [locationsOfInterest countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(locationsOfInterest);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 type] == locationCopy)
        {
          v14 = objc_alloc(MEMORY[0x277CE41F8]);
          location = [v13 location];
          [location latitude];
          v17 = v16;
          location2 = [v13 location];
          [location2 longitude];
          v10 = [v14 initWithLatitude:v17 longitude:v19];

          goto LABEL_14;
        }
      }

      v10 = [locationsOfInterest countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

- (id)_routineDataForEngine:(id)engine
{
  routineDataLock = self->_routineDataLock;
  engineCopy = engine;
  [(NSLock *)routineDataLock lock];
  v6 = [(NSMapTable *)self->_routineData objectForKey:engineCopy];

  [(NSLock *)self->_routineDataLock unlock];

  return v6;
}

- (id)predictedLocationIdentifierForEngine:(id)engine
{
  routineDataLock = self->_routineDataLock;
  engineCopy = engine;
  [(NSLock *)routineDataLock lock];
  v6 = [(NSMapTable *)self->_routineData objectForKey:engineCopy];

  [(NSLock *)self->_routineDataLock unlock];
  locationsOfInterest = [v6 locationsOfInterest];
  firstObject = [locationsOfInterest firstObject];
  identifier = [firstObject identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)predictedLocationNameForEngine:(id)engine
{
  routineDataLock = self->_routineDataLock;
  engineCopy = engine;
  [(NSLock *)routineDataLock lock];
  v6 = [(NSMapTable *)self->_routineData objectForKey:engineCopy];

  [(NSLock *)self->_routineDataLock unlock];
  locationsOfInterest = [v6 locationsOfInterest];
  firstObject = [locationsOfInterest firstObject];
  preferredName = [firstObject preferredName];

  return preferredName;
}

- (void)_setOverrideLocation:(int64_t)location forEngine:(id)engine
{
  engineCopy = engine;
  queue = [(REPredictor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RELocationPredictor__setOverrideLocation_forEngine___block_invoke;
  block[3] = &unk_2785FCE98;
  v10 = engineCopy;
  locationCopy = location;
  block[4] = self;
  v8 = engineCopy;
  dispatch_async(queue, block);
}

void __54__RELocationPredictor__setOverrideLocation_forEngine___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  }

  v3 = v2;
  [*(*(a1 + 32) + 80) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) updateObservers];
}

- (NSDictionary)routineDataByEngine
{
  v19 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_routineDataLock lock];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMapTable count](self->_routineData, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMapTable *)self->_routineData keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_routineData objectForKey:v9];
        name = [v9 name];
        [v3 setObject:v10 forKeyedSubscript:name];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_routineDataLock unlock];
  v12 = [v3 copy];

  return v12;
}

void __29__RELocationPredictor_update__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Encountered CR error getting routine mode: %@", &v2, 0xCu);
}

void __29__RELocationPredictor_update__block_invoke_49_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Encountered CR error getting LOIs: %@", &v2, 0xCu);
}

@end