@interface RTSignalGeneratorOptions
+ (BOOL)visitsOverlapping:(id)overlapping;
+ (id)getVisitsFromVisitsDescriptionData:(id)data;
+ (id)visitsDescriptionDataAtPath:(id)path;
- (RTSignalGeneratorOptions)initWithCoder:(id)coder;
- (RTSignalGeneratorOptions)initWithStartLocation:(id)location endLocation:(id)endLocation expectedVisits:(id)visits;
- (RTSignalGeneratorOptions)initWithVisitsDescriptionData:(id)data;
- (RTSignalGeneratorOptions)initWithVisitsDescriptionPListPath:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSignalGeneratorOptions

+ (id)visitsDescriptionDataAtPath:(id)path
{
  v101 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:pathCopy];

  if (v4)
  {
    oslog = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:pathCopy];
    if (oslog)
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = [oslog objectForKey:@"Locations"];
      v7 = [v6 mutableCopy];

      v63 = [oslog objectForKey:@"WeeklyVisits"];
      v60 = [v63 count];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [currentCalendar components:764 fromDate:date];

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke;
      v89[3] = &unk_1E80B4A68;
      v10 = v9;
      v90 = v10;
      v93 = v60;
      v11 = date;
      v91 = v11;
      v12 = v7;
      v92 = v12;
      [v63 enumerateObjectsUsingBlock:v89];
      v13 = objc_opt_new();
      v59 = [oslog objectForKey:@"DailyVisits"];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_89;
      v84[3] = &unk_1E80B4AB8;
      v54 = v10;
      v85 = v54;
      v56 = v11;
      v86 = v56;
      v62 = v13;
      v87 = v62;
      v14 = v12;
      v88 = v14;
      [v59 enumerateObjectsUsingBlock:v84];
      if ([objc_opt_class() visitsOverlapping:v62])
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Error: found overlapping customized visits", &buf, 2u);
        }
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v15 = v62;
        v18 = [v15 countByEnumeratingWithState:&v80 objects:v100 count:16, v54, v56];
        if (v18)
        {
          v19 = *v81;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v81 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v80 + 1) + 8 * i);
              v22 = [v14 objectForKeyedSubscript:v21];
              v23 = [v22 objectForKey:@"visits"];
              v24 = v23 == 0;

              if (v24)
              {
                v25 = [v14 objectForKeyedSubscript:v21];
                v26 = objc_opt_new();
                [v25 setObject:v26 forKey:@"visits"];
              }

              v27 = [v14 objectForKeyedSubscript:v21];
              v28 = [v27 objectForKey:@"visits"];
              v29 = [v15 objectForKey:v21];
              [v28 addObjectsFromArray:v29];
            }

            v18 = [v15 countByEnumeratingWithState:&v80 objects:v100 count:16];
          }

          while (v18);
        }
      }

      v58 = [oslog objectForKey:@"CustomizedVisits"];
      v30 = objc_opt_new();
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_91;
      v76[3] = &unk_1E80B4A40;
      v61 = v30;
      v77 = v61;
      v57 = v56;
      v78 = v57;
      v31 = v14;
      v79 = v31;
      [v58 enumerateObjectsUsingBlock:v76];
      if ([objc_opt_class() visitsOverlapping:v61])
      {
        v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BF1C4000, v32, OS_LOG_TYPE_ERROR, "Error: found overlapping customized visits", &buf, 2u);
        }
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v32 = v61;
        v33 = [v32 countByEnumeratingWithState:&v72 objects:v99 count:16];
        if (v33)
        {
          v34 = *v73;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v73 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v72 + 1) + 8 * j);
              v37 = [v31 objectForKeyedSubscript:{v36, v54, v57}];
              v38 = [v37 objectForKey:@"visits"];
              v39 = v38 == 0;

              if (v39)
              {
                v40 = [v31 objectForKeyedSubscript:v36];
                v41 = objc_opt_new();
                [v40 setObject:v41 forKey:@"visits"];
              }

              v42 = [v31 objectForKeyedSubscript:v36];
              v43 = [v42 objectForKey:@"visits"];
              v44 = [v32 objectForKey:v36];
              [v43 addObjectsFromArray:v44];
            }

            v33 = [v32 countByEnumeratingWithState:&v72 objects:v99 count:16];
          }

          while (v33);
        }
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v16 setObject:v31 forKey:@"Locations"];
      v45 = [oslog objectForKeyedSubscript:@"LocationFrequency"];

      if (v45)
      {
        v46 = [oslog objectForKeyedSubscript:@"LocationFrequency"];
        [v16 setObject:v46 forKey:@"LocationFrequency"];
      }

      v47 = [oslog objectForKey:@"WeeklyActivities", v54];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v95 = 0x3032000000;
      v96 = __Block_byref_object_copy__0;
      v97 = __Block_byref_object_dispose__0;
      v98 = 0;
      v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_95;
      v66[3] = &unk_1E80B4B08;
      v49 = v55;
      v67 = v49;
      v71 = v60;
      v17 = v57;
      v68 = v17;
      p_buf = &buf;
      v50 = v48;
      v69 = v50;
      [v47 enumerateObjectsUsingBlock:v66];
      if (*(*(&buf + 1) + 40))
      {
        v51 = [RTMotionActivity alloc];
        v52 = [(RTMotionActivity *)v51 initWithType:0 confidence:3 startDate:*(*(&buf + 1) + 40)];
        [v50 addObject:v52];
      }

      [v16 setObject:v50 forKey:@"MotionActivities"];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = pathCopy;
        _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "issue creating dictionary with contents of file, %@", &buf, 0xCu);
      }

      v16 = 0;
    }
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = pathCopy;
      _os_log_error_impl(&dword_1BF1C4000, oslog, OS_LOG_TYPE_ERROR, "file doesn't exist at path, %@", &buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:{-7 * (*(a1 + 56) + ~a3) - objc_msgSend(*(a1 + 32), "weekday") + 2}];
  [v6 setHour:{-objc_msgSend(*(a1 + 32), "hour")}];
  [v6 setMinute:{-objc_msgSend(*(a1 + 32), "minute")}];
  [v6 setSecond:{-objc_msgSend(*(a1 + 32), "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:*(a1 + 40) options:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2;
  v10[3] = &unk_1E80B4A40;
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [v3 objectForKeyedSubscript:@"Entry"];
  v6 = [v3 objectForKeyedSubscript:@"Exit"];
  v7 = [v3 objectForKeyedSubscript:@"Confidence"];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v5];

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v64 = v6;
  v13 = [v12 components:240 fromDate:v6];

  [v13 setDay:{objc_msgSend(v13, "day") - 1}];
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateByAddingComponents:v11 toDate:*(a1 + 32) options:0];

  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [v16 dateByAddingComponents:v13 toDate:*(a1 + 32) options:0];

  if ([v15 compare:*(a1 + 40)] == 1 || objc_msgSend(v17, "compare:", *(a1 + 40)) == 1)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E695DF00] dateFormatter];
      v57 = [v56 stringFromDate:*(a1 + 40)];
      *buf = 138412290;
      v66 = v57;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);
    }
  }

  else
  {
    v19 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v20 = [v19 objectForKey:@"visits"];

    if (!v20)
    {
      v21 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v22 = objc_opt_new();
      [v21 setObject:v22 forKey:@"visits"];
    }

    if ([v15 compare:v17] == 1)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v61 = [MEMORY[0x1E695DF00] dateFormatterForLogging];
        v60 = [v61 stringFromDate:v15];
        v58 = [MEMORY[0x1E695DF00] dateFormatterForLogging];
        [v58 stringFromDate:v17];
        *buf = 138412546;
        v66 = v60;
        v68 = v67 = 2112;
        v59 = v68;
        _os_log_error_impl(&dword_1BF1C4000, v23, OS_LOG_TYPE_ERROR, "ERROR: adjusted entry, %@, postdates adjusted exit, %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v25 = [v24 objectForKeyedSubscript:@"Latitude"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v29 = [v28 objectForKeyedSubscript:@"Longitude"];
      [v29 doubleValue];
      v31 = v30;

      v32 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v33 = [v32 objectForKeyedSubscript:@"HorizontalUncertainty"];
      [v33 doubleValue];
      v35 = v34;

      v36 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v37 = [v36 objectForKeyedSubscript:@"Altitude"];
      [v37 doubleValue];
      v39 = v38;

      v40 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v41 = [v40 objectForKeyedSubscript:@"VerticalUncertainty"];
      [v41 doubleValue];
      v43 = v42;

      v44 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v45 = [v44 objectForKey:@"sourceAccuracy"];

      v63 = v5;
      if (v45)
      {
        v46 = [*(a1 + 48) objectForKeyedSubscript:v4];
        v47 = [v46 objectForKey:@"sourceAccuracy"];
        v48 = [v47 unsignedIntValue];
      }

      else
      {
        v48 = 1;
      }

      v49 = v4;
      v62 = v4;
      v50 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v48 altitude:v27 verticalUncertainty:v31 date:v35 referenceFrame:v39 speed:v43 sourceAccuracy:-1.0];
      v51 = [*(a1 + 48) objectForKeyedSubscript:v49];
      v52 = [v51 objectForKey:@"visits"];
      v53 = [RTLocationOfInterestVisit alloc];
      v54 = [MEMORY[0x1E696AFB0] UUID];
      v55 = [(RTLocationOfInterestVisit *)v53 initWithIdentifier:v54 entry:v15 exit:v17 location:v50 locationOfInterestConfidence:0 locationOfInterestSource:v9];
      [v52 addObject:v55];

      v4 = v62;
      v5 = v63;
    }
  }
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_89(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:-a3];
  [v6 setHour:{-objc_msgSend(a1[4], "hour")}];
  [v6 setMinute:{-objc_msgSend(a1[4], "minute")}];
  [v6 setSecond:{-objc_msgSend(a1[4], "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:a1[5] options:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_90;
  v10[3] = &unk_1E80B4A90;
  v11 = a1[6];
  v12 = v8;
  v13 = a1[5];
  v14 = a1[7];
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_90(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [*(a1 + 32) objectForKey:v4];

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    [v6 setObject:v7 forKey:v4];
  }

  v8 = [v3 objectForKeyedSubscript:@"Entry"];
  v9 = [v3 objectForKeyedSubscript:@"Exit"];

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v8];

  if ([v11 month] != 1 && objc_msgSend(v11, "day") != 1 && objc_msgSend(v11, "year") != 2001)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E695DF00] dateFormatter];
      v60 = [v59 stringFromDate:v8];
      *buf = 138412290;
      v64 = v60;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "entry date is not Jan 1 2001 and will result in unexpected behavior, %@", buf, 0xCu);
    }
  }

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v13 = [MEMORY[0x1E695DEE8] currentCalendar];
  v14 = [v13 components:240 fromDate:v9];

  [v14 setDay:{objc_msgSend(v14, "day") - 1}];
  v15 = [MEMORY[0x1E695DEE8] currentCalendar];
  v16 = [v15 dateByAddingComponents:v11 toDate:*(a1 + 40) options:0];

  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = [v17 dateByAddingComponents:v14 toDate:*(a1 + 40) options:0];

  if ([v16 compare:*(a1 + 48)] == 1 || objc_msgSend(v18, "compare:", *(a1 + 48)) == 1)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E695DF00] dateFormatter];
      v21 = v20 = v8;
      v22 = [v21 stringFromDate:*(a1 + 48)];
      *buf = 138412290;
      v64 = v22;
      _os_log_error_impl(&dword_1BF1C4000, &v19->super, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);

      v8 = v20;
    }
  }

  else
  {
    v62 = v8;
    v23 = [*(a1 + 56) objectForKeyedSubscript:v4];
    v24 = [v23 objectForKey:@"visits"];

    if (!v24)
    {
      v25 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v26 = objc_opt_new();
      [v25 setObject:v26 forKey:@"visits"];
    }

    if ([v16 compare:v18] == 1)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
      {
        v61 = [MEMORY[0x1E695DF00] dateFormatter];
        v27 = [v61 stringFromDate:v16];
        v28 = [MEMORY[0x1E695DF00] dateFormatter];
        v29 = [v28 stringFromDate:v18];
        *buf = 138412546;
        v64 = v27;
        v65 = 2112;
        v66 = v29;
        _os_log_error_impl(&dword_1BF1C4000, &v19->super, OS_LOG_TYPE_ERROR, "ERROR: adjusted entry, %@, postdates adjusted exit, %@", buf, 0x16u);
      }
    }

    else
    {
      v30 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v31 = [v30 objectForKeyedSubscript:@"Latitude"];
      [v31 doubleValue];
      v33 = v32;

      v34 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v35 = [v34 objectForKeyedSubscript:@"Longitude"];
      [v35 doubleValue];
      v37 = v36;

      v38 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v39 = [v38 objectForKeyedSubscript:@"HorizontalUncertainty"];
      [v39 doubleValue];
      v41 = v40;

      v42 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v43 = [v42 objectForKeyedSubscript:@"Altitude"];
      [v43 doubleValue];
      v45 = v44;

      v46 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v47 = [v46 objectForKeyedSubscript:@"VerticalUncertainty"];
      [v47 doubleValue];
      v49 = v48;

      v50 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v51 = [v50 objectForKey:@"sourceAccuracy"];

      if (v51)
      {
        v52 = [*(a1 + 56) objectForKeyedSubscript:v4];
        v53 = [v52 objectForKey:@"sourceAccuracy"];
        v54 = [v53 unsignedIntValue];
      }

      else
      {
        v54 = 1;
      }

      v19 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v54 altitude:v33 verticalUncertainty:v37 date:v41 referenceFrame:v45 speed:v49 sourceAccuracy:-1.0];
      v55 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v56 = [RTLocationOfInterestVisit alloc];
      v57 = [MEMORY[0x1E696AFB0] UUID];
      v58 = [(RTLocationOfInterestVisit *)v56 initWithIdentifier:v57 entry:v16 exit:v18 location:v19 locationOfInterestConfidence:0 locationOfInterestSource:1.0];
      [v55 addObject:v58];
    }

    v8 = v62;
  }
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_91(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Location"];
  v5 = [*(a1 + 32) objectForKey:v4];

  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    [v6 setObject:v7 forKey:v4];
  }

  v8 = [v3 objectForKeyedSubscript:@"Entry"];
  v9 = [v3 objectForKeyedSubscript:@"Exit"];

  if ([v8 compare:*(a1 + 40)] == 1 || objc_msgSend(v9, "compare:", *(a1 + 40)) == 1)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      goto LABEL_7;
    }

    v41 = [MEMORY[0x1E695DF00] dateFormatter];
    v37 = [v41 stringFromDate:*(a1 + 40)];
    v42 = [MEMORY[0x1E695DF00] dateFormatter];
    v39 = [v42 stringFromDate:v8];
    v43 = [MEMORY[0x1E695DF00] dateFormatter];
    v44 = [v43 stringFromDate:v9];
    v49 = 138412802;
    v50 = v37;
    v51 = 2112;
    v52 = v39;
    v53 = 2112;
    v54 = v44;
    _os_log_error_impl(&dword_1BF1C4000, &v10->super, OS_LOG_TYPE_ERROR, "visit entry/exit dates are newer than current date, %@, visit entry, %@, exit, %@", &v49, 0x20u);

LABEL_17:
    goto LABEL_6;
  }

  if ([v8 compare:v9] != 1)
  {
    v12 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v13 = [v12 objectForKeyedSubscript:@"Latitude"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v17 = [v16 objectForKeyedSubscript:@"Longitude"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v21 = [v20 objectForKeyedSubscript:@"HorizontalUncertainty"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v25 = [v24 objectForKeyedSubscript:@"Altitude"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v29 = [v28 objectForKeyedSubscript:@"VerticalUncertainty"];
    [v29 doubleValue];
    v31 = v30;

    v32 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v33 = [v32 objectForKey:@"sourceAccuracy"];

    if (v33)
    {
      v34 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v35 = [v34 objectForKey:@"sourceAccuracy"];
      v36 = [v35 unsignedIntValue];
    }

    else
    {
      v36 = 1;
    }

    v10 = [[RTLocation alloc] initWithLatitude:0 longitude:0 horizontalUncertainty:v36 altitude:v15 verticalUncertainty:v19 date:v23 referenceFrame:v27 speed:v31 sourceAccuracy:-1.0];
    v37 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v38 = [RTLocationOfInterestVisit alloc];
    v39 = [MEMORY[0x1E696AFB0] UUID];
    v40 = [(RTLocationOfInterestVisit *)v38 initWithIdentifier:v39 entry:v8 exit:v9 location:v10 locationOfInterestConfidence:0 locationOfInterestSource:1.0];
    [v37 addObject:v40];

    goto LABEL_17;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v45 = [MEMORY[0x1E695DF00] dateFormatter];
    v46 = [v45 stringFromDate:v8];
    v47 = [MEMORY[0x1E695DF00] dateFormatter];
    v48 = [v47 stringFromDate:v9];
    v49 = 138412546;
    v50 = v46;
    v51 = 2112;
    v52 = v48;
    _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "ERROR: entry, %@, postdates exit, %@", &v49, 0x16u);
  }

LABEL_7:
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_95(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:{-7 * (*(a1 + 64) + ~a3) - objc_msgSend(*(a1 + 32), "weekday") + 2}];
  [v6 setHour:{-objc_msgSend(*(a1 + 32), "hour")}];
  [v6 setMinute:{-objc_msgSend(*(a1 + 32), "minute")}];
  [v6 setSecond:{-objc_msgSend(*(a1 + 32), "second")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:*(a1 + 40) options:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_96;
  v12[3] = &unk_1E80B4AE0;
  v13 = v8;
  v14 = *(a1 + 40);
  v16 = a3;
  v11 = *(a1 + 48);
  v9 = v11;
  v15 = v11;
  v10 = v8;
  [v5 enumerateObjectsUsingBlock:v12];
}

void __56__RTSignalGeneratorOptions_visitsDescriptionDataAtPath___block_invoke_2_96(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"Mode of Transportation"];
  v30 = [RTMotionActivity motionActivityTypeFromString:v4];

  v5 = [v3 objectForKeyedSubscript:@"Confidence"];
  v29 = [RTMotionActivity motionActivityConfidenceFromString:v5];

  v6 = [v3 objectForKeyedSubscript:@"Start"];
  v7 = [v3 objectForKeyedSubscript:@"End"];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:240 fromDate:v6];

  [v9 setDay:{objc_msgSend(v9, "day") - 1}];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:240 fromDate:v7];

  [v11 setDay:{objc_msgSend(v11, "day") - 1}];
  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 dateByAddingComponents:v9 toDate:*(a1 + 32) options:0];

  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateByAddingComponents:v11 toDate:*(a1 + 32) options:0];

  if ([v13 compare:*(a1 + 40)] == 1 || objc_msgSend(v15, "compare:", *(a1 + 40)) == 1)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E695DF00] dateFormatter];
      v22 = [v21 stringFromDate:*(a1 + 40)];
      *buf = 138412290;
      v33 = v22;
      _os_log_error_impl(&dword_1BF1C4000, &v16->super, OS_LOG_TYPE_ERROR, "adjusted dates are newer than current date, %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if ([v13 compare:v15] != 1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
    v26 = *(a1 + 64);
    v27 = MEMORY[0x1E696AEC0];
    v28 = [RTMotionActivity motionActivityTypeToString:v30];
    v18 = [RTMotionActivity motionActivityConfidenceToString:v29];
    v19 = [v27 stringWithFormat:@"index %d (day), activity type %@, confidence %@, adjustedStart %@, adjustedEnd %@\n", v26, v28, v18, v13, v15];
    v20 = [v19 UTF8String];
    fputs(v20, *MEMORY[0x1E69E9848]);

    v16 = [[RTMotionActivity alloc] initWithType:v30 confidence:v29 startDate:v13];
    [*(a1 + 48) addObject:v16];
LABEL_5:

    goto LABEL_6;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v31 = [MEMORY[0x1E695DF00] dateFormatter];
    v23 = [v31 stringFromDate:v13];
    v24 = [MEMORY[0x1E695DF00] dateFormatter];
    v25 = [v24 stringFromDate:v15];
    *buf = 138412546;
    v33 = v23;
    v34 = 2112;
    v35 = v25;
    _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "ERROR: adjusted start, %@, postdates adjusted end, %@", buf, 0x16u);
  }

LABEL_6:
}

+ (BOOL)visitsOverlapping:(id)overlapping
{
  v29 = *MEMORY[0x1E69E9840];
  overlappingCopy = overlapping;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = overlappingCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v22 + 1) + 8 * v9)];
        [v4 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:1];
  v27 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v4 sortUsingDescriptors:v12];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    while (1)
    {
      if (*v19 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if (!--v15)
      {
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  return 0;
}

+ (id)getVisitsFromVisitsDescriptionData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke;
  v10[3] = &unk_1E80B4B58;
  v12 = &v18;
  v13 = &v14;
  v5 = v4;
  v11 = v5;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v19[3];
      v8 = v15[3];
      *buf = 134218240;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      _os_log_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_INFO, "lois injected, %lu, visits injected, %lu", buf, 0x16u);
    }
  }

  [v5 sortUsingComparator:&__block_literal_global_3];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v5;
}

void __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visits"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_2;
  v12[3] = &unk_1E80B4B30;
  v13 = v5;
  v14 = v6;
  v16 = *(a1 + 48);
  v11 = *(a1 + 32);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v12];
}

void __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = a1[5];
        *buf = 138740227;
        v22 = v7;
        v23 = 2117;
        v24 = v8;
        _os_log_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_INFO, "%{sensitive}@, %{sensitive}@", buf, 0x16u);
      }
    }

    ++*(*(a1[7] + 8) + 24);
  }

  ++*(*(a1[8] + 8) + 24);
  v9 = a1[6];
  v10 = [RTVisit alloc];
  v11 = [v5 exitDate];
  v12 = [v5 location];
  v13 = [v5 entryDate];
  v14 = [v5 exitDate];
  v15 = [(RTVisit *)v10 initWithDate:v11 type:0 location:v12 entry:v13 exit:v14 dataPointCount:0 confidence:0.0 placeInference:0];
  [v9 addObject:v15];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = a3 + 1;
      v18 = [v5 exitDate];
      v19 = [v5 entryDate];
      [v18 timeIntervalSinceDate:v19];
      *buf = 134218499;
      v22 = v17;
      v23 = 2117;
      v24 = v5;
      v25 = 2048;
      v26 = v20 / 60.0;
      _os_log_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@, %f minutes", buf, 0x20u);
    }
  }
}

uint64_t __63__RTSignalGeneratorOptions_getVisitsFromVisitsDescriptionData___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 entry];
  v6 = [v4 entry];

  v7 = [v5 compare:v6];
  return v7;
}

- (RTSignalGeneratorOptions)initWithVisitsDescriptionData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_class();
  v6 = [dataCopy objectForKey:@"Locations"];

  v7 = [v5 getVisitsFromVisitsDescriptionData:v6];
  v8 = [(RTSignalGeneratorOptions *)self initWithStartLocation:0 endLocation:0 expectedVisits:v7];

  return v8;
}

- (RTSignalGeneratorOptions)initWithVisitsDescriptionPListPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() visitsDescriptionDataAtPath:pathCopy];

  v7 = [v6 objectForKeyedSubscript:@"Locations"];
  v8 = [v5 getVisitsFromVisitsDescriptionData:v7];
  v9 = [(RTSignalGeneratorOptions *)self initWithStartLocation:0 endLocation:0 expectedVisits:v8];

  return v9;
}

- (RTSignalGeneratorOptions)initWithStartLocation:(id)location endLocation:(id)endLocation expectedVisits:(id)visits
{
  v49 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  endLocationCopy = endLocation;
  visitsCopy = visits;
  if (!visitsCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[RTSignalGeneratorOptions initWithStartLocation:endLocation:expectedVisits:]";
      v47 = 1024;
      v48 = 525;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expectedVisits (in %s:%d)", buf, 0x12u);
    }
  }

  v44.receiver = self;
  v44.super_class = RTSignalGeneratorOptions;
  v12 = [(RTSignalGeneratorOptions *)&v44 init];
  if (v12)
  {
    if (locationCopy)
    {
      v13 = locationCopy;
      startLocation = v12->_startLocation;
      v12->_startLocation = v13;
    }

    else
    {
      v38 = [RTLocation alloc];
      startLocation = [visitsCopy firstObject];
      location = [startLocation location];
      [location latitude];
      v16 = v15 + -0.1;
      firstObject = [visitsCopy firstObject];
      location2 = [firstObject location];
      [location2 longitude];
      v19 = v18;
      firstObject2 = [visitsCopy firstObject];
      entry = [firstObject2 entry];
      v22 = [entry dateByAddingTimeInterval:-1800.0];
      v23 = [(RTLocation *)v38 initWithLatitude:v22 longitude:v16 horizontalUncertainty:v19 date:10.0];
      v24 = v12->_startLocation;
      v12->_startLocation = v23;
    }

    if (endLocationCopy)
    {
      v25 = endLocationCopy;
      endLocation = v12->_endLocation;
      v12->_endLocation = v25;
    }

    else
    {
      v39 = [RTLocation alloc];
      endLocation = [visitsCopy lastObject];
      location3 = [endLocation location];
      [location3 latitude];
      v28 = v27 + 0.1;
      lastObject = [visitsCopy lastObject];
      location4 = [lastObject location];
      [location4 longitude];
      v31 = v30;
      lastObject2 = [visitsCopy lastObject];
      exit = [lastObject2 exit];
      v34 = [exit dateByAddingTimeInterval:1800.0];
      v35 = [(RTLocation *)v39 initWithLatitude:v34 longitude:v28 horizontalUncertainty:v31 date:10.0];
      v36 = v12->_endLocation;
      v12->_endLocation = v35;
    }

    objc_storeStrong(&v12->_expectedVisits, visits);
  }

  return v12;
}

- (RTSignalGeneratorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endLocation"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"expectedVisits"];

  v11 = [(RTSignalGeneratorOptions *)self initWithStartLocation:v5 endLocation:v6 expectedVisits:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  startLocation = self->_startLocation;
  coderCopy = coder;
  [coderCopy encodeObject:startLocation forKey:@"startLocation"];
  [coderCopy encodeObject:self->_endLocation forKey:@"endLocation"];
  [coderCopy encodeObject:self->_expectedVisits forKey:@"expectedVisits"];
}

@end