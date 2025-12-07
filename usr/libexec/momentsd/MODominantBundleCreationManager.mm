@interface MODominantBundleCreationManager
- (BOOL)_locationCheckForMergingOutingBundle:(id)bundle activityBundle:(id)activityBundle;
- (MODominantBundleCreationManager)initWithUniverse:(id)universe;
- (id)_dominantBundleCreatedFromOutingBundles:(id)bundles activityBundles:(id)activityBundles parameters:(id)parameters;
- (id)filterEventBundlesEligibleForDominantBundleCreation:(id)creation;
- (id)getInviteBundles:(id)bundles;
- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)bundles compareWithHomeBundle:(id)bundle;
- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)bundles compareWithInviteOutingBundle:(id)bundle;
- (void)_suppressDuplicateContactBundles:(id)bundles comparedWithContactTrendbundles:(id)trendbundles;
- (void)_suppressDuplicateHomeBundles:(id)bundles parameters:(id)parameters;
- (void)_suppressDuplicateMediaBundles:(id)bundles comparedWithActivitybundles:(id)activitybundles parameters:(id)parameters;
- (void)_suppressDuplicateMediaBundles:(id)bundles comparedWithHomebundles:(id)homebundles parameters:(id)parameters;
- (void)processBundlesForCreatingDominantBundles:(id)bundles withParameters:(id)parameters handler:(id)handler;
@end

@implementation MODominantBundleCreationManager

- (MODominantBundleCreationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v9.receiver = self;
  v9.super_class = MODominantBundleCreationManager;
  v6 = [(MODominantBundleCreationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, universe);
  }

  return v7;
}

- (void)processBundlesForCreatingDominantBundles:(id)bundles withParameters:(id)parameters handler:(id)handler
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v12 = [bundlesCopy count];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    context = v11;
    if (v14)
    {
      *buf = 134217984;
      v57 = [bundlesCopy count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "DominantBundleCreation: input eventBundles count, %lu", buf, 0xCu);
    }

    v48 = handlerCopy;
    v50 = parametersCopy;

    v15 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v46 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 2];
    v16 = [bundlesCopy filteredArrayUsingPredicate:?];
    v55 = v15;
    v17 = [NSArray arrayWithObjects:&v55 count:1];
    v18 = [v16 sortedArrayUsingDescriptors:v17];

    v44 = v18;
    v19 = [(MODominantBundleCreationManager *)self getInviteBundles:v18];
    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [MODominantBundleCreationManager processBundlesForCreatingDominantBundles:v19 withParameters:? handler:?];
    }

    v45 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 1];
    [bundlesCopy filteredArrayUsingPredicate:?];
    v21 = v49 = v19;
    v54 = v15;
    v22 = [NSArray arrayWithObjects:&v54 count:1];
    v23 = [v21 sortedArrayUsingDescriptors:v22];

    v43 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 7];
    v24 = [bundlesCopy filteredArrayUsingPredicate:?];
    v53 = v15;
    v25 = [NSArray arrayWithObjects:&v53 count:1];
    v26 = [v24 sortedArrayUsingDescriptors:v25];

    v41 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 4];
    v27 = [bundlesCopy filteredArrayUsingPredicate:?];
    v52 = v15;
    v28 = [NSArray arrayWithObjects:&v52 count:1];
    v39 = [v27 sortedArrayUsingDescriptors:v28];

    v40 = [NSPredicate predicateWithBlock:&__block_literal_global_2];
    v29 = [bundlesCopy filteredArrayUsingPredicate:?];
    [(MODominantBundleCreationManager *)self _suppressDuplicateHomeBundles:v26 parameters:v50];
    v30 = [NSPredicate predicateWithFormat:@"%K = NO", @"isAggregatedAndSuppressed"];
    v42 = v26;
    v31 = [v26 filteredArrayUsingPredicate:v30];
    v51 = v15;
    v32 = [NSArray arrayWithObjects:&v51 count:1];
    v33 = [v31 sortedArrayUsingDescriptors:v32];

    [(MODominantBundleCreationManager *)self _removeDuplicatePhotoResourceFromActivityBundles:v23 compareWithHomeBundle:v33];
    [(MODominantBundleCreationManager *)self _removeDuplicatePhotoResourceFromActivityBundles:v23 compareWithInviteOutingBundle:v49];
    v34 = [(MODominantBundleCreationManager *)self _dominantBundleCreatedFromOutingBundles:v44 activityBundles:v23 parameters:v50];
    [(MODominantBundleCreationManager *)self _suppressDuplicateContactBundles:v39 comparedWithContactTrendbundles:v29];
    v35 = [bundlesCopy arrayByAddingObjectsFromArray:v34];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v35 count];
      *buf = 134217984;
      v57 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "DominantBundleCreation: output eventBundles count, %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    v38 = objc_autoreleasePoolPush();
    handlerCopy = v48;
    (*(v48 + 2))(v48, v35, 0);
    objc_autoreleasePoolPop(v38);

    parametersCopy = v50;
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "DominantBundleCreation: No eventBundle to be proccessed through dominantBundleCreation process", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    objc_autoreleasePoolPop(v11);
  }
}

BOOL __99__MODominantBundleCreationManager_processBundlesForCreatingDominantBundles_withParameters_handler___block_invoke(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOEventBundle *)v3 interfaceType];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MOEventBundle *)v3 events];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v11)
        {
          v8 |= [v11 category] == 10;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return (v4 == 9) & v8;
}

- (id)_dominantBundleCreatedFromOutingBundles:(id)bundles activityBundles:(id)activityBundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  activityBundlesCopy = activityBundles;
  parametersCopy = parameters;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v119 = [bundlesCopy count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "DominantBundleCreation: input outing bundle count, %lu", buf, 0xCu);
  }

  v13 = [(MODominantBundleCreationManager *)self filterEventBundlesEligibleForDominantBundleCreation:bundlesCopy];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v13 count];
    *buf = 134217984;
    *v119 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "DominantBundleCreation: input outing bundle count after eligible for dominant bundle creation filter, %lu", buf, 0xCu);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [activityBundlesCopy count];
    *buf = 134217984;
    *v119 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DominantBundleCreation: input activity bundle count, %lu", buf, 0xCu);
  }

  v18 = [(MODominantBundleCreationManager *)self filterEventBundlesEligibleForDominantBundleCreation:activityBundlesCopy];

  v19 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 count];
    *buf = 134217984;
    *v119 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "DominantBundleCreation: input activity bundle count after eligible for dominant bundle creation filter, %lu", buf, 0xCu);
  }

  if ([v13 count] && objc_msgSend(v18, "count"))
  {
    v101 = a2;
    selfCopy = self;
    v110 = objc_opt_new();
    v105 = objc_opt_new();
    v104 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v103 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    v106 = v18;
    if ([v13 count])
    {
      v21 = 0;
      action = 0;
      v23 = 0;
      while (1)
      {
        if ([v18 count] <= v23)
        {
          goto LABEL_37;
        }

        v24 = [v13 objectAtIndexedSubscript:v21];
        v25 = v18;
        v108 = v23;
        v26 = [v18 objectAtIndexedSubscript:v23];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v24 andOtherBundle:v26];
        v28 = v27;
        v29 = [NSDateInterval alloc];
        startDate = [v24 startDate];
        endDate = [v24 endDate];
        v32 = [v29 initWithStartDate:startDate endDate:endDate];
        [v32 duration];
        v34 = v28 / v33;

        v35 = [NSDateInterval alloc];
        startDate2 = [v26 startDate];
        endDate2 = [v26 endDate];
        v38 = [v35 initWithStartDate:startDate2 endDate:endDate2];
        [v38 duration];
        v40 = v28 / v39;

        [parametersCopy dominantBundle_overlappingThreshold];
        if (v34 > v41 || ([parametersCopy dominantBundle_overlappingThreshold], v40 > v42))
        {
          if (!+[MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:](MOSummarizationUtilities, "isOutingBundleFromHomeOrWorkVisit:", v24) && -[MODominantBundleCreationManager _locationCheckForMergingOutingBundle:activityBundle:](selfCopy, "_locationCheckForMergingOutingBundle:activityBundle:", v24, v26) && +[MOSummarizationUtilities isOutingBundleInsideOneDay:](MOSummarizationUtilities, "isOutingBundleInsideOneDay:", v24) && [v26 bundleSubType] != 204 && objc_msgSend(v26, "bundleSubType") != 207 && objc_msgSend(v26, "bundleSubType") != 208 && !+[MOSummarizationUtilities isFlightBundle:](MOSummarizationUtilities, "isFlightBundle:", v24))
          {
            break;
          }
        }

        v43 = v108;
        if (v34 <= 0.0 && v40 <= 0.0)
        {
          goto LABEL_31;
        }

        v44 = action;
        [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v26 comparedWithPrimaryBundle:v24];
        action = [v26 action];
        if ([action actionSubtype] != 2)
        {
          goto LABEL_30;
        }

        resources = [v26 resources];
        v46 = [resources count];

        v25 = v106;
        LODWORD(action) = v44;
        if (v46)
        {
          resources2 = [v26 resources];
          action = [resources2 filteredArrayUsingPredicate:v104];

          if ([action count])
          {
            v116 = v103;
            v48 = [NSArray arrayWithObjects:&v116 count:1];
            v49 = [action sortedArrayUsingDescriptors:v48];

            firstObject = [v49 firstObject];
            [firstObject setPriorityScore:99.0];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

LABEL_31:
        endDate3 = [v24 endDate];
        endDate4 = [v26 endDate];
        v53 = [endDate3 isOnOrAfter:endDate4];

        v23 = v43 + v53;
        v21 = action + (v53 ^ 1);

        action = v21;
        v18 = v25;
        if ([v13 count] <= v21)
        {
          goto LABEL_37;
        }
      }

      v54 = [v13 count];
      v44 = action;
      action = [NSNumber numberWithInt:action];
      v117[0] = action;
      v43 = v108;
      v49 = [NSNumber numberWithInt:v108 + v54];
      v117[1] = v49;
      firstObject = [NSArray arrayWithObjects:v117 count:2];
      [v105 addObject:firstObject];
LABEL_29:

LABEL_30:
      v25 = v106;
      LODWORD(action) = v44;
      goto LABEL_31;
    }

LABEL_37:
    v59 = [v13 count];
    v60 = &v59[[v18 count]];
    v61 = [[MOGraph alloc] initWithNumVertices:v60 edges:v105];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = [v105 count];
      *buf = 134217984;
      *v119 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "DominantBundleCreation: correlation graph is built with number of edges, %lu", buf, 0xCu);
    }

    v100 = v61;
    v109 = [(MOGraph *)v61 calculateConnectedComponentWithGraphTraversal:1];
    v64 = v110;
    if ([v109 count] != v60)
    {
      v65 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:v65 activityBundles:? parameters:?];
      }

      v66 = +[NSAssertionHandler currentHandler];
      [v66 handleFailureInMethod:v101 object:selfCopy file:@"MODominantBundleCreationManager.m" lineNumber:199 description:{@"DominantBundleCreation: the event bundles and membership arrays have to be of the same size. (in %s:%d)", "-[MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:activityBundles:parameters:]", 199}];
    }

    if (v60)
    {
      v67 = 0;
      for (i = 0; i != v60; ++i)
      {
        v69 = [v109 objectAtIndexedSubscript:i];
        v70 = [v64 objectForKey:v69];

        if (!v70)
        {
          v71 = objc_opt_new();
          [v64 setObject:v71 forKeyedSubscript:v69];
        }

        if ([v13 count] <= i)
        {
          v78 = [v13 count];
          v79 = [v64 objectForKeyedSubscript:v69];
          v80 = (v67 - (v78 << 32)) >> 32;
          v81 = [v106 objectAtIndexedSubscript:v80];
          [v79 addObject:v81];

          v74 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            intValue = [v69 intValue];
            v76 = [v106 objectAtIndexedSubscript:v80];
            *buf = 67109378;
            *v119 = intValue;
            *&v119[4] = 2112;
            *&v119[6] = v76;
            v77 = v74;
            goto LABEL_54;
          }
        }

        else
        {
          v72 = [v64 objectForKeyedSubscript:v69];
          v73 = [v13 objectAtIndexedSubscript:i];
          [v72 addObject:v73];

          v74 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            intValue2 = [v69 intValue];
            v76 = [v13 objectAtIndexedSubscript:i];
            *buf = 67109378;
            *v119 = intValue2;
            *&v119[4] = 2112;
            *&v119[6] = v76;
            v77 = v74;
LABEL_54:
            _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "DominantBundleCreation:group %d, bundle-> %@", buf, 0x12u);
          }
        }

        v67 += &_mh_execute_header;
        v64 = v110;
      }
    }

    v102 = v13;
    v83 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      [MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:v109 activityBundles:? parameters:?];
    }

    fUniverse = [(MODominantBundleCreationManager *)selfCopy fUniverse];
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    v87 = [fUniverse getService:v86];

    v58 = objc_opt_new();
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    allValues = [v110 allValues];
    v89 = [allValues countByEnumeratingWithState:&v111 objects:v115 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v112;
      do
      {
        for (j = 0; j != v90; j = j + 1)
        {
          if (*v112 != v91)
          {
            objc_enumerationMutation(allValues);
          }

          v93 = *(*(&v111 + 1) + 8 * j);
          if ([v93 count] >= 2)
          {
            allObjects = [v93 allObjects];
            v95 = [MOSummarizationUtilities createDominantBundleFromBundles:allObjects withParameters:parametersCopy timeZoneManager:v87];

            if (v95)
            {
              [v58 addObject:v95];
            }

            v96 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v119 = v95;
              _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "DominantBundleCreation:dominant bundle %@", buf, 0xCu);
            }
          }
        }

        v90 = [allValues countByEnumeratingWithState:&v111 objects:v115 count:16];
      }

      while (v90);
    }

    v97 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = [v58 count];
      *buf = 134217984;
      *v119 = v98;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "DominantBundleCreation: newly created dominant bundles count: %lu", buf, 0xCu);
    }

    v13 = v102;
    v18 = v106;
    v55 = v110;
  }

  else
  {
    v55 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = [v13 count];
      v57 = [v18 count];
      *buf = 134218240;
      *v119 = v56;
      *&v119[8] = 2048;
      *&v119[10] = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "DominantBundleCreation: no dominant bundle is created since outing or activity bundles count is 0, outing bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }

    v58 = 0;
  }

  return v58;
}

- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)bundles compareWithHomeBundle:(id)bundle
{
  bundlesCopy = bundles;
  bundleCopy = bundle;
  if ([bundlesCopy count] && objc_msgSend(bundleCopy, "count"))
  {
    v25 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v24 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    if ([bundleCopy count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if ([bundlesCopy count] <= v9)
        {
          goto LABEL_13;
        }

        v10 = [bundleCopy objectAtIndexedSubscript:v7];
        v11 = [bundlesCopy objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v10 andOtherBundle:v11];
        if (v12 > 0.0)
        {
          [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v11 comparedWithPrimaryBundle:v10];
          action = [v11 action];
          if ([action actionSubtype] != 2)
          {
            goto LABEL_11;
          }

          resources = [v11 resources];
          v15 = [resources count];

          if (v15)
          {
            break;
          }
        }

LABEL_12:
        endDate = [v10 endDate];
        endDate2 = [v11 endDate];
        v22 = [endDate isOnOrAfter:endDate2];

        v9 += v22;
        v8 += v22 ^ 1;
        v7 = v8;
        if ([bundleCopy count] <= v8)
        {
          goto LABEL_13;
        }
      }

      resources2 = [v11 resources];
      action = [resources2 filteredArrayUsingPredicate:v25];

      if ([action count])
      {
        v26 = v24;
        v17 = [NSArray arrayWithObjects:&v26 count:1];
        v18 = [action sortedArrayUsingDescriptors:v17];

        firstObject = [v18 firstObject];
        [firstObject setPriorityScore:99.0];
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_13:

    v23 = v25;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v28 = [bundleCopy count];
      v29 = 2048;
      v30 = [bundlesCopy count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "DominantBundleCreation: no resource change needed for activity bundles compared to home bundles since home or activit bundles count is 0, home bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }
  }
}

- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)bundles compareWithInviteOutingBundle:(id)bundle
{
  bundlesCopy = bundles;
  bundleCopy = bundle;
  if ([bundlesCopy count] && objc_msgSend(bundleCopy, "count"))
  {
    v25 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v24 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    if ([bundleCopy count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if ([bundlesCopy count] <= v9)
        {
          goto LABEL_13;
        }

        v10 = [bundleCopy objectAtIndexedSubscript:v7];
        v11 = [bundlesCopy objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v10 andOtherBundle:v11];
        if (v12 > 0.0)
        {
          [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v11 comparedWithPrimaryBundle:v10];
          action = [v11 action];
          if ([action actionSubtype] != 2)
          {
            goto LABEL_11;
          }

          resources = [v11 resources];
          v15 = [resources count];

          if (v15)
          {
            break;
          }
        }

LABEL_12:
        endDate = [v10 endDate];
        endDate2 = [v11 endDate];
        v22 = [endDate isOnOrAfter:endDate2];

        v9 += v22;
        v8 += v22 ^ 1;
        v7 = v8;
        if ([bundleCopy count] <= v8)
        {
          goto LABEL_13;
        }
      }

      resources2 = [v11 resources];
      action = [resources2 filteredArrayUsingPredicate:v25];

      if ([action count])
      {
        v26 = v24;
        v17 = [NSArray arrayWithObjects:&v26 count:1];
        v18 = [action sortedArrayUsingDescriptors:v17];

        firstObject = [v18 firstObject];
        [firstObject setPriorityScore:99.0];
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_13:

    v23 = v25;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v28 = [bundleCopy count];
      v29 = 2048;
      v30 = [bundlesCopy count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "DominantBundleCreation: no resource change needed for activity bundles compared to invite outing bundles since outing or activity bundles count is 0, invite outing bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }
  }
}

- (void)_suppressDuplicateContactBundles:(id)bundles comparedWithContactTrendbundles:(id)trendbundles
{
  bundlesCopy = bundles;
  trendbundlesCopy = trendbundles;
  if ([bundlesCopy count] && objc_msgSend(trendbundlesCopy, "count"))
  {
    if ([bundlesCopy count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v32 = bundlesCopy;
      v34 = trendbundlesCopy;
      do
      {
        if ([trendbundlesCopy count] <= v9)
        {
          break;
        }

        v11 = v9;
        v12 = [bundlesCopy objectAtIndexedSubscript:v7];
        v13 = [trendbundlesCopy objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v12 andOtherBundle:v13];
        if (v14 > 0.0)
        {
          v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 10];
          events = [v13 events];
          v17 = [events filteredArrayUsingPredicate:v15];

          events2 = [v12 events];
          v33 = v15;
          v19 = [events2 filteredArrayUsingPredicate:v15];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v20 = v17;
          v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v36;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                if ([v19 containsObject:*(*(&v35 + 1) + 8 * i)])
                {
                  [v12 setIsAggregatedAndSuppressed:1];
                  ++v10;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v22);
          }

          bundlesCopy = v32;
        }

        endDate = [v13 endDate];
        endDate2 = [v12 endDate];
        v27 = [endDate isOnOrAfter:endDate2];

        v9 = v11 + (v27 ^ 1);
        v8 += v27;
        v7 = v8;
        trendbundlesCopy = v34;
      }

      while ([bundlesCopy count] > v8);
    }

    else
    {
      v10 = 0;
    }

    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v41) = v10;
      v29 = "DominantBundleCreation: duplicate contact bundle count: %d";
      v30 = v28;
      v31 = 8;
      goto LABEL_24;
    }
  }

  else
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v41 = [bundlesCopy count];
      v42 = 2048;
      v43 = [trendbundlesCopy count];
      v29 = "DominantBundleCreation: no needed to remove duplicate contact bundle compared to contact trend bundles since contact or contact trend bundles count is 0, contact bundles count: %lu, contact trend bundles count: %lu";
      v30 = v28;
      v31 = 22;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
    }
  }
}

- (void)_suppressDuplicateMediaBundles:(id)bundles comparedWithHomebundles:(id)homebundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  homebundlesCopy = homebundles;
  parametersCopy = parameters;
  if ([bundlesCopy count] && objc_msgSend(homebundlesCopy, "count"))
  {
    if ([bundlesCopy count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if ([homebundlesCopy count] <= v11)
        {
          break;
        }

        v13 = [bundlesCopy objectAtIndexedSubscript:v9];
        v14 = [homebundlesCopy objectAtIndexedSubscript:v11];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v13 andOtherBundle:v14];
        v16 = v15;
        v17 = [NSDateInterval alloc];
        startDate = [v13 startDate];
        endDate = [v13 endDate];
        v20 = [v17 initWithStartDate:startDate endDate:endDate];
        [v20 duration];
        v22 = v16 / v21;

        [parametersCopy dominantBundle_suppressMediaBundleComparedWithHomeBundleThreshold];
        if (v22 > v23)
        {
          [v13 setIsAggregatedAndSuppressed:1];
          ++v12;
        }

        endDate2 = [v13 endDate];
        endDate3 = [v14 endDate];
        v26 = [endDate2 isOnOrAfter:endDate3];

        v11 += v26;
        v10 += v26 ^ 1;
        v9 = v10;
      }

      while ([bundlesCopy count] > v10);
    }

    else
    {
      v12 = 0;
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v33) = v12;
      v28 = "DominantBundleCreation: duplicate media bundle compared with home bundles count: %d";
      v29 = v27;
      v30 = 8;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = [bundlesCopy count];
      v34 = 2048;
      v35 = [homebundlesCopy count];
      v28 = "DominantBundleCreation: no needed to remove duplicate media compared to home bundles since media or home bundles count is 0, media bundles count: %lu, home bundles count: %lu";
      v29 = v27;
      v30 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    }
  }
}

- (void)_suppressDuplicateMediaBundles:(id)bundles comparedWithActivitybundles:(id)activitybundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  activitybundlesCopy = activitybundles;
  parametersCopy = parameters;
  if ([bundlesCopy count] && objc_msgSend(activitybundlesCopy, "count"))
  {
    if ([bundlesCopy count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if ([activitybundlesCopy count] <= v11)
        {
          break;
        }

        v13 = [bundlesCopy objectAtIndexedSubscript:v9];
        v14 = [activitybundlesCopy objectAtIndexedSubscript:v11];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v13 andOtherBundle:v14];
        v16 = v15;
        v17 = [NSDateInterval alloc];
        startDate = [v13 startDate];
        endDate = [v13 endDate];
        v20 = [v17 initWithStartDate:startDate endDate:endDate];
        [v20 duration];
        v22 = v16 / v21;

        [parametersCopy dominantBundle_suppressMediaBundleComparedWithActivityBundleThreshold];
        if (v22 > v23)
        {
          [v13 setIsAggregatedAndSuppressed:1];
          ++v12;
        }

        endDate2 = [v13 endDate];
        endDate3 = [v14 endDate];
        v26 = [endDate2 isOnOrAfter:endDate3];

        v11 += v26;
        v10 += v26 ^ 1;
        v9 = v10;
      }

      while ([bundlesCopy count] > v10);
    }

    else
    {
      v12 = 0;
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v33) = v12;
      v28 = "DominantBundleCreation: duplicate media bundle compared with acitivity bundles count: %d";
      v29 = v27;
      v30 = 8;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = [bundlesCopy count];
      v34 = 2048;
      v35 = [activitybundlesCopy count];
      v28 = "DominantBundleCreation: no needed to remove duplicate media compared to activity bundles since media or activity bundles count is 0, media bundles count: %lu, home bundles count: %lu";
      v29 = v27;
      v30 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    }
  }
}

- (BOOL)_locationCheckForMergingOutingBundle:(id)bundle activityBundle:(id)activityBundle
{
  activityBundleCopy = activityBundle;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  events = [bundle events];
  v7 = [events countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(events);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        visitEventsRejectedByWatchLocation = [activityBundleCopy visitEventsRejectedByWatchLocation];
        eventIdentifier = [v12 eventIdentifier];
        uUIDString = [eventIdentifier UUIDString];
        v16 = [visitEventsRejectedByWatchLocation containsObject:uUIDString];

        if (v16)
        {
          v17 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "DominantBundleCreation: outing bundle contains visits rejected by activity bundle with watch location", v19, 2u);
          }

          v10 = 0;
        }
      }

      v8 = [events countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (void)_suppressDuplicateHomeBundles:(id)bundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    firstObject = [bundlesCopy firstObject];
    startDate = [firstObject startDate];
    v8 = [v5 components:28 fromDate:startDate];

    [v8 setHour:3];
    v73 = v8;
    v9 = [v5 dateFromComponents:v8];
    lastObject = [bundlesCopy lastObject];
    startDate2 = [lastObject startDate];
    v12 = [v5 components:28 fromDate:startDate2];

    [v12 setHour:3];
    v72 = v12;
    v13 = [v5 dateFromComponents:v12];
    v14 = objc_opt_new();
    [v14 addObject:v9];
    if ((-[NSObject isDate:inSameDayAsDate:](v5, "isDate:inSameDayAsDate:", v9, v13) & 1) != 0 || ![v9 isBeforeDate:v13])
    {
      v15 = v9;
    }

    else
    {
      do
      {
        v15 = [v9 dateByAddingTimeInterval:86400.0];

        [v14 addObject:v15];
        v9 = v15;
      }

      while (([v15 isBeforeDate:v13] & 1) != 0);
    }

    v71 = v15;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = v14;
    v81 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
    if (!v81)
    {
      v88 = 0;
      v85 = 0;
      goto LABEL_84;
    }

    v88 = 0;
    v85 = 0;
    v80 = *v112;
    v74 = bundlesCopy;
    v76 = v13;
    v77 = v5;
    while (1)
    {
      for (i = 0; i != v81; i = i + 1)
      {
        if (*v112 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v111 + 1) + 8 * i);
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v108[2] = __76__MODominantBundleCreationManager__suppressDuplicateHomeBundles_parameters___block_invoke;
        v108[3] = &unk_1003362D8;
        v109 = v5;
        v110 = v17;
        v82 = v17;
        v18 = [NSPredicate predicateWithBlock:v108];
        v19 = [bundlesCopy filteredArrayUsingPredicate:v18];

        v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v68 = [v19 count];
          *buf = 134218242;
          *v120 = v68;
          *&v120[8] = 2112;
          *&v120[10] = v82;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: home bundle count is %lu for %@", buf, 0x16u);
        }

        v91 = objc_opt_new();
        v90 = objc_opt_new();
        if ([v19 count] >= 2)
        {
          v78 = v19;
          v79 = i;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v104 objects:v118 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = 0;
            v25 = 0;
            v26 = *v105;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v105 != v26)
                {
                  objc_enumerationMutation(v21);
                }

                v28 = *(*(&v104 + 1) + 8 * j);
                action = [v28 action];
                [action actionSubtype];

                action2 = [v28 action];
                actionSubtype = [action2 actionSubtype];

                if (actionSubtype == 1)
                {
                  ++v25;
                }

                action3 = [v28 action];
                actionSubtype2 = [action3 actionSubtype];

                if (actionSubtype2 == 9)
                {
                  ++v24;
                }

                suggestionID = [v28 suggestionID];
                uUIDString = [suggestionID UUIDString];
                [v91 addObject:uUIDString];

                bundleIdentifier = [v28 bundleIdentifier];
                uUIDString2 = [bundleIdentifier UUIDString];
                [v90 addObject:uUIDString2];
              }

              v23 = [v21 countByEnumeratingWithState:&v104 objects:v118 count:16];
            }

            while (v23);
            v38 = v25 > 0;
          }

          else
          {
            v24 = 0;
            v38 = 0;
          }

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v84 = v21;
          v50 = [v84 countByEnumeratingWithState:&v100 objects:v117 count:16];
          if (!v50)
          {
            v89 = 0;
            v86 = 0;
            goto LABEL_71;
          }

          v51 = v50;
          v89 = 0;
          v86 = 0;
          v87 = *v101;
          v83 = v24 == 0 && v38;
          while (1)
          {
            for (k = 0; k != v51; k = k + 1)
            {
              if (*v101 != v87)
              {
                objc_enumerationMutation(v84);
              }

              v53 = *(*(&v100 + 1) + 8 * k);
              if (v24 < 1)
              {
                if (v83)
                {
                  action4 = [*(*(&v100 + 1) + 8 * k) action];
                  actionSubtype3 = [action4 actionSubtype];

                  if (actionSubtype3 != 1)
                  {
LABEL_52:
                    [v53 setIsAggregatedAndSuppressed:1];
                    ++v85;
                    ++v86;
                  }
                }
              }

              else
              {
                action5 = [*(*(&v100 + 1) + 8 * k) action];
                actionSubtype4 = [action5 actionSubtype];

                if (actionSubtype4 != 9)
                {
                  goto LABEL_52;
                }
              }

              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              resources = [v53 resources];
              v59 = [resources countByEnumeratingWithState:&v96 objects:v116 count:16];
              if (!v59)
              {

LABEL_66:
                [v53 setIsAggregatedAndSuppressed:1];
                ++v88;
                ++v89;
                goto LABEL_67;
              }

              v60 = v59;
              v61 = 0;
              v62 = *v97;
              do
              {
                for (m = 0; m != v60; m = m + 1)
                {
                  if (*v97 != v62)
                  {
                    objc_enumerationMutation(resources);
                  }

                  v64 = *(*(&v96 + 1) + 8 * m);
                  if ([v64 type] == 2 || objc_msgSend(v64, "type") == 3)
                  {
                    ++v61;
                  }
                }

                v60 = [resources countByEnumeratingWithState:&v96 objects:v116 count:16];
              }

              while (v60);

              if (!v61)
              {
                goto LABEL_66;
              }

LABEL_67:
              [v53 setSubSuggestionIDs:v91];
              [v53 setSubBundleIDs:v90];
            }

            v51 = [v84 countByEnumeratingWithState:&v100 objects:v117 count:16];
            if (!v51)
            {
LABEL_71:

              bundlesCopy = v74;
              v13 = v76;
              v5 = v77;
              v19 = v78;
              i = v79;
              goto LABEL_74;
            }
          }
        }

        if ([v19 count] == 1)
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v39 = v19;
          firstObject2 = [v19 firstObject];
          resources2 = [firstObject2 resources];

          v42 = [resources2 countByEnumeratingWithState:&v92 objects:v115 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = bundlesCopy;
            v45 = i;
            v46 = 0;
            v47 = *v93;
            do
            {
              for (n = 0; n != v43; n = n + 1)
              {
                if (*v93 != v47)
                {
                  objc_enumerationMutation(resources2);
                }

                v49 = *(*(&v92 + 1) + 8 * n);
                if ([v49 type] == 2 || objc_msgSend(v49, "type") == 3)
                {
                  ++v46;
                }
              }

              v43 = [resources2 countByEnumeratingWithState:&v92 objects:v115 count:16];
            }

            while (v43);

            i = v45;
            bundlesCopy = v44;
            v13 = v76;
            v5 = v77;
            if (v46)
            {
              v89 = 0;
              v86 = 0;
              v19 = v39;
              goto LABEL_74;
            }
          }

          else
          {
          }

          v19 = v39;
          firstObject3 = [v39 firstObject];
          v89 = 1;
          [firstObject3 setIsAggregatedAndSuppressed:1];

          v86 = 0;
          ++v88;
        }

        else
        {
          v89 = 0;
          v86 = 0;
        }

LABEL_74:
        v66 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v120 = v86;
          *&v120[4] = 2112;
          *&v120[6] = v82;
          _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: %d duplicate home bundles suppressed for %@", buf, 0x12u);
        }

        v67 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v120 = v89;
          *&v120[4] = 2112;
          *&v120[6] = v82;
          _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: %d home bundles without resources suppressed for %@", buf, 0x12u);
        }
      }

      v81 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (!v81)
      {
LABEL_84:

        v69 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v120 = v85;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "DominantBundleCreation: %d total duplicate home bundles suppressed for period", buf, 8u);
        }

        v70 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v120 = v88;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "DominantBundleCreation: %d total home bundles without resources suppressed for period", buf, 8u);
        }

        goto LABEL_89;
      }
    }
  }

  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v120 = [bundlesCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "DominantBundleCreation: no need to remove duplicate home bundles since home bundle count is %lu", buf, 0xCu);
  }

LABEL_89:
}

id __76__MODominantBundleCreationManager__suppressDuplicateHomeBundles_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 startDate];
  v5 = [v3 isDate:v4 inSameDayAsDate:*(a1 + 40)];

  return v5;
}

- (id)filterEventBundlesEligibleForDominantBundleCreation:(id)creation
{
  creationCopy = creation;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = [creationCopy count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "DominantBundleCreation: Raw input eventBundles count, %lu", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = creationCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        resources = [v11 resources];

        if (resources)
        {
          v13 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
          resources2 = [v11 resources];
          v15 = [resources2 filteredArrayUsingPredicate:v13];

          if (![v15 count])
          {
            [v5 addObject:v11];
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v5 count];
    *buf = 134217984;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DominantBundleCreation: Input eventBundles count after filtering for numInviteEvents == 0: %lu.", buf, 0xCu);
  }

  return v5;
}

- (id)getInviteBundles:(id)bundles
{
  bundlesCopy = bundles;
  v15 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = bundlesCopy;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        resources = [v9 resources];

        if (resources)
        {
          v11 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
          resources2 = [v9 resources];
          v13 = [resources2 filteredArrayUsingPredicate:v11];

          if ([v13 count])
          {
            [v15 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (void)processBundlesForCreatingDominantBundles:(void *)a1 withParameters:handler:.cold.1(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v1, v2, "DominantBundleCreation: found %lu invite outing bundles", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_dominantBundleCreatedFromOutingBundles:(os_log_t)log activityBundles:parameters:.cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:activityBundles:parameters:]";
  v3 = 1024;
  v4 = 199;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "DominantBundleCreation: the event bundles and membership arrays have to be of the same size. (in %s:%d)", &v1, 0x12u);
}

- (void)_dominantBundleCreatedFromOutingBundles:(void *)a1 activityBundles:parameters:.cold.2(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 count];
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v1, v2, "DominantBundleCreation: Graph partitioning is performed. Number of bundles groups: %lu", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end