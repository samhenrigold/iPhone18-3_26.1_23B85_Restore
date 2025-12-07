@interface MOEventBundler
+ (id)predicatesOfDesiredExperiences;
+ (id)propertyNameDictionary;
- (MOEventBundler)initWithStartDate:(id)date endDate:(id)endDate;
- (id)calculateEventBundlesFromEvents:(id)events;
- (id)pruneEventBundles:(id)bundles;
@end

@implementation MOEventBundler

- (MOEventBundler)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (!dateCopy)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundler initWithStartDate:v16 endDate:?];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: startDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 67;
    goto LABEL_12;
  }

  if (!endDateCopy)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundler initWithStartDate:v23 endDate:?];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: endDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 68;
LABEL_12:
    [v17 handleFailureInMethod:v20 object:selfCopy2 file:@"MOEventBundler.m" lineNumber:v22 description:v19];

    selfCopy3 = 0;
    goto LABEL_13;
  }

  v25.receiver = self;
  v25.super_class = MOEventBundler;
  v11 = [(MOEventBundler *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
    v13 = objc_opt_new();
    eventBundleDict = v12->_eventBundleDict;
    v12->_eventBundleDict = v13;
  }

  self = v12;
  selfCopy3 = self;
LABEL_13:

  return selfCopy3;
}

- (id)calculateEventBundlesFromEvents:(id)events
{
  eventsCopy = events;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v59 = [eventsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetched events count, %lu", buf, 0xCu);
  }

  v7 = objc_opt_new();
  if (eventsCopy && [eventsCopy count])
  {
    predicateForBasicFilteringOfEvents = [(MOEventBundler *)self predicateForBasicFilteringOfEvents];
    [eventsCopy filterUsingPredicate:?];
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [eventsCopy count];
      *buf = 134217984;
      v59 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Basic pruning is done. Number of events post pruning, %lu", buf, 0xCu);
    }

    v10 = objc_opt_new();
    if ([eventsCopy count])
    {
      v11 = 0;
      v12 = 1;
      while (1)
      {
        v13 = [eventsCopy objectAtIndexedSubscript:v11];
        if ([v13 category] != 7 && objc_msgSend(v13, "category") != 6 && objc_msgSend(v13, "category") != 12 && objc_msgSend(v13, "provider") != 5 && objc_msgSend(v13, "category") != 9 && objc_msgSend(v13, "category") != 10 && (objc_msgSend(v13, "isHomeWorkVisit") & 1) == 0 && objc_msgSend(v13, "category") != 3 && objc_msgSend(v13, "category") != 4 && objc_msgSend(eventsCopy, "count") > v11 + 1)
        {
          break;
        }

LABEL_39:

        ++v11;
        ++v12;
        if ([eventsCopy count] <= v11)
        {
          goto LABEL_40;
        }
      }

      v14 = v12;
      while (1)
      {
        v15 = [eventsCopy objectAtIndexedSubscript:v14];
        if ([v15 category] == 7)
        {
          goto LABEL_38;
        }

        if ([v15 category] == 6)
        {
          goto LABEL_38;
        }

        if ([v15 category] == 12)
        {
          goto LABEL_38;
        }

        if ([v15 provider] == 5)
        {
          goto LABEL_38;
        }

        if ([v15 category] == 9)
        {
          goto LABEL_38;
        }

        if ([v15 category] == 10)
        {
          goto LABEL_38;
        }

        if ([v15 isHomeWorkVisit])
        {
          goto LABEL_38;
        }

        if ([v15 category] == 3)
        {
          goto LABEL_38;
        }

        if ([v15 category] == 4)
        {
          goto LABEL_38;
        }

        startDate = [v13 startDate];
        if (!startDate)
        {
          goto LABEL_38;
        }

        v55 = startDate;
        endDate = [v13 endDate];
        if (!endDate)
        {
          goto LABEL_37;
        }

        startDate2 = [v15 startDate];
        if (!startDate2)
        {
          goto LABEL_36;
        }

        endDate2 = [v15 endDate];

        if (endDate2)
        {
          break;
        }

LABEL_38:

        if ([eventsCopy count] <= ++v14)
        {
          goto LABEL_39;
        }
      }

      startDate3 = [v13 startDate];
      v55 = [startDate3 dateByAddingTimeInterval:-0.0];

      endDate3 = [v13 endDate];
      endDate = [endDate3 dateByAddingTimeInterval:0.0];

      startDate4 = [v15 startDate];
      v52 = [startDate4 dateByAddingTimeInterval:-0.0];

      endDate4 = [v15 endDate];
      v49 = [endDate4 dateByAddingTimeInterval:0.0];

      v46 = [[NSDateInterval alloc] initWithStartDate:v55 endDate:endDate];
      v41 = [[NSDateInterval alloc] initWithStartDate:v52 endDate:v49];
      v44 = [v46 intersectionWithDateInterval:?];
      endDate5 = [v44 endDate];
      startDate5 = [v44 startDate];
      [endDate5 timeIntervalSinceDate:startDate5];
      v18 = v17;

      if (v18 > 0.0)
      {
        v43 = [NSNumber numberWithInt:v11];
        v57[0] = v43;
        v40 = [NSNumber numberWithInt:v14];
        v57[1] = v40;
        v38 = [NSArray arrayWithObjects:v57 count:2];
        [v10 addObject:v38];
      }

LABEL_36:
LABEL_37:

      goto LABEL_38;
    }

LABEL_40:
    if ([eventsCopy count])
    {
      v19 = -[MOGraph initWithNumVertices:edges:]([MOGraph alloc], "initWithNumVertices:edges:", [eventsCopy count], v10);
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v10 count];
        *buf = 134217984;
        v59 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Correlation graph is built with number of edges, %lu", buf, 0xCu);
      }

      v22 = [(MOGraph *)v19 calculateConnectedComponentWithGraphTraversal:1];
      v23 = [v22 count];
      if (v23 != [eventsCopy count])
      {
        v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [MOEventBundler calculateEventBundlesFromEvents:v24];
        }

        v25 = +[NSAssertionHandler currentHandler];
        [v25 handleFailureInMethod:a2 object:self file:@"MOEventBundler.m" lineNumber:136 description:{@"The events and membership arrays have to be of the same size. (in %s:%d)", "-[MOEventBundler calculateEventBundlesFromEvents:]", 136}];
      }

      if ([eventsCopy count])
      {
        v26 = 0;
        do
        {
          v27 = [v22 objectAtIndexedSubscript:v26];
          v28 = [v7 objectForKey:v27];

          if (!v28)
          {
            v29 = objc_opt_new();
            [v7 setObject:v29 forKeyedSubscript:v27];
          }

          v30 = [v7 objectForKeyedSubscript:v27];
          v31 = [eventsCopy objectAtIndexedSubscript:v26];
          [v30 addObject:v31];

          ++v26;
        }

        while ([eventsCopy count] > v26);
      }

      v32 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v7 count];
        *buf = 134217984;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Graph partitioning is performed (before semantic pruning). Number of correlated bundles: %lu", buf, 0xCu);
      }

      v34 = v7;
    }

    else
    {
      v36 = v7;
    }
  }

  else
  {
    v35 = v7;
  }

  return v7;
}

- (id)pruneEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v53 = +[MOEventBundler predicatesOfDesiredExperiences];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [bundlesCopy allKeys];
  v55 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v55)
  {
    LODWORD(v4) = 0;
    v54 = *v85;
    v52 = bundlesCopy;
    do
    {
      v5 = 0;
      do
      {
        if (*v85 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v5;
        v6 = *(*(&v84 + 1) + 8 * v5);
        v56 = objc_autoreleasePoolPush();
        v7 = [bundlesCopy objectForKeyedSubscript:v6];
        v8 = [v7 count];

        if (v8)
        {
          v9 = [bundlesCopy objectForKeyedSubscript:v6];
          allObjects = [v9 allObjects];
          v11 = [allObjects mutableCopy];

          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v80 objects:v97 count:16];
          v62 = v12;
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v81;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v81 != v16)
                {
                  objc_enumerationMutation(v62);
                }

                v18 = *(*(&v80 + 1) + 8 * i);
                ++v15;
                v19 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  eventIdentifier = [v18 eventIdentifier];
                  *buf = 138412802;
                  v92 = v6;
                  v93 = 1024;
                  v94 = v15;
                  v95 = 2112;
                  v96 = eventIdentifier;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "post graph partitioning bundle %@ with subevent %d:\n %@", buf, 0x1Cu);
                }
              }

              v12 = v62;
              v14 = [v62 countByEnumeratingWithState:&v80 objects:v97 count:16];
            }

            while (v14);
          }

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v21 = v53;
          v64 = [v21 countByEnumeratingWithState:&v76 objects:v90 count:16];
          if (v64)
          {
            v63 = *v77;
            v58 = v21;
            do
            {
              v22 = 0;
              do
              {
                if (*v77 != v63)
                {
                  objc_enumerationMutation(v21);
                }

                v66 = v22;
                v23 = *(*(&v76 + 1) + 8 * v22);
                context = objc_autoreleasePoolPush();
                v24 = [v21 objectForKeyedSubscript:v23];
                v67 = objc_opt_new();
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v25 = v24;
                v26 = [(MOEventBundle *)v25 countByEnumeratingWithState:&v72 objects:v89 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v73;
                  while (2)
                  {
                    for (j = 0; j != v27; j = j + 1)
                    {
                      if (*v73 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = [v12 filteredArrayUsingPredicate:*(*(&v72 + 1) + 8 * j)];
                      if (![v30 count])
                      {
                        v31 = v67;
                        [v67 removeAllObjects];
                        v32 = v25;
                        goto LABEL_42;
                      }

                      [v67 addObjectsFromArray:v30];
                    }

                    v27 = [(MOEventBundle *)v25 countByEnumeratingWithState:&v72 objects:v89 count:16];
                    if (v27)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v4 = (v4 + 1);
                v31 = v67;
                v32 = [[MOEventBundle alloc] initWithEventSet:v67 filtered:1];
                [(MOEventBundle *)v32 setBundleType:v23];
                eventBundleDict = self->_eventBundleDict;
                v34 = [NSNumber numberWithInt:v4];
                [(NSMutableDictionary *)eventBundleDict setObject:v32 forKeyedSubscript:v34];

                v35 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  bundleType = [(MOEventBundle *)v32 bundleType];
                  *buf = 138412290;
                  v92 = bundleType;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Created post semantic pruning bundle of type: %@ including:", buf, 0xCu);
                }

                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v30 = v67;
                v37 = [v30 countByEnumeratingWithState:&v68 objects:v88 count:16];
                if (v37)
                {
                  v38 = v37;
                  v60 = v25;
                  v61 = v4;
                  v39 = 0;
                  v40 = *v69;
                  do
                  {
                    for (k = 0; k != v38; k = k + 1)
                    {
                      if (*v69 != v40)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v42 = *(*(&v68 + 1) + 8 * k);
                      ++v39;
                      v43 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                      {
                        bundleType2 = [(MOEventBundle *)v32 bundleType];
                        eventIdentifier2 = [v42 eventIdentifier];
                        *buf = 138412802;
                        v92 = bundleType2;
                        v93 = 1024;
                        v94 = v39;
                        v95 = 2112;
                        v96 = eventIdentifier2;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "post semantic pruning bundle %@, with subevent %d:\n %@", buf, 0x1Cu);
                      }
                    }

                    v38 = [v30 countByEnumeratingWithState:&v68 objects:v88 count:16];
                  }

                  while (v38);
                  LODWORD(v4) = v61;
                  v12 = v62;
                  v21 = v58;
                  v31 = v67;
                  v25 = v60;
                }

LABEL_42:

                objc_autoreleasePoolPop(context);
                v22 = v66 + 1;
              }

              while ((v66 + 1) != v64);
              v64 = [v21 countByEnumeratingWithState:&v76 objects:v90 count:16];
            }

            while (v64);
          }

          bundlesCopy = v52;
        }

        objc_autoreleasePoolPop(v56);
        v5 = v57 + 1;
      }

      while ((v57 + 1) != v55);
      v55 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v55);
  }

  v46 = _mo_log_facility_get_os_log(&MOLogFacilityBundling);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = [(NSMutableDictionary *)self->_eventBundleDict count];
    *buf = 134217984;
    v92 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Bundles created after semantic pruning. Number of correlated bundles: %lu", buf, 0xCu);
  }

  v48 = self->_eventBundleDict;
  v49 = v48;

  return v48;
}

+ (id)propertyNameDictionary
{
  v18 = [NSString stringWithFormat:@"%@", @"provider"];
  v14 = [NSString stringWithFormat:@"%@", @"category"];
  v17 = [NSString stringWithFormat:@"%@", @"workoutType"];
  v16 = [NSString stringWithFormat:@"%@", @"placeName"];
  v15 = [NSString stringWithFormat:@"%@", @"startDate"];
  v2 = [NSString stringWithFormat:@"%@", @"endDate"];
  v3 = [NSString stringWithFormat:@"%@", @"creationDate"];
  v4 = [NSString stringWithFormat:@"%@", @"expirationDate"];
  v5 = [NSString stringWithFormat:@"%@", @"mediaRepetitions"];
  v13 = [NSString stringWithFormat:@"%@", @"interactionContactScore"];
  v12 = [NSString stringWithFormat:@"%@.%@", @"extendedAttributes", @"photoMomentInferences"];
  v11 = [NSString stringWithFormat:@"%@.%@", @"extendedAttributes", @"photoMomentHolidays"];
  v10 = [NSString stringWithFormat:@"%@.%@", @"extendedAttributes", @"photoMomentPublicEvents"];
  v6 = [NSString stringWithFormat:@"%@.%@", @"extendedAttributes", @"photoMomentPersons"];
  v7 = [NSString stringWithFormat:@"%@", @"suggestedEventCategory"];
  v19[0] = @"strProvider";
  v19[1] = @"strCategory";
  v20[0] = v18;
  v20[1] = v14;
  v19[2] = @"strWorkoutType";
  v19[3] = @"strPlaceName";
  v20[2] = v17;
  v20[3] = v16;
  v19[4] = @"strStartDate";
  v19[5] = @"strEndDate";
  v20[4] = v15;
  v20[5] = v2;
  v19[6] = @"strCreationDate";
  v19[7] = @"strExpirationDate";
  v20[6] = v3;
  v20[7] = v4;
  v19[8] = @"strMediaRepetitions";
  v19[9] = @"strInteractionContactScore";
  v20[8] = v5;
  v20[9] = v13;
  v19[10] = @"strPhotoMomentInferences";
  v19[11] = @"strPhotoMomentHolidays";
  v20[10] = v12;
  v20[11] = v11;
  v19[12] = @"strPhotoMomentPublicEvents";
  v19[13] = @"strPhotoMomentPersons";
  v20[12] = v10;
  v20[13] = v6;
  v19[14] = @"strSuggestedEventCategory";
  v20[14] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:15];

  return v9;
}

+ (id)predicatesOfDesiredExperiences
{
  v2 = +[MOEventBundler propertyNameDictionary];
  v208 = objc_opt_new();
  v3 = _HKWorkoutActivityNameForActivityType();
  v4 = [v2 objectForKeyedSubscript:@"strProvider"];
  v5 = [NSPredicate predicateWithFormat:@"%K == %i", v4, 1];
  v245[0] = v5;
  v6 = [v2 objectForKeyedSubscript:@"strCategory"];
  v7 = [NSPredicate predicateWithFormat:@"%K == %i", v6, 2];
  v245[1] = v7;
  v8 = [v2 objectForKeyedSubscript:@"strWorkoutType"];
  v201 = v3;
  v9 = [NSPredicate predicateWithFormat:@"%K == %@", v8, v3];
  v245[2] = v9;
  v10 = [NSArray arrayWithObjects:v245 count:3];
  v207 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  v11 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D938];
  v12 = [v2 objectForKeyedSubscript:@"strProvider"];
  v13 = [NSPredicate predicateWithFormat:@"%K == %i", v12, 2];
  v244[0] = v13;
  v14 = [v2 objectForKeyedSubscript:@"strCategory"];
  v15 = [NSPredicate predicateWithFormat:@"%K == %i", v14, 5];
  v244[1] = v15;
  v16 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v200 = v11;
  v17 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v16, v11];
  v244[2] = v17;
  v18 = [NSArray arrayWithObjects:v244 count:3];
  v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

  v243[0] = v207;
  v243[1] = v19;
  v199 = v19;
  v20 = [NSArray arrayWithObjects:v243 count:2];
  [v208 setObject:v20 forKeyedSubscript:@"HikingPlusPhotos"];

  v21 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D950];
  v22 = [v2 objectForKeyedSubscript:@"strProvider"];
  v23 = [NSPredicate predicateWithFormat:@"%K == %i", v22, 2];
  v242[0] = v23;
  v24 = [v2 objectForKeyedSubscript:@"strCategory"];
  v25 = [NSPredicate predicateWithFormat:@"%K == %i", v24, 5];
  v242[1] = v25;
  v26 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v198 = v21;
  v27 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v26, v21];
  v242[2] = v27;
  v28 = [NSArray arrayWithObjects:v242 count:3];
  v29 = [NSCompoundPredicate andPredicateWithSubpredicates:v28];

  v197 = v29;
  v241 = v29;
  v30 = [NSArray arrayWithObjects:&v241 count:1];
  [v208 setObject:v30 forKeyedSubscript:@"WeddingPhotos"];

  v31 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D968];
  v32 = [v2 objectForKeyedSubscript:@"strProvider"];
  v33 = [NSPredicate predicateWithFormat:@"%K == %i", v32, 2];
  v240[0] = v33;
  v34 = [v2 objectForKeyedSubscript:@"strCategory"];
  v35 = [NSPredicate predicateWithFormat:@"%K == %i", v34, 5];
  v240[1] = v35;
  v36 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v196 = v31;
  v37 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v36, v31];
  v240[2] = v37;
  v38 = [NSArray arrayWithObjects:v240 count:3];
  v39 = [NSCompoundPredicate andPredicateWithSubpredicates:v38];

  v195 = v39;
  v239 = v39;
  v40 = [NSArray arrayWithObjects:&v239 count:1];
  [v208 setObject:v40 forKeyedSubscript:@"AnniversaryPhotos"];

  v41 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D980];
  v42 = [v2 objectForKeyedSubscript:@"strProvider"];
  v43 = [NSPredicate predicateWithFormat:@"%K == %i", v42, 2];
  v238[0] = v43;
  v44 = [v2 objectForKeyedSubscript:@"strCategory"];
  v45 = [NSPredicate predicateWithFormat:@"%K == %i", v44, 5];
  v238[1] = v45;
  v46 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v194 = v41;
  v47 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v46, v41];
  v238[2] = v47;
  v48 = [NSArray arrayWithObjects:v238 count:3];
  v49 = [NSCompoundPredicate andPredicateWithSubpredicates:v48];

  v193 = v49;
  v237 = v49;
  v50 = [NSArray arrayWithObjects:&v237 count:1];
  [v208 setObject:v50 forKeyedSubscript:@"BirthdayPhotos"];

  v51 = [v2 objectForKeyedSubscript:@"strProvider"];
  v52 = [NSPredicate predicateWithFormat:@"%K == %i", v51, 4];
  v236[0] = v52;
  v53 = [v2 objectForKeyedSubscript:@"strCategory"];
  v54 = [NSPredicate predicateWithFormat:@"%K == %i", v53, 1];
  v236[1] = v54;
  v55 = [v2 objectForKeyedSubscript:@"strPlaceName"];
  v56 = [NSPredicate predicateWithFormat:@"%K.length > 0", v55];
  v236[2] = v56;
  v57 = [NSArray arrayWithObjects:v236 count:3];
  v206 = [NSCompoundPredicate andPredicateWithSubpredicates:v57];

  v58 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D998];
  v59 = [v2 objectForKeyedSubscript:@"strProvider"];
  v60 = [NSPredicate predicateWithFormat:@"%K == %i", v59, 2];
  v235[0] = v60;
  v61 = [v2 objectForKeyedSubscript:@"strCategory"];
  v62 = [NSPredicate predicateWithFormat:@"%K == %i", v61, 5];
  v235[1] = v62;
  v63 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v192 = v58;
  v64 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v63, v58];
  v235[2] = v64;
  v65 = [NSArray arrayWithObjects:v235 count:3];
  v66 = [NSCompoundPredicate andPredicateWithSubpredicates:v65];

  v234[0] = v206;
  v191 = v66;
  v234[1] = v66;
  v67 = [NSArray arrayWithObjects:v234 count:2];
  [v208 setObject:v67 forKeyedSubscript:@"VisitPlusConcert"];

  v68 = [v2 objectForKeyedSubscript:@"strProvider"];
  v69 = [NSPredicate predicateWithFormat:@"%K == %i", v68, 4];
  v233[0] = v69;
  v70 = [v2 objectForKeyedSubscript:@"strCategory"];
  v71 = [NSPredicate predicateWithFormat:@"%K == %i", v70, 1];
  v233[1] = v71;
  v72 = [v2 objectForKeyedSubscript:@"strPlaceName"];
  v73 = [NSPredicate predicateWithFormat:@"%K.length > 0", v72];
  v233[2] = v73;
  v74 = [NSArray arrayWithObjects:v233 count:3];
  v205 = [NSCompoundPredicate andPredicateWithSubpredicates:v74];

  v75 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D9B0];
  v76 = [v2 objectForKeyedSubscript:@"strProvider"];
  v77 = [NSPredicate predicateWithFormat:@"%K == %i", v76, 2];
  v232[0] = v77;
  v78 = [v2 objectForKeyedSubscript:@"strCategory"];
  v79 = [NSPredicate predicateWithFormat:@"%K == %i", v78, 5];
  v232[1] = v79;
  v80 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v190 = v75;
  v81 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v80, v75];
  v232[2] = v81;
  v82 = [NSArray arrayWithObjects:v232 count:3];
  v83 = [NSCompoundPredicate andPredicateWithSubpredicates:v82];

  v231[0] = v205;
  v189 = v83;
  v231[1] = v83;
  v84 = [NSArray arrayWithObjects:v231 count:2];
  [v208 setObject:v84 forKeyedSubscript:@"VisitPlusAmusementPark"];

  v85 = objc_opt_new();
  for (i = 0; i != 248; i += 8)
  {
    v87 = _HKWorkoutActivityNameForActivityType();
    [v85 addObject:v87];
  }

  v88 = [v2 objectForKeyedSubscript:@"strProvider"];
  v89 = [NSPredicate predicateWithFormat:@"%K == %i", v88, 1];
  v230[0] = v89;
  v90 = [v2 objectForKeyedSubscript:@"strCategory"];
  v91 = [NSPredicate predicateWithFormat:@"%K == %i", v90, 2];
  v230[1] = v91;
  v92 = [v2 objectForKeyedSubscript:@"strWorkoutType"];
  v93 = [NSPredicate predicateWithFormat:@"%K IN %@", v92, v85];
  v230[2] = v93;
  v94 = [NSArray arrayWithObjects:v230 count:3];
  v188 = [NSCompoundPredicate andPredicateWithSubpredicates:v94];

  v229 = v188;
  v95 = [NSArray arrayWithObjects:&v229 count:1];
  [v208 setObject:v95 forKeyedSubscript:@"CardioActivity"];

  v96 = [v2 objectForKeyedSubscript:@"strProvider"];
  v97 = [NSPredicate predicateWithFormat:@"%K == %i", v96, 1];
  v228[0] = v97;
  v98 = [v2 objectForKeyedSubscript:@"strCategory"];
  v99 = [NSPredicate predicateWithFormat:@"%K == %i", v98, 2];
  v228[1] = v99;
  v100 = [NSArray arrayWithObjects:v228 count:2];
  v204 = [NSCompoundPredicate andPredicateWithSubpredicates:v100];

  v187 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D9C8];
  v202 = [v2 objectForKeyedSubscript:@"strProvider"];
  v101 = [NSPredicate predicateWithFormat:@"%K == %i", v202, 2];
  v227[0] = v101;
  v102 = [v2 objectForKeyedSubscript:@"strCategory"];
  v103 = [NSPredicate predicateWithFormat:@"%K == %i", v102, 5];
  v227[1] = v103;
  v104 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v187 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v104, v187];
  v227[2] = v187;
  v106 = [NSArray arrayWithObjects:v227 count:3];
  v186 = [NSCompoundPredicate andPredicateWithSubpredicates:v106];

  v226[0] = v204;
  v226[1] = v186;
  v107 = [NSArray arrayWithObjects:v226 count:2];
  [v208 setObject:v107 forKeyedSubscript:@"ActiveBabyParent"];

  v185 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D9E0];
  v108 = [v2 objectForKeyedSubscript:@"strProvider"];
  v109 = [NSPredicate predicateWithFormat:@"%K == %i", v108, 2];
  v225[0] = v109;
  v110 = [v2 objectForKeyedSubscript:@"strCategory"];
  v111 = [NSPredicate predicateWithFormat:@"%K == %i", v110, 5];
  v225[1] = v111;
  v112 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v185 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v112, v185];
  v225[2] = v185;
  v114 = [NSArray arrayWithObjects:v225 count:3];
  v184 = [NSCompoundPredicate andPredicateWithSubpredicates:v114];

  v224 = v184;
  v115 = [NSArray arrayWithObjects:&v224 count:1];
  [v208 setObject:v115 forKeyedSubscript:@"BabyParent"];

  v116 = [v2 objectForKeyedSubscript:@"strProvider"];
  v117 = [NSPredicate predicateWithFormat:@"%K == %i", v116, 1];
  v223[0] = v117;
  v118 = [v2 objectForKeyedSubscript:@"strCategory"];
  v119 = [NSPredicate predicateWithFormat:@"%K == %i", v118, 2];
  v223[1] = v119;
  v120 = [NSArray arrayWithObjects:v223 count:2];
  v203 = [NSCompoundPredicate andPredicateWithSubpredicates:v120];

  v183 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036D9F8];
  v182 = [v2 objectForKeyedSubscript:@"strProvider"];
  v121 = [NSPredicate predicateWithFormat:@"%K == %i", v182, 2];
  v222[0] = v121;
  v122 = [v2 objectForKeyedSubscript:@"strCategory"];
  v123 = [NSPredicate predicateWithFormat:@"%K == %i", v122, 5];
  v222[1] = v123;
  v124 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v183 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v124, v183];
  v222[2] = v183;
  v126 = [NSArray arrayWithObjects:v222 count:3];
  v181 = [NSCompoundPredicate andPredicateWithSubpredicates:v126];

  v221[0] = v203;
  v221[1] = v181;
  v127 = [NSArray arrayWithObjects:v221 count:2];
  [v208 setObject:v127 forKeyedSubscript:@"ActivePetParent"];

  v180 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:&off_10036DA10];
  v128 = [v2 objectForKeyedSubscript:@"strProvider"];
  v129 = [NSPredicate predicateWithFormat:@"%K == %i", v128, 2];
  v220[0] = v129;
  v130 = [v2 objectForKeyedSubscript:@"strCategory"];
  v131 = [NSPredicate predicateWithFormat:@"%K == %i", v130, 5];
  v220[1] = v131;
  v132 = [v2 objectForKeyedSubscript:@"strPhotoMomentInferences"];
  v180 = [NSPredicate predicateWithFormat:@"ANY %K IN %@", v132, v180];
  v220[2] = v180;
  v134 = [NSArray arrayWithObjects:v220 count:3];
  v179 = [NSCompoundPredicate andPredicateWithSubpredicates:v134];

  v219 = v179;
  v135 = [NSArray arrayWithObjects:&v219 count:1];
  [v208 setObject:v135 forKeyedSubscript:@"PetParent"];

  v136 = [v2 objectForKeyedSubscript:@"strProvider"];
  v137 = [NSPredicate predicateWithFormat:@"%K == %i", v136, 3];
  v218[0] = v137;
  v138 = [v2 objectForKeyedSubscript:@"strCategory"];
  v139 = [NSPredicate predicateWithFormat:@"%K == %i", v138, 3];
  v218[1] = v139;
  v140 = [v2 objectForKeyedSubscript:@"strMediaRepetitions"];
  v141 = [NSPredicate predicateWithFormat:@"%K > %@", v140, &off_100369088];
  v218[2] = v141;
  v142 = [NSArray arrayWithObjects:v218 count:3];
  v178 = [NSCompoundPredicate andPredicateWithSubpredicates:v142];

  v217 = v178;
  v143 = [NSArray arrayWithObjects:&v217 count:1];
  [v208 setObject:v143 forKeyedSubscript:@"MediaOnRepeat"];

  v144 = [v2 objectForKeyedSubscript:@"strProvider"];
  v145 = [NSPredicate predicateWithFormat:@"%K == %i", v144, 3];
  v216[0] = v145;
  v146 = [v2 objectForKeyedSubscript:@"strCategory"];
  v147 = [NSPredicate predicateWithFormat:@"%K == %i", v146, 8];
  v216[1] = v147;
  v148 = [NSArray arrayWithObjects:v216 count:2];
  v177 = [NSCompoundPredicate andPredicateWithSubpredicates:v148];

  v215 = v177;
  v149 = [NSArray arrayWithObjects:&v215 count:1];
  [v208 setObject:v149 forKeyedSubscript:@"TravelEvent"];

  v150 = [v2 objectForKeyedSubscript:@"strProvider"];
  v151 = [NSPredicate predicateWithFormat:@"%K == %i", v150, 3];
  v214[0] = v151;
  v152 = [v2 objectForKeyedSubscript:@"strCategory"];
  v153 = [NSPredicate predicateWithFormat:@"%K == %i", v152, 11];
  v214[1] = v153;
  v154 = [v2 objectForKeyedSubscript:@"strSuggestedEventCategory"];
  v155 = [NSPredicate predicateWithFormat:@"%K == %i", v154, 9];
  v214[2] = v155;
  v156 = [NSArray arrayWithObjects:v214 count:3];
  v176 = [NSCompoundPredicate andPredicateWithSubpredicates:v156];

  v213 = v176;
  v157 = [NSArray arrayWithObjects:&v213 count:1];
  [v208 setObject:v157 forKeyedSubscript:@"StructuredEventMovie"];

  v175 = [NSPredicate predicateWithFormat:@"SELF.suggestedEventCategory = %i OR SELF.suggestedEventCategory = %i OR SELF.suggestedEventCategory = %i OR SELF.suggestedEventCategory = %i", 1, 3, 4, 5];
  v158 = [v2 objectForKeyedSubscript:@"strProvider"];
  v159 = [NSPredicate predicateWithFormat:@"%K == %i", v158, 3];
  v212[0] = v159;
  v160 = [v2 objectForKeyedSubscript:@"strCategory"];
  v161 = [NSPredicate predicateWithFormat:@"%K == %i", v160, 11];
  v212[1] = v161;
  v212[2] = v175;
  v162 = [NSArray arrayWithObjects:v212 count:3];
  v174 = [NSCompoundPredicate andPredicateWithSubpredicates:v162];

  v211 = v174;
  v163 = [NSArray arrayWithObjects:&v211 count:1];
  [v208 setObject:v163 forKeyedSubscript:@"StructuredEventTransportation"];

  v164 = [v2 objectForKeyedSubscript:@"strProvider"];
  v165 = [NSPredicate predicateWithFormat:@"%K == %i", v164, 3];
  v210[0] = v165;
  v166 = [v2 objectForKeyedSubscript:@"strCategory"];
  v167 = [NSPredicate predicateWithFormat:@"%K == %i", v166, 10];
  v210[1] = v167;
  v168 = [v2 objectForKeyedSubscript:@"strInteractionContactScore"];
  v169 = [NSPredicate predicateWithFormat:@"%K > %@", v168, &off_10036E370];
  v210[2] = v169;
  v170 = [NSArray arrayWithObjects:v210 count:3];
  v171 = [NSCompoundPredicate andPredicateWithSubpredicates:v170];

  v209 = v171;
  v172 = [NSArray arrayWithObjects:&v209 count:1];
  [v208 setObject:v172 forKeyedSubscript:@"SignificantContactInteraction"];

  return v208;
}

- (void)calculateEventBundlesFromEvents:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOEventBundler calculateEventBundlesFromEvents:]";
  v3 = 1024;
  v4 = 136;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "The events and membership arrays have to be of the same size. (in %s:%d)", &v1, 0x12u);
}

@end