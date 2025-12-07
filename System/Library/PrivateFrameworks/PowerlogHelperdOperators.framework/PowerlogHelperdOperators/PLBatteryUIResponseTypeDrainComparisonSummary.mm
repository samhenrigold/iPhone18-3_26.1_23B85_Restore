@interface PLBatteryUIResponseTypeDrainComparisonSummary
- (BOOL)shouldShowAnomalousQualifier:(int64_t)qualifier forBundleID:(id)d;
- (id)bundleIDsToSkipMapping;
- (id)comparisonDateIntervalsWithTargetStartTime:(double)time withEndTime:(double)endTime withIndex:(int)index;
- (id)createAnomalousAppEntriesFrom:(id)from;
- (id)createAppDataMapForComparisonDateIntervals:(id)intervals currentDateInterval:(id)interval targetTopApps:(id)apps;
- (id)dependencies;
- (id)getAnomalousAppsForTargetComparison:(id)comparison comparedTo:(id)to;
- (id)getBundleIDToDisplayNameMap;
- (id)getEnergyForAppWithBundleID:(id)d inDateInterval:(id)interval;
- (id)getEnergyForAppWithBundleID:(id)d inDateInterval:(id)interval forRootNodes:(id)nodes;
- (id)getEnergyForAppWithBundleID:(id)d inDateIntervals:(id)intervals;
- (id)getEnergyForQualificationID:(int)d withAppWithBundleID:(id)iD inDateInterval:(id)interval;
- (id)getInstalledPluginToParentIDMap;
- (id)getNodeIDToNodeNameMap;
- (id)getParentBundleIDForBundleID:(id)d;
- (id)getUsageTimesForAppWithBundleID:(id)d inDateInterval:(id)interval;
- (id)getUsageTimesForAppWithBundleID:(id)d inDateIntervals:(id)intervals;
- (id)intervalSummaryItems:(id)items;
- (id)noBackgroundBundleIDs;
- (id)result;
- (id)sortedAppEnergyArrayFromAppDataMap:(id)map;
- (id)targetDateIntervalWithBucketStartTime:(double)time withEndTime:(double)endTime withIndex:(int)index;
- (int)isDateIntervalAnomalous:(id)anomalous comparedTo:(id)to;
- (void)configure:(id)configure;
- (void)getBundleIDToDisplayNameMap;
- (void)getDrainPerBucketForDays:(int)days;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeDrainComparisonSummary

- (id)dependencies
{
  v2 = [&unk_28714DCA0 mutableCopy];
  if (_os_feature_enabled_impl())
  {
    [v2 addObject:&unk_287147290];
  }

  v3 = [v2 copy];

  return v3;
}

- (void)configure:(id)configure
{
  v80[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = 0x277CBE000uLL;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v10 = [configureCopy objectForKeyedSubscript:@"end"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12];
  v74 = configureCopy;
  v14 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v14 doubleValue];
  LODWORD(configureCopy) = v15;

  v72 = v13;
  v73 = v9;
  [v13 timeIntervalSinceDate:v9];
  v17 = llround(v16 / configureCopy);
  v71 = objc_opt_new();
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getDrainPerBucketForDays:v17 + 7];
  if (_os_feature_enabled_impl())
  {
    v77 = PLBatteryUsageUIKeyFromConfiguration();
    responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    responseCache = [responderService responseCache];
    v20 = [responseCache objectForKeyedSubscript:&unk_2871472C0];
    v21 = [v20 objectForKeyedSubscript:v77];
    v22 = [v21 objectForKeyedSubscript:@"result"];
    [v22 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
    v23 = v75 = v17;
    reverseObjectEnumerator = [v23 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    dynamicBreakdownFromCache = self->_dynamicBreakdownFromCache;
    self->_dynamicBreakdownFromCache = allObjects;

    v27 = PLBatteryUsageUIKeyFromConfiguration();
    responderService2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    responseCache2 = [responderService2 responseCache];
    v30 = [responseCache2 objectForKeyedSubscript:&unk_2871472C0];
    v31 = [v30 objectForKeyedSubscript:v27];
    v32 = [v31 objectForKeyedSubscript:@"result"];
    v33 = [v32 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
    reverseObjectEnumerator2 = [v33 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
    breakdownFromCache = self->_breakdownFromCache;
    self->_breakdownFromCache = allObjects2;

    v17 = v75;
  }

  responderService3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v38 = objc_msgSend_storage(responderService3);
  v78 = [v38 firstEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  responderService4 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v40 = objc_msgSend_storage(responderService4);
  v41 = [v40 lastEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  selfCopy = self;
  if ((v17 & 0x80000000) == 0)
  {
    v43 = 0;
    v76 = v17 + 1;
    v44 = 0.0;
    do
    {
      v45 = *(v8 + 2728);
      entryDate = [v41 entryDate];
      [entryDate timeIntervalSince1970];
      v48 = v47;

      v49 = v12 + v44 * -86400.0;
      if (v48 < v49)
      {
        v49 = v48;
      }

      v50 = [v45 dateWithTimeIntervalSince1970:v49];
      v51 = *(v8 + 2728);
      v44 = v44 + 1.0;
      v52 = v8;
      v53 = (v43 + 1);
      entryDate2 = [v78 entryDate];
      [entryDate2 timeIntervalSince1970];
      v56 = v55;

      if (v12 + v53 * -86400.0 >= v56)
      {
        v57 = v12 + v53 * -86400.0;
      }

      else
      {
        v57 = v56;
      }

      v58 = [v51 dateWithTimeIntervalSince1970:v57];
      [v58 timeIntervalSince1970];
      v60 = v59;
      [v50 timeIntervalSince1970];
      v62 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy targetDateIntervalWithBucketStartTime:v43 withEndTime:v60 withIndex:v61];
      [v58 timeIntervalSince1970];
      v64 = v63;
      [v50 timeIntervalSince1970];
      v66 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy comparisonDateIntervalsWithTargetStartTime:v43 withEndTime:v64 withIndex:v65];
      v79[0] = @"CurrentInterval";
      v79[1] = @"ComparisonDateIntervals";
      v80[0] = v62;
      v80[1] = v66;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
      [v71 addObject:v67];

      v43 = v53;
      v68 = v76 == v53;
      v8 = v52;
    }

    while (!v68);
  }

  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v71];
  buckets = selfCopy->_buckets;
  selfCopy->_buckets = v69;
}

- (void)run
{
  selfCopy = self;
  v95 = *MEMORY[0x277D85DE8];
  self->_suggest = 0;
  v66 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = selfCopy->_buckets;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v78;
    v67 = *v78;
    do
    {
      v6 = 0;
      v69 = v4;
      do
      {
        if (*v78 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v77 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"CurrentInterval"];
        v9 = [v7 objectForKeyedSubscript:@"ComparisonDateIntervals"];
        v10 = v9;
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy isDateIntervalAnomalous:v8 comparedTo:v9];
          v92[0] = @"SummaryComparisonType";
          v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
          v93[0] = v13;
          v92[1] = @"SummaryDrainToday";
          accumulatedDrainLevel = [v8 accumulatedDrainLevel];
          v93[1] = accumulatedDrainLevel;
          v92[2] = @"SummaryDrainAverage";
          v15 = selfCopy;
          v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSNumber intValue](selfCopy->_averageDrainRate, "intValue")}];
          v93[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
          v18 = [v17 mutableCopy];

          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (_os_feature_enabled_impl())
          {
            v19 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 getAnomalousAppsForTargetComparison:v8 comparedTo:v10];
            v20 = v19;
            if (v19)
            {
              v90 = @"SummaryList";
              v91 = v19;
              v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              [v18 addEntriesFromDictionary:v21];
            }

            goto LABEL_27;
          }

          v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 intervalSummaryItems:v8];
          if (v22)
          {
            v23 = v22;
            v24 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 createAppDataMapForComparisonDateIntervals:v10 currentDateInterval:v8 targetTopApps:v22];
            if (v24)
            {
              v25 = v24;
              v26 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 sortedAppEnergyArrayFromAppDataMap:v24];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 count];
                if (v28 >= 5)
                {
                  v29 = 5;
                }

                else
                {
                  v29 = v28;
                }

                v30 = [v27 subarrayWithRange:{0, v29}];

                v65 = v30;
                v31 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 createAnomalousAppEntriesFrom:v30];
                v32 = v31;
                v33 = v31 == 0;
                if (v31)
                {
                  v88 = @"SummaryList";
                  v89 = v31;
                  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                  [v18 addEntriesFromDictionary:v34];
                }
              }

              else
              {
                v33 = 1;
              }

              if (!v33)
              {
LABEL_27:
                if (v18)
                {
                  [v66 addObject:v18];
                }
              }
            }

            else
            {
            }
          }

          selfCopy = v15;
          v5 = v67;
          v4 = v69;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v4);
  }

  v35 = objc_opt_new();
  firstObject = [(NSArray *)selfCopy->_buckets firstObject];
  v37 = [firstObject objectForKeyedSubscript:@"CurrentInterval"];

  firstObject2 = [(NSArray *)selfCopy->_buckets firstObject];
  v39 = [firstObject2 objectForKeyedSubscript:@"ComparisonDateIntervals"];

  v86[0] = @"Drain";
  v40 = selfCopy;
  v41 = MEMORY[0x277CCABB0];
  accumulatedDrainLevel2 = [v37 accumulatedDrainLevel];
  v43 = [v41 numberWithInt:{objc_msgSend(accumulatedDrainLevel2, "intValue")}];
  v86[1] = @"Date";
  v87[0] = v43;
  v44 = MEMORY[0x277CCABB0];
  v68 = v37;
  startDate = [v37 startDate];
  convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];
  obja = &v40->super.isa;
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)v40 middayFromMidnight:convertFromMonotonicToSystem];
  v47 = [v44 numberWithDouble:?];
  v87[1] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v49 = v35;
  [v35 addObject:v48];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v70 = v39;
  v50 = [v70 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v74;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v74 != v52)
        {
          objc_enumerationMutation(v70);
        }

        v54 = *(*(&v73 + 1) + 8 * i);
        v83[0] = @"Drain";
        v55 = MEMORY[0x277CCABB0];
        accumulatedDrainLevel3 = [v54 accumulatedDrainLevel];
        v57 = [v55 numberWithInt:{objc_msgSend(accumulatedDrainLevel3, "intValue")}];
        v83[1] = @"Date";
        v84[0] = v57;
        v58 = MEMORY[0x277CCABB0];
        startDate2 = [v54 startDate];
        convertFromMonotonicToSystem2 = [startDate2 convertFromMonotonicToSystem];
        [obja middayFromMidnight:convertFromMonotonicToSystem2];
        v61 = [v58 numberWithDouble:?];
        v84[1] = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
        [v49 addObject:v62];
      }

      v51 = [v70 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v51);
  }

  v63 = [v66 objectAtIndexedSubscript:0];
  v81 = @"SummaryChart";
  v82 = v49;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  [v63 addEntriesFromDictionary:v64];

  if ([v66 count])
  {
    *(obja + 8) = 1;
    objc_storeStrong(obja + 12, v66);
  }
}

- (id)result
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDrainFromCache:0];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDynamicDrainFromCache:0];
  if (self->_suggest)
  {
    resultArray = self->_resultArray;
    v6 = @"PLBatteryUIUsageSummaryKey";
    v7[0] = resultArray;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (void)getDrainPerBucketForDays:(int)days
{
  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v6 = (86400 * days);
  v7 = [responderService getUISOCDrainByBuckets:v6 fromCachedLength:1296000 forBucketSize:86400];

  if (v7)
  {
    reverseObjectEnumerator = [v7 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDrainFromCache:allObjects];
    responderService2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v10 = [responderService2 getDynamicEndUISOCDrainByBuckets:v6 fromCachedLength:1296000 forBucketSize:86400];

    if (v10)
    {
      reverseObjectEnumerator2 = [v10 reverseObjectEnumerator];
      allObjects2 = [reverseObjectEnumerator2 allObjects];

      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDynamicDrainFromCache:allObjects2];
    }
  }
}

- (int)isDateIntervalAnomalous:(id)anomalous comparedTo:(id)to
{
  v58 = *MEMORY[0x277D85DE8];
  anomalousCopy = anomalous;
  toCopy = to;
  v8 = toCopy;
  if (!anomalousCopy)
  {
    v13 = PLLogCommon(toCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v21 comparedTo:v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_10;
  }

  if (!toCopy)
  {
    v13 = PLLogCommon(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v28 comparedTo:v29, v30, v31, v32, v33, v34];
    }

    goto LABEL_10;
  }

  accumulatedDrainLevel = [anomalousCopy accumulatedDrainLevel];
  [accumulatedDrainLevel doubleValue];
  v11 = v10;

  v12 = [v8 count];
  if (v12 <= 1)
  {
    v13 = PLLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v14 comparedTo:v15, v16, v17, v18, v19, v20];
    }

LABEL_10:

LABEL_11:
    v35 = 0;
    goto LABEL_12;
  }

  v37 = v12;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = v8;
  v39 = [v38 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v54;
    v42 = 0.0;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(v38);
        }

        accumulatedDrainLevel2 = [*(*(&v53 + 1) + 8 * i) accumulatedDrainLevel];
        [accumulatedDrainLevel2 doubleValue];
        v42 = v42 + v45;
      }

      v40 = [v38 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v40);
  }

  else
  {
    v42 = 0.0;
  }

  v46 = v42 / v37;
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
  averageDrainRate = self->_averageDrainRate;
  self->_averageDrainRate = v47;

  if (v46 == 0.0)
  {
    goto LABEL_11;
  }

  v49 = llround(v11 - v46);
  v50 = (v49 / v46 * 100.0);
  if (v49 <= 4 || v50 <= 20)
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  if (v50 < -20)
  {
    v35 = 1;
  }

  else
  {
    v35 = v52;
  }

LABEL_12:

  return v35;
}

- (id)getAnomalousAppsForTargetComparison:(id)comparison comparedTo:(id)to
{
  v142 = *MEMORY[0x277D85DE8];
  comparisonCopy = comparison;
  toCopy = to;
  sortedAppList = [comparisonCopy sortedAppList];
  v9 = sortedAppList;
  if (sortedAppList && [sortedAppList count])
  {
    selfCopy = self;
    v118 = objc_opt_new();
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v112 = v9;
    obj = v9;
    v116 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
    if (!v116)
    {
      goto LABEL_47;
    }

    v115 = *v132;
    v114 = comparisonCopy;
    v119 = toCopy;
    while (1)
    {
      for (i = 0; i != v116; ++i)
      {
        if (*v132 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v131 + 1) + 8 * i);
        appBreakdown = [comparisonCopy appBreakdown];
        v13 = [appBreakdown objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v14 doubleValue];
        v16 = v15;

        if ([toCopy count])
        {
          v117 = v16;
          v19 = 0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          v121 = 0.0;
          v123 = 0.0;
          v125 = 0.0;
          do
          {
            v25 = [toCopy objectAtIndexedSubscript:v19];
            appBreakdown2 = [v25 appBreakdown];
            v27 = [appBreakdown2 objectForKeyedSubscript:v11];
            v28 = [v27 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v28 doubleValue];
            v129 = v29;

            appBreakdown3 = [v25 appBreakdown];
            v31 = [appBreakdown3 objectForKeyedSubscript:v11];
            v32 = [v31 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v32 doubleValue];
            v127 = v33;

            appBreakdown4 = [v25 appBreakdown];
            v35 = [appBreakdown4 objectForKeyedSubscript:v11];
            v36 = [v35 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v36 doubleValue];
            v38 = v37;

            appBreakdown5 = [v25 appBreakdown];
            v40 = [appBreakdown5 objectForKeyedSubscript:v11];
            v41 = [v40 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
            [v41 doubleValue];
            v43 = v42;

            appBreakdown6 = [v25 appBreakdown];
            v45 = [appBreakdown6 objectForKeyedSubscript:v11];
            v46 = [&unk_28714DCB8 objectAtIndexedSubscript:1];
            v47 = [v45 objectForKeyedSubscript:v46];
            [v47 doubleValue];
            v49 = v48;

            if ([(NSArray *)selfCopy->_breakdownFromCache count]- 1 <= v19)
            {
              ++v19;
            }

            else
            {
              v50 = [(NSArray *)selfCopy->_breakdownFromCache objectAtIndexedSubscript:++v19];
              v51 = [v50 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v52 = [v51 objectForKeyedSubscript:v11];
              v53 = [v52 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
              [v53 doubleValue];
              v121 = v121 + v54;

              v55 = [(NSArray *)selfCopy->_breakdownFromCache objectAtIndexedSubscript:v19];
              v56 = [v55 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v57 = [v56 objectForKeyedSubscript:v11];
              v58 = [v57 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
              [v58 doubleValue];
              v123 = v123 + v59;

              v60 = [(NSArray *)selfCopy->_breakdownFromCache objectAtIndexedSubscript:v19];
              v61 = [v60 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v62 = [v61 objectForKeyedSubscript:v11];
              v63 = [v62 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              [v63 doubleValue];
              v125 = v125 + v64;
            }

            v20 = v20 + v129;
            v21 = v21 + v127;
            v22 = v22 + v38;
            v23 = v23 + v43;
            v24 = v24 + v49;

            toCopy = v119;
          }

          while ([v119 count] > v19);
          v18 = v121;
          v65 = v121 == 0.0;
          if (v123 != 0.0)
          {
            v65 = 0;
          }

          v17 = v125;
          v66 = v125 == 0.0 && v65;
          comparisonCopy = v114;
          v16 = v117;
        }

        else
        {
          v24 = 0.0;
          v66 = 1;
          v23 = 0.0;
          v22 = 0.0;
          v21 = 0.0;
          v20 = 0.0;
        }

        if (v16 > v20 / [toCopy count])
        {
          appBreakdown7 = [comparisonCopy appBreakdown];
          v68 = [appBreakdown7 objectForKeyedSubscript:v11];

          v69 = [v68 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
          stringValue = [v69 stringValue];

          v71 = v68;
          v72 = [v68 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
          intValue = [v72 intValue];

          v74 = MEMORY[0x277CBEB38];
          v139[0] = @"Title";
          v139[1] = @"BundleID";
          v130 = stringValue;
          v140[0] = stringValue;
          v140[1] = v11;
          v139[2] = @"AppType";
          v75 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          v140[2] = v75;
          v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:3];
          v128 = [v74 dictionaryWithDictionary:v76];

          appBreakdown8 = [comparisonCopy appBreakdown];
          v78 = [appBreakdown8 objectForKeyedSubscript:v11];
          v79 = [v78 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v79 doubleValue];
          v81 = v80;
          v124 = [toCopy count];

          appBreakdown9 = [comparisonCopy appBreakdown];
          v83 = [appBreakdown9 objectForKeyedSubscript:v11];
          v84 = [v83 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v84 doubleValue];
          v86 = v85;
          v122 = [toCopy count];

          appBreakdown10 = [comparisonCopy appBreakdown];
          v88 = [appBreakdown10 objectForKeyedSubscript:v11];
          v89 = [v88 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
          [v89 doubleValue];
          v91 = v90;
          v126 = [toCopy count];

          appBreakdown11 = [comparisonCopy appBreakdown];
          v93 = [appBreakdown11 objectForKeyedSubscript:v11];
          v94 = [&unk_28714DCD0 objectAtIndexedSubscript:1];
          v95 = [v93 objectForKeyedSubscript:v94];
          [v95 doubleValue];
          v97 = v96;

          v98 = v24 / [toCopy count];
          appBreakdown12 = [comparisonCopy appBreakdown];
          v100 = [appBreakdown12 objectForKeyedSubscript:v11];
          v101 = [v100 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

          if (v97 > v98 && v101)
          {
            v102 = [v101 containsObject:&unk_2871472D8];
            if (v102)
            {
              v103 = 24;
            }

            else
            {
              v103 = 22;
            }

            if ((v102 | v66))
            {
              v104 = -1.0;
              goto LABEL_35;
            }

LABEL_31:
            v104 = v91 - v23 / v126;
            if (v104 >= 600.0 && v101 && ([v101 containsObject:&unk_2871472F0] & 1) != 0)
            {
              v103 = 23;
              goto LABEL_35;
            }

            v104 = v81 - v21 / v124;
            v106 = v128;
            v105 = v130;
            if (v104 < 600.0)
            {
              v104 = v86 - v22 / v122;
              if (v104 >= 600.0)
              {
                v103 = 21;
                goto LABEL_40;
              }

LABEL_43:
              [v118 addObject:v106];

              goto LABEL_44;
            }

            v103 = 20;
          }

          else
          {
            if ((v66 & 1) == 0)
            {
              goto LABEL_31;
            }

            v104 = -1.0;
            v103 = 22;
LABEL_35:
            v106 = v128;
            v105 = v130;
          }

LABEL_40:
          if ([(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy shouldShowAnomalousQualifier:v103 forBundleID:v11])
          {
            v137 = @"qualifierType";
            v107 = [MEMORY[0x277CCABB0] numberWithInteger:v103];
            v138 = v107;
            v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            [v106 addEntriesFromDictionary:v108];

            if (v104 != -1.0)
            {
              v135 = @"qualifierDuration";
              v109 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
              v136 = v109;
              v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
              [v106 addEntriesFromDictionary:v110];
            }
          }

          goto LABEL_43;
        }

LABEL_44:
        if ([v118 count] == 5)
        {
          goto LABEL_47;
        }
      }

      v116 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
      if (!v116)
      {
LABEL_47:

        v9 = v112;
        goto LABEL_49;
      }
    }
  }

  v118 = 0;
LABEL_49:

  return v118;
}

- (id)intervalSummaryItems:(id)items
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v6 = objc_msgSend_storage(responderService);
  v7 = MEMORY[0x277CCACA8];
  startDate = [itemsCopy startDate];
  [startDate timeIntervalSince1970];
  v10 = v9;
  v31 = itemsCopy;
  endDate = [itemsCopy endDate];
  [endDate timeIntervalSince1970];
  v13 = [v7 stringWithFormat:@"SELECT SUM(Energy/1000.0) AS Energy, NodeID, RootNodeID FROM PLAccountingOperator_Aggregate_RootNodeEnergy WHERE timestamp >= %f AND timestamp <= %f AND timeInterval = 3600.0 GROUP BY NodeID ORDER BY Energy DESC LIMIT 30", v10, v12];
  v14 = [v6 entriesForKey:@"PLAccountingOperator_Aggregate_RootNodeEnergy" withQuery:v13];

  getNodeIDToNodeNameMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getNodeIDToNodeNameMap];
  v16 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"NodeID"];
        v23 = [getNodeIDToNodeNameMap objectForKeyedSubscript:v22];

        v24 = [v21 objectForKeyedSubscript:@"Energy"];
        [v24 doubleValue];
        v26 = v25;

        if (v23)
        {
          v37[1] = @"Energy";
          v38[0] = v23;
          v37[0] = @"BundleID";
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
          v38[1] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
          [v16 addObject:v28];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v18);
  }

  v29 = [v16 copy];

  return v29;
}

- (id)sortedAppEnergyArrayFromAppDataMap:(id)map
{
  mapCopy = map;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke;
  v8[3] = &unk_279A5E430;
  v9 = v4;
  v5 = v4;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_37];

  return v6;
}

void __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9[0] = @"BundleID";
  v9[1] = @"AppInfo";
  v10[0] = a2;
  v10[1] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 addObject:v8];
}

uint64_t __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"AppInfo"];
  v6 = [v4 objectForKeyedSubscript:@"AppInfo"];

  if (!v5)
  {
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v7 = [v5 objectForKeyedSubscript:@"EnergyDifference"];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = [v6 objectForKeyedSubscript:@"EnergyDifference"];
  v9 = v8;
  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 != 0;
  }

  if (v7 && v8)
  {
    v10 = [v8 compare:v7];
  }

LABEL_13:

  return v10;
}

- (id)targetDateIntervalWithBucketStartTime:(double)time withEndTime:(double)endTime withIndex:(int)index
{
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:time];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:endTime];
  accumulatedDrainFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
  if (!accumulatedDrainFromCache)
  {
    goto LABEL_10;
  }

  v11 = accumulatedDrainFromCache;
  accumulatedDrainFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
  if ([accumulatedDrainFromCache2 count] <= index || (-[PLBatteryUIResponseTypeDrainComparisonSummary accumulatedDynamicDrainFromCache](self, "accumulatedDynamicDrainFromCache"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v14 = v13;
  indexCopy2 = index;
  accumulatedDynamicDrainFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
  v17 = [accumulatedDynamicDrainFromCache count];

  if (v17 <= index)
  {
LABEL_10:
    v26 = MEMORY[0x277CCACA8];
    [v8 timeIntervalSince1970];
    v28 = v27;
    [v9 timeIntervalSince1970];
    v30 = [v26 stringWithFormat:@"SELECT SUM(Level) AS Level FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f", v28, v29];
    responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v32 = objc_msgSend_storage(responderService);
    v33 = [v32 entriesForKey:@"PLBatteryAgent_Aggregate_UILevel" withQuery:v30];
    firstObject = [v33 firstObject];
    v35 = [firstObject objectForKeyedSubscript:@"Level"];
    [v35 doubleValue];
    v21 = v36;

    v37 = 0;
    v24 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (index < 1)
  {
    accumulatedDynamicDrainFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
    v45 = [accumulatedDynamicDrainFromCache2 objectAtIndexedSubscript:indexCopy2];
    [v45 doubleValue];
    v21 = v46;

    if (_os_feature_enabled_impl() && self->_dynamicBreakdownFromCache)
    {
      dynamicBreakdownFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      v48 = [dynamicBreakdownFromCache objectAtIndexedSubscript:indexCopy2];
      v24 = [v48 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

      dynamicBreakdownFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      goto LABEL_21;
    }
  }

  else
  {
    accumulatedDrainFromCache3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
    indexCopy2 = index;
    v19 = [accumulatedDrainFromCache3 objectAtIndexedSubscript:index];
    [v19 doubleValue];
    v21 = v20;

    if (_os_feature_enabled_impl() && self->_breakdownFromCache)
    {
      breakdownFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
      v23 = [breakdownFromCache objectAtIndexedSubscript:indexCopy2];
      v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

      dynamicBreakdownFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
LABEL_21:
      v30 = dynamicBreakdownFromCache2;
      responderService = [dynamicBreakdownFromCache2 objectAtIndexedSubscript:indexCopy2];
      v37 = [responderService objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
      goto LABEL_11;
    }
  }

  v37 = 0;
  v24 = 0;
LABEL_12:
  v38 = _os_feature_enabled_impl();
  v39 = [PLBatteryUIDrainDateInterval alloc];
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  if (v38)
  {
    v41 = [(PLBatteryUIDrainDateInterval *)v39 initWithStartDate:v8 endDate:v9 accumulatedDrain:v40 sortedAppList:v24 appBreakdown:v37];
  }

  else
  {
    v41 = [(PLBatteryUIDrainDateInterval *)v39 initWithStartDate:v8 endDate:v9 accumulatedDrain:v40];
  }

  v42 = v41;

  return v42;
}

- (id)comparisonDateIntervalsWithTargetStartTime:(double)time withEndTime:(double)endTime withIndex:(int)index
{
  v69 = objc_opt_new();
  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v10 = objc_msgSend_storage(responderService);
  v11 = [v10 firstEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  responderService2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v13 = objc_msgSend_storage(responderService2);
  v14 = [v13 lastEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  entryDate = [v11 entryDate];
  [entryDate timeIntervalSince1970];
  if (v16 >= time || ([v11 entryDate], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_30;
  }

  v18 = v17;
  entryDate2 = [v14 entryDate];

  if (!entryDate2)
  {
LABEL_30:
    v63 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  indexCopy = index;
  v20 = objc_alloc(MEMORY[0x277CCA970]);
  v66 = v11;
  entryDate3 = [v11 entryDate];
  v65 = v14;
  entryDate4 = [v14 entryDate];
  v23 = [v20 initWithStartDate:entryDate3 endDate:entryDate4];
  [v23 duration];
  v25 = (v24 / 86400.0);

  if (v25 >= 1)
  {
    v26 = index + 1;
    if (v25 >= 7)
    {
      v25 = 7;
    }

    v27 = 1;
    selfCopy = self;
    while (1)
    {
      accumulatedDrainFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
      if (!accumulatedDrainFromCache)
      {
        goto LABEL_17;
      }

      v29 = accumulatedDrainFromCache;
      accumulatedDrainFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
      if ([accumulatedDrainFromCache2 count] <= v26)
      {
        break;
      }

      accumulatedDynamicDrainFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
      if (!accumulatedDynamicDrainFromCache)
      {
        break;
      }

      v32 = accumulatedDynamicDrainFromCache;
      accumulatedDynamicDrainFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
      v34 = [accumulatedDynamicDrainFromCache2 count];

      if (v34 <= v26)
      {
        goto LABEL_17;
      }

      if (indexCopy < 1)
      {
        accumulatedDynamicDrainFromCache3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
        v59 = [accumulatedDynamicDrainFromCache3 objectAtIndexedSubscript:v26];
        [v59 doubleValue];
        v38 = v60;

        if (!_os_feature_enabled_impl() || !self->_dynamicBreakdownFromCache)
        {
LABEL_28:
          v50 = 0;
          v41 = 0;
          goto LABEL_19;
        }

        dynamicBreakdownFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
        v62 = [dynamicBreakdownFromCache objectAtIndexedSubscript:v26];
        v41 = [v62 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

        dynamicBreakdownFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      }

      else
      {
        accumulatedDrainFromCache3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
        v36 = [accumulatedDrainFromCache3 objectAtIndexedSubscript:v26];
        [v36 doubleValue];
        v38 = v37;

        if (!_os_feature_enabled_impl() || !self->_breakdownFromCache)
        {
          goto LABEL_28;
        }

        breakdownFromCache = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
        v40 = [breakdownFromCache objectAtIndexedSubscript:v26];
        v41 = [v40 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

        dynamicBreakdownFromCache2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
      }

      v43 = dynamicBreakdownFromCache2;
      responderService3 = [dynamicBreakdownFromCache2 objectAtIndexedSubscript:v26];
      v50 = [responderService3 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
LABEL_18:

LABEL_19:
      v51 = _os_feature_enabled_impl();
      v52 = [PLBatteryUIDrainDateInterval alloc];
      v53 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:time + v27 * -86400.0];
      v54 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:endTime + v27 * -86400.0];
      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
      if (v51)
      {
        v56 = [(PLBatteryUIDrainDateInterval *)v52 initWithStartDate:v53 endDate:v54 accumulatedDrain:v55 sortedAppList:v41 appBreakdown:v50];
      }

      else
      {
        v56 = [(PLBatteryUIDrainDateInterval *)v52 initWithStartDate:v53 endDate:v54 accumulatedDrain:v55];
      }

      v57 = v56;

      [v69 addObject:v57];
      ++v26;
      ++v27;
      --v25;
      self = selfCopy;
      if (!v25)
      {
        goto LABEL_34;
      }
    }

LABEL_17:
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT SUM(Level) AS Level FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f", time + v27 * -86400.0, endTime + v27 * -86400.0];
    responderService3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v45 = objc_msgSend_storage(responderService3);
    v46 = [v45 entriesForKey:@"PLBatteryAgent_Aggregate_UILevel" withQuery:v43];
    firstObject = [v46 firstObject];
    v48 = [firstObject objectForKeyedSubscript:@"Level"];
    [v48 doubleValue];
    v38 = v49;

    v50 = 0;
    v41 = 0;
    goto LABEL_18;
  }

LABEL_34:
  v63 = v69;
  v14 = v65;
  v11 = v66;
LABEL_31:

  return v63;
}

- (id)createAppDataMapForComparisonDateIntervals:(id)intervals currentDateInterval:(id)interval targetTopApps:(id)apps
{
  v179 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  intervalCopy = interval;
  appsCopy = apps;
  v162 = intervalsCopy;
  v9 = [intervalsCopy count];
  if (v9)
  {
    v10 = v9;
    v168 = objc_opt_new();
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v131 = appsCopy;
    v11 = appsCopy;
    v12 = [v11 countByEnumeratingWithState:&v172 objects:v178 count:16];
    if (!v12)
    {
      goto LABEL_29;
    }

    v13 = v12;
    v14 = *v173;
    v167 = *MEMORY[0x277D3F320];
    v132 = v10;
    v165 = *MEMORY[0x277D3F2F8];
    v133 = *v173;
    v134 = v11;
    while (1)
    {
      v15 = 0;
      v163 = v13;
      do
      {
        if (*v173 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v172 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:@"BundleID"];
        v18 = [v16 objectForKeyedSubscript:@"Energy"];
        v19 = v18;
        if (v17)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v170 = v17;
          v21 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getParentBundleIDForBundleID:v17];
          if (v21)
          {
            getBundleIDToDisplayNameMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getBundleIDToDisplayNameMap];
            v23 = [getBundleIDToDisplayNameMap objectForKeyedSubscript:v21];

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
            v25 = [v24 containsObject:v21];

            if (v25)
            {
              v23 = v170;
LABEL_15:
              v161 = v23;
              v164 = v19;
              v26 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v170 inDateInterval:intervalCopy];
              v27 = [v26 objectForKeyedSubscript:@"ScreenOnTime"];
              [v27 doubleValue];
              v29 = v28;

              v30 = [v26 objectForKeyedSubscript:@"BackgroundTime"];
              [v30 doubleValue];
              v156 = v31;

              v160 = v26;
              v32 = [v26 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
              [v32 doubleValue];
              v154 = v33;

              v34 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v170 inDateIntervals:v162];
              v35 = [v34 objectForKeyedSubscript:v167];
              [v35 doubleValue];
              v37 = v36;

              v38 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v170 inDateIntervals:v162];
              v39 = [v38 objectForKeyedSubscript:@"ScreenOnTime"];
              [v39 doubleValue];
              v151 = v40;

              v41 = [v38 objectForKeyedSubscript:@"BackgroundTime"];
              [v41 doubleValue];
              v149 = v42;

              v159 = v38;
              v43 = [v38 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
              [v43 doubleValue];
              v148 = v44;

              [v19 doubleValue];
              v145 = v45;
              v46 = [v168 objectForKeyedSubscript:v21];
              v47 = [v46 objectForKeyedSubscript:@"EnergyDifference"];
              [v47 doubleValue];
              v143 = v48;

              v49 = [v168 objectForKeyedSubscript:v21];
              v50 = [v49 objectForKeyedSubscript:@"ScreenOnTimeDifference"];
              [v50 doubleValue];
              v141 = v51;

              v52 = [v168 objectForKeyedSubscript:v21];
              v53 = [v52 objectForKeyedSubscript:@"BackgroundTimeDifference"];
              [v53 doubleValue];
              v55 = v54;

              v169 = v21;
              v56 = [v168 objectForKeyedSubscript:v21];
              v57 = [v56 objectForKeyedSubscript:@"AudioTimeDifference"];
              [v57 doubleValue];
              v139 = v58;

              v59 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForQualificationID:1 withAppWithBundleID:v170 inDateInterval:intervalCopy];
              v60 = [v59 objectForKeyedSubscript:v165];
              [v60 doubleValue];
              v61 = 0.0;
              v62 = 0.0;
              if (v63 >= 0.0)
              {
                v64 = [v59 objectForKeyedSubscript:v165];
                [v64 doubleValue];
                v62 = v65;
              }

              v137 = v62;
              v158 = v59;

              v66 = [v168 objectForKeyedSubscript:v169];
              v67 = [v66 objectForKeyedSubscript:@"BBPoorEnergy"];
              [v67 doubleValue];
              v136 = v68;

              v69 = [PLBatteryUIDrainDateInterval alloc];
              lastObject = [v162 lastObject];
              startDate = [lastObject startDate];
              firstObject = [v162 firstObject];
              endDate = [firstObject endDate];
              v74 = [(PLBatteryUIDrainDateInterval *)v69 initWithStartDate:startDate endDate:endDate];

              v75 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v170 inDateInterval:v74];
              v76 = [v75 objectForKeyedSubscript:v167];
              [v76 doubleValue];
              if (v77 >= 0.0)
              {
                v78 = [v75 objectForKeyedSubscript:v167];
                [v78 doubleValue];
                v61 = v79;
              }

              v138 = v61;
              v152 = v75;

              v80 = [v168 objectForKeyedSubscript:v169];
              v81 = [v80 objectForKeyedSubscript:@"TotalPastAppEnergy"];
              [v81 doubleValue];
              v135 = v82;

              v83 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForQualificationID:1 withAppWithBundleID:v170 inDateInterval:v74];
              v84 = [v83 objectForKeyedSubscript:v165];
              [v84 doubleValue];
              v85 = 0.0;
              v86 = 0.0;
              if (v87 >= 0.0)
              {
                v88 = [v83 objectForKeyedSubscript:v165];
                [v88 doubleValue];
                v86 = v89;
              }

              v90 = [v168 objectForKeyedSubscript:v169];
              v91 = [v90 objectForKeyedSubscript:@"PastAverageBBPoorEnergy"];
              [v91 doubleValue];
              v93 = v92;

              v94 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v170 inDateInterval:v74];
              v95 = [v94 objectForKeyedSubscript:@"ScreenOnTime"];
              [v95 doubleValue];
              if (v96 >= 0.0)
              {
                v97 = [v94 objectForKeyedSubscript:@"ScreenOnTime"];
                [v97 doubleValue];
                v85 = v98;
              }

              v153 = v74;

              v99 = [v94 objectForKeyedSubscript:@"BackgroundTime"];
              [v99 doubleValue];
              v100 = 0.0;
              if (v101 >= 0.0)
              {
                v102 = [v94 objectForKeyedSubscript:@"BackgroundTime"];
                [v102 doubleValue];
                v100 = v103;
              }

              v104 = v145 - v37 / v132 + v143;
              v105 = v156 - v149 / v132 + v55;
              v146 = v154 - v148 / v132 + v139;
              v150 = v86 + v93;

              v157 = v94;
              v106 = [v168 objectForKeyedSubscript:v169];
              v107 = [v106 objectForKeyedSubscript:@"TotalPastAppUsage"];
              [v107 doubleValue];
              v109 = v85 + v100 + v108;

              v155 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v170 inDateInterval:intervalCopy forRootNodes:&unk_28714DCE8];
              v110 = [v168 objectForKeyedSubscript:v169];
              v111 = [v110 objectForKeyedSubscript:@"totalAudioEnergy"];
              [v111 doubleValue];
              v113 = v112;
              v114 = [v155 objectForKeyedSubscript:v167];
              [v114 doubleValue];
              v116 = v113 + v115;

              v117 = [v168 objectForKeyedSubscript:v169];
              v118 = [v117 objectForKeyedSubscript:@"totalAppEnergyToday"];
              [v118 doubleValue];
              v120 = v119;
              [v19 doubleValue];
              v122 = v120 + v121;

              v176[0] = @"EnergyDifference";
              v144 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
              v177[0] = v144;
              v176[1] = @"ScreenOnTimeDifference";
              v141 = [MEMORY[0x277CCABB0] numberWithDouble:v29 - v151 / v132 + v141];
              v177[1] = v141;
              v176[2] = @"BackgroundTimeDifference";
              v140 = [MEMORY[0x277CCABB0] numberWithDouble:v105];
              v177[2] = v140;
              v176[3] = @"AudioTimeDifference";
              v147 = [MEMORY[0x277CCABB0] numberWithDouble:v146];
              v177[3] = v147;
              v176[4] = @"BBPoorEnergy";
              v136 = [MEMORY[0x277CCABB0] numberWithDouble:v137 + v136];
              v177[4] = v136;
              v176[5] = @"PastAverageBBPoorEnergy";
              v132 = [MEMORY[0x277CCABB0] numberWithDouble:v150 / v132];
              v177[5] = v132;
              v176[6] = @"TotalPastAppEnergy";
              v135 = [MEMORY[0x277CCABB0] numberWithDouble:v138 + v135];
              v177[6] = v135;
              v176[7] = @"TotalPastAppUsage";
              v126 = [MEMORY[0x277CCABB0] numberWithDouble:v109];
              v177[7] = v126;
              v176[8] = @"totalAudioEnergy";
              v127 = [MEMORY[0x277CCABB0] numberWithDouble:v116];
              v177[8] = v127;
              v176[9] = @"totalAppEnergyToday";
              v128 = [MEMORY[0x277CCABB0] numberWithDouble:v122];
              v177[9] = v128;
              v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:10];
              [v168 setObject:v129 forKeyedSubscript:v169];

              v19 = v164;
              v21 = v169;

              v14 = v133;
              v11 = v134;
            }
          }

          v13 = v163;
          v17 = v170;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v172 objects:v178 count:16];
      if (!v13)
      {
LABEL_29:

        appsCopy = v131;
        goto LABEL_31;
      }
    }
  }

  v168 = 0;
LABEL_31:

  return v168;
}

- (id)createAnomalousAppEntriesFrom:(id)from
{
  v83 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v68 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = fromCopy;
  v4 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = v4;
  v70 = *v73;
  v67 = 600.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v73 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v72 + 1) + 8 * i);
      v8 = [v7 objectForKeyedSubscript:{@"BundleID", *&v67}];
      v9 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v10 = [v9 objectForKeyedSubscript:@"EnergyDifference"];
      [v10 doubleValue];
      v12 = v11;

      v13 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v14 = [v13 objectForKeyedSubscript:@"ScreenOnTimeDifference"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v18 = [v17 objectForKeyedSubscript:@"BackgroundTimeDifference"];
      [v18 doubleValue];
      v20 = v19;

      v21 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v22 = [v21 objectForKeyedSubscript:@"AudioTimeDifference"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v26 = [v25 objectForKeyedSubscript:@"BBPoorEnergy"];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v30 = [v29 objectForKeyedSubscript:@"PastAverageBBPoorEnergy"];
      [v30 doubleValue];
      v32 = v31;

      v33 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v34 = [v33 objectForKeyedSubscript:@"TotalPastAppEnergy"];
      [v34 doubleValue];
      if (v35 == 0.0)
      {
        v36 = [v7 objectForKeyedSubscript:@"AppInfo"];
        v37 = [v36 objectForKeyedSubscript:@"TotalPastAppUsage"];
        [v37 doubleValue];
        v39 = v38 == 0.0;
      }

      else
      {
        v39 = 0;
      }

      v40 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v41 = [v40 objectForKeyedSubscript:@"totalAudioEnergy"];
      [v41 doubleValue];
      v43 = v42;

      v44 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v45 = [v44 objectForKeyedSubscript:@"totalAppEnergyToday"];
      [v45 doubleValue];
      v47 = v46;

      getBundleIDToDisplayNameMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getBundleIDToDisplayNameMap];
      v49 = [getBundleIDToDisplayNameMap objectForKeyedSubscript:v8];

      if (v49)
      {
        v50 = &unk_2871472A8;
        if (!v8)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v51 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
        v52 = [v51 containsObject:v8];

        if (!v52)
        {
          v49 = 0;
          goto LABEL_35;
        }

        v49 = v8;
        v50 = &unk_287147350;
        if (!v8)
        {
          goto LABEL_35;
        }
      }

      if (v49 && v12 > 0.0)
      {
        v53 = v28 / v47;
        if (v28 > v32 && v28 / v47 > 0.33)
        {
          v54 = 24;
        }

        else
        {
          v54 = 22;
        }

        v55 = -1.0;
        if (v28 > v32 && v28 / v47 > 0.33 || v39)
        {
          v56 = 0;
        }

        else if (v24 < v67 || (v53 = v43 / v47, v43 / v47 <= 0.33))
        {
          v53 = v67;
          if (v16 >= v67)
          {
            v56 = 0;
            v54 = 20;
            v55 = v16;
          }

          else if (v20 >= v67)
          {
            v56 = 0;
            v54 = 21;
            v55 = v20;
          }

          else
          {
            v54 = 0;
            v56 = 1;
          }
        }

        else
        {
          v56 = 0;
          v54 = 23;
          v55 = v24;
        }

        v57 = MEMORY[0x277CBEB38];
        v80[0] = @"Title";
        v80[1] = @"BundleID";
        v81[0] = v49;
        v81[1] = v8;
        v80[2] = @"AppType";
        v81[2] = v50;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:{3, v53}];
        v59 = [v57 dictionaryWithDictionary:v58];

        if ((v56 & 1) == 0)
        {
          if ([(PLBatteryUIResponseTypeDrainComparisonSummary *)self shouldShowAnomalousQualifier:v54 forBundleID:v8])
          {
            v78 = @"qualifierType";
            v60 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
            v79 = v60;
            v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            [v59 addEntriesFromDictionary:v61];

            if (v55 != -1.0)
            {
              v76 = @"qualifierDuration";
              v62 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
              v77 = v62;
              v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
              [v59 addEntriesFromDictionary:v63];
            }
          }
        }

        [v68 addObject:v59];
      }

LABEL_35:
    }

    v5 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  }

  while (v5);
LABEL_37:

  if ([v68 count])
  {
    v64 = v68;
  }

  else
  {
    v64 = 0;
  }

  v65 = v64;

  return v64;
}

- (id)getNodeIDToNodeNameMap
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  v24 = v3;
  v7 = [v4 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v5, entryKey, v3];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v9 = objc_msgSend_storage(responderService);
  v10 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v30 = @"WHERE";
  v31[0] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v12 = [v9 entriesForKey:v10 withProperties:v11];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        name = [v19 name];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "entryID")}];
        [dictionary setObject:name forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v22 = [dictionary copy];

  return v22;
}

- (id)getUsageTimesForAppWithBundleID:(id)d inDateInterval:(id)interval
{
  v5 = *MEMORY[0x277D3F5B8];
  intervalCopy = interval;
  dCopy = d;
  v19 = [(PLOperator *)PLAppTimeService entryKeyForType:v5 andName:@"AppRunTime"];
  v20 = MEMORY[0x277CCACA8];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v10 = v9;
  endDate = [intervalCopy endDate];

  [endDate timeIntervalSince1970];
  v13 = [v20 stringWithFormat:@"SELECT (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, %@ FROM %@ WHERE %@ LIKE %@ AND timestamp >= %f AND timestamp <= %f  AND timeInterval = 3600.0 GROUP BY %@", @"ScreenOnTime", @"ScreenOnPluggedInTime", @"ScreenOnTime", @"BackgroundTime", @"BackgroundPluggedInTime", @"BackgroundTime", @"BackgroundAudioPlayingTime", @"BackgroundAudioPlayingTimePluggedIn", @"BackgroundAudioPlayingTime", @"BundleID", v19, @"BundleID", dCopy, v10, v12, @"BundleID"];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v15 = objc_msgSend_storage(responderService);
  v16 = [v15 entriesForKey:v19 withQuery:v13];
  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)getUsageTimesForAppWithBundleID:(id)d inDateIntervals:(id)intervals
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  intervalsCopy = intervals;
  v29 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v6 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = intervalsCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = MEMORY[0x277CCACA8];
        startDate = [v12 startDate];
        [startDate timeIntervalSince1970];
        v16 = v15;
        endDate = [v12 endDate];
        [endDate timeIntervalSince1970];
        v19 = [v13 stringWithFormat:@"timestamp >=%f AND timestamp <= %f", v16, v18];

        [v6 addObject:v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v27 = MEMORY[0x277CCACA8];
  v20 = [v6 componentsJoinedByString:@" OR "];
  v21 = [v27 stringWithFormat:@"SELECT (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, %@ FROM %@ WHERE %@ LIKE %@ AND (%@) AND timeInterval = 3600.0 GROUP BY %@", @"ScreenOnTime", @"ScreenOnPluggedInTime", @"ScreenOnTime", @"BackgroundTime", @"BackgroundPluggedInTime", @"BackgroundTime", @"BackgroundAudioPlayingTime", @"BackgroundAudioPlayingTimePluggedIn", @"BackgroundAudioPlayingTime", @"BundleID", v29, @"BundleID", dCopy, v20, @"BundleID"];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v23 = objc_msgSend_storage(responderService);
  v24 = [v23 entriesForKey:v29 withQuery:v21];
  firstObject = [v24 firstObject];

  return firstObject;
}

- (id)getEnergyForQualificationID:(int)d withAppWithBundleID:(id)iD inDateInterval:(id)interval
{
  v28 = *&d;
  v6 = MEMORY[0x277D3F128];
  v7 = *MEMORY[0x277D3F5B8];
  v8 = *MEMORY[0x277D3F2F0];
  intervalCopy = interval;
  iDCopy = iD;
  v11 = [v6 entryKeyForType:v7 andName:v8];
  v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v13 = MEMORY[0x277CCACA8];
  v14 = *MEMORY[0x277D3F3E0];
  v15 = *MEMORY[0x277D3F2F8];
  v16 = *MEMORY[0x277D3F308];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v19 = v18;
  endDate = [intervalCopy endDate];

  [endDate timeIntervalSince1970];
  v22 = [v13 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ QE JOIN %@ N ON QE.NodeID = N.ID WHERE %@ = %d AND %@ LIKE %@ AND QE.timestamp >= %f AND QE.timestamp <= %f AND timeInterval = 3600.0 GROUP BY %@", v14, v15, v15, v11, v12, v16, v28, v14, iDCopy, v19, v21, v14];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v24 = objc_msgSend_storage(responderService);
  v25 = [v24 entriesForKey:v11 withQuery:v22];
  firstObject = [v25 firstObject];

  return firstObject;
}

- (id)getEnergyForAppWithBundleID:(id)d inDateInterval:(id)interval
{
  v6 = MEMORY[0x277D3F128];
  v7 = *MEMORY[0x277D3F5B8];
  v8 = *MEMORY[0x277D3F318];
  intervalCopy = interval;
  dCopy = d;
  v11 = [v6 entryKeyForType:v7 andName:v8];
  v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v13 = MEMORY[0x277CCACA8];
  v14 = *MEMORY[0x277D3F3E0];
  v15 = *MEMORY[0x277D3F320];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v18 = v17;
  endDate = [intervalCopy endDate];

  [endDate timeIntervalSince1970];
  v21 = [v13 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND RNE.timestamp >= %f AND RNE.timestamp <= %f  AND timeInterval = 3600.0 GROUP BY %@", v14, v15, v15, v11, v12, v14, dCopy, v18, v20, v14];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v23 = objc_msgSend_storage(responderService);
  v24 = [v23 entriesForKey:v11 withQuery:v21];
  firstObject = [v24 firstObject];

  return firstObject;
}

- (id)getEnergyForAppWithBundleID:(id)d inDateIntervals:(id)intervals
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  intervalsCopy = intervals;
  v31 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  v32 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v6 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = intervalsCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = MEMORY[0x277CCACA8];
        startDate = [v12 startDate];
        [startDate timeIntervalSince1970];
        v16 = v15;
        endDate = [v12 endDate];
        [endDate timeIntervalSince1970];
        v19 = [v13 stringWithFormat:@"RNE.timestamp >=%f AND RNE.timestamp <= %f", v16, v18];

        [v6 addObject:v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = *MEMORY[0x277D3F3E0];
  v22 = *MEMORY[0x277D3F320];
  v23 = [v6 componentsJoinedByString:@" OR "];
  v24 = [v20 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND (%@) AND timeInterval = 3600.0 GROUP BY %@", v21, v22, v22, v31, v32, v21, dCopy, v23, v21];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v26 = objc_msgSend_storage(responderService);
  v27 = [v26 entriesForKey:v31 withQuery:v24];
  firstObject = [v27 firstObject];

  return firstObject;
}

- (id)getEnergyForAppWithBundleID:(id)d inDateInterval:(id)interval forRootNodes:(id)nodes
{
  v7 = MEMORY[0x277D3F128];
  v8 = *MEMORY[0x277D3F5B8];
  v9 = *MEMORY[0x277D3F318];
  nodesCopy = nodes;
  intervalCopy = interval;
  dCopy = d;
  v13 = [v7 entryKeyForType:v8 andName:v9];
  v14 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v15 = [nodesCopy componentsJoinedByString:{@", "}];

  v16 = MEMORY[0x277CCACA8];
  v17 = *MEMORY[0x277D3F3E0];
  v18 = *MEMORY[0x277D3F320];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v21 = v20;
  endDate = [intervalCopy endDate];

  [endDate timeIntervalSince1970];
  v24 = [v16 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND RNE.timestamp >= %f AND RNE.timestamp <= %f %@ IN (%@) AND timeInterval = 3600.0 GROUP BY %@", v17, v18, v18, v13, v14, v17, dCopy, v21, v23, *MEMORY[0x277D3F330], v15, v17];

  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v26 = objc_msgSend_storage(responderService);
  v27 = [v26 entriesForKey:v13 withQuery:v24];
  firstObject = [v27 firstObject];

  return firstObject;
}

- (id)getBundleIDToDisplayNameMap
{
  v80[1] = *MEMORY[0x277D85DE8];
  bundleIDToDisplayNameMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self bundleIDToDisplayNameMap];

  if (bundleIDToDisplayNameMap)
  {
    bundleIDToDisplayNameMap2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self bundleIDToDisplayNameMap];
    goto LABEL_46;
  }

  v5 = objc_opt_new();
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v7 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871472A8 withComparisonOperation:0];
  selfCopy = self;
  responderService = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v9 = objc_msgSend_storage(responderService);
  v56 = v7;
  v80[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
  v57 = v6;
  v11 = [v9 entriesForKey:v6 withComparisons:v10];

  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeDrainComparisonSummary *)v11 getBundleIDToDisplayNameMap];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v79 count:16];
  v61 = v5;
  v59 = v14;
  if (v15)
  {
    v16 = v15;
    v17 = *v69;
    do
    {
      v18 = 0;
      do
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v68 + 1) + 8 * v18);
        v20 = [v19 objectForKeyedSubscript:@"AppType"];
        intValue = [v20 intValue];

        if (intValue == 101 || ([v19 objectForKeyedSubscript:@"AppBundleId"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v22, v23))
        {
          v25 = [v19 objectForKeyedSubscript:@"AppBundleId"];
          v26 = [v19 objectForKeyedSubscript:@"AppName"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v27 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v27;
            if (getBundleIDToDisplayNameMap_defaultOnce_0 != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_0, block);
            }

            if (getBundleIDToDisplayNameMap_classDebugEnabled_0 == 1)
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v25, v26];
              v29 = MEMORY[0x277D3F178];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeDrainComparisonSummary.m"];
              lastPathComponent = [v30 lastPathComponent];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeDrainComparisonSummary getBundleIDToDisplayNameMap]"];
              [v29 logMessage:v28 fromFile:lastPathComponent fromFunction:v32 fromLineNumber:924];

              v34 = PLLogCommon(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v78 = v28;
                _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = v61;
              v14 = v59;
            }
          }

          [v5 setObject:v26 forKeyedSubscript:v25];
        }

        else
        {
          v25 = PLLogCommon(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v75 getBundleIDToDisplayNameMap];
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v16);
  }

  v35 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v36 = [v35 countByEnumeratingWithState:&v63 objects:v74 count:16];
  v37 = 0x279A5A000uLL;
  if (v36)
  {
    v38 = v36;
    v39 = *v64;
    do
    {
      v40 = 0;
      do
      {
        if (*v64 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v63 + 1) + 8 * v40);
        mayBeBUIVisible = [v41 mayBeBUIVisible];
        if (mayBeBUIVisible)
        {
          if (![*(v37 + 3200) hasScreenPresence:v41])
          {
            goto LABEL_43;
          }

          bundleIdentifier = [v41 bundleIdentifier];
          v44 = [v5 objectForKeyedSubscript:bundleIdentifier];

          if (!v44)
          {
            localizedName = [v41 localizedName];
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v46 = objc_opt_class();
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 3221225472;
              v62[2] = __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke_332;
              v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v62[4] = v46;
              if (getBundleIDToDisplayNameMap_defaultOnce_330 != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_330, v62);
              }

              if (getBundleIDToDisplayNameMap_classDebugEnabled_331 == 1)
              {
                v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier, localizedName];
                v58 = MEMORY[0x277D3F178];
                v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeDrainComparisonSummary.m"];
                lastPathComponent2 = [v48 lastPathComponent];
                v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeDrainComparisonSummary getBundleIDToDisplayNameMap]"];
                [v58 logMessage:v47 fromFile:lastPathComponent2 fromFunction:v50 fromLineNumber:942];

                v51 = v47;
                v53 = PLLogCommon(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v78 = v51;
                  _os_log_debug_impl(&dword_25EE51000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v37 = 0x279A5A000;
              }
            }

            [v61 setObject:localizedName forKeyedSubscript:bundleIdentifier];

            v5 = v61;
          }
        }

        else
        {
          bundleIdentifier = PLLogCommon(mayBeBUIVisible);
          if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v72 getBundleIDToDisplayNameMap];
          }
        }

LABEL_43:
        ++v40;
      }

      while (v38 != v40);
      v38 = [v35 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v38);
  }

  v54 = [v5 copy];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy setBundleIDToDisplayNameMap:v54];

  bundleIDToDisplayNameMap2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)selfCopy bundleIDToDisplayNameMap];

LABEL_46:

  return bundleIDToDisplayNameMap2;
}

void *__76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_0 = result;
  return result;
}

void *__76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke_332(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_331 = result;
  return result;
}

- (id)getInstalledPluginToParentIDMap
{
  v24 = *MEMORY[0x277D85DE8];
  installedPluginToParentIDMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];

  if (installedPluginToParentIDMap)
  {
    installedPluginToParentIDMap2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = +[PLBatteryUIResponseTypeUtilities getInstalledPluginEntries];
    v7 = v6;
    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:@"PluginId"];
            v14 = [v12 objectForKeyedSubscript:@"PluginParentApp"];
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              [v5 setObject:v14 forKeyedSubscript:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v17 = [v5 copy];
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setInstalledPluginToParentIDMap:v17];
    }

    else
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setInstalledPluginToParentIDMap:MEMORY[0x277CBEC10]];
    }

    installedPluginToParentIDMap2 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];
  }

  return installedPluginToParentIDMap2;
}

- (id)getParentBundleIDForBundleID:(id)d
{
  dCopy = d;
  if (dCopy && (-[PLBatteryUIResponseTypeDrainComparisonSummary bundleIDsToSkipMapping](self, "bundleIDsToSkipMapping"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsString:dCopy], v5, (v6 & 1) == 0))
  {
    v8 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
    v7 = [v8 objectForKeyedSubscript:dCopy];

    if (!v7)
    {
      getInstalledPluginToParentIDMap = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getInstalledPluginToParentIDMap];
      v7 = [getInstalledPluginToParentIDMap objectForKeyedSubscript:dCopy];

      if (!v7)
      {
        v7 = dCopy;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldShowAnomalousQualifier:(int64_t)qualifier forBundleID:(id)d
{
  dCopy = d;
  v7 = [dCopy isEqualToString:@"HLS"];
  if (qualifier != 20 && (v7 & 1) != 0 || qualifier == 21 && (-[PLBatteryUIResponseTypeDrainComparisonSummary noBackgroundBundleIDs](self, "noBackgroundBundleIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsString:dCopy], v8, (v9 & 1) != 0) || (objc_msgSend(dCopy, "isEqualToString:", @"PowerOutAccessories") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppAndAppClip") & 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [dCopy isEqualToString:@"EN"] ^ 1;
  }

  return v10;
}

- (id)noBackgroundBundleIDs
{
  if (noBackgroundBundleIDs_onceToken != -1)
  {
    [PLBatteryUIResponseTypeDrainComparisonSummary noBackgroundBundleIDs];
  }

  v3 = noBackgroundBundleIDs_noBackgroundTimeBundleIDs;

  return v3;
}

void __70__PLBatteryUIResponseTypeDrainComparisonSummary_noBackgroundBundleIDs__block_invoke()
{
  v0 = noBackgroundBundleIDs_noBackgroundTimeBundleIDs;
  noBackgroundBundleIDs_noBackgroundTimeBundleIDs = &unk_28714DD00;
}

- (id)bundleIDsToSkipMapping
{
  if (bundleIDsToSkipMapping_onceToken != -1)
  {
    [PLBatteryUIResponseTypeDrainComparisonSummary bundleIDsToSkipMapping];
  }

  v3 = bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation;

  return v3;
}

void __71__PLBatteryUIResponseTypeDrainComparisonSummary_bundleIDsToSkipMapping__block_invoke()
{
  v0 = bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation;
  bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation = &unk_28714DD18;
}

- (void)getBundleIDToDisplayNameMap
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "installedAppEntries=%@", &v2, 0xCu);
}

@end