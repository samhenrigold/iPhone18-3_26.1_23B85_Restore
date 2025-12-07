@interface ATXHeuristicCommuteFromWork
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicCommuteFromWork

- (id)permanentRefreshTriggers
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getATXUpcomingCommuteFromWorkAnchorClass_softClass;
  v15 = getATXUpcomingCommuteFromWorkAnchorClass_softClass;
  if (!getATXUpcomingCommuteFromWorkAnchorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getATXUpcomingCommuteFromWorkAnchorClass_block_invoke;
    v11[3] = &unk_278C3CC98;
    v11[4] = &v12;
    __getATXUpcomingCommuteFromWorkAnchorClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  if (v2)
  {
    v4 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
    keyPathForContextStore = [v2 keyPathForContextStore];
    predicateForContextStoreRegistration = [v2 predicateForContextStoreRegistration];
    v7 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v4 initWithCDContextualKeyPath:keyPathForContextStore predicate:predicateForContextStoreRegistration registrationIdentifier:@"commuteHome"];

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
    v30 = v5;
    goto LABEL_34;
  }

  heuristicDevice = [environmentCopy heuristicDevice];
  locationManager = [heuristicDevice locationManager];

  getCurrentLocation = [locationManager getCurrentLocation];
  if (!getCurrentLocation)
  {
    v31 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteFromWork heuristicResultWithEnvironment:];
    }

    v30 = v6;
    goto LABEL_33;
  }

  locationOfInterestAtCurrentLocation = [locationManager locationOfInterestAtCurrentLocation];
  v11 = locationOfInterestAtCurrentLocation;
  if (locationOfInterestAtCurrentLocation)
  {
    type = [locationOfInterestAtCurrentLocation type];
    if (type == 1)
    {
      v13 = objc_alloc(MEMORY[0x277CE41F8]);
      [v11 coordinate];
      v15 = v14;
      [v11 coordinate];
      v16 = [v13 initWithLatitude:v15 longitude:?];
      v17 = [getCurrentLocation distanceFromLocation:v16];
      v19 = v18;
      if (v18 >= 500.0)
      {
        v33 = __atxlog_handle_context_heuristic(v17);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v41 = v19 / 1000.0;
          _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: No longer at cached loi. Distance is %.2f km", buf, 0xCu);
        }

        v30 = v6;
        goto LABEL_31;
      }

      v20 = [[ATXTripDuetEventClass alloc] initWithCurrentContextStoreValuesWithOriginLOI:v11 ignoreBeforeDate:0];
      v21 = v20;
      if (v20)
      {
        origin = [v20 origin];
        if (origin == 2 || (origin = [v21 destination], origin == 1))
        {
          v39 = v16;
          v23 = __atxlog_handle_context_heuristic(origin);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v21 startDate];
            v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412290;
            v41 = v24;
            _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: Creating suggestion for expected trip at %@", buf, 0xCu);
          }

          startDate = [v21 startDate];
          v26 = [startDate dateByAddingTimeInterval:-3600.0];

          startDate2 = [v21 startDate];
          v28 = [startDate2 dateByAddingTimeInterval:1800.0];

          heuristicDevice2 = [environmentCopy heuristicDevice];
          v30 = [ATXHeuristicCommuteHomeUtilities heuristicResultToHomeWithValidStartDate:v26 validEndDate:v28 heuristicDevice:heuristicDevice2];

          v16 = v39;
          goto LABEL_30;
        }

        v34 = __atxlog_handle_context_heuristic(origin);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&v41 = [v21 origin];
          v42 = 2048;
          destination = [v21 destination];
          v35 = "ATXHeuristicCommuteToHome: Trip not from work to home, %lu -> %lu";
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
          v35 = "ATXHeuristicCommuteToHome: No upcoming trip";
          v36 = v34;
          v37 = 2;
LABEL_28:
          _os_log_impl(&dword_23E3EA000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
        }
      }

      v30 = v6;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v32 = __atxlog_handle_context_heuristic(type);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCommuteToHome: Current loi is not type Work", buf, 2u);
    }
  }

  else
  {
    v32 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicCommuteFromWork heuristicResultWithEnvironment:];
    }
  }

  v30 = v6;
LABEL_32:

LABEL_33:
LABEL_34:

  return v30;
}

@end