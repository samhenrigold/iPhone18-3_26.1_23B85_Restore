@interface PCHomeKitPredictor
+ (double)calculateMinDistanceFrom:(id)from to:(id)to;
+ (double)calculateProbabilityFromDistance:(double)distance;
+ (id)createHomeKitLocationPredictionWithHome:(id)home probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time;
+ (id)createPredictedContextDateIntervalAtTime:(double)time fromCandidateVisits:(id)visits distanceFromUser:(double)user;
+ (void)predictHomeKitLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations;
+ (void)predictHomeLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations;
@end

@implementation PCHomeKitPredictor

+ (void)predictHomeKitLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  historyCopy = history;
  interestCopy = interest;
  visitsCopy = visits;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = locationCopy;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        v24 = 0;
        [PCHomeKitPredictor predictHomeLocation:v22 locationHistory:historyCopy locationsOfInterest:interestCopy candidateVisits:visitsCopy atTime:&v24 locations:time];
        v23 = v24;
        [*locations addObjectsFromArray:v23];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }
}

+ (void)predictHomeLocation:(id)location locationHistory:(id)history locationsOfInterest:(id)interest candidateVisits:(id)visits atTime:(double)time locations:(id *)locations
{
  v139 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  historyCopy = history;
  interestCopy = interest;
  visitsCopy = visits;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!locationCopy || ([locationCopy hasLocation] & 1) == 0)
  {
    v31 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v135 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
      _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "%s, home not found, no prediction", buf, 0xCu);
    }

    if (*locations && [*locations count])
    {
      v108 = interestCopy;
      v32 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [*locations count];
        *buf = 134217984;
        v135 = v33;
        _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v23 = *locations;
      v34 = [v23 countByEnumeratingWithState:&v126 objects:v138 count:16];
      if (v34)
      {
        v35 = v34;
        v26 = v23;
        v101 = visitsCopy;
        v105 = historyCopy;
        v97 = locationCopy;
        v36 = *v127;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v127 != v36)
            {
              objc_enumerationMutation(v26);
            }

            v38 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v126 + 1) + 8 * i)];
            v39 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v135 = v38;
              _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v35 = [v26 countByEnumeratingWithState:&v126 objects:v138 count:16];
        }

        while (v35);
        goto LABEL_35;
      }

LABEL_58:
      interestCopy = v108;
      goto LABEL_112;
    }

    v23 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    *buf = 0;
LABEL_38:
    _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    goto LABEL_112;
  }

  [PCHomeKitPredictor calculateMinDistanceFrom:locationCopy to:interestCopy];
  if (v18 >= 100000.0)
  {
    v40 = [PCLocationUtils currentLocationWithLocationHistory:historyCopy currentTime:time];
    v96 = v40;
    if (!v40)
    {
      v62 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v135 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v62, OS_LOG_TYPE_DEFAULT, "%s, user location not available, no prediction", buf, 0xCu);
      }

      if (*locations && [*locations count])
      {
        v103 = visitsCopy;
        v63 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [*locations count];
          *buf = 134217984;
          v135 = v64;
          _os_log_impl(&dword_1CEE74000, v63, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v65 = *locations;
        v66 = [v65 countByEnumeratingWithState:&v118 objects:v132 count:16];
        if (v66)
        {
          v67 = v66;
          v107 = historyCopy;
          v99 = locationCopy;
          v68 = *v119;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v119 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v118 + 1) + 8 * j)];
              v71 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v135 = v70;
                _os_log_impl(&dword_1CEE74000, v71, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v118 objects:v132 count:16];
          }

          while (v67);
          locationCopy = v99;
          historyCopy = v107;
        }

        visitsCopy = v103;
      }

      else
      {
        v65 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }

      v23 = 0;
      goto LABEL_111;
    }

    v41 = v40;
    v106 = historyCopy;
    v42 = [PCLatLon alloc];
    location = [locationCopy location];
    [location locationLatitudeDeg];
    v45 = v44;
    location2 = [locationCopy location];
    [location2 locationLongitudeDeg];
    v48 = [(PCLatLon *)v42 initWithLatitude:v45 longitude:v47];

    v95 = v48;
    [v41 distanceTo:v48];
    v50 = v49;
    v51 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v50 > 100000.0)
    {
      if (v52)
      {
        *buf = 136315138;
        v135 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
        _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "%s, homekit very far, no prediction", buf, 0xCu);
      }

      historyCopy = v106;
      if (*locations && [*locations count])
      {
        v102 = visitsCopy;
        v109 = interestCopy;
        v53 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [*locations count];
          *buf = 134217984;
          v135 = v54;
          _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v55 = *locations;
        v56 = [v55 countByEnumeratingWithState:&v114 objects:v131 count:16];
        if (v56)
        {
          v57 = v56;
          v98 = locationCopy;
          v58 = *v115;
          do
          {
            for (k = 0; k != v57; ++k)
            {
              if (*v115 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v114 + 1) + 8 * k)];
              v61 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v135 = v60;
                _os_log_impl(&dword_1CEE74000, v61, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v114 objects:v131 count:16];
          }

          while (v57);
          locationCopy = v98;
          historyCopy = v106;
        }

        interestCopy = v109;
        visitsCopy = v102;
      }

      else
      {
        v55 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v55, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }

      v65 = v95;
      v23 = v96;
      goto LABEL_110;
    }

    v104 = visitsCopy;
    if (v52)
    {
      [v96 latitudeDeg];
      v73 = v72;
      [v96 longitudeDeg];
      *buf = 134545921;
      v135 = v73;
      v136 = 2053;
      v137 = v74;
      _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "current location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
    }

    v75 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      location3 = [locationCopy location];
      [location3 locationLatitudeDeg];
      v78 = v77;
      location4 = [locationCopy location];
      [location4 locationLongitudeDeg];
      *buf = 134545921;
      v135 = v78;
      v136 = 2053;
      v137 = v80;
      _os_log_impl(&dword_1CEE74000, v75, OS_LOG_TYPE_DEFAULT, "homekit location, lat, %{sensitive}.2f, lon, %{sensitive}.2f", buf, 0x16u);
    }

    [self calculateProbabilityFromDistance:v50];
    v82 = v81;
    v83 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    historyCopy = v106;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v135 = *&v82;
      _os_log_impl(&dword_1CEE74000, v83, OS_LOG_TYPE_DEFAULT, "probability will be, %f", buf, 0xCu);
    }

    v55 = [PCHomeKitPredictor createHomeKitLocationPredictionWithHome:locationCopy probability:visitsCopy distanceFromUser:v82 candidateVisits:v50 currentTime:time];
    [*locations addObject:v55];
    v84 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v84, OS_LOG_TYPE_DEFAULT, "Predicting homekit location..", buf, 2u);
    }

    if (*locations && [*locations count])
    {
      v100 = locationCopy;
      v85 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = [*locations count];
        *buf = 134217984;
        v135 = v86;
        _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v87 = *locations;
      v88 = [v87 countByEnumeratingWithState:&v110 objects:v130 count:16];
      if (v88)
      {
        v89 = v88;
        v94 = v55;
        v90 = *v111;
        do
        {
          for (m = 0; m != v89; ++m)
          {
            if (*v111 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v92 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v110 + 1) + 8 * m)];
            v93 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v135 = v92;
              _os_log_impl(&dword_1CEE74000, v93, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v89 = [v87 countByEnumeratingWithState:&v110 objects:v130 count:16];
        }

        while (v89);
        locationCopy = v100;
        visitsCopy = v104;
        historyCopy = v106;
        v65 = v95;
        v23 = v96;
        v55 = v94;
        goto LABEL_109;
      }
    }

    else
    {
      v87 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
      }
    }

    v65 = v95;
    v23 = v96;
LABEL_109:

LABEL_110:
LABEL_111:

    goto LABEL_112;
  }

  v19 = v18;
  v20 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v135 = "+[PCHomeKitPredictor predictHomeLocation:locationHistory:locationsOfInterest:candidateVisits:atTime:locations:]";
    v136 = 2048;
    v137 = v19;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "%s, home not isolated, no prediction, min distance to any loi: %f", buf, 0x16u);
  }

  if (!*locations || ![*locations count])
  {
    v23 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    *buf = 0;
    goto LABEL_38;
  }

  v108 = interestCopy;
  v21 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [*locations count];
    *buf = 134217984;
    v135 = v22;
    _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v23 = *locations;
  v24 = [v23 countByEnumeratingWithState:&v122 objects:v133 count:16];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  v26 = v23;
  v101 = visitsCopy;
  v105 = historyCopy;
  v97 = locationCopy;
  v27 = *v123;
  do
  {
    for (n = 0; n != v25; ++n)
    {
      if (*v123 != v27)
      {
        objc_enumerationMutation(v26);
      }

      v29 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v122 + 1) + 8 * n)];
      v30 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v135 = v29;
        _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
      }
    }

    v25 = [v26 countByEnumeratingWithState:&v122 objects:v133 count:16];
  }

  while (v25);
LABEL_35:
  locationCopy = v97;
  visitsCopy = v101;
  historyCopy = v105;
  interestCopy = v108;
  v23 = v26;
LABEL_112:
}

+ (double)calculateMinDistanceFrom:(id)from to:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v7 = -1.0;
  if ([fromCopy hasLocation])
  {
    v8 = [PCLatLon alloc];
    location = [fromCopy location];
    [location locationLatitudeDeg];
    v11 = v10;
    location2 = [fromCopy location];
    [location2 locationLongitudeDeg];
    v14 = [(PCLatLon *)v8 initWithLatitude:v11 longitude:v13];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = toCopy;
    v15 = toCopy;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      v7 = 1.79769313e308;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          if ([v20 hasLocation])
          {
            v21 = [PCLatLon alloc];
            location3 = [v20 location];
            [location3 locationLatitudeDeg];
            v24 = v23;
            location4 = [v20 location];
            [location4 locationLongitudeDeg];
            v27 = [(PCLatLon *)v21 initWithLatitude:v24 longitude:v26];

            [(PCLatLon *)v14 distanceTo:v27];
            if (v28 < v7)
            {
              v7 = v28;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    else
    {
      v7 = 1.79769313e308;
    }

    toCopy = v30;
  }

  return v7;
}

+ (double)calculateProbabilityFromDistance:(double)distance
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    distanceCopy = distance;
    _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEFAULT, "user distance to homekit home, %f", &v8, 0xCu);
  }

  v5 = distance * -0.0000094 + 0.95;
  v6 = _plc_log_get_normal_handle(PCLogCategoryHomeKitPredictor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    distanceCopy = -0.0000094;
    v10 = 2048;
    v11 = 0x3FEE666666666666;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "slope: %f, intercept: %f,calculated probability, %f", &v8, 0x20u);
  }

  return v5;
}

+ (id)createHomeKitLocationPredictionWithHome:(id)home probability:(double)probability distanceFromUser:(double)user candidateVisits:(id)visits currentTime:(double)time
{
  v32[1] = *MEMORY[0x1E69E9840];
  homeCopy = home;
  v11 = objc_alloc_init(PCPPredictedContextLocation);
  v12 = objc_alloc_init(PCPLocationOfInterest);
  [(PCPPredictedContextLocation *)v11 setLocationOfInterest:v12];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
  locationOfInterest = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [locationOfInterest setLoiIdentifier:v14];

  location = [homeCopy location];
  locationOfInterest2 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
  [locationOfInterest2 setLocation:location];

  v18 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContextLocation *)v11 setPredictedContext:v18];

  predictedContext = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext setProbability:probability];

  predictedContext2 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext2 setContextType:1];

  v21 = objc_alloc_init(PCPSource);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [(PCPSource *)v21 setIdentifier:v23];

  v24 = objc_alloc_init(PCPPredictedContextSource);
  [(PCPPredictedContextSource *)v24 setHomekitHome:homeCopy];

  [(PCPSource *)v21 setPredictedContextSource:v24];
  v32[0] = v21;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v26 = [v25 mutableCopy];
  predictedContext3 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext3 setSources:v26];

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = [PCHomeKitPredictor createPredictedContextDateIntervalAtTime:v28 fromCandidateVisits:time distanceFromUser:user];
  predictedContext4 = [(PCPPredictedContextLocation *)v11 predictedContext];
  [predictedContext4 setDateInterval:v29];

  return v11;
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

  v11 = user / 15.0;
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
    v51 = v50 + 14400.0;
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
    v42 = v41 + 14400.0;
    endDate7 = [(PCPPredictedContextDateInterval *)v8 endDate];
    [endDate7 setDate:v42];

    startDate6 = [(PCPPredictedContextDateInterval *)v8 startDate];
    [startDate6 setConfidenceInterval:v11 * 0.5];

    endDate6 = [(PCPPredictedContextDateInterval *)v8 endDate];
    v46 = endDate6;
    v47 = 10800.0;
  }

  [endDate6 setConfidenceInterval:{v47, v55}];

  return v8;
}

@end