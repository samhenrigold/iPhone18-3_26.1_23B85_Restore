@interface PCScheduledTravelPredictor
+ (double)estimateTravelTimeForCurrentLocation:(id)location destination:(id)destination;
+ (id)findFirstVisitWithin24HoursAfterNavigationSession:(id)session visitHistory:(id)history;
+ (void)predictWithScheduledTravelWithActiveNav:(id)nav previousNav:(id)previousNav visitHistory:(id)history locationHistory:(id)locationHistory atTime:(double)time results:(id *)results;
@end

@implementation PCScheduledTravelPredictor

+ (id)findFirstVisitWithin24HoursAfterNavigationSession:(id)session visitHistory:(id)history
{
  v34 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  historyCopy = history;
  if ([sessionCopy hasUsageTimeCFAbsolute])
  {
    [sessionCopy usageTimeCFAbsolute];
    v8 = v7;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = historyCopy;
    v9 = historyCopy;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = 0;
      v12 = *v30;
      v13 = 1.79769313e308;
      do
      {
        v14 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v29 + 1) + 8 * v14);
          location = [v15 location];
          destinationLocation = [sessionCopy destinationLocation];
          if (+[PCLocationUtils isLocation:withinThreshold:](PCLocationUtils, "isLocation:withinThreshold:", location, destinationLocation) && ([v15 entryTimeCFAbsolute], v18 > v8) && (objc_msgSend(v15, "entryTimeCFAbsolute"), v19 <= v8 + 86400.0))
          {
            [v15 entryTimeCFAbsolute];
            v21 = v20;

            if (v21 < v13)
            {
              v22 = v15;

              [v22 entryTimeCFAbsolute];
              v13 = v23;
              v28 = v22;
            }
          }

          else
          {
          }

          ++v14;
        }

        while (v11 != v14);
        v24 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v11 = v24;
      }

      while (v24);
    }

    else
    {
      v28 = 0;
    }

    historyCopy = v27;
    v25 = v28;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (double)estimateTravelTimeForCurrentLocation:(id)location destination:(id)destination
{
  result = -1.0;
  if (location && destination)
  {
    [PCLocationUtils distanceInMetersBetweenLocation:-1.0 andLocation:?];
    v6 = v5 / 20.11675;
    v7 = v5 < 0.0;
    result = -1.0;
    if (!v7)
    {
      return v6;
    }
  }

  return result;
}

+ (void)predictWithScheduledTravelWithActiveNav:(id)nav previousNav:(id)previousNav visitHistory:(id)history locationHistory:(id)locationHistory atTime:(double)time results:(id *)results
{
  v164 = *MEMORY[0x1E69E9840];
  navCopy = nav;
  previousNavCopy = previousNav;
  historyCopy = history;
  locationHistoryCopy = locationHistory;
  *results = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (navCopy)
  {
    originLocation = [PCLocationUtils currentLocationWithLocationHistory:locationHistoryCopy visitHistory:historyCopy currentTime:time];
    if (!originLocation)
    {
      v18 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v161 = "+[PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:previousNav:visitHistory:locationHistory:atTime:results:]";
        _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_ERROR, "%s, current location is unknown!, use origin location as a fallback", buf, 0xCu);
      }

      originLocation = [navCopy originLocation];
    }

    if ([navCopy hasTravelTime])
    {
      [navCopy travelTime];
      v20 = v19;
    }

    else
    {
      history = [navCopy destinationLocation];
      [PCScheduledTravelPredictor estimateTravelTimeForCurrentLocation:originLocation destination:history];
      v20 = v30;
    }

    if (v20 < 0.0)
    {
      v31 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v161 = "+[PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:previousNav:visitHistory:locationHistory:atTime:results:]";
        _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "%s, unable to determine travel time", buf, 0xCu);
      }

      if (*results && [*results count])
      {
        v119 = originLocation;
        v32 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [*results count];
          *buf = 134217984;
          v161 = v33;
          _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v34 = *results;
        v35 = [(PCPPredictedContextLocation *)v34 countByEnumeratingWithState:&v145 objects:v158 count:16];
        if (!v35)
        {
          goto LABEL_114;
        }

        v36 = v35;
        v120 = locationHistoryCopy;
        v123 = historyCopy;
        v125 = previousNavCopy;
        v118 = navCopy;
        v37 = *v146;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v146 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v145 + 1) + 8 * i)];
            v40 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v161 = v39;
              _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v36 = [(PCPPredictedContextLocation *)v34 countByEnumeratingWithState:&v145 objects:v158 count:16];
        }

        while (v36);
        goto LABEL_73;
      }

      v34 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
      if (os_log_type_enabled(&v34->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
LABEL_76:
        _os_log_impl(&dword_1CEE74000, &v34->super.super, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        goto LABEL_115;
      }

      goto LABEL_115;
    }

    if (([navCopy hasDestinationLocation] & 1) == 0)
    {
      v59 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v161 = "+[PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:previousNav:visitHistory:locationHistory:atTime:results:]";
        v162 = 2112;
        v163 = navCopy;
        _os_log_impl(&dword_1CEE74000, v59, OS_LOG_TYPE_DEFAULT, "%s, active nav doesnot have destination location, %@", buf, 0x16u);
      }

      if (*results && [*results count])
      {
        v120 = locationHistoryCopy;
        v123 = historyCopy;
        v125 = previousNavCopy;
        v60 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = [*results count];
          *buf = 134217984;
          v161 = v61;
          _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v34 = *results;
        v62 = [(PCPPredictedContextLocation *)v34 countByEnumeratingWithState:&v141 objects:v157 count:16];
        if (!v62)
        {
          goto LABEL_115;
        }

        v63 = v62;
        v118 = navCopy;
        v119 = originLocation;
        v64 = *v142;
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v142 != v64)
            {
              objc_enumerationMutation(v34);
            }

            v66 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v141 + 1) + 8 * j)];
            v67 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v161 = v66;
              _os_log_impl(&dword_1CEE74000, v67, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v63 = [(PCPPredictedContextLocation *)v34 countByEnumeratingWithState:&v141 objects:v157 count:16];
        }

        while (v63);
LABEL_73:
        navCopy = v118;
        historyCopy = v123;
        previousNavCopy = v125;
        locationHistoryCopy = v120;
LABEL_114:
        originLocation = v119;
        goto LABEL_115;
      }

      v34 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
      if (os_log_type_enabled(&v34->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        goto LABEL_76;
      }

LABEL_115:

      goto LABEL_116;
    }

    resultsCopy = results;
    v119 = originLocation;
    v121 = locationHistoryCopy;
    v41 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_10];
    [historyCopy filterUsingPredicate:v41];

    [historyCopy sortUsingComparator:&__block_literal_global_7];
    v42 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_10];
    [previousNavCopy filterUsingPredicate:v42];

    [previousNavCopy sortUsingComparator:&__block_literal_global_13];
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v124 = historyCopy;
    v43 = historyCopy;
    v44 = [v43 countByEnumeratingWithState:&v137 objects:v156 count:16];
    if (v44)
    {
      v45 = v44;
      v126 = previousNavCopy;
      v46 = 0;
      v47 = *v138;
      v48 = 0.0;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v138 != v47)
          {
            objc_enumerationMutation(v43);
          }

          v50 = *(*(&v137 + 1) + 8 * k);
          location = [v50 location];
          v52 = navCopy;
          destinationLocation = [navCopy destinationLocation];
          history = [PCLocationUtils isLocation:location withinThreshold:destinationLocation];

          if (history)
          {
            ++v46;
            [v50 exitTimeCFAbsolute];
            v55 = v54;
            [v50 entryTimeCFAbsolute];
            v48 = v48 + v55 - v56;
          }

          navCopy = v52;
        }

        v45 = [v43 countByEnumeratingWithState:&v137 objects:v156 count:16];
      }

      while (v45);

      previousNavCopy = v126;
      if (v46 >= 1)
      {
        v57 = v48 / v46;
        v58 = 1.0;
        goto LABEL_91;
      }
    }

    else
    {
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v68 = previousNavCopy;
    v69 = [v68 countByEnumeratingWithState:&v133 objects:v155 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = 0;
      v72 = *v134;
      v73 = 0.0;
      do
      {
        for (m = 0; m != v70; ++m)
        {
          if (*v134 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v75 = [PCScheduledTravelPredictor findFirstVisitWithin24HoursAfterNavigationSession:*(*(&v133 + 1) + 8 * m) visitHistory:v43];
          history = v75;
          if (v75)
          {
            ++v71;
            [v75 exitTimeCFAbsolute];
            v77 = v76;
            [history entryTimeCFAbsolute];
            v73 = v73 + v77 - v78;
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v133 objects:v155 count:16];
      }

      while (v70);

      v79 = resultsCopy;
      if (v71 < 1)
      {
        v57 = 3600.0;
        v58 = 0.4;
      }

      else
      {
        v57 = v73 / v71;
        v58 = fmin(v71 / [v68 count] * 0.8, 1.0);
      }

LABEL_92:
      v34 = objc_alloc_init(PCPPredictedContextLocation);
      v80 = objc_alloc_init(PCPLocationOfInterest);
      [(PCPPredictedContextLocation *)v34 setLocationOfInterest:v80];

      loiIdentifier = [navCopy loiIdentifier];
      v82 = loiIdentifier;
      if (!loiIdentifier)
      {
        history = [MEMORY[0x1E696AFB0] UUID];
        v82 = [PCAlgorithmsCommonUtils dataFromUUID:history];
      }

      v83 = v20 + time;
      locationOfInterest = [(PCPPredictedContextLocation *)v34 locationOfInterest];
      [locationOfInterest setLoiIdentifier:v82];

      if (!loiIdentifier)
      {
      }

      destinationLocation2 = [navCopy destinationLocation];
      locationOfInterest2 = [(PCPPredictedContextLocation *)v34 locationOfInterest];
      [locationOfInterest2 setLocation:destinationLocation2];

      v87 = objc_alloc_init(PCPPredictedContext);
      [(PCPPredictedContextLocation *)v34 setPredictedContext:v87];

      predictedContext = [(PCPPredictedContextLocation *)v34 predictedContext];
      [predictedContext setProbability:v58];

      predictedContext2 = [(PCPPredictedContextLocation *)v34 predictedContext];
      [predictedContext2 setContextType:1];

      v90 = objc_alloc_init(PCPSource);
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      [(PCPSource *)v90 setIdentifier:v92];

      v93 = objc_alloc_init(PCPPredictedContextSource);
      [(PCPPredictedContextSource *)v93 setMapsActiveNavigation:navCopy];
      v117 = v93;
      [(PCPSource *)v90 setPredictedContextSource:v93];
      v154 = v90;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
      v95 = [v94 mutableCopy];
      predictedContext3 = [(PCPPredictedContextLocation *)v34 predictedContext];
      [predictedContext3 setSources:v95];

      v97 = objc_alloc_init(PCPPredictedContextDateInterval);
      v98 = objc_alloc_init(PCPPredictedContextDate);
      [(PCPPredictedContextDateInterval *)v97 setStartDate:v98];

      v99 = objc_alloc_init(PCPPredictedContextDate);
      [(PCPPredictedContextDateInterval *)v97 setEndDate:v99];

      startDate = [(PCPPredictedContextDateInterval *)v97 startDate];
      [startDate setDate:v83];

      startDate2 = [(PCPPredictedContextDateInterval *)v97 startDate];
      [startDate2 setConfidenceInterval:1800.0];

      endDate = [(PCPPredictedContextDateInterval *)v97 endDate];
      [endDate setDate:v83 + v57];

      endDate2 = [(PCPPredictedContextDateInterval *)v97 endDate];
      [endDate2 setConfidenceInterval:1800.0];

      predictedContext4 = [(PCPPredictedContextLocation *)v34 predictedContext];
      [predictedContext4 setDateInterval:v97];

      [*v79 addObject:v34];
      locationHistoryCopy = v121;
      historyCopy = v124;
      if (*v79 && [*v79 count])
      {
        v105 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
        {
          v106 = [*v79 count];
          *buf = 134217984;
          v161 = v106;
          _os_log_impl(&dword_1CEE74000, v105, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v107 = *v79;
        v108 = [v107 countByEnumeratingWithState:&v129 objects:v153 count:16];
        if (v108)
        {
          v109 = v108;
          v115 = v90;
          v116 = v34;
          v127 = previousNavCopy;
          v110 = *v130;
          do
          {
            for (n = 0; n != v109; ++n)
            {
              if (*v130 != v110)
              {
                objc_enumerationMutation(v107);
              }

              v112 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v129 + 1) + 8 * n)];
              v113 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
              if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v161 = v112;
                _os_log_impl(&dword_1CEE74000, v113, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v109 = [v107 countByEnumeratingWithState:&v129 objects:v153 count:16];
          }

          while (v109);
          v114 = v117;
          historyCopy = v124;
          previousNavCopy = v127;
          locationHistoryCopy = v121;
          v90 = v115;
          v34 = v116;
          goto LABEL_113;
        }
      }

      else
      {
        v107 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v107, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }

      v114 = v117;
LABEL_113:

      goto LABEL_114;
    }

    v57 = 3600.0;
    v58 = 0.4;
LABEL_91:
    v79 = resultsCopy;
    goto LABEL_92;
  }

  v21 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v161 = "+[PCScheduledTravelPredictor predictWithScheduledTravelWithActiveNav:previousNav:visitHistory:locationHistory:atTime:results:]";
    v162 = 2117;
    v163 = 0;
    _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_DEFAULT, "%s, no active nav, %{sensitive}@", buf, 0x16u);
  }

  if (*results && [*results count])
  {
    v22 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [*results count];
      *buf = 134217984;
      v161 = v23;
      _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    originLocation = *results;
    v24 = [originLocation countByEnumeratingWithState:&v149 objects:v159 count:16];
    if (v24)
    {
      v25 = v24;
      v122 = historyCopy;
      v26 = *v150;
      do
      {
        for (ii = 0; ii != v25; ++ii)
        {
          if (*v150 != v26)
          {
            objc_enumerationMutation(originLocation);
          }

          v28 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v149 + 1) + 8 * ii)];
          v29 = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v161 = v28;
            _os_log_impl(&dword_1CEE74000, v29, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
          }
        }

        v25 = [originLocation countByEnumeratingWithState:&v149 objects:v159 count:16];
      }

      while (v25);
      navCopy = 0;
      historyCopy = v122;
    }
  }

  else
  {
    originLocation = _plc_log_get_normal_handle(PCLogCategoryScheduledTravelPredictor);
    if (os_log_type_enabled(originLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, originLocation, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }
  }

LABEL_116:
}

uint64_t __126__PCScheduledTravelPredictor_predictWithScheduledTravelWithActiveNav_previousNav_visitHistory_locationHistory_atTime_results___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 entryTimeCFAbsolute];
  v6 = v5;
  [v4 entryTimeCFAbsolute];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __126__PCScheduledTravelPredictor_predictWithScheduledTravelWithActiveNav_previousNav_visitHistory_locationHistory_atTime_results___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasDestinationLocation])
  {
    v3 = [v2 hasUsageTimeCFAbsolute];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __126__PCScheduledTravelPredictor_predictWithScheduledTravelWithActiveNav_previousNav_visitHistory_locationHistory_atTime_results___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 usageTimeCFAbsolute];
  v6 = v5;
  [v4 usageTimeCFAbsolute];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end