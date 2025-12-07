@interface PCCalendarVisitPredictor
+ (BOOL)_locationIsValid:(id)valid;
+ (void)_calculateLoiProbabilitiesWithLocation:(double *)location forEvent:(id)event usingHistory:(id)history andCalendar:(id)calendar atTime:(double)time;
+ (void)_calculateOverlapFraction:(double *)fraction betweenVisit:(id)visit andCalendar:(id)calendar;
+ (void)_findAssociatedVisits:(id *)visits forCalendarEvent:(id)event usingVisitHistory:(id)history;
+ (void)_formPrediction:(id *)prediction fromLocationCalEvent:(id)event probability:(double)probability currentTime:(double)time;
+ (void)_formPrediction:(id *)prediction fromNoLocationCalEvent:(id)event probableVisit:(id)visit currentTime:(double)time;
+ (void)_formPredictionCommon:(id *)common begin:(double)begin end:(double)end probability:(double)probability currentTime:(double)time;
+ (void)_parseLocationList:(id)list intoArray:(id *)array;
+ (void)predictWithHistory:(id)history calendarEvents:(id)events atTime:(double)time results:(id *)results;
@end

@implementation PCCalendarVisitPredictor

+ (void)_parseLocationList:(id)list intoArray:(id *)array
{
  listCopy = list;
  v5 = [listCopy componentsSeparatedByString:@""];;
  v6 = [v5 mutableCopy];

  if ([listCopy length])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:0];
      v10 = [v9 length];

      if (v10)
      {
        ++v8;
      }

      else
      {
        [v6 removeObjectAtIndex:v7];
      }

      v7 = v8;
    }

    while ([listCopy length] > v8);
  }

  v11 = v6;
  *array = v6;
}

+ (void)_calculateOverlapFraction:(double *)fraction betweenVisit:(id)visit andCalendar:(id)calendar
{
  visitCopy = visit;
  calendarCopy = calendar;
  *fraction = 0.0;
  if ([calendarCopy hasStartTimeCFAbsolute] && objc_msgSend(calendarCopy, "hasEndTimeCFAbsolute"))
  {
    [visitCopy entryTimeCFAbsolute];
    v9 = v8;
    [calendarCopy startTimeCFAbsolute];
    if (v9 < v10)
    {
      [calendarCopy startTimeCFAbsolute];
      v9 = v11;
    }

    [visitCopy exitTimeCFAbsolute];
    v13 = v12;
    [calendarCopy endTimeCFAbsolute];
    if (v13 > v14)
    {
      [calendarCopy endTimeCFAbsolute];
      v13 = v15;
    }

    if (v13 > v9)
    {
      [calendarCopy endTimeCFAbsolute];
      v17 = v16;
      [calendarCopy startTimeCFAbsolute];
      v19 = v17 - v18;
      v20 = 1.0;
      if (v19 >= 0.1)
      {
        v21 = v13 - v9;
        [calendarCopy endTimeCFAbsolute];
        v23 = v22;
        [calendarCopy startTimeCFAbsolute];
        v20 = v21 / (v23 - v24);
      }

      *fraction = v20;
    }
  }
}

+ (void)_findAssociatedVisits:(id *)visits forCalendarEvent:(id)event usingVisitHistory:(id)history
{
  visitsCopy = visits;
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  historyCopy = history;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = historyCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        loiIdentifier = [v14 loiIdentifier];

        if (loiIdentifier)
        {
          v24 = 0.0;
          [PCCalendarVisitPredictor _calculateOverlapFraction:&v24 betweenVisit:v14 andCalendar:eventCopy];
          v16 = v24;
          if (v24 > 0.6)
          {
            loiIdentifier2 = [v14 loiIdentifier];
            v18 = [dictionary objectForKeyedSubscript:loiIdentifier2];

            if (v18)
            {
              loiIdentifier3 = [v14 loiIdentifier];
              loiIdentifier4 = [dictionary objectForKeyedSubscript:loiIdentifier3];
              [loiIdentifier4 fractionOfCalDuration];
              [loiIdentifier4 setFractionOfCalDuration:v21 + v24];
            }

            else
            {
              v22 = [PCCalendarAssociatedVisit alloc];
              loiIdentifier3 = [(PCCalendarAssociatedVisit *)v22 initWithLocation:v14 atFraction:v24];
              loiIdentifier4 = [v14 loiIdentifier];
              [dictionary setObject:loiIdentifier3 forKeyedSubscript:loiIdentifier4];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:{16, v16}];
    }

    while (v11);
  }

  *visitsCopy = [dictionary allValues];
}

+ (BOOL)_locationIsValid:(id)valid
{
  validCopy = valid;
  v4 = validCopy;
  v7 = 0;
  if (validCopy)
  {
    if ([validCopy hasLocationLatitudeDeg])
    {
      if ([v4 hasLocationLongitudeDeg])
      {
        [v4 locationLatitudeDeg];
        if (v5 != 0.0 || ([v4 locationLongitudeDeg], v6 != 0.0))
        {
          v7 = 1;
        }
      }
    }
  }

  return v7;
}

+ (void)_calculateLoiProbabilitiesWithLocation:(double *)location forEvent:(id)event usingHistory:(id)history andCalendar:(id)calendar atTime:(double)time
{
  v68 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  historyCopy = history;
  calendarCopy = calendar;
  v12 = [PCLatLon alloc];
  location = [eventCopy location];
  [location locationLatitudeDeg];
  v15 = v14;
  v53 = eventCopy;
  location2 = [eventCopy location];
  [location2 locationLongitudeDeg];
  v56 = [(PCLatLon *)v12 initWithLatitude:v15 longitude:v17];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v18 = calendarCopy;
  v19 = [v18 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v63;
    v22 = 0.1;
    v23 = 0.2;
    v24 = 0x1E83B7000uLL;
    v51 = *v63;
    v52 = v18;
    while (1)
    {
      v25 = 0;
      v55 = v20;
      do
      {
        if (*v63 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v26 = *(*(&v62 + 1) + 8 * v25);
        if ([v26 hasEndTimeCFAbsolute])
        {
          if ([v26 hasStartTimeCFAbsolute])
          {
            [v26 endTimeCFAbsolute];
            if (v27 <= time)
            {
              calendarId = [eventCopy calendarId];
              calendarId2 = [v26 calendarId];
              if ([calendarId isEqual:calendarId2])
              {
                v30 = *(v24 + 1968);
                location3 = [v26 location];
                LODWORD(v30) = [v30 _locationIsValid:location3];

                if (!v30)
                {
                  v20 = v55;
                  goto LABEL_26;
                }

                v32 = *(v24 + 1968);
                v61 = 0;
                [v32 _findAssociatedVisits:&v61 forCalendarEvent:v26 usingVisitHistory:historyCopy];
                v33 = v61;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                calendarId = v33;
                v34 = [calendarId countByEnumeratingWithState:&v57 objects:v66 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v58;
                  while (2)
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v58 != v36)
                      {
                        objc_enumerationMutation(calendarId);
                      }

                      v38 = *(*(&v57 + 1) + 8 * i);
                      v39 = [PCLatLon alloc];
                      visit = [v38 visit];
                      location4 = [visit location];
                      [location4 locationLatitudeDeg];
                      v43 = v42;
                      visit2 = [v38 visit];
                      location5 = [visit2 location];
                      [location5 locationLongitudeDeg];
                      v47 = [(PCLatLon *)v39 initWithLatitude:v43 longitude:v46];

                      [(PCLatLon *)v47 distanceTo:v56];
                      v49 = v48;

                      if (v49 <= 250.0)
                      {
                        v22 = v22 + 1.0;
                        goto LABEL_23;
                      }
                    }

                    v35 = [calendarId countByEnumeratingWithState:&v57 objects:v66 count:16];
                    if (v35)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_23:
                  v18 = v52;
                  eventCopy = v53;
                  v21 = v51;
                  v24 = 0x1E83B7000;
                }

                v20 = v55;

                v23 = v23 + 1.0;
              }

              else
              {
              }
            }
          }
        }

LABEL_26:
        ++v25;
      }

      while (v25 != v20);
      v20 = [v18 countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  v22 = 0.1;
  v23 = 0.2;
LABEL_30:

  *location = v22 / v23;
}

+ (void)_formPredictionCommon:(id *)common begin:(double)begin end:(double)end probability:(double)probability currentTime:(double)time
{
  v56 = *MEMORY[0x1E69E9840];
  if (begin >= time)
  {
    beginCopy = begin;
  }

  else
  {
    beginCopy = time + 0.001;
  }

  if (time + 86400.0 > end)
  {
    endCopy = end;
  }

  else
  {
    endCopy = time + 86400.0;
  }

  v14 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 134219008;
    beginCopy2 = begin;
    v48 = 2048;
    endCopy2 = end;
    v50 = 2048;
    v51 = beginCopy;
    v52 = 2048;
    v53 = endCopy;
    v54 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "begin, %.5f, end, %.5f, clampedStartTime, %.5f, clampedEndTime, %.5f, currentTime, %.5f", buf, 0x34u);
  }

  if (endCopy >= beginCopy)
  {
    *common = objc_alloc_init(PCPPredictedContextLocation);
    v16 = objc_alloc_init(PCPLocationOfInterest);
    [*common setLocationOfInterest:v16];

    v17 = objc_alloc_init(PCPPredictedContext);
    [*common setPredictedContext:v17];

    predictedContext = [*common predictedContext];
    [predictedContext setProbability:probability];

    predictedContext2 = [*common predictedContext];
    [predictedContext2 setContextType:1];

    v20 = objc_alloc_init(PCPPredictedContextDateInterval);
    predictedContext3 = [*common predictedContext];
    [predictedContext3 setDateInterval:v20];

    v22 = objc_alloc_init(PCPPredictedContextDate);
    predictedContext4 = [*common predictedContext];
    dateInterval = [predictedContext4 dateInterval];
    [dateInterval setStartDate:v22];

    predictedContext5 = [*common predictedContext];
    dateInterval2 = [predictedContext5 dateInterval];
    startDate = [dateInterval2 startDate];
    [startDate setDate:beginCopy];

    predictedContext6 = [*common predictedContext];
    dateInterval3 = [predictedContext6 dateInterval];
    startDate2 = [dateInterval3 startDate];
    [startDate2 setConfidenceInterval:(endCopy - beginCopy) * 0.1];

    v31 = objc_alloc_init(PCPPredictedContextDate);
    predictedContext7 = [*common predictedContext];
    dateInterval4 = [predictedContext7 dateInterval];
    [dateInterval4 setEndDate:v31];

    predictedContext8 = [*common predictedContext];
    dateInterval5 = [predictedContext8 dateInterval];
    endDate = [dateInterval5 endDate];
    [endDate setDate:endCopy];

    predictedContext9 = [*common predictedContext];
    dateInterval6 = [predictedContext9 dateInterval];
    endDate2 = [dateInterval6 endDate];
    [endDate2 setConfidenceInterval:(endCopy - beginCopy) * 0.1];

    v15 = objc_alloc_init(PCPSource);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    [(PCPSource *)v15 setIdentifier:v41];

    v45 = v15;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v43 = [v42 mutableCopy];
    predictedContext10 = [*common predictedContext];
    [predictedContext10 setSources:v43];
  }

  else
  {
    v15 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
    if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, &v15->super.super, OS_LOG_TYPE_ERROR, "endTime < startTime, returning early", buf, 2u);
    }
  }
}

+ (void)_formPrediction:(id *)prediction fromNoLocationCalEvent:(id)event probableVisit:(id)visit currentTime:(double)time
{
  v29[1] = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  eventCopy = event;
  [eventCopy startTimeCFAbsolute];
  v12 = v11;
  [eventCopy endTimeCFAbsolute];
  v14 = v13;
  [visitCopy probability];
  [PCCalendarVisitPredictor _formPredictionCommon:prediction begin:v12 end:v14 probability:v15 currentTime:time];
  visit = [visitCopy visit];
  location = [visit location];
  locationOfInterest = [*prediction locationOfInterest];
  [locationOfInterest setLocation:location];

  visit2 = [visitCopy visit];

  loiIdentifier = [visit2 loiIdentifier];
  locationOfInterest2 = [*prediction locationOfInterest];
  [locationOfInterest2 setLoiIdentifier:loiIdentifier];

  v22 = objc_alloc_init(PCPSource);
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [(PCPSource *)v22 setIdentifier:v24];

  v25 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v25 setCalendarEvent:eventCopy];

  [(PCPSource *)v22 setPredictedContextSource:v25];
  v29[0] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v27 = [v26 mutableCopy];
  predictedContext = [*prediction predictedContext];
  [predictedContext setSources:v27];
}

+ (void)_formPrediction:(id *)prediction fromLocationCalEvent:(id)event probability:(double)probability currentTime:(double)time
{
  v25[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [eventCopy startTimeCFAbsolute];
  v11 = v10;
  [eventCopy endTimeCFAbsolute];
  [PCCalendarVisitPredictor _formPredictionCommon:prediction begin:v11 end:v12 probability:probability currentTime:time];
  location = [eventCopy location];
  locationOfInterest = [*prediction locationOfInterest];
  [locationOfInterest setLocation:location];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v16 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
  locationOfInterest2 = [*prediction locationOfInterest];
  [locationOfInterest2 setLoiIdentifier:v16];

  v18 = objc_alloc_init(PCPSource);
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [(PCPSource *)v18 setIdentifier:v20];

  v21 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v21 setCalendarEvent:eventCopy];

  [(PCPSource *)v18 setPredictedContextSource:v21];
  v25[0] = v18;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v23 = [v22 mutableCopy];
  predictedContext = [*prediction predictedContext];
  [predictedContext setSources:v23];
}

+ (void)predictWithHistory:(id)history calendarEvents:(id)events atTime:(double)time results:(id *)results
{
  v45 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  eventsCopy = events;
  if (results)
  {
    *results = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = eventsCopy;
    v10 = eventsCopy;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          if ([v15 hasEndTimeCFAbsolute])
          {
            if ([v15 hasStartTimeCFAbsolute])
            {
              [v15 endTimeCFAbsolute];
              if (v16 > time)
              {
                location = [v15 location];
                v18 = [PCCalendarVisitPredictor _locationIsValid:location];

                if (v18)
                {
                  *v43 = 0;
                  [PCCalendarVisitPredictor _calculateLoiProbabilitiesWithLocation:v43 forEvent:v15 usingHistory:historyCopy andCalendar:v10 atTime:time];
                  v37 = 0;
                  [PCCalendarVisitPredictor _formPrediction:&v37 fromLocationCalEvent:v15 probability:*v43 currentTime:time];
                  v19 = v37;
                  if (v19)
                  {
                    [*results addObject:v19];
                    v20 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_INFO, "predicted 1 future visit via calendar entry with location.  ", buf, 2u);
                    }
                  }
                }

                else
                {
                  v19 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                  {
                    *v43 = 0;
                    _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "Calendar entry with no location, skip prediction", v43, 2u);
                  }
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v12);
    }

    if (*results && [*results count])
    {
      v21 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [*results count];
        *v43 = 134217984;
        *&v43[4] = v22;
        _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", v43, 0xCu);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = *results;
      v24 = [v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v33;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v32 + 1) + 8 * j), v30];
            v29 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v43 = 138739971;
              *&v43[4] = v28;
              _os_log_impl(&dword_1CEE74000, v29, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", v43, 0xCu);
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v23 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_INFO, "No Location Predictions to log", v43, 2u);
      }
    }

    eventsCopy = v30;
  }

  else
  {
    v23 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v43 = 0;
      _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_ERROR, "PCCalendarVisitPredictor: Unexpected nil results output param", v43, 2u);
    }
  }
}

@end