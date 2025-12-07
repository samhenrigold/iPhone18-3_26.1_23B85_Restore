@interface ATXLocationManagerRoutineCR
+ (id)closestLOI:(id)i toLocation:(id)location;
- (ATXLocationManagerRoutineCR)init;
- (ATXLocationManagerRoutineCR)initWithRoutineManager:(id)manager;
- (unint64_t)fetchRoutineModeFromLocation:(id)location;
- (void)fetchClosestLOIWithinDistance:(double)distance ofLocation:(id)location reply:(id)reply;
- (void)fetchLOILocationOfType:(int64_t)type reply:(id)reply;
- (void)fetchLOIVisitedDuring:(id)during reply:(id)reply;
- (void)fetchNextPredictedLOIFromLocation:(id)location startDate:(id)date timeInterval:(double)interval requireHighConfidence:(BOOL)confidence reply:(id)reply;
- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date requireHighConfidence:(BOOL)confidence reply:(id)reply;
@end

@implementation ATXLocationManagerRoutineCR

- (ATXLocationManagerRoutineCR)init
{
  v3 = objc_opt_new();
  v4 = [(ATXLocationManagerRoutineCR *)self initWithRoutineManager:v3];

  return v4;
}

- (ATXLocationManagerRoutineCR)initWithRoutineManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ATXLocationManagerRoutineCR;
  v6 = [(ATXLocationManagerRoutineCR *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routineManager, manager);
  }

  return v7;
}

- (void)fetchClosestLOIWithinDistance:(double)distance ofLocation:(id)location reply:(id)reply
{
  locationCopy = location;
  replyCopy = reply;
  routineManager = self->_routineManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATXLocationManagerRoutineCR_fetchClosestLOIWithinDistance_ofLocation_reply___block_invoke;
  v13[3] = &unk_279AB7E40;
  v14 = locationCopy;
  v15 = replyCopy;
  v11 = locationCopy;
  v12 = replyCopy;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestWithinDistance:v11 ofLocation:v13 withHandler:distance];
}

void __78__ATXLocationManagerRoutineCR_fetchClosestLOIWithinDistance_ofLocation_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v6 = [ATXLocationManagerRoutineCR closestLOI:a2 toLocation:*(a1 + 32)];
    v5 = createLOIFromRTLOI(v6);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchLOILocationOfType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  routineManager = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ATXLocationManagerRoutineCR_fetchLOILocationOfType_reply___block_invoke;
  v9[3] = &unk_279AB7E68;
  v10 = replyCopy;
  v8 = replyCopy;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestOfType:type withHandler:v9];
}

void __60__ATXLocationManagerRoutineCR_fetchLOILocationOfType_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v12 = [a2 firstObject];
    if (v12)
    {
      v5 = objc_alloc(MEMORY[0x277CE41F8]);
      v6 = [v12 location];
      [v6 latitude];
      v8 = v7;
      v9 = [v12 location];
      [v9 longitude];
      v11 = [v5 initWithLatitude:v8 longitude:v10];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)fetchLOIVisitedDuring:(id)during reply:(id)reply
{
  replyCopy = reply;
  routineManager = self->_routineManager;
  duringCopy = during;
  startDate = [duringCopy startDate];
  endDate = [duringCopy endDate];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__ATXLocationManagerRoutineCR_fetchLOIVisitedDuring_reply___block_invoke;
  v12[3] = &unk_279AB7E68;
  v13 = replyCopy;
  v11 = replyCopy;
  [(RTRoutineManager *)routineManager fetchLocationsOfInterestVisitedBetweenStartDate:startDate endDate:endDate withHandler:v12];
}

void __59__ATXLocationManagerRoutineCR_fetchLOIVisitedDuring_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = createLOIFromRTLOI(v13);
          [v7 addObject:{v15, v16}];

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchNextPredictedLOIFromLocation:(id)location startDate:(id)date timeInterval:(double)interval requireHighConfidence:(BOOL)confidence reply:(id)reply
{
  replyCopy = reply;
  routineManager = self->_routineManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke;
  v15[3] = &unk_279AB7EB8;
  v16 = replyCopy;
  confidenceCopy = confidence;
  v14 = replyCopy;
  [(RTRoutineManager *)routineManager fetchNextPredictedLocationsOfInterestFromLocation:location startDate:date timeInterval:v15 withHandler:interval];
}

void __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v23 = v5;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v7)
    {
      v26 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 locationOfInterest];
          v12 = [v11 type];

          v14 = __atxlog_handle_dailyroutines(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v9 locationOfInterest];
            v16 = [v15 type];
            [v9 confidence];
            *buf = 134218240;
            *&buf[4] = v16;
            *&buf[12] = 2048;
            *&buf[14] = v17;
            _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_INFO, "Predicted next loi type: %ld, confidence: %lf", buf, 0x16u);
          }

          if (*(a1 + 40) == 1)
          {
            [v9 confidence];
            v19 = v18 >= 1.0;
          }

          else
          {
            v19 = 1;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v33 = 1;
          v20 = [v9 sources];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke_8;
          v27[3] = &unk_279AB7E90;
          v27[4] = buf;
          [v20 enumerateObjectsUsingBlock:v27];

          if (v19 && *(*&buf[8] + 24) == 1)
          {
            v21 = [v9 locationOfInterest];
            v22 = createLOIFromRTLOIAndType(v21, v12);
            [v24 addObject:v22];
          }

          _Block_object_dispose(buf, 8);
          objc_autoreleasePoolPop(v10);
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 32) + 16))();
    v6 = 0;
  }
}

void __116__ATXLocationManagerRoutineCR_fetchNextPredictedLOIFromLocation_startDate_timeInterval_requireHighConfidence_reply___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date requireHighConfidence:(BOOL)confidence reply:(id)reply
{
  replyCopy = reply;
  routineManager = self->_routineManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__ATXLocationManagerRoutineCR_fetchPredictedExitDatesFromLocation_onDate_requireHighConfidence_reply___block_invoke;
  v13[3] = &unk_279AB7EB8;
  v14 = replyCopy;
  confidenceCopy = confidence;
  v12 = replyCopy;
  [(RTRoutineManager *)routineManager fetchPredictedExitDatesFromLocation:location onDate:date withHandler:v13];
}

void __102__ATXLocationManagerRoutineCR_fetchPredictedExitDatesFromLocation_onDate_requireHighConfidence_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = __atxlog_handle_dailyroutines(v8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v12 date];
            [v12 uncertainty];
            v16 = v15;
            [v12 confidence];
            *buf = 138412802;
            v26 = v14;
            v27 = 2048;
            v28 = v16;
            v29 = 2048;
            v30 = v17;
            _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_INFO, "Predicted Exit Time: %@, uncertainty: %lf, confidence %lf", buf, 0x20u);
          }

          if (*(a1 + 40) != 1 || (v8 = [v12 confidence], v18 >= 0.75))
          {
            v19 = [v12 date];
            [v6 addObject:v19];
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
        v9 = v8;
      }

      while (v8);
    }

    (*(*(a1 + 32) + 16))();
    v5 = v20;
  }
}

- (unint64_t)fetchRoutineModeFromLocation:(id)location
{
  locationCopy = location;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  routineManager = self->_routineManager;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke;
  v13 = &unk_279AB7EE0;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [(RTRoutineManager *)routineManager fetchRoutineModeFromLocation:locationCopy withHandler:&v10];
  [MEMORY[0x277D425A0] waitForSemaphore:v7 timeoutSeconds:0 onAcquire:&__block_literal_global_4 onTimeout:{1.0, v10, v11, v12, v13}];
  v8 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    switch(a2)
    {
      case 0:
        *(*(*(a1 + 40) + 8) + 24) = 0;
        goto LABEL_12;
      case 2:
        v8 = *(*(a1 + 40) + 8);
        v9 = 1;
        break;
      case 1:
        v8 = *(*(a1 + 40) + 8);
        v9 = 2;
        break;
      default:
        goto LABEL_12;
    }

    *(v8 + 24) = v9;
    goto LABEL_12;
  }

  v7 = __atxlog_handle_default(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_cold_1(v6, v7);
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 32));
}

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_13(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_13_cold_1(v1);
  }
}

+ (id)closestLOI:(id)i toLocation:(id)location
{
  v31 = *MEMORY[0x277D85DE8];
  iCopy = i;
  locationCopy = location;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = iCopy;
  v7 = [iCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
    v11 = INFINITY;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CE41F8]);
        location = [v13 location];
        [location latitude];
        v17 = v16;
        location2 = [v13 location];
        [location2 longitude];
        v20 = [v14 initWithLatitude:v17 longitude:v19];

        [locationCopy distanceFromLocation:v20];
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

void __60__ATXLocationManagerRoutineCR_fetchRoutineModeFromLocation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "Error while fetching routine mode from CoreRoutine. Error: %@", &v2, 0xCu);
}

@end