@interface ATXHeuristicCommuteToWork
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicCommuteToWork

- (id)permanentRefreshTriggers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getATXUpcomingCommuteToWorkAnchorClass_softClass;
  v15 = getATXUpcomingCommuteToWorkAnchorClass_softClass;
  if (!getATXUpcomingCommuteToWorkAnchorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getATXUpcomingCommuteToWorkAnchorClass_block_invoke;
    v11[3] = &unk_278C3CC98;
    v11[4] = &v12;
    __getATXUpcomingCommuteToWorkAnchorClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  if (v2)
  {
    v4 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
    keyPathForContextStore = [v2 keyPathForContextStore];
    predicateForContextStoreRegistration = [v2 predicateForContextStoreRegistration];
    v7 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v4 initWithCDContextualKeyPath:keyPathForContextStore predicate:predicateForContextStoreRegistration registrationIdentifier:@"commuteWork"];

    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v7, 0}];
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v44 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  ATXTripDuetEventClass = getATXTripDuetEventClass();
  v5 = objc_opt_new();
  v6 = v5;
  if (!ATXTripDuetEventClass)
  {
    v14 = v5;
    goto LABEL_34;
  }

  heuristicDevice = [environmentCopy heuristicDevice];
  locationManager = [heuristicDevice locationManager];

  getCurrentLocation = [locationManager getCurrentLocation];
  if (!getCurrentLocation)
  {
    v15 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteToWork heuristicResultWithEnvironment:];
    }

    v14 = v6;
    goto LABEL_33;
  }

  locationOfInterestAtCurrentLocation = [locationManager locationOfInterestAtCurrentLocation];
  v11 = locationOfInterestAtCurrentLocation;
  if (!locationOfInterestAtCurrentLocation)
  {
    v13 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteToWork heuristicResultWithEnvironment:];
    }

    goto LABEL_13;
  }

  type = [locationOfInterestAtCurrentLocation type];
  if (!type)
  {
    v16 = objc_alloc(MEMORY[0x277CE41F8]);
    [v11 coordinate];
    v18 = v17;
    [v11 coordinate];
    v19 = [v16 initWithLatitude:v18 longitude:?];
    v20 = [getCurrentLocation distanceFromLocation:v19];
    v22 = v21;
    if (v21 >= 500.0)
    {
      v33 = __atxlog_handle_context_heuristic(v20);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = v22 / 1000.0;
        _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: No longer at cached loi. Distance is %.2f km", buf, 0xCu);
      }

      v14 = v6;
      goto LABEL_31;
    }

    v23 = [[ATXTripDuetEventClass alloc] initWithCurrentContextStoreValuesWithOriginLOI:v11 ignoreBeforeDate:0];
    v24 = v23;
    if (v23)
    {
      origin = [v23 origin];
      if (origin == 1 || (origin = [v24 destination], origin == 2))
      {
        v39 = v19;
        v26 = __atxlog_handle_context_heuristic(origin);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          [v24 startDate];
          v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v41 = v27;
          _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: Creating suggestion for expected trip at %@", buf, 0xCu);
        }

        startDate = [v24 startDate];
        v29 = [startDate dateByAddingTimeInterval:-3600.0];

        startDate2 = [v24 startDate];
        v31 = [startDate2 dateByAddingTimeInterval:1800.0];

        heuristicDevice2 = [environmentCopy heuristicDevice];
        v14 = [ATXHeuristicCommuteWorkUtilities heuristicResultToWorkWithValidStartDate:v29 validEndDate:v31 heuristicDevice:heuristicDevice2];

        v19 = v39;
        goto LABEL_30;
      }

      v34 = __atxlog_handle_context_heuristic(origin);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&v41 = [v24 origin];
        v42 = 2048;
        destination = [v24 destination];
        v35 = "ATXHeuristicCommuteToWork: Trip not from home to work, %lu -> %lu";
        v36 = v34;
        v37 = 22;
        goto LABEL_28;
      }
    }

    else
    {
      v34 = __atxlog_handle_context_heuristic(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v35 = "ATXHeuristicCommuteToWork: No upcoming trip";
        v36 = v34;
        v37 = 2;
LABEL_28:
        _os_log_impl(&dword_23E3EA000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
      }
    }

    v14 = v6;
LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  v13 = __atxlog_handle_context_heuristic(type);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToWork: Current loi is not type Home", buf, 2u);
  }

LABEL_13:

  v14 = v6;
LABEL_32:

LABEL_33:
LABEL_34:

  return v14;
}

@end