@interface RTLocationDownsampler
+ (id)_downsampleLocations:(id)locations errorFunction:(id)function errorThreshold:(double)threshold;
+ (id)_downsampleLocations:(id)locations errorFunction:(id)function outputSize:(int64_t)size;
+ (id)downsampleLocations:(id)locations errorFunction:(id)function errorThreshold:(double)threshold outputSize:(unint64_t)size;
+ (id)downsampleLocations:(id)locations outputSize:(unint64_t)size;
+ (id)filterConvergingLocations:(id)locations;
@end

@implementation RTLocationDownsampler

+ (id)filterConvergingLocations:(id)locations
{
  v32 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  reverseObjectEnumerator = [locationsCopy reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v28;
  do
  {
    v10 = 0;
    do
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v11 = *(*(&v27 + 1) + 8 * v10);
      if (!v8)
      {
        goto LABEL_10;
      }

      timestamp = [v8 timestamp];
      timestamp2 = [v11 timestamp];
      [timestamp timeIntervalSinceDate:timestamp2];
      if (v14 > 20.0)
      {

LABEL_10:
        v19 = v11;

        v8 = v19;
LABEL_11:
        [v4 addObject:v11];
        goto LABEL_12;
      }

      [v8 horizontalAccuracy];
      v16 = v15;
      [v11 horizontalAccuracy];
      v18 = v17;

      if (v16 > v18)
      {
        goto LABEL_10;
      }

      [v8 horizontalAccuracy];
      v21 = v20 + v20;
      [v11 horizontalAccuracy];
      if (v21 > v22)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++v10;
    }

    while (v7 != v10);
    v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
    v7 = v23;
  }

  while (v23);
LABEL_19:

  reverseObjectEnumerator2 = [v4 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator2 allObjects];

  return allObjects;
}

+ (id)downsampleLocations:(id)locations outputSize:(unint64_t)size
{
  locationsCopy = locations;
  v6 = +[RTLocationDownsampler createErrorFunctionWithPerpendicularDistance];
  v7 = [RTLocationDownsampler downsampleLocations:locationsCopy errorFunction:v6 errorThreshold:size outputSize:0.0];

  return v7;
}

+ (id)downsampleLocations:(id)locations errorFunction:(id)function errorThreshold:(double)threshold outputSize:(unint64_t)size
{
  v22 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v10 = MEMORY[0x1BFB54DD0](function);
  if (!function)
  {
    v11 = +[RTLocationDownsampler createErrorFunctionWithPerpendicularDistance];

    v10 = v11;
  }

  v12 = locationsCopy;
  if (threshold > 0.0)
  {
    v12 = [RTLocationDownsampler _downsampleLocations:locationsCopy errorFunction:v10 errorThreshold:threshold];
  }

  if (size)
  {
    v13 = [RTLocationDownsampler _downsampleLocations:v12 errorFunction:v10 outputSize:size];

    v12 = v13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 134218496;
      sizeCopy = size;
      v18 = 2048;
      v19 = [locationsCopy count];
      v20 = 2048;
      v21 = [v12 count];
      _os_log_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_INFO, "RTLocationDownsampler: desired output size, %lu, input size, %lu, output size, %lu", &v16, 0x20u);
    }
  }

  return v12;
}

+ (id)_downsampleLocations:(id)locations errorFunction:(id)function errorThreshold:(double)threshold
{
  v25[2] = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  functionCopy = function;
  v9 = functionCopy;
  if (!locationsCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v24 = 0;
    v12 = "Invalid parameter not satisfying: locations";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, v12, v24, 2u);
    goto LABEL_13;
  }

  if (!functionCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v24 = 0;
    v12 = "Invalid parameter not satisfying: errorFunction";
    goto LABEL_12;
  }

  if (threshold <= 0.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      v12 = "Invalid parameter not satisfying: errorThreshold > 0";
      goto LABEL_12;
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  if ([locationsCopy count] >= 3)
  {
    if (([locationsCopy count] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = 0;
      v15 = 0.0;
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 1;
      do
      {
        v17 = [locationsCopy objectAtIndex:v16];
        v18 = (v9)[2](v9, v17, locationsCopy);
        if (v18 > v15)
        {
          v14 = v16;
          v15 = v18;
        }

        ++v16;
      }

      while (v16 < [locationsCopy count] - 1);
    }

    if (v15 <= threshold)
    {
      firstObject = [locationsCopy firstObject];
      v25[0] = firstObject;
      lastObject = [locationsCopy lastObject];
      v25[1] = lastObject;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    }

    else
    {
      v19 = [locationsCopy subarrayWithRange:{0, v14 + 1}];
      firstObject = [RTLocationDownsampler _downsampleLocations:v19 errorFunction:v9 errorThreshold:threshold];

      v21 = [locationsCopy subarrayWithRange:{v14, objc_msgSend(locationsCopy, "count") - v14}];
      lastObject = [RTLocationDownsampler _downsampleLocations:v21 errorFunction:v9 errorThreshold:threshold];

      v10 = objc_opt_new();
      v23 = [firstObject subarrayWithRange:{0, objc_msgSend(firstObject, "count") - 1}];
      [v10 addObjectsFromArray:v23];

      [v10 addObjectsFromArray:lastObject];
    }
  }

  else
  {
    v10 = locationsCopy;
  }

LABEL_14:

  return v10;
}

+ (id)_downsampleLocations:(id)locations errorFunction:(id)function outputSize:(int64_t)size
{
  v48 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  functionCopy = function;
  v9 = functionCopy;
  if (!locationsCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: locations";
LABEL_30:
    _os_log_error_impl(&dword_1BF1C4000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_31;
  }

  if (!functionCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: errorFunction";
    goto LABEL_30;
  }

  if (size <= 0)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: outputSize > 0";
      goto LABEL_30;
    }

LABEL_31:

    sampledLocations = 0;
    goto LABEL_32;
  }

  if ([locationsCopy count] <= size)
  {
    sampledLocations = locationsCopy;
  }

  else
  {
    sizeCopy = size;
    v10 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = locationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      v15 = -1.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v43 + 1) + 8 * i);
          [v17 altitude];
          if (v18 >= 0.0 && ([v17 horizontalAccuracy], v19 <= 650.0))
          {
            [v10 addObject:v17];
            [v17 altitude];
            v15 = v22;
          }

          else
          {
            v41 = 0u;
            memset(v42, 0, 28);
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            memset(v36, 0, sizeof(v36));
            *buf = 0u;
            if (v17)
            {
              objc_msgSend_clientLocation(v17);
            }

            *(v36 + 12) = v15;
            v20 = objc_alloc(MEMORY[0x1E6985C40]);
            v33[6] = v40;
            v33[7] = v41;
            v34[0] = v42[0];
            *(v34 + 12) = *(v42 + 12);
            v33[2] = v36[1];
            v33[3] = v37;
            v33[4] = v38;
            v33[5] = v39;
            v33[0] = *buf;
            v33[1] = v36[0];
            v21 = [v20 initWithClientLocation:v33];
            [v10 addObject:v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v23 = [RTLocationDownsamplerTree alloc];
      v24 = [v10 copy];
      v25 = [(RTLocationDownsamplerTree *)v23 initWithLocations:v24 errorFunction:v9];

      if (sizeCopy >= 3)
      {
        v26 = sizeCopy - 2;
        do
        {
          [(RTLocationDownsamplerTree *)v25 maximumError];
          if (v27 == 0.0)
          {
            break;
          }

          [(RTLocationDownsamplerTree *)v25 splitLocationsWithErrorFunction:v9];
          --v26;
        }

        while (v26);
      }

      sampledLocations = [(RTLocationDownsamplerTree *)v25 sampledLocations];
    }

    else
    {
      sampledLocations = v11;
    }
  }

LABEL_32:

  return sampledLocations;
}

double __69__RTLocationDownsampler_createErrorFunctionWithPerpendicularDistance__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7)
  {
    v9 = v6;
    v41 = 0.0;
    v42 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v42, &v41, &v40, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v39, &v38, &v37, v23, v25, v27, v29, v31, v32))
      {
        v33 = sqrt(v37 * v37 + v38 * v38 + v39 * v39);
        if (v33 != 0.0)
        {
          v34 = sqrt((v38 * v40 - v37 * v41) * (v38 * v40 - v37 * v41) + (v37 * v42 - v39 * v40) * (v37 * v42 - v39 * v40) + (v39 * v41 - v38 * v42) * (v39 * v41 - v38 * v42)) / v33;
          [v4 horizontalAccuracy];
          v8 = v34 - v35;
        }
      }
    }
  }

  return v8;
}

double __77__RTLocationDownsampler_createErrorFunctionWithPerpendicularDistanceAndSpeed__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7)
  {
    v9 = v6;
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v58, &v57, &v56, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v55, &v54, &v53, v23, v25, v27, v29, v31, v32))
      {
        v33 = sqrt(v53 * v53 + v54 * v54 + v55 * v55);
        if (v33 != 0.0)
        {
          v34 = v56;
          v35 = v57;
          v36 = v58;
          v37 = sqrt((v54 * v56 - v53 * v57) * (v54 * v56 - v53 * v57) + (v53 * v58 - v55 * v56) * (v53 * v58 - v55 * v56) + (v55 * v57 - v54 * v58) * (v55 * v57 - v54 * v58)) / v33;
          [v4 horizontalAccuracy];
          v52 = v37;
          v8 = v37 - v38;
          v39 = [v7 timestamp];
          v40 = [v9 timestamp];
          [v39 timeIntervalSinceDate:v40];
          v42 = v41;

          v43 = [v4 timestamp];
          [v43 timeIntervalSinceReferenceDate];
          v45 = v44;
          v46 = [v9 timestamp];
          [v46 timeIntervalSinceReferenceDate];
          v48 = v47;

          if (v42 > 0.0 && v45 - v48 > 0.0)
          {
            v49 = sqrt(v34 * v34 + v35 * v35 + v36 * v36);
            v50 = sqrt(v49 * v49 - v52 * v52) - v33 * (v45 - v48) / v42;
            if (v50 < 0.0)
            {
              v50 = -v50;
            }

            v8 = sqrt(v8 * v8 + v50 * v50);
          }
        }
      }
    }
  }

  return v8;
}

double __74__RTLocationDownsampler_createErrorFunctionWithAbsoluteCrosstrackDistance__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v5 lastObject];

  v8 = 0.0;
  if (v6 && v7 && v6 != v7)
  {
    v9 = v6;
    v39 = 0.0;
    v40 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    v15 = v14;
    [v4 coordinate];
    v17 = v16;
    [v4 coordinate];
    v19 = v18;
    [v4 altitude];
    v21 = RTCommonConvertGeodeticToLocalFrame(&v40, &v39, &v38, v11, v13, v15, v17, v19, v20);
    v8 = 0.0;
    if (v21)
    {
      [v9 coordinate];
      v23 = v22;
      [v9 coordinate];
      v25 = v24;
      [v9 altitude];
      v27 = v26;
      [v7 coordinate];
      v29 = v28;
      [v7 coordinate];
      v31 = v30;
      [v7 altitude];
      if (RTCommonConvertGeodeticToLocalFrame(&v37, &v36, &v35, v23, v25, v27, v29, v31, v32))
      {
        if (v37 == 0.0)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = -v36 / v37;
        }

        v8 = fabs(v39 + v33 * v40) / sqrt(v33 * v33 + 1.0);
      }
    }
  }

  return v8;
}

@end