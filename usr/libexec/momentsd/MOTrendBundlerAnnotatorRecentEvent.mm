@interface MOTrendBundlerAnnotatorRecentEvent
- (BOOL)_isStringUnique:(id)unique inThis:(id)this;
- (BOOL)configure:(id)configure;
- (MOTrendBundlerAnnotatorRecentEvent)init;
- (id)_actionFromEvent:(id)event;
- (id)_annotateEvents:(id)events withSourceEventForSet:(id)set;
- (id)_personsFromEvent:(id)event;
- (id)createTrendBundlesFrom:(id)from withEvents:(id)events;
- (void)_assignResourcePriorityScore:(id)score;
@end

@implementation MOTrendBundlerAnnotatorRecentEvent

- (MOTrendBundlerAnnotatorRecentEvent)init
{
  v6.receiver = self;
  v6.super_class = MOTrendBundlerAnnotatorRecentEvent;
  v2 = [(MOTrendBundlerAnnotatorRecentEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumFeatureCountForFrequencyTrend = -1.0;
    v4 = v2;
  }

  return v3;
}

- (id)createTrendBundlesFrom:(id)from withEvents:(id)events
{
  fromCopy = from;
  eventsCopy = events;
  v42 = objc_opt_new();
  if ([fromCopy count])
  {
    v6 = 0;
    v44 = fromCopy;
    while (1)
    {
      v7 = objc_opt_new();
      v8 = [fromCopy objectAtIndex:v6];
      v46 = v8;
      v47 = v6;
      if (v8)
      {
        [v7 addObjectsFromArray:v8];
      }

      else
      {
        v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "trendEventArray is nil", buf, 2u);
        }
      }

      v10 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v12)
      {
        break;
      }

LABEL_20:

      v26 = objc_opt_new();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v27 = v10;
      v28 = [v27 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v49;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v48 + 1) + 8 * i);
            +[NSUUID UUID];
            v33 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v32];
            [v26 addObject:v33];
          }

          v29 = [v27 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v29);
      }

      v34 = [NSPredicate predicateWithFormat:@"eventIdentifier IN %@", v26];
      v35 = [eventsCopy filteredArrayUsingPredicate:v34];
      v36 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
      v57 = v36;
      v37 = [NSArray arrayWithObjects:&v57 count:1];
      v38 = [v35 sortedArrayUsingDescriptors:v37];

      if ([v38 count])
      {
        firstObject = [v38 firstObject];
        [v11 addObject:firstObject];

        v40 = [(MOTrendBundlerAnnotatorRecentEvent *)self _annotateEvents:v11 withSourceEventForSet:v38];
        if (v40)
        {
          [v42 addObject:v40];
        }
      }

      else
      {
        v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "No source events for trend or routine found", buf, 2u);
        }
      }

      v6 = v47 + 1;
      fromCopy = v44;
      if ([v44 count] <= v47 + 1)
      {
        goto LABEL_33;
      }
    }

    v13 = v12;
    v14 = *v53;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v53 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v52 + 1) + 8 * v15);
      patterns = [v16 patterns];
      v18 = [patterns objectForKeyedSubscript:@"kEventPatternType"];
      intValue = [v18 intValue];

      patterns2 = [v16 patterns];
      v21 = patterns2;
      if (intValue == 1)
      {
        break;
      }

      v23 = [patterns2 objectForKeyedSubscript:@"kEventPatternType"];
      intValue2 = [v23 intValue];

      if (intValue2 == 2)
      {
        patterns2 = [v16 patterns];
        v21 = patterns2;
        v22 = @"kEventPatternRoutineEventIdentifierList";
        goto LABEL_17;
      }

LABEL_18:
      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (!v13)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    v22 = @"kEventPatternTrendEventIdentifierList";
LABEL_17:
    v25 = [patterns2 objectForKeyedSubscript:v22];
    [v10 addObjectsFromArray:v25];

    goto LABEL_18;
  }

LABEL_33:

  return v42;
}

- (id)_annotateEvents:(id)events withSourceEventForSet:(id)set
{
  eventsCopy = events;
  setCopy = set;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v126 = "[MOTrendBundlerAnnotatorRecentEvent _annotateEvents:withSourceEventForSet:]";
    v127 = 2048;
    v128 = [eventsCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s, event count, %lu", buf, 0x16u);
  }

  if (![eventsCopy count] || !objc_msgSend(setCopy, "count"))
  {
    v29 = 0;
    goto LABEL_69;
  }

  v8 = [MOEventBundle alloc];
  v9 = [[NSSet alloc] initWithArray:eventsCopy];
  v10 = [(MOEventBundle *)v8 initWithEventSet:v9 filtered:0];

  [(MOEventBundle *)v10 setInterfaceType:9];
  firstObject = [setCopy firstObject];
  category = [firstObject category];

  v96 = v10;
  if (category == 2)
  {
    [(MOEventBundle *)v10 setBundleSuperType:2];
    [(MOEventBundle *)v10 setBundleSubType:203];
    [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v95 = v93 = eventsCopy;
    v13 = [eventsCopy filteredArrayUsingPredicate:?];
    if ([v13 count])
    {
      v14 = [v13 objectAtIndex:0];
      v15 = [(MOTrendBundlerAnnotatorRecentEvent *)self _actionFromEvent:v14];
      [(MOEventBundle *)v10 setAction:v15];
    }

    v107 = v13;
    v101 = objc_opt_new();
    [setCopy valueForKeyPath:@"@distinctUnionOfObjects.workoutType"];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v124 = 0u;
    v16 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v122;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v122 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [NSPredicate predicateWithFormat:@"%K = %@", @"workoutType", *(*(&v121 + 1) + 8 * i)];
          v21 = [setCopy filteredArrayUsingPredicate:v20];
          v22 = setCopy;
          v23 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
          v134 = v23;
          v24 = [NSArray arrayWithObjects:&v134 count:1];
          v25 = [v21 sortedArrayUsingDescriptors:v24];

          firstObject2 = [v25 firstObject];
          [v101 addObject:firstObject2];

          setCopy = v22;
        }

        v17 = [obj countByEnumeratingWithState:&v121 objects:v135 count:16];
      }

      while (v17);
    }

    resources = [(MOEventBundle *)v96 resources];
    if (resources)
    {
      resources2 = [(MOEventBundle *)v96 resources];
      v105 = [resources2 mutableCopy];
    }

    else
    {
      v105 = objc_opt_new();
    }

    v57 = objc_opt_new();
    v58 = objc_opt_new();
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v38 = v107;
    v59 = [v38 countByEnumeratingWithState:&v117 objects:v133 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v118;
      v103 = v58;
      v104 = v57;
      v97 = *v118;
      v98 = v38;
      do
      {
        v62 = 0;
        v99 = v60;
        do
        {
          if (*v118 != v61)
          {
            objc_enumerationMutation(v38);
          }

          v63 = *(*(&v117 + 1) + 8 * v62);
          if ([v63 category] == 2)
          {
            [v63 patterns];
            v64 = v102 = v62;
            v65 = [v64 objectForKey:@"kEventResourcePatternWorkoutInfoDictArray"];

            v62 = v102;
            if (v65)
            {
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              patterns = [v63 patterns];
              v67 = [patterns objectForKeyedSubscript:@"kEventResourcePatternWorkoutInfoDictArray"];

              v106 = v67;
              v68 = [v67 countByEnumeratingWithState:&v113 objects:v132 count:16];
              if (v68)
              {
                v69 = v68;
                v70 = *v114;
                do
                {
                  for (j = 0; j != v69; j = j + 1)
                  {
                    if (*v114 != v70)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v72 = *(*(&v113 + 1) + 8 * j);
                    v73 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                    if ([(MOTrendBundlerAnnotatorRecentEvent *)self _isStringUnique:v73 inThis:v57])
                    {
                      [v57 addObject:v73];
                      v74 = objc_opt_new();
                      v75 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutStartDate"];
                      [v74 setObject:v75 forKey:@"MOWorkoutMetaDataKeyStartDate"];

                      v76 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutEndDate"];
                      [v74 setObject:v76 forKey:@"MOWorkoutMetaDataKeyEndDate"];

                      v77 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutType"];
                      [v74 setObject:v77 forKey:@"MOWorkoutMetaDataKeyActivityType"];

                      v78 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIsIndoors"];

                      if (v78)
                      {
                        v79 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIsIndoors"];
                        [v74 setObject:v79 forKey:@"MOWorkoutMetaDataKeyIsIndoors"];
                      }

                      else
                      {
                        [v74 setObject:&__kCFBooleanFalse forKey:@"MOWorkoutMetaDataKeyIsIndoors"];
                      }

                      [v74 setObject:v73 forKey:@"MOWorkoutMetaDataKeyWorkoutID"];
                      v80 = [[MOResource alloc] initWithName:@"Workout" type:10 dict:v74 value:0.0];
                      allKeys = [v74 allKeys];
                      v82 = [allKeys containsObject:@"kEventResourcePatternWorkoutIdentifierFromProvider"];

                      if (v82)
                      {
                        v83 = [v74 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                        [(MOResource *)v80 setSourceEventIdentifier:v83];
                      }

                      [v105 addObject:v80];
                      v84 = [MOAction alloc];
                      v85 = [v72 objectForKeyedSubscript:@"kEventResourcePatternWorkoutType"];
                      v86 = [(MOAction *)v84 initWithActionName:v85 actionType:4];

                      v87 = [v74 objectForKeyedSubscript:@"kEventResourcePatternWorkoutIdentifierFromProvider"];
                      [(MOAction *)v86 setSourceEventIdentifier:v87];

                      v58 = v103;
                      [v103 addObject:v86];

                      v57 = v104;
                    }
                  }

                  v69 = [v106 countByEnumeratingWithState:&v113 objects:v132 count:16];
                }

                while (v69);
              }

              v61 = v97;
              v38 = v98;
              v60 = v99;
              v62 = v102;
            }
          }

          v62 = v62 + 1;
        }

        while (v62 != v60);
        v60 = [v38 countByEnumeratingWithState:&v117 objects:v133 count:16];
      }

      while (v60);
    }

    [(MOTrendBundlerAnnotatorRecentEvent *)self _assignResourcePriorityScore:v105];
    v56 = v96;
    [(MOEventBundle *)v96 setResources:v105];
    if ([v58 count])
    {
      [(MOEventBundle *)v96 setActions:v58];
    }

    eventsCopy = v93;
    v39 = v101;
    goto LABEL_64;
  }

  firstObject3 = [setCopy firstObject];
  category2 = [firstObject3 category];

  if (category2 == 10)
  {
    [(MOEventBundle *)v10 setBundleSuperType:3];
    [(MOEventBundle *)v10 setBundleSubType:303];
    v32 = [[MOAction alloc] initWithActionName:@"Conversations" actionType:1 actionSubtype:4];
    [(MOEventBundle *)v10 setAction:v32];

    firstObject4 = [setCopy firstObject];
    eventIdentifier = [firstObject4 eventIdentifier];
    action = [(MOEventBundle *)v10 action];
    [action setSourceEventIdentifier:eventIdentifier];

    firstObject5 = [setCopy firstObject];
    v37 = [(MOTrendBundlerAnnotatorRecentEvent *)self _personsFromEvent:firstObject5];
    [(MOEventBundle *)v10 setPersons:v37];

    v95 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 5];
    v38 = [eventsCopy filteredArrayUsingPredicate:?];
    if (![v38 count])
    {
      v56 = v10;
LABEL_65:

      v88 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        firstObject6 = [setCopy firstObject];
        category3 = [firstObject6 category];
        *buf = 136315650;
        v126 = "[MOTrendBundlerAnnotatorRecentEvent _annotateEvents:withSourceEventForSet:]";
        v127 = 2112;
        v128 = v96;
        v129 = 2048;
        v130 = category3;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "%s, bundle, %@, event category, %lu", buf, 0x20u);

        v56 = v96;
      }

      v29 = v56;
      goto LABEL_68;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v109 objects:v131 count:16];
    if (v40)
    {
      v41 = v40;
      v92 = setCopy;
      v94 = eventsCopy;
      v42 = *v110;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v110 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v109 + 1) + 8 * k);
          patterns2 = [v44 patterns];
          v46 = [patterns2 objectForKeyedSubscript:@"kEventPatternType"];
          intValue = [v46 intValue];

          if (intValue == 1)
          {
            patterns3 = [v44 patterns];
            v49 = [patterns3 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
            intValue2 = [v49 intValue];

            if (intValue2 == 2)
            {
              patterns4 = [v44 patterns];
              v52 = [patterns4 objectForKeyedSubscript:@"kEventPatternTrendNumFeatures"];
              [v52 doubleValue];
              v54 = v53;
              maximumFeatureCountForFrequencyTrend = self->_maximumFeatureCountForFrequencyTrend;

              if (v54 > maximumFeatureCountForFrequencyTrend)
              {
                [(MOEventBundle *)v96 setIsAggregatedAndSuppressed:1];
              }
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v109 objects:v131 count:16];
      }

      while (v41);
      v38 = v39;
      setCopy = v92;
      eventsCopy = v94;
    }

    else
    {
      v38 = v39;
    }

    v56 = v96;
LABEL_64:

    goto LABEL_65;
  }

  v29 = 0;
  v56 = v10;
LABEL_68:

LABEL_69:

  return v29;
}

- (void)_assignResourcePriorityScore:(id)score
{
  scoreCopy = score;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = scoreCopy;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v21;
    v6 = 100;
    v7 = 200;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        getDictionary = [v9 getDictionary];
        v12 = [getDictionary objectForKeyedSubscript:@"MOWorkoutMetaDataKeyActivityType"];
        if ([(MOTrendBundlerAnnotatorRecentEvent *)self _isStringUnique:v12 inThis:v19])
        {
          [v19 addObject:v12];
          v13 = v6++;
        }

        else
        {
          v13 = v7++;
        }

        [v9 setPriorityScore:v13];

        objc_autoreleasePoolPop(v10);
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v19 count];
    *buf = 134218242;
    v25 = v15;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found %lu unique workout types and they are %@", buf, 0x16u);
  }
}

- (id)_actionFromEvent:(id)event
{
  eventCopy = event;
  patterns = [eventCopy patterns];
  v5 = [patterns objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];

  v6 = [[MOAction alloc] initWithActionName:v5 actionType:4 actionSubtype:0];
  eventIdentifier = [eventCopy eventIdentifier];

  [(MOAction *)v6 setSourceEventIdentifier:eventIdentifier];

  return v6;
}

- (id)_personsFromEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  interactionScoredContact = [eventCopy interactionScoredContact];
  contact = [interactionScoredContact contact];
  identifier = [contact identifier];
  v8 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier];

  if (v8)
  {
    v9 = [MOPerson alloc];
    contact2 = [interactionScoredContact contact];
    givenName = [contact2 givenName];
    contact3 = [interactionScoredContact contact];
    identifier2 = [contact3 identifier];
    v14 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier2];
    [interactionScoredContact score];
    v16 = [(MOPerson *)v9 initWithLocalIdentifier:0 name:givenName contactIdentifier:v14 family:0 priorityScore:100.0 significanceScore:v15];

    eventIdentifier = [eventCopy eventIdentifier];
    [(MOPerson *)v16 setSourceEventIdentifier:eventIdentifier];

    [(MOPerson *)v16 setSourceEventAccessType:3];
    [v4 addObject:v16];
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKey:@"maximumFeatureCountForFrequencyTrend"];

  if (v5)
  {
    v6 = [configureCopy objectForKeyedSubscript:@"maximumFeatureCountForFrequencyTrend"];
    [v6 doubleValue];
    self->_maximumFeatureCountForFrequencyTrend = v7;
  }

  return 1;
}

- (BOOL)_isStringUnique:(id)unique inThis:(id)this
{
  uniqueCopy = unique;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  thisCopy = this;
  v7 = [thisCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(thisCopy);
        }

        if ([uniqueCopy isEqualToString:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [thisCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

@end