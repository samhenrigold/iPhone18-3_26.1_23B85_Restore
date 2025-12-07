@interface PCParkedCarLocationPredictor
+ (BOOL)isCarLocation:(id)location awayFromHomeLocations:(id)locations;
+ (BOOL)isUserCloseToCarWithDistance:(double)distance;
+ (id)createParkedCarLocationPredictionWithCar:(id)car probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time;
+ (id)createPredictedContextDateIntervalAtTime:(double)time fromCandidateVisits:(id)visits distanceFromUser:(double)user;
+ (void)predictParkedCarLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations;
@end

@implementation PCParkedCarLocationPredictor

+ (void)predictParkedCarLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations
{
  v155 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  historyCopy = history;
  interestCopy = interest;
  visitsCopy = visits;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (locationCopy && ([locationCopy hasLocation] & 1) != 0)
  {
    selfCopy = self;
    v18 = [PCLocationUtils currentLocationWithLocationHistory:historyCopy currentTime:time];
    if (v18)
    {
      locationsCopy = locations;
      v19 = [PCLatLon alloc];
      location = [locationCopy location];
      [location locationLatitudeDeg];
      v22 = v21;
      location2 = [locationCopy location];
      [location2 locationLongitudeDeg];
      v25 = [(PCLatLon *)v19 initWithLatitude:v22 longitude:v24];

      [v18 distanceTo:v25];
      v27 = v26;
      v28 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27 <= 500000.0)
      {
        if (v29)
        {
          [v18 latitudeDeg];
          v58 = v57;
          [v18 longitudeDeg];
          *buf = 134545921;
          v146 = v58;
          v147 = 2053;
          v148 = v59;
          _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_DEFAULT, "current location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
        }

        v103 = v25;
        v104 = v18;
        v114 = visitsCopy;
        v122 = historyCopy;

        v60 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          location3 = [locationCopy location];
          [location3 locationLatitudeDeg];
          v63 = v62;
          location4 = [locationCopy location];
          [location4 locationLongitudeDeg];
          *buf = 134545921;
          v146 = v63;
          v147 = 2053;
          v148 = v65;
          _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_DEFAULT, "parked car location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
        }

        v110 = locationCopy;

        array = [MEMORY[0x1E695DF70] array];
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v118 = interestCopy;
        v67 = interestCopy;
        v68 = [v67 countByEnumeratingWithState:&v128 objects:v151 count:16];
        obj = array;
        if (v68)
        {
          v69 = v68;
          v70 = *v129;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v129 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v128 + 1) + 8 * i);
              if ([v72 placeType] == 1)
              {
                v73 = [PCLatLon alloc];
                location5 = [v72 location];
                [location5 locationLatitudeDeg];
                v76 = v75;
                location6 = [v72 location];
                [location6 locationLongitudeDeg];
                v79 = [(PCLatLon *)v73 initWithLatitude:v76 longitude:v78];
                [array addObject:v79];

                v80 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  location7 = [v72 location];
                  [location7 locationLatitudeDeg];
                  v83 = v82;
                  location8 = [v72 location];
                  [location8 locationLongitudeDeg];
                  v86 = v85;
                  loiIdentifier = [v72 loiIdentifier];
                  v88 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
                  *buf = 134546179;
                  v146 = v83;
                  v147 = 2053;
                  v148 = v86;
                  v149 = 2117;
                  v150 = v88;
                  _os_log_impl(&dword_1CEE74000, v80, OS_LOG_TYPE_DEFAULT, "home location added, lat, %{sensitive}.2f, lon, %{sensitive}.2f, ID, %{sensitive}@", buf, 0x20u);

                  array = obj;
                }
              }
            }

            v69 = [v67 countByEnumeratingWithState:&v128 objects:v151 count:16];
          }

          while (v69);
        }

        if ([selfCopy isUserCloseToCarWithDistance:v27])
        {
          v25 = v103;
          if ([selfCopy isCarLocation:v103 awayFromHomeLocations:array])
          {
            v89 = 0.8;
          }

          else
          {
            v89 = 0.1;
          }

          locationCopy = v110;
          visitsCopy = v114;
        }

        else
        {
          v89 = 0.01;
          locationCopy = v110;
          visitsCopy = v114;
          v25 = v103;
        }

        v91 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v146 = *&v89;
          _os_log_impl(&dword_1CEE74000, v91, OS_LOG_TYPE_DEFAULT, "probability will be, %f", buf, 0xCu);
        }

        v92 = [PCParkedCarLocationPredictor createParkedCarLocationPredictionWithCar:locationCopy probability:visitsCopy distanceFromUser:v89 candidateVisits:v27 currentTime:time];
        [*locationsCopy addObject:v92];
        v93 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        interestCopy = v118;
        historyCopy = v122;
        v18 = v104;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v93, OS_LOG_TYPE_DEFAULT, "Predicting parked car location..", buf, 2u);
        }

        if (*locationsCopy && [*locationsCopy count])
        {
          v94 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            v95 = [*locationsCopy count];
            *buf = 134217984;
            v146 = v95;
            _os_log_impl(&dword_1CEE74000, v94, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
          }

          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v96 = *locationsCopy;
          v97 = [v96 countByEnumeratingWithState:&v124 objects:v144 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = *v125;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v125 != v99)
                {
                  objc_enumerationMutation(v96);
                }

                v103 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v124 + 1) + 8 * j), v103];
                v102 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v146 = v103;
                  _os_log_impl(&dword_1CEE74000, v102, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v98 = [v96 countByEnumeratingWithState:&v124 objects:v144 count:16];
            }

            while (v98);
            locationCopy = v110;
            visitsCopy = v114;
            interestCopy = v118;
            historyCopy = v122;
            v25 = v103;
            v18 = v104;
          }
        }

        else
        {
          v96 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v96, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
          }
        }
      }

      else
      {
        if (v29)
        {
          *buf = 136315138;
          v146 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
          _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_DEFAULT, "%s, car very far, no prediction", buf, 0xCu);
        }

        if (*locationsCopy && [*locationsCopy count])
        {
          v107 = locationCopy;
          v111 = visitsCopy;
          v115 = interestCopy;
          v119 = historyCopy;
          v30 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [*locationsCopy count];
            *buf = 134217984;
            v146 = v31;
            _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
          }

          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v32 = *locationsCopy;
          v33 = [v32 countByEnumeratingWithState:&v132 objects:v152 count:16];
          obj = v32;
          if (v33)
          {
            v34 = v33;
            v35 = *v133;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v133 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v132 + 1) + 8 * k)];
                v38 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v146 = v37;
                  _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v132 objects:v152 count:16];
            }

            while (v34);
            interestCopy = v115;
            historyCopy = v119;
            locationCopy = v107;
            visitsCopy = v111;
          }
        }

        else
        {
          v90 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          obj = v90;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
          }
        }
      }
    }

    else
    {
      v48 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v146 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v48, OS_LOG_TYPE_DEFAULT, "%s, user location not available, no prediction", buf, 0xCu);
      }

      if (*locations && [*locations count])
      {
        v113 = visitsCopy;
        v117 = interestCopy;
        v121 = historyCopy;
        v49 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [*locations count];
          *buf = 134217984;
          v146 = v50;
          _os_log_impl(&dword_1CEE74000, v49, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v25 = *locations;
        v51 = [v25 countByEnumeratingWithState:&v136 objects:v153 count:16];
        if (v51)
        {
          v52 = v51;
          v109 = locationCopy;
          v53 = *v137;
          do
          {
            for (m = 0; m != v52; ++m)
            {
              if (*v137 != v53)
              {
                objc_enumerationMutation(v25);
              }

              v55 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v136 + 1) + 8 * m)];
              v56 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v146 = v55;
                _os_log_impl(&dword_1CEE74000, v56, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v52 = [v25 countByEnumeratingWithState:&v136 objects:v153 count:16];
          }

          while (v52);
          interestCopy = v117;
          historyCopy = v121;
          locationCopy = v109;
          visitsCopy = v113;
        }
      }

      else
      {
        v25 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }
    }
  }

  else
  {
    v39 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v146 = "+[PCParkedCarLocationPredictor predictParkedCarLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
      _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEFAULT, "%s, parked car not found, no prediction", buf, 0xCu);
    }

    if (*locations && [*locations count])
    {
      v112 = visitsCopy;
      v116 = interestCopy;
      v120 = historyCopy;
      v40 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [*locations count];
        *buf = 134217984;
        v146 = v41;
        _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v18 = *locations;
      v42 = [v18 countByEnumeratingWithState:&v140 objects:v154 count:16];
      if (v42)
      {
        v43 = v42;
        v108 = locationCopy;
        v44 = *v141;
        do
        {
          for (n = 0; n != v43; ++n)
          {
            if (*v141 != v44)
            {
              objc_enumerationMutation(v18);
            }

            v46 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v140 + 1) + 8 * n)];
            v47 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v146 = v46;
              _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v43 = [v18 countByEnumeratingWithState:&v140 objects:v154 count:16];
        }

        while (v43);
        interestCopy = v116;
        historyCopy = v120;
        locationCopy = v108;
        visitsCopy = v112;
      }
    }

    else
    {
      v18 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
      }
    }
  }
}

+ (BOOL)isCarLocation:(id)location awayFromHomeLocations:(id)locations
{
  v25 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = locationsCopy;
    v7 = locationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [locationCopy distanceTo:*(*(&v18 + 1) + 8 * i)];
          v14 = v13;
          v15 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v23 = v14;
            _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "car distance from home, %f", buf, 0xCu);
          }

          v11 &= v14 >= 3220.0;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1;
    }

    locationsCopy = v17;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isUserCloseToCarWithDistance:(double)distance
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _plc_log_get_normal_handle(PCLogCategoryParkedCarPredictor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    distanceCopy = distance;
    _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEFAULT, "user distance from car, %f", &v6, 0xCu);
  }

  return distance < 800.0;
}

+ (id)createParkedCarLocationPredictionWithCar:(id)car probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time
{
  v33[1] = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  carCopy = car;
  v13 = objc_alloc_init(PCPPredictedContextLocation);
  v14 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v13 setLocationOfInterest:v14];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v16 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
  locationOfInterest = [(PCPPredictedContextLocation *)v13 locationOfInterest];
  [locationOfInterest setLoiIdentifier:v16];

  location = [carCopy location];
  locationOfInterest2 = [(PCPPredictedContextLocation *)v13 locationOfInterest];
  [locationOfInterest2 setLocation:location];

  v20 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v13 setPredictedContext:v20];

  predictedContext = [(PCPPredictedContextLocation *)v13 predictedContext];
  [predictedContext setProbability:probability];

  predictedContext2 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [predictedContext2 setContextType:1];

  v23 = objc_alloc_init(PCPSource);
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [(PCPSource *)v23 setIdentifier:v25];

  v26 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v26 setParkedCar:carCopy];

  [(PCPSource *)v23 setPredictedContextSource:v26];
  v33[0] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v28 = [v27 mutableCopy];
  predictedContext3 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [predictedContext3 setSources:v28];

  v30 = [PCParkedCarLocationPredictor createPredictedContextDateIntervalAtTime:visitsCopy fromCandidateVisits:time distanceFromUser:user];

  predictedContext4 = [(PCPPredictedContextLocation *)v13 predictedContext];
  [predictedContext4 setDateInterval:v30];

  return v13;
}

+ (id)createPredictedContextDateIntervalAtTime:(double)time fromCandidateVisits:(id)visits distanceFromUser:(double)user
{
  v60 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  v8 = objc_alloc_init(PCPPredictedContextDateInterval);
  v9 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setStartDate:v9];

  v10 = objc_alloc_init(PCPPredictedContextDate);
  [(PCPPredictedContextDateInterval *)v8 setEndDate:v10];

  v11 = user / 1.56;
  if ([visitsCopy count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = visitsCopy;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      v16 = 1.79769313e308;
      v17 = 1.79769313e308;
      v18 = 1.79769313e308;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          predictedContext = [v20 predictedContext];
          dateInterval = [predictedContext dateInterval];
          endDate = [dateInterval endDate];
          [endDate date];
          v25 = v24;

          if (v25 > time)
          {
            predictedContext2 = [v20 predictedContext];
            dateInterval2 = [predictedContext2 dateInterval];
            endDate2 = [dateInterval2 endDate];
            [endDate2 date];
            v30 = v29 - time;

            if (v30 < v18)
            {
              predictedContext3 = [v20 predictedContext];
              dateInterval3 = [predictedContext3 dateInterval];
              endDate3 = [dateInterval3 endDate];
              [endDate3 date];
              v16 = v34;

              predictedContext4 = [v20 predictedContext];
              dateInterval4 = [predictedContext4 dateInterval];
              endDate4 = [dateInterval4 endDate];
              [endDate4 confidenceInterval];
              v17 = v38;

              v18 = v30;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
      v17 = 1.79769313e308;
    }

    startDate = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate setDate:v11 + v16];

    startDate2 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate2 date];
    v51 = v50 + 300.0;
    endDate5 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [endDate5 setDate:v51];

    startDate3 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate3 setConfidenceInterval:v17];

    endDate6 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = endDate6;
    v47 = v17;
  }

  else
  {
    startDate4 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate4 setDate:v11 + time];

    startDate5 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate5 date];
    v42 = v41 + 300.0;
    endDate7 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [endDate7 setDate:v42];

    startDate6 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate6 setConfidenceInterval:3600.0];

    endDate6 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = endDate6;
    v47 = 3600.0;
  }

  [endDate6 setConfidenceInterval:{v47, v55}];

  return v8;
}

@end