@interface PCWorkoutAnnotationManager
- (BOOL)isDominantPlaceForVisits:(id)visits startDate:(id)date endDate:(id)endDate;
- (PCWorkoutAnnotationManager)init;
- (double)overlapsIndexOfBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents;
- (id)annotateEventBundle:(id)bundle withContextEvents:(id)events andBaseEventReference:(id)reference;
- (id)getBaseEvents:(id)events;
- (id)getContextEventsForBaseEvents:(id)events events:(id)a4;
- (id)groupedEventsFromEvents:(id)events;
- (id)intervalsFromEvents:(id)events boundaryInterval:(id)interval;
- (id)majorVisitsFromVisits:(id)visits referenceDate:(id)date;
- (id)performAnnotationWithEventsInternal:(id)internal;
- (id)referenceDateFromStartDate:(id)date endDate:(id)endDate index:(double)index;
- (id)removeDuplicateWorkouts:(id)workouts;
- (id)removePhoneActivitiesOverlappingWorkouts:(id)workouts;
- (id)timespanFromEvents:(id)events boundaryInterval:(id)interval;
@end

@implementation PCWorkoutAnnotationManager

- (PCWorkoutAnnotationManager)init
{
  v7.receiver = self;
  v7.super_class = PCWorkoutAnnotationManager;
  v2 = [(PCWorkoutAnnotationManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = xmmword_1CEF0BE30;
    *(v2 + 40) = xmmword_1CEF0BE40;
    *(v2 + 7) = 0x409C200000000000;
    v2[16] = 0;
    v4 = objc_alloc_init(PCTimeZoneManager);
    timeZoneManager = v3->timeZoneManager;
    v3->timeZoneManager = v4;
  }

  return v3;
}

- (id)getBaseEvents:(id)events
{
  v3 = MEMORY[0x1E696AE18];
  eventsCopy = events;
  v5 = [v3 predicateWithFormat:@"%K IN %@ AND %K.%K !=[c] %@", @"category", &unk_1F4BDDFF0, @"workoutEvent", @"workoutType", @"HKWorkoutActivityTypeCooldown"];
  v6 = [eventsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

- (id)groupedEventsFromEvents:(id)events
{
  v46 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if (![eventsCopy count])
  {
    v28 = MEMORY[0x1E695E0F0];
    goto LABEL_24;
  }

  selfCopy = self;
  v39 = objc_opt_new();
  [eventsCopy valueForKeyPath:@"@distinctUnionOfObjects.workoutEvent.workoutType"];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v34)
  {
    goto LABEL_20;
  }

  v5 = *v41;
  v6 = 0x1E696A000uLL;
  v31 = *v41;
  v32 = eventsCopy;
  do
  {
    v7 = 0;
    do
    {
      if (*v41 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v38 = v7;
      v37 = [*(v6 + 3608) predicateWithFormat:@"%K.%K = %@", @"workoutEvent", @"workoutType", *(*(&v40 + 1) + 8 * v7)];
      v8 = [eventsCopy filteredArrayUsingPredicate:?];
      v35 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
      v44 = v35;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      v36 = v8;
      v10 = [v8 sortedArrayUsingDescriptors:v9];

      v11 = objc_opt_new();
      firstObject = [v10 firstObject];
      [v11 addObject:firstObject];

      if ([v10 count] < 2)
      {
        goto LABEL_17;
      }

      if ([v10 count] >= 2)
      {
        v13 = 1;
        while (1)
        {
          v14 = [v10 objectAtIndex:v13 - 1];
          v15 = [v10 objectAtIndex:v13];
          startDate = [v15 startDate];
          endDate = [v14 endDate];
          [startDate timeIntervalSinceDate:endDate];
          if (v18 <= 300.0)
          {
            break;
          }

          startDate2 = [v15 startDate];
          endDate2 = [v14 endDate];
          v21 = [startDate2 isBeforeDate:endDate2];

          if ((v21 & 1) == 0)
          {
            v22 = [v11 copy];
            [v39 addObject:v22];

            startDate = v11;
            v11 = objc_opt_new();
LABEL_14:
          }

          [v11 addObject:v15];

          if ([v10 count] <= ++v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_14;
      }

LABEL_16:
      v5 = v31;
      eventsCopy = v32;
      v6 = 0x1E696A000;
      if ([v11 count])
      {
LABEL_17:
        v23 = [v11 copy];
        [v39 addObject:v23];
      }

      v7 = v38 + 1;
    }

    while (v38 + 1 != v34);
    v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v34);
LABEL_20:
  v24 = v39;
  v25 = v24;
  if (![(PCWorkoutAnnotationManager *)selfCopy allowDuplicatedWorkouts])
  {
    v26 = [(PCWorkoutAnnotationManager *)selfCopy removePhoneActivitiesOverlappingWorkouts:v24];
    v25 = [(PCWorkoutAnnotationManager *)selfCopy removeDuplicateWorkouts:v26];
  }

  v27 = [v25 sortedArrayUsingComparator:&__block_literal_global_4];
  v28 = [v27 copy];

LABEL_24:

  return v28;
}

uint64_t __54__PCWorkoutAnnotationManager_groupedEventsFromEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v5 startDate];
  v7 = [v4 firstObject];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)removePhoneActivitiesOverlappingWorkouts:(id)workouts
{
  v55 = *MEMORY[0x1E69E9840];
  workoutsCopy = workouts;
  if ([workoutsCopy count])
  {
    v33 = objc_opt_new();
    v4 = objc_opt_new();
    v30 = objc_opt_new();
    v31 = workoutsCopy;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = workoutsCopy;
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          firstObject = [v10 firstObject];
          category = [firstObject category];

          if (category == 2)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v7);
    }

    [v33 addObjectsFromArray:v4];
    v13 = v30;
    if ([v30 count])
    {
      workoutsCopy = v31;
      if (![v4 count])
      {
        goto LABEL_36;
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v30;
      v36 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (!v36)
      {
        goto LABEL_33;
      }

      v34 = v4;
      v35 = *v45;
      while (1)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * j);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v16 = v4;
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (!v17)
          {

LABEL_30:
            [v33 addObject:{v15, v30}];
            continue;
          }

          v18 = v17;
          v37 = j;
          v38 = v16;
          v19 = 0;
          v39 = *v41;
          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v41 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v21 = *(*(&v40 + 1) + 8 * k);
              firstObject2 = [v15 firstObject];
              startDate = [firstObject2 startDate];
              lastObject = [v15 lastObject];
              endDate = [lastObject endDate];
              v26 = [PCContextAnnotationUtilities predicateWithStartDate:startDate endDate:endDate];

              v27 = [v21 filteredArrayUsingPredicate:v26];
              if ([v27 count])
              {
                ++v19;
              }
            }

            v18 = [v38 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v18);

          v4 = v34;
          j = v37;
          if (!v19)
          {
            goto LABEL_30;
          }
        }

        v36 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (!v36)
        {
LABEL_33:

          v5 = v33;
          v13 = v30;
          workoutsCopy = v31;
          goto LABEL_36;
        }
      }
    }

    workoutsCopy = v31;
LABEL_36:
    v28 = v5;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)removeDuplicateWorkouts:(id)workouts
{
  v51 = *MEMORY[0x1E69E9840];
  workoutsCopy = workouts;
  if ([workoutsCopy count])
  {
    v4 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = workoutsCopy;
    v5 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
      v39 = v4;
      v40 = workoutsCopy;
      v38 = *v46;
      do
      {
        v8 = 0;
        v41 = v6;
        do
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v45 + 1) + 8 * v8);
          if ([v9 count] > 1)
          {
            v44 = v8;
            v10 = objc_opt_new();
            v43 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
            v49 = v43;
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
            v12 = [v9 sortedArrayUsingDescriptors:v11];

            firstObject = [v12 firstObject];
            if ([v12 count] < 2)
            {
              v36 = firstObject;
            }

            else
            {
              v14 = 1;
              do
              {
                v15 = [v12 objectAtIndex:v14];
                v16 = objc_alloc(MEMORY[0x1E696AB80]);
                startDate = [firstObject startDate];
                endDate = [firstObject endDate];
                v19 = [v16 initWithStartDate:startDate endDate:endDate];

                v20 = objc_alloc(MEMORY[0x1E696AB80]);
                startDate2 = [v15 startDate];
                endDate2 = [v15 endDate];
                v23 = [v20 initWithStartDate:startDate2 endDate:endDate2];

                v24 = [v23 intersectionWithDateInterval:v19];
                [v19 duration];
                v26 = v25;
                v27 = v15;
                [v19 duration];
                v29 = v28;
                [v23 duration];
                if (v29 <= v30)
                {
                  v32 = v27;
                }

                else
                {
                  [v23 duration];
                  v26 = v31;
                  v32 = firstObject;
                }

                if (v26 <= 0.0 || ([v24 duration], v33 / v26 <= 0.5))
                {
                  [v10 addObject:firstObject];
                  v34 = [v12 count] - 1;
                  v35 = v27;
                }

                else
                {
                  v34 = [v12 count] - 1;
                  v35 = v32;
                }

                if (v14 == v34)
                {
                  [v10 addObject:v35];
                }

                v36 = v35;

                ++v14;
                firstObject = v36;
              }

              while ([v12 count] > v14);
            }

            v4 = v39;
            [v39 addObject:v10];

            workoutsCopy = v40;
            v6 = v41;
            v7 = v38;
            v8 = v44;
          }

          else
          {
            [v4 addObject:v9];
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getContextEventsForBaseEvents:(id)events events:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  eventsCopy = events;
  v8 = [v5 predicateWithFormat:@"%K IN %@", @"category", &unk_1F4BDE008];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  v11 = [startDate dateByAddingTimeInterval:-60.0];

  lastObject = [eventsCopy lastObject];

  endDate = [lastObject endDate];
  v14 = [PCContextAnnotationUtilities predicateWithStartDate:v11 endDate:endDate];

  v15 = MEMORY[0x1E696AB28];
  v20[0] = v8;
  v20[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  v18 = [v6 filteredArrayUsingPredicate:v17];

  return v18;
}

- (id)annotateBaseEvents:(id)events contextEvents:(id)contextEvents
{
  v51 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  if ([eventsCopy count])
  {
    v8 = objc_opt_new();
    [v8 addObjectsFromArray:eventsCopy];
    v9 = [PCEventBundle alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    date = [MEMORY[0x1E695DF00] date];
    v12 = [(PCEventBundle *)v9 initWithBundleIdentifier:uUID creationDate:date];

    [(PCEventBundle *)v12 setInterfaceType:1];
    [(PCEventBundle *)v12 setBundleSuperType:2];
    [(PCEventBundle *)v12 setBundleSubType:1];
    firstObject = [eventsCopy firstObject];
    startDate = [firstObject startDate];
    [(PCEventBundle *)v12 setStartDate:startDate];

    lastObject = [eventsCopy lastObject];
    endDate = [lastObject endDate];
    [(PCEventBundle *)v12 setEndDate:endDate];

    v17 = [PCContextAnnotationUtilities extractActivityType:eventsCopy];
    [(PCEventBundle *)v12 setActivityType:v17];

    firstObject2 = [eventsCopy firstObject];
    workoutEvent = [firstObject2 workoutEvent];
    sourceBundleIdentifier = [workoutEvent sourceBundleIdentifier];
    [(PCEventBundle *)v12 setSourceBundleIdentifier:sourceBundleIdentifier];

    firstObject3 = [eventsCopy firstObject];
    workoutEvent2 = [firstObject3 workoutEvent];
    workoutLocationStart = [workoutEvent2 workoutLocationStart];
    [(PCEventBundle *)v12 setWorkoutLocationStart:workoutLocationStart];

    firstObject4 = [eventsCopy firstObject];
    workoutEvent3 = [firstObject4 workoutEvent];
    hkObjectIdentifier = [workoutEvent3 hkObjectIdentifier];
    [(PCEventBundle *)v12 setHkObjectIdentifier:hkObjectIdentifier];

    firstObject5 = [eventsCopy firstObject];
    workoutEvent4 = [firstObject5 workoutEvent];
    -[PCEventBundle setWorkoutSessionLocationType:](v12, "setWorkoutSessionLocationType:", [workoutEvent4 workoutSessionLocationType]);

    firstObject6 = [eventsCopy firstObject];
    workoutEvent5 = [firstObject6 workoutEvent];
    -[PCEventBundle setWorkoutSwimmingLocationType:](v12, "setWorkoutSwimmingLocationType:", [workoutEvent5 workoutSwimmingLocationType]);

    firstObject7 = [eventsCopy firstObject];
    startDate2 = [firstObject7 startDate];
    v33 = [PCTime timeForDate:startDate2 timeZoneManager:self->timeZoneManager];
    [(PCEventBundle *)v12 setTime:v33];

    v34 = [(PCWorkoutAnnotationManager *)self annotateEventBundle:v12 withContextEvents:contextEventsCopy andBaseEventReference:eventsCopy];
    location = [(PCEventBundle *)v12 location];
    if (location)
    {
    }

    else
    {
      workoutLocationStart2 = [(PCEventBundle *)v12 workoutLocationStart];

      if (workoutLocationStart2)
      {
        v37 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          workoutLocationStart3 = [(PCEventBundle *)v12 workoutLocationStart];
          hkObjectIdentifier2 = [(PCEventBundle *)v12 hkObjectIdentifier];
          v47 = 138740227;
          v48 = workoutLocationStart3;
          v49 = 2114;
          v50 = hkObjectIdentifier2;
          _os_log_impl(&dword_1CEE74000, v37, OS_LOG_TYPE_DEFAULT, "EventBundle has no associated visit, using HealthKit workout location=%{sensitive}@, workout=%{public}@", &v47, 0x16u);
        }

        workoutLocationStart4 = [(PCEventBundle *)v12 workoutLocationStart];
        [(PCEventBundle *)v12 setLocation:workoutLocationStart4];
      }
    }

    [v8 addObjectsFromArray:v34];
    v41 = [v8 copy];
    [(PCEventBundle *)v12 setEvents:v41];

    [(PCEventBundle *)v12 setPropertiesBasedOnEvents];
    firstObject8 = [eventsCopy firstObject];
    startDate3 = [firstObject8 startDate];
    [(PCEventBundle *)v12 setStartDate:startDate3];

    lastObject2 = [eventsCopy lastObject];
    endDate2 = [lastObject2 endDate];
    [(PCEventBundle *)v12 setEndDate:endDate2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)annotateEventBundle:(id)bundle withContextEvents:(id)events andBaseEventReference:(id)reference
{
  v26 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  eventsCopy = events;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %lu", @"category", 1];
  v11 = [eventsCopy filteredArrayUsingPredicate:v10];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  v14 = [(PCWorkoutAnnotationManager *)self referenceDateFromStartDate:startDate endDate:endDate index:0.2];

  v15 = [(PCWorkoutAnnotationManager *)self majorVisitsFromVisits:v11 referenceDate:v14];
  v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    v21 = [eventsCopy count];
    v22 = 2050;
    v23 = [v11 count];
    v24 = 2050;
    v25 = [v15 count];
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "WorkoutAnnotation: annotateEventBundle, contextEventsCount, %{public}lu, visitsCount, %{public}lu, majorVisitsCount, %{public}lu", buf, 0x20u);
  }

  if (v15 && [v15 count])
  {
    v17 = [PCContextAnnotationUtilities annotateEventBundle:bundleCopy visitEvents:v15];
    [v9 addObjectsFromArray:v17];
  }

  v18 = [v9 copy];

  return v18;
}

- (id)majorVisitsFromVisits:(id)visits referenceDate:(id)date
{
  v61[2] = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  dateCopy = date;
  if (visitsCopy && [visitsCopy count])
  {
    v61[0] = @"routineEvent";
    v61[1] = @"placeName";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v33 = visitsCopy;
    v8 = [PCContextAnnotationUtilities groupedEventsFromEvents:visitsCopy nestedPropertyPath:v7];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PCWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke;
    aBlock[3] = &unk_1E83B82B8;
    v32 = dateCopy;
    v34 = dateCopy;
    v48 = v34;
    v9 = _Block_copy(aBlock);
    allValues = [v8 allValues];
    firstObject = [allValues firstObject];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v8;
    obj = [v8 allKeys];
    v11 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      v14 = 1.79769313e308;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          v17 = [v38 objectForKey:{v16, v32}];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v40;
            v21 = 1.79769313e308;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = fmin(v9[2](v9, *(*(&v39 + 1) + 8 * j)), v21);
              }

              v19 = [v17 countByEnumeratingWithState:&v39 objects:v59 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          v23 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = NSStringFromSelector(a2);
            *buf = 138413059;
            v50 = v24;
            v51 = 2112;
            v52 = v34;
            v53 = 2117;
            v54 = v16;
            v55 = 2048;
            v56 = v21;
            _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: %@, referenceDate=%@, group=%{sensitive}@, distance=%f", buf, 0x2Au);
          }

          if (v21 < v14)
          {
            v25 = v17;

            firstObject = v25;
            v14 = v21;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1.79769313e308;
    }

    v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v26 = firstObject;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = NSStringFromSelector(a2);
      v29 = [v38 count];
      *buf = 138413314;
      v50 = v28;
      v30 = -1.0;
      v51 = 2112;
      if (v14 != 1.79769313e308)
      {
        v30 = v14;
      }

      v52 = v34;
      v53 = 2048;
      v54 = v29;
      v55 = 2048;
      v56 = v30;
      v57 = 2112;
      v58 = firstObject;
      _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "WorkoutAnnotation: %@, referenceDate=%@, groupedEventCount, %lu, minDistance=%f, topEvents=%@", buf, 0x34u);
    }

    dateCopy = v32;
    visitsCopy = v33;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

double __66__PCWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = fabs(v5);
  v7 = [v3 endDate];

  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = fmin(v6, fabs(v8));

  return v9;
}

- (BOOL)isDominantPlaceForVisits:(id)visits startDate:(id)date endDate:(id)endDate
{
  v40[1] = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  dateCopy = date;
  endDateCopy = endDate;
  if ([visitsCopy count])
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:1];
    v40[0] = v31;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v12 = [visitsCopy sortedArrayUsingDescriptors:v11];

    v13 = objc_alloc(MEMORY[0x1E696AB80]);
    firstObject = [v12 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v12 lastObject];
    endDate = [lastObject endDate];
    v18 = [v13 initWithStartDate:startDate endDate:endDate];

    v19 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];
    [v19 duration];
    v21 = v20;
    v22 = [v18 intersectionWithDateInterval:v19];
    [v22 duration];
    v24 = v23;

    if (v21 != 0.0)
    {
      v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v33 = [visitsCopy count];
        v34 = 2048;
        v35 = v24;
        v36 = 2048;
        v37 = v21;
        v38 = 2048;
        v39 = v24 / v21;
        _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: isDominantPlaceForVisits, visits.count, %lu, interaction, %f, workoutDuration, %f, overlap, %f", buf, 0x2Au);
      }

      if (v24 / v21 > 0.5)
      {
        v25 = 1;
        goto LABEL_11;
      }

      [(PCWorkoutAnnotationManager *)self visitMinimumIntersectionWithActivityAbsoluteTime];
      if (v24 > v27)
      {
        firstObject2 = [v12 firstObject];
        routineEvent = [firstObject2 routineEvent];
        v25 = [routineEvent placeUserType] != 1;

        goto LABEL_11;
      }
    }

    v25 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v25 = 0;
LABEL_12:

  return v25;
}

- (id)referenceDateFromStartDate:(id)date endDate:(id)endDate index:(double)index
{
  dateCopy = date;
  [endDate timeIntervalSinceDate:dateCopy];
  if (v8 == 0.0)
  {
    index = dateCopy;
  }

  else
  {
    index = [dateCopy dateByAddingTimeInterval:v8 * index];
  }

  v10 = index;

  return v10;
}

- (id)performAnnotationWithEventsInternal:(id)internal
{
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  internalCopy = internal;
  v42 = [[v4 alloc] initWithKey:@"startDate" ascending:1];
  v60[0] = v42;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v7 = [internalCopy sortedArrayUsingDescriptors:v6];

  v8 = [(PCWorkoutAnnotationManager *)self getBaseEvents:v7];
  v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  selfCopy = self;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    firstObject = [v8 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v8 lastObject];
    endDate = [lastObject endDate];
    *buf = 134218498;
    v49 = v10;
    v50 = 2112;
    v51 = startDate;
    v52 = 2112;
    v53 = endDate;
    _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Base Events, %lu, startDate, %@, endDate, %@", buf, 0x20u);

    self = selfCopy;
  }

  if ([v8 count])
  {
    v15 = [(PCWorkoutAnnotationManager *)self groupBaseEvents:v8];
    v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v8 count];
      v18 = [v15 count];
      *buf = 134218240;
      v49 = v17;
      v50 = 2048;
      v51 = v18;
      _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Grouping the base events, events, %lu, groups, %lu", buf, 0x16u);
    }

    v37 = v8;

    v40 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = v15;
    v43 = [v19 countByEnumeratingWithState:&v44 objects:v59 count:16];
    if (v43)
    {
      v20 = *v45;
      v38 = v19;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v19);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v58 = v42;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
          v24 = [v22 sortedArrayUsingDescriptors:v23];

          v25 = [(PCWorkoutAnnotationManager *)self getContextEventsForBaseEvents:v24 events:v7];
          v26 = [(PCWorkoutAnnotationManager *)self annotateBaseEvents:v24 contextEvents:v25];
          v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v41 = [v24 count];
            v28 = v20;
            v29 = v7;
            v30 = [v25 count];
            placeName = [v26 placeName];
            location = [v26 location];
            *buf = 138413315;
            v49 = v26;
            v50 = 2048;
            v51 = v41;
            v52 = 2048;
            v53 = v30;
            v7 = v29;
            v20 = v28;
            v54 = 2117;
            v55 = placeName;
            v56 = 2117;
            v57 = location;
            _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "WorkoutAnnotation: EventBundle, %@, baseEventCount, %lu, contextEventCount, %lu, placeName, %{sensitive}@, location, %{sensitive}@", buf, 0x34u);

            self = selfCopy;
            v19 = v38;
          }

          if (v26)
          {
            [v40 addObject:v26];
          }
        }

        v43 = [v19 countByEnumeratingWithState:&v44 objects:v59 count:16];
      }

      while (v43);
    }

    v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v40 count];
      *buf = 134217984;
      v49 = v34;
      _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Event Bundles Count, %lu", buf, 0xCu);
    }

    v35 = [v40 copy];
    v8 = v37;
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "WorkoutAnnotation: No base events so bundling halted", buf, 2u);
    }

    v35 = MEMORY[0x1E695E0F0];
  }

  return v35;
}

- (double)overlapsIndexOfBaseEvents:(id)events contextEvents:(id)contextEvents
{
  v78 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  contextEventsCopy = contextEvents;
  if ([eventsCopy count])
  {
    if ([contextEventsCopy count])
    {
      v8 = objc_alloc(MEMORY[0x1E696AB80]);
      firstObject = [eventsCopy firstObject];
      startDate = [firstObject startDate];
      lastObject = [eventsCopy lastObject];
      endDate = [lastObject endDate];
      v13 = [v8 initWithStartDate:startDate endDate:endDate];

      v14 = [(PCWorkoutAnnotationManager *)self timespanFromEvents:eventsCopy boundaryInterval:0];
      v51 = v13;
      v15 = [(PCWorkoutAnnotationManager *)self timespanFromEvents:contextEventsCopy boundaryInterval:v13];
      v50 = [eventsCopy arrayByAddingObjectsFromArray:contextEventsCopy];
      v48 = [PCWorkoutAnnotationManager timespanFromEvents:"timespanFromEvents:boundaryInterval:" boundaryInterval:?];
      v53 = v14;
      objectEnumerator = [v14 objectEnumerator];
      v52 = v15;
      objectEnumerator2 = [v15 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      nextObject2 = [objectEnumerator2 nextObject];
      v20 = nextObject2;
      v21 = 0.0;
      if (nextObject && nextObject2)
      {
        v22 = 0.0;
        do
        {
          v23 = [nextObject intersectionWithDateInterval:v20];
          v24 = v23;
          if (v23)
          {
            [v23 duration];
            v22 = v22 + v25;
          }

          endDate2 = [nextObject endDate];
          endDate3 = [v20 endDate];
          v28 = [endDate2 isBeforeDate:endDate3];

          if (v28)
          {
            nextObject3 = [objectEnumerator nextObject];
            v30 = nextObject;
            nextObject = nextObject3;
          }

          else
          {
            nextObject4 = [objectEnumerator2 nextObject];
            v30 = v20;
            v20 = nextObject4;
          }
        }

        while (nextObject && v20);
      }

      else
      {
        v22 = 0.0;
      }

      v54 = contextEventsCopy;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v33 = v48;
      v34 = [v33 countByEnumeratingWithState:&v55 objects:v77 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v56;
        v21 = 0.0;
        do
        {
          v37 = 0;
          do
          {
            if (*v56 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v55 + 1) + 8 * v37) duration];
            v21 = v21 + v38;
            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v55 objects:v77 count:16];
        }

        while (v35);
      }

      if (v21 <= 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v22 / v21;
      }

      v39 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v46 = [eventsCopy count];
        firstObject2 = [eventsCopy firstObject];
        startDate2 = [firstObject2 startDate];
        lastObject2 = [eventsCopy lastObject];
        endDate4 = [lastObject2 endDate];
        v45 = [v54 count];
        v42 = [v53 count];
        v43 = [v52 count];
        *buf = 134220034;
        v60 = v46;
        v61 = 2112;
        v62 = startDate2;
        v63 = 2112;
        v64 = endDate4;
        v65 = 2048;
        v66 = v45;
        v67 = 2048;
        v68 = v42;
        v69 = 2048;
        v70 = v43;
        v71 = 2048;
        v72 = v22;
        v73 = 2048;
        v74 = v21;
        v75 = 2048;
        v76 = v32;
        _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: base events, %lu, startDate, %@, endDate, %@, context events, %lu, base events intervals, %lu, context events intervals, %lu, intersection, %f, total duration, %f, overlaps score, %f", buf, 0x5Cu);
      }

      contextEventsCopy = v54;
    }

    else
    {
      v32 = 1.0;
    }
  }

  else
  {
    v32 = -1.0;
  }

  return v32;
}

- (id)timespanFromEvents:(id)events boundaryInterval:(id)interval
{
  v44[1] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  intervalCopy = interval;
  if (eventsCopy && [eventsCopy count])
  {
    v36 = intervalCopy;
    v37 = eventsCopy;
    v8 = [(PCWorkoutAnnotationManager *)self intervalsFromEvents:eventsCopy boundaryInterval:intervalCopy];
    v34 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
    v44[0] = v34;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v35 = v8;
    v10 = [v8 sortedArrayUsingDescriptors:v9];

    v38 = objc_opt_new();
    firstObject = [v10 firstObject];
    startDate = [firstObject startDate];

    firstObject2 = [v10 firstObject];
    endDate = [firstObject2 endDate];

    v15 = [startDate dateByAddingTimeInterval:300.0];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          startDate2 = [v21 startDate];
          v23 = [startDate2 isAfterDate:v15];

          if (v23)
          {
            if ([startDate isBeforeDate:endDate])
            {
              v24 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:endDate];
              [v38 addObject:v24];
            }

            startDate3 = [v21 startDate];

            startDate = startDate3;
          }

          else
          {
            endDate2 = [v21 endDate];
            v27 = [endDate2 isAfterDate:v15];

            if (!v27)
            {
              continue;
            }
          }

          endDate3 = [v21 endDate];

          endDate4 = [v21 endDate];
          v30 = [endDate4 dateByAddingTimeInterval:300.0];

          endDate = endDate3;
          v15 = v30;
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    if (startDate && endDate && [startDate isBeforeDate:endDate])
    {
      v31 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:endDate];
      [v38 addObject:v31];
    }

    v32 = [v38 copy];

    intervalCopy = v36;
    eventsCopy = v37;
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  return v32;
}

- (id)intervalsFromEvents:(id)events boundaryInterval:(id)interval
{
  v37 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    *&v8 = 138412546;
    v26 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        startDate = [v12 startDate];
        if (startDate)
        {
          v14 = startDate;
          endDate = [v12 endDate];

          if (endDate)
          {
            startDate2 = [v12 startDate];
            endDate2 = [v12 endDate];
            v18 = [startDate2 isBeforeDate:endDate2];

            if (v18)
            {
              v19 = objc_alloc(MEMORY[0x1E696AB80]);
              startDate3 = [v12 startDate];
              endDate3 = [v12 endDate];
              v22 = [v19 initWithStartDate:startDate3 endDate:endDate3];

              [v5 addObject:v22];
            }

            else
            {
              v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = NSStringFromSelector(a2);
                *buf = v26;
                v33 = v23;
                v34 = 2112;
                v35 = v12;
                _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_ERROR, "%@, discard event with wrong start/end date, event, %@ ", buf, 0x16u);
              }
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v24 = [v5 copy];

  return v24;
}

@end