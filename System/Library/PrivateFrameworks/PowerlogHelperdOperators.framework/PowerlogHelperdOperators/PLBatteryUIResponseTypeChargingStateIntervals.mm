@interface PLBatteryUIResponseTypeChargingStateIntervals
- (_PLTimeIntervalRange)range;
- (id)constructIntervalTuplesFromBattEntries:(id)entries lastBattEntry:(id)entry startOfRange:(id)range endOfRange:(id)ofRange;
- (id)constructIntervalTuplesFromEntries:(id)entries startOfRange:(id)range endOfRange:(id)ofRange allowOverflow:(BOOL)overflow;
- (id)constructSlowChargingIntervals:(id)intervals;
- (id)differenceBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b;
- (id)enforceGraphIntervalPrecedence:(id)precedence;
- (id)filterIntervals:(id)intervals withThreshold:(double)threshold;
- (id)getApplicableSlowChargingIntervalsGivenECIntervals:(id)intervals slowChargingIntervals:(id)chargingIntervals;
- (id)getBattUIEntriesWithKey:(id)key inRange:(_PLTimeIntervalRange)range;
- (id)getChargingStateIntervals:(id)intervals forGraphIntervalType:(signed __int16)type;
- (id)intersectionOfTwoSetsWithMergeThreshold:(int)threshold intervalSetA:(id)a intervalSetB:(id)b;
- (id)mapChargingStateIntervalsToGraphIntervals:(id)intervals;
- (id)mergeAllChargingIntervals:(id)intervals;
- (id)mergeIntervals:(id)intervals withTolerance:(double)tolerance;
- (id)result;
- (id)snapIntervals:(id)intervals;
- (id)unionBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b;
- (int)filterThreshold:(signed __int16)threshold;
- (void)configure:(id)configure;
- (void)getChargingStateIntervalsDictWithRange:(_PLTimeIntervalRange)range addToDailyArrays:(BOOL)arrays;
- (void)organizeStateIntervalsWithRange:(_PLTimeIntervalRange)range lastBattUIEntry:(id)entry chargingIntervalsDict:(id)dict addToDailyArrays:(BOOL)arrays;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeChargingStateIntervals

- (void)configure:(id)configure
{
  v43 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setEnd:v12];

  v14 = PLLogCommon(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    start = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
    v16 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
    v39 = 138412546;
    v40 = start;
    v41 = 2112;
    v42 = v16;
    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "start=%@, end=%@", &v39, 0x16u);
  }

  start2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
  v18 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
  [start2 timeIntervalSince1970];
  v20 = v19;
  [v18 timeIntervalSince1970];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setRange:v20, v21 - v20];

  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setUseBattUIforEC:1];
  v22 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v22 doubleValue];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setBucketSize:?];

  v23 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self setShouldSnapInterval:_os_feature_enabled_impl()];
  v24 = PLLogCommon(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    start3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
    v26 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
    v39 = 138412546;
    v40 = start3;
    v41 = 2112;
    v42 = v26;
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "after system to monotonic conversion: start=%@, end=%@", &v39, 0x16u);
  }

  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v28 = v27;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v30 = (v28 / v29);
  if (v30 < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervalsDictWithRange:0 addToDailyArrays:?];
  }

  else
  {
    v31 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setDailyChargingStateIntervalsDict:v31];

    v32 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setDailyLastBattEntry:v32];

    v33 = 0.0;
    do
    {
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
      v35 = v34;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v37 = v35 + v33 * v36;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervalsDictWithRange:1 addToDailyArrays:v37, v38];
      v33 = v33 + 1.0;
      --v30;
    }

    while (v30);
  }
}

- (void)getChargingStateIntervalsDictWithRange:(_PLTimeIntervalRange)range addToDailyArrays:(BOOL)arrays
{
  arraysCopy = arrays;
  length = range.length;
  location = range.location;
  v49[2] = *MEMORY[0x277D85DE8];
  v43 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  if ([(PLBatteryUIResponseTypeChargingStateIntervals *)self useBattUIforEC])
  {
    v7 = objc_alloc(MEMORY[0x277D3F260]);
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:location];
    v9 = [v7 initWithKey:@"timestamp" withValue:v8 withComparisonOperation:5];

    v10 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145430 withComparisonOperation:3];
    responderService = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
    v12 = objc_msgSend_storage(responderService);
    v49[0] = v9;
    v49[1] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v14 = [v12 lastEntryForKey:v43 withComparisons:v13 isSingleton:0];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setLastBattEntry:v14];
  }

  v42 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Charging"];
  v15 = objc_opt_new();
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setChargingStateIntervalsDict:v15];

  v16 = 1;
  do
  {
    useBattUIforEC = [(PLBatteryUIResponseTypeChargingStateIntervals *)self useBattUIforEC];
    if (v16 == 1 && useBattUIforEC)
    {
      v18 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getBattUIEntriesWithKey:v43 inRange:location, length];
      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v18;
        _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "getBattUIEntriesWithKey=%@", buf, 0xCu);
      }

      chargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      chargingStateIntervalsDict2 = [MEMORY[0x277CCABB0] numberWithShort:1];
      [chargingStateIntervalsDict setObject:v18 forKeyedSubscript:chargingStateIntervalsDict2];
      goto LABEL_16;
    }

    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCABB0] numberWithShort:v16];
    v18 = [v22 stringWithFormat:@"((timestamp BETWEEN %f AND %f) OR (%@ BETWEEN %f AND %f)) AND %@=%@", *&location, location + length, @"timestampEnd", *&location, location + length, @"intervalType", v23];

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v18;
      _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "where=%@", buf, 0xCu);
    }

    responderService2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
    v27 = objc_msgSend_storage(responderService2);
    v44 = v18;
    v45[0] = @"where";
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v45[1] = @"order by";
    v46[0] = v28;
    v46[1] = &unk_287147C08;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    chargingStateIntervalsDict = [v27 entriesForKey:v42 withProperties:v29];

    v31 = PLLogCommon(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = chargingStateIntervalsDict;
      _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "chargingStateEntries: %@", buf, 0xCu);
    }

    if (chargingStateIntervalsDict && [chargingStateIntervalsDict count])
    {
      chargingStateIntervalsDict2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      v32 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      [chargingStateIntervalsDict2 setObject:chargingStateIntervalsDict forKeyedSubscript:v32];

LABEL_16:
    }

    v34 = v16++;
  }

  while (v34 < 0xA);
  v35 = PLLogCommon(v33);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    chargingStateIntervalsDict3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
    *buf = 138412290;
    v48 = chargingStateIntervalsDict3;
    _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_INFO, "charging state intervals dict: %@", buf, 0xCu);
  }

  if (arraysCopy)
  {
    chargingStateIntervalsDict4 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];

    if (chargingStateIntervalsDict4)
    {
      dailyChargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      chargingStateIntervalsDict5 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      v40 = [chargingStateIntervalsDict5 mutableCopy];
      [dailyChargingStateIntervalsDict addObject:v40];
    }
  }
}

- (id)getBattUIEntriesWithKey:(id)key inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v41 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responderService = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
  v9 = objc_msgSend_storage(responderService);
  v10 = [v9 entriesForKey:keyCopy inTimeRange:0 withFilters:{location, length}];

  lastObject = [v10 lastObject];
  v12 = PLLogCommon(lastObject);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = lastObject;
    _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "earliestEntry=%@", buf, 0xCu);
  }

  if (lastObject)
  {
    v13 = [lastObject objectForKeyedSubscript:@"IsCharging"];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp < %f AND %@ = %d", *&location, @"IsCharging", 0];
      responderService2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
      v17 = objc_msgSend_storage(responderService2);
      v36 = v15;
      v37[0] = @"where";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v38[0] = v18;
      v38[1] = &unk_287147C30;
      v37[1] = @"order by";
      v37[2] = @"limit";
      v38[2] = &unk_287145448;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
      v20 = [v17 entriesForKey:keyCopy withProperties:v19];

      firstObject = [v20 firstObject];
      v22 = PLLogCommon(firstObject);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = firstObject;
        _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "latestNonConnectedEntryBeforeRange=%@", buf, 0xCu);
      }

      if (firstObject)
      {
        v23 = [firstObject objectForKeyedSubscript:@"timestamp"];
        [v23 doubleValue];
        v25 = v24;

        v35 = v15;
        v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v25];
        responderService3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
        v28 = objc_msgSend_storage(responderService3);
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
        [v26 timeIntervalSince1970];
        v31 = v30;
        [v29 timeIntervalSince1970];
        v33 = [v28 entriesForKey:keyCopy inTimeRange:0 withFilters:{v31, v32 - v31}];

        v10 = v33;
        v15 = v35;
      }
    }
  }

  return v10;
}

- (void)run
{
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v4 = v3;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v6 = (v4 / v5);
  if (v6 < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
    v20 = v19;
    v22 = v21;
    lastBattEntry = [(PLBatteryUIResponseTypeChargingStateIntervals *)self lastBattEntry];
    chargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self organizeStateIntervalsWithRange:lastBattEntry lastBattUIEntry:chargingStateIntervalsDict chargingIntervalsDict:0 addToDailyArrays:v20, v22];
  }

  else
  {
    v7 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setResultArray:v7];

    for (i = 0; i != v6; ++i)
    {
      dailyChargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      v10 = [dailyChargingStateIntervalsDict count];

      if (v10 <= i)
      {
        break;
      }

      [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
      v12 = v11;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v14 = v12 + i * v13;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v16 = v15;
      dailyChargingStateIntervalsDict2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      v18 = [dailyChargingStateIntervalsDict2 objectAtIndexedSubscript:i];
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self organizeStateIntervalsWithRange:0 lastBattUIEntry:v18 chargingIntervalsDict:1 addToDailyArrays:v14, v16];
    }
  }
}

- (void)organizeStateIntervalsWithRange:(_PLTimeIntervalRange)range lastBattUIEntry:(id)entry chargingIntervalsDict:(id)dict addToDailyArrays:(BOOL)arrays
{
  arraysCopy = arrays;
  length = range.length;
  location = range.location;
  v34 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  dictCopy = dict;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v14 = v13;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __136__PLBatteryUIResponseTypeChargingStateIntervals_organizeStateIntervalsWithRange_lastBattUIEntry_chargingIntervalsDict_addToDailyArrays___block_invoke;
  v25 = &unk_279A5BAF8;
  selfCopy = self;
  v31 = (v14 / v15);
  v16 = dictCopy;
  v29 = location;
  v30 = length;
  v27 = v16;
  v28 = entryCopy;
  v17 = entryCopy;
  [v16 enumerateKeysAndObjectsUsingBlock:&v22];
  selfCopy = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mapChargingStateIntervalsToGraphIntervals:v16, v22, v23, v24, v25, selfCopy];
  v19 = PLLogCommon(selfCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = selfCopy;
    _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "graph charging state intervals: %@", buf, 0xCu);
  }

  if (arraysCopy)
  {
    resultArray = [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultArray];
    v21 = [selfCopy copy];
    [resultArray addObject:v21];
  }

  else
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setResultDict:selfCopy];
  }
}

void __136__PLBatteryUIResponseTypeChargingStateIntervals_organizeStateIntervalsWithRange_lastBattUIEntry_chargingIntervalsDict_addToDailyArrays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) useBattUIforEC] && objc_msgSend(v5, "intValue") == 1)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 72) >= 2)
    {
      v8 = [v6 lastObject];
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
      v11 = [v7 constructIntervalTuplesFromBattEntries:v6 lastBattEntry:v8 startOfRange:v9 endOfRange:v10];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];

      goto LABEL_11;
    }

    v15 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
    v14 = [v7 constructIntervalTuplesFromBattEntries:v6 lastBattEntry:v15 startOfRange:v8 endOfRange:v9];
  }

  else
  {
    v12 = [v5 intValue];
    v13 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
    if (v12 == 9)
    {
      [v13 constructIntervalTuplesFromEntries:v6 startOfRange:v8 endOfRange:v9 allowOverflow:1];
    }

    else
    {
      [v13 constructIntervalTuplesFromEntries:v6 startOfRange:v8 endOfRange:v9];
    }
    v14 = ;
  }

  v10 = v14;
  [*(a1 + 40) setObject:v14 forKeyedSubscript:v5];
LABEL_11:

  v17 = PLLogCommon(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "after converting PLEntry to interval tuples for chargingIntervalType=%@, intervals=%@", &v19, 0x16u);
  }
}

- (id)result
{
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v4 = v3;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  if ((v4 / v5) < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultDict];
  }

  else
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultArray];
  }
  v6 = ;

  return v6;
}

- (_PLTimeIntervalRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t __82__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__sortIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndex:0];
  v6 = [v4 objectAtIndex:0];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)mergeIntervals:(id)intervals withTolerance:(double)tolerance
{
  intervalsCopy = intervals;
  if ([intervalsCopy count])
  {
    v7 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self sortIntervals:intervalsCopy];
    v8 = objc_opt_new();
    firstObject = [v7 firstObject];
    [v8 addObject:firstObject];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__mergeIntervals_withTolerance___block_invoke;
    v12[3] = &unk_279A5C028;
    v10 = v8;
    v13 = v10;
    toleranceCopy = tolerance;
    [v7 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void __97__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__mergeIntervals_withTolerance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v17 = v5;
    v6 = [*(a1 + 32) lastObject];
    v7 = [v17 objectAtIndexedSubscript:0];
    v8 = [v7 intValue] - *(a1 + 40);
    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v9 intValue];

    if (v8 <= v10)
    {
      v11 = [v17 objectAtIndexedSubscript:1];
      v12 = [v11 intValue];
      v13 = [v6 objectAtIndexedSubscript:1];
      v14 = [v13 intValue];

      if (v12 > v14)
      {
        v15 = [v6 mutableCopy];
        v16 = [v17 objectAtIndexedSubscript:1];
        [v15 setObject:v16 atIndexedSubscript:1];

        [*(a1 + 32) removeLastObject];
        [*(a1 + 32) addObject:v15];
      }
    }

    else
    {
      [*(a1 + 32) addObject:v17];
    }

    v5 = v17;
  }
}

- (id)filterIntervals:(id)intervals withThreshold:(double)threshold
{
  intervalsCopy = intervals;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__filterIntervals_withThreshold___block_invoke;
  v9[3] = &unk_279A5C050;
  thresholdCopy = threshold;
  v7 = v6;
  v10 = v7;
  [intervalsCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __98__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__filterIntervals_withThreshold___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:1];
  v4 = [v3 intValue];
  v5 = [v7 objectAtIndexedSubscript:0];
  v6 = (v4 - [v5 intValue]);

  if (*(a1 + 40) <= v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)intersectionOfTwoSetsWithMergeThreshold:(int)threshold intervalSetA:(id)a intervalSetB:(id)b
{
  v58[2] = *MEMORY[0x277D85DE8];
  aCopy = a;
  bCopy = b;
  v52 = objc_opt_new();
  v54 = [aCopy count];
  v55 = [bCopy count];
  if (v54 && v55)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v56 = v11;
      v57 = v10;
      v12 = [aCopy objectAtIndexedSubscript:v9];
      v13 = [v12 objectAtIndexedSubscript:0];
      intValue = [v13 intValue];

      v15 = [bCopy objectAtIndexedSubscript:v8];
      v16 = [v15 objectAtIndexedSubscript:0];
      intValue2 = [v16 intValue];

      if (intValue <= intValue2)
      {
        v18 = intValue2;
      }

      else
      {
        v18 = intValue;
      }

      v19 = [aCopy objectAtIndexedSubscript:v9];
      v20 = [v19 objectAtIndexedSubscript:1];
      intValue3 = [v20 intValue];

      v22 = [bCopy objectAtIndexedSubscript:v8];
      v23 = [v22 objectAtIndexedSubscript:1];
      intValue4 = [v23 intValue];

      if (intValue3 >= intValue4)
      {
        v25 = intValue4;
      }

      else
      {
        v25 = intValue3;
      }

      if (v18 < v25)
      {
        v26 = [aCopy objectAtIndexedSubscript:v9];
        v27 = [v26 objectAtIndexedSubscript:0];
        intValue5 = [v27 intValue];

        v29 = [bCopy objectAtIndexedSubscript:v8];
        v30 = [v29 objectAtIndexedSubscript:0];
        intValue6 = [v30 intValue];

        if (intValue5 >= intValue6)
        {
          v32 = intValue6;
        }

        else
        {
          v32 = intValue5;
        }

        if (v18 - threshold >= v32)
        {
          v32 = v18;
        }

        v53 = v32;
        v33 = [aCopy objectAtIndexedSubscript:v9];
        v34 = [v33 objectAtIndexedSubscript:1];
        intValue7 = [v34 intValue];

        v36 = [bCopy objectAtIndexedSubscript:v8];
        v37 = [v36 objectAtIndexedSubscript:1];
        intValue8 = [v37 intValue];

        if (intValue7 <= intValue8)
        {
          v39 = intValue8;
        }

        else
        {
          v39 = intValue7;
        }

        if ((v25 + threshold) <= v39)
        {
          v40 = v25;
        }

        else
        {
          v40 = v39;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithInt:v53];
        v58[0] = v41;
        v42 = [MEMORY[0x277CCABB0] numberWithInt:v40];
        v58[1] = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        [v52 addObject:v43];
      }

      v44 = [aCopy objectAtIndexedSubscript:v9];
      v45 = [v44 objectAtIndexedSubscript:1];
      intValue9 = [v45 intValue];
      v47 = [bCopy objectAtIndexedSubscript:v8];
      v48 = [v47 objectAtIndexedSubscript:1];
      intValue10 = [v48 intValue];

      if (intValue9 < intValue10)
      {
        v8 = v56;
      }

      else
      {
        v8 = v56 + 1;
      }

      if (intValue9 >= intValue10)
      {
        v9 = v57;
      }

      else
      {
        v9 = v57 + 1;
      }

      if (v54 <= v9)
      {
        break;
      }

      v10 = v9;
      v11 = v8;
    }

    while (v55 > v8);
  }

  return v52;
}

- (id)differenceBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b
{
  v27[2] = *MEMORY[0x277D85DE8];
  setCopy = set;
  bCopy = b;
  if ([setCopy count] && objc_msgSend(bCopy, "count"))
  {
    firstObject = [setCopy firstObject];
    v9 = [firstObject objectAtIndexedSubscript:0];

    lastObject = [setCopy lastObject];
    v11 = [lastObject objectAtIndexedSubscript:1];

    v12 = objc_opt_new();
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v13 = v9;
    v26 = v13;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __120__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__differenceBetweenSetAndIntersectingSet_intervalSetB___block_invoke;
    v18[3] = &unk_279A5C078;
    v20 = &v21;
    v14 = v12;
    v19 = v14;
    [bCopy enumerateObjectsUsingBlock:v18];
    if (([v22[5] isEqualToNumber:v11] & 1) == 0)
    {
      v27[0] = v22[5];
      v27[1] = v11;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v14 addObject:v15];
    }

    v16 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:setCopy intervalSetB:v14];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = setCopy;
  }

  return v16;
}

void __120__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__differenceBetweenSetAndIntersectingSet_intervalSetB___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 objectAtIndexedSubscript:0];
  LOBYTE(v4) = [v4 isEqualToNumber:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v12[0] = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v3 objectAtIndexedSubscript:0];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v6 addObject:v8];
  }

  v9 = [v3 objectAtIndexedSubscript:1];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)unionBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b
{
  v44[2] = *MEMORY[0x277D85DE8];
  setCopy = set;
  bCopy = b;
  v7 = [bCopy count];
  v8 = setCopy;
  if (v7 && (v9 = [setCopy count], v8 = bCopy, v9))
  {
    v10 = objc_opt_new();
    v11 = [setCopy count];
    v41 = [bCopy count];
    if (v11 | v41)
    {
      v12 = 0;
      v13 = 0;
      v42 = 0;
      v43 = 0;
      v39 = v11;
      v40 = setCopy;
      do
      {
        if (v11 == v13)
        {
          v14 = [bCopy objectAtIndexedSubscript:v12];
          ++v43;
        }

        else
        {
          v15 = [setCopy objectAtIndexedSubscript:v13];
          v14 = v15;
          if (v41 == v12)
          {
            ++v42;
          }

          else
          {
            v16 = [v15 objectAtIndexedSubscript:0];
            intValue = [v16 intValue];
            v18 = [bCopy objectAtIndexedSubscript:v12];
            v19 = [v18 objectAtIndexedSubscript:0];
            intValue2 = [v19 intValue];

            if (intValue >= intValue2)
            {
              v14 = [bCopy objectAtIndexedSubscript:v12];
              ++v43;
              setCopy = v40;
            }

            else
            {
              setCopy = v40;
              v14 = [v40 objectAtIndexedSubscript:v13];
              ++v42;
            }

            v11 = v39;
          }
        }

        if ([v10 count] && (objc_msgSend(v10, "lastObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectAtIndexedSubscript:", 1), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "intValue"), objc_msgSend(v14, "objectAtIndexedSubscript:", 0), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "intValue"), v24, v22, v21, v23 >= v25))
        {
          v26 = [v14 objectAtIndexedSubscript:1];
          intValue3 = [v26 intValue];

          lastObject = [v10 lastObject];
          v29 = [lastObject objectAtIndexedSubscript:1];
          intValue4 = [v29 intValue];

          if (intValue3 <= intValue4)
          {
            v31 = intValue4;
          }

          else
          {
            v31 = intValue3;
          }

          lastObject2 = [v10 lastObject];
          v33 = [lastObject2 objectAtIndexedSubscript:0];
          intValue5 = [v33 intValue];

          [v10 removeLastObject];
          v35 = [MEMORY[0x277CCABB0] numberWithInt:intValue5];
          v44[0] = v35;
          v36 = [MEMORY[0x277CCABB0] numberWithInt:v31];
          v44[1] = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
          [v10 addObject:v37];
        }

        else
        {
          [v10 addObject:v14];
        }

        v13 = v42;
        v12 = v43;
      }

      while (v11 > v42 || v41 > v43);
    }
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (id)constructIntervalTuplesFromEntries:(id)entries startOfRange:(id)range endOfRange:(id)ofRange allowOverflow:(BOOL)overflow
{
  rangeCopy = range;
  ofRangeCopy = ofRange;
  entriesCopy = entries;
  v12 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke;
  v21[3] = &unk_279A5E938;
  v22 = rangeCopy;
  v23 = monotonicDate;
  overflowCopy = overflow;
  v24 = ofRangeCopy;
  v14 = v12;
  v25 = v14;
  v15 = ofRangeCopy;
  v16 = monotonicDate;
  v17 = rangeCopy;
  [entriesCopy enumerateObjectsUsingBlock:v21];

  v18 = v25;
  v19 = v14;

  return v14;
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 entryDate];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v6 = [v4 numberWithDouble:?];

  v7 = [v3 objectForKeyedSubscript:@"timestampEnd"];

  if (v7)
  {
    v9 = PLLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_1(v3);
    }

    v10 = [v3 objectForKeyedSubscript:@"timestampEnd"];
    v11 = MEMORY[0x277CCABB0];
    [v10 timeIntervalSinceDate:*(a1 + 32)];
    v12 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    [*(a1 + 40) timeIntervalSinceDate:*(a1 + 32)];
    v12 = [v13 numberWithDouble:?];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [v6 intValue];
    [*(a1 + 32) timeIntervalSinceDate:*(a1 + 32)];
    if (v16 <= v15)
    {
      v16 = v15;
    }

    v17 = [v14 numberWithDouble:v16];

    v6 = v17;
  }

  v18 = MEMORY[0x277CCABB0];
  v19 = [v6 intValue];
  v20 = [v12 intValue];
  if (v19 <= v20)
  {
    v19 = v20;
  }

  [*(a1 + 48) timeIntervalSinceDate:*(a1 + 32)];
  if (v21 > v19)
  {
    v21 = v19;
  }

  v22 = [v18 numberWithDouble:v21];

  v25[0] = v6;
  v25[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v24 = PLLogCommon(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_2(v23, v3, v24);
  }

  [*(a1 + 56) addObject:v23];
}

- (id)constructIntervalTuplesFromBattEntries:(id)entries lastBattEntry:(id)entry startOfRange:(id)range endOfRange:(id)ofRange
{
  v68 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  entryCopy = entry;
  rangeCopy = range;
  v10 = PLLogCommon(rangeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Creating charging intervals", buf, 2u);
  }

  v11 = objc_opt_new();
  v53 = v11;
  if (entryCopy)
  {
    v12 = [entryCopy objectForKeyedSubscript:@"IsCharging"];
    LODWORD(v13) = [v12 BOOLValue];

    v15 = PLLogCommon(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeChargingIntervals *)v13 run];
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v16 = PLLogCommon(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeChargingStateIntervals(Utilities) constructIntervalTuplesFromBattEntries:entriesCopy lastBattEntry:? startOfRange:? endOfRange:?];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  reverseObjectEnumerator = [entriesCopy reverseObjectEnumerator];
  v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v51 = entryCopy;
    v52 = entriesCopy;
    v20 = *v56;
    v21 = 0.0;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v23 = *(*(&v55 + 1) + 8 * i);
        v24 = [v23 objectForKeyedSubscript:{@"Level", v51, v52}];
        intValue = [v24 intValue];

        if (intValue < 0)
        {
          v32 = PLLogCommon(v26);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeChargingIntervals *)v65 run:v23];
          }
        }

        else
        {
          v27 = [v23 objectForKeyedSubscript:@"IsCharging"];
          bOOLValue = [v27 BOOLValue];

          if ((v13 & 1) == bOOLValue)
          {
            continue;
          }

          entryDate = [v23 entryDate];
          [entryDate timeIntervalSinceDate:rangeCopy];
          v31 = v30;

          if (bOOLValue)
          {
            LOBYTE(v13) = 1;
            v21 = v31;
            continue;
          }

          v33 = [MEMORY[0x277CCABB0] numberWithInt:v21];
          v64[0] = v33;
          v34 = [MEMORY[0x277CCABB0] numberWithInt:v31];
          v64[1] = v34;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];

          v13 = PLLogCommon([v53 addObject:v32]);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v32 objectAtIndexedSubscript:0];
            v36 = [v32 objectAtIndexedSubscript:1];
            *buf = 138412546;
            v61 = v35;
            v62 = 2112;
            v63 = v36;
            _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "Created charging interval: [%@ %@]", buf, 0x16u);
          }

          LOBYTE(v13) = 0;
        }
      }

      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (!v19)
      {

        entryCopy = v51;
        entriesCopy = v52;
        if (v13)
        {
          v38 = v21;
          goto LABEL_31;
        }

        goto LABEL_38;
      }
    }
  }

  if (v13)
  {
    v38 = 0;
LABEL_31:
    firstObject = [entriesCopy firstObject];
    v40 = firstObject;
    if (firstObject)
    {
      v41 = PLLogCommon(firstObject);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeChargingIntervals *)v41 run];
      }

      entryDate2 = [v40 entryDate];
      [entryDate2 timeIntervalSinceDate:rangeCopy];
      v44 = v43;

      v45 = [MEMORY[0x277CCABB0] numberWithInt:v38];
      v59[0] = v45;
      v46 = [MEMORY[0x277CCABB0] numberWithInt:v44];
      v59[1] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];

      v48 = PLLogCommon([v53 addObject:v47]);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v47 withDataRange:?];
      }
    }
  }

LABEL_38:
  v49 = PLLogCommon(v37);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v61 = v53;
    _os_log_impl(&dword_25EE51000, v49, OS_LOG_TYPE_INFO, "Charging intervals: %@", buf, 0xCu);
  }

  return v53;
}

- (id)getApplicableSlowChargingIntervalsGivenECIntervals:(id)intervals slowChargingIntervals:(id)chargingIntervals
{
  intervalsCopy = intervals;
  chargingIntervalsCopy = chargingIntervals;
  v36 = chargingIntervalsCopy;
  if ([intervalsCopy count] && objc_msgSend(chargingIntervalsCopy, "count"))
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__14;
    v42 = __Block_byref_object_dispose__14;
    v43 = objc_opt_new();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getApplicableSlowChargingIntervalsGivenECIntervals_slowChargingIntervals___block_invoke;
    v37[3] = &unk_279A5E960;
    v37[4] = &v38;
    [intervalsCopy enumerateObjectsUsingBlock:v37];
    v7 = [intervalsCopy count];
    v35 = [chargingIntervalsCopy count];
    v34 = objc_opt_new();
    if (v7 && v35)
    {
      v8 = 0;
      v32 = 0;
      v33 = 0;
      LODWORD(v9) = 0;
      do
      {
        v9 = v9;
        while (1)
        {
          v10 = [intervalsCopy objectAtIndexedSubscript:{v8, v32}];
          v11 = [v10 objectAtIndexedSubscript:0];
          intValue = [v11 intValue];
          v13 = [intervalsCopy objectAtIndexedSubscript:v8];
          v14 = [v13 objectAtIndexedSubscript:1];
          v15 = intValue - [v14 intValue];

          v16 = v15 >= 0 ? v15 : -v15;
          if (v16 > 0x12B)
          {
            break;
          }

          v8 = ++v9;
          if (v7 <= v9)
          {
            goto LABEL_20;
          }
        }

        v17 = [v39[5] objectAtIndexedSubscript:v8];
        v18 = [v17 objectAtIndexedSubscript:0];
        intValue2 = [v18 intValue];
        v20 = [v36 objectAtIndexedSubscript:v33];
        v21 = [v20 objectAtIndexedSubscript:1];
        intValue3 = [v21 intValue];

        if (intValue2 >= intValue3)
        {
          v32 = (v32 + 1);
        }

        else
        {
          v23 = [v39[5] objectAtIndexedSubscript:v8];
          v24 = [v23 objectAtIndexedSubscript:1];
          intValue4 = [v24 intValue];
          v26 = [v36 objectAtIndexedSubscript:v33];
          v27 = [v26 objectAtIndexedSubscript:0];
          intValue5 = [v27 intValue];

          if (intValue4 > intValue5)
          {
            v29 = [intervalsCopy objectAtIndexedSubscript:v8];
            [v34 addObject:v29];
          }

          LODWORD(v9) = v9 + 1;
        }

        if (v7 <= v9)
        {
          break;
        }

        v8 = v9;
        v33 = v32;
      }

      while (v35 > v32);
    }

LABEL_20:
    _Block_object_dispose(&v38, 8);

    v30 = v34;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getApplicableSlowChargingIntervalsGivenECIntervals_slowChargingIntervals___block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v4 intValue];

  v6 = [v3 objectAtIndexedSubscript:0];
  v7 = [v6 intValue] + 60.0;

  v8 = v5;
  if (v7 <= v5)
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [v3 objectAtIndexedSubscript:1];
  v11 = [v10 intValue];

  v12 = [v3 objectAtIndexedSubscript:0];

  v13 = [v12 intValue] + 300.0;
  v14 = v11;
  if (v13 <= v11)
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v19[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v19[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v18];
}

- (id)constructSlowChargingIntervals:(id)intervals
{
  v31 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v5 = PLLogCommon(intervalsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = intervalsCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "chargingStateIntervals=%@", buf, 0xCu);
  }

  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "externalConnectedIntervals=%@", buf, 0xCu);
  }

  v8 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:2];
  v9 = PLLogCommon(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "allSlowChargingIntervals=%@", buf, 0xCu);
  }

  v10 = _os_feature_enabled_impl();
  v11 = 60.0;
  if (v10)
  {
    v11 = 900.0;
  }

  v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v8 withTolerance:v11];
  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "allSlowChargingIntervalsMerged=%@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEA60] array];
  if ([v12 count])
  {
    v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getApplicableSlowChargingIntervalsGivenECIntervals:v6 slowChargingIntervals:v12];

    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "sortedAndFilteredSlowChargingIntervals=%@", buf, 0xCu);
    }
  }

  else
  {
    v15 = array;
  }

  v18 = objc_opt_new();
  if ([v15 count])
  {
    v19 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
    v20 = [v19 numberWithDouble:?];
    v27[0] = &unk_287146D98;
    v27[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v28 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

    v23 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v22 intervalSetB:v15];

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Found slow charging intervals=%@", buf, 0xCu);
    }

    [v18 setObject:v23 forKeyedSubscript:&unk_287146DB0];
  }

  else
  {
    v23 = v15;
  }

  return v18;
}

- (id)snapIntervals:(id)intervals
{
  v44 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v37 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = intervalsCopy;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v36 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = MEMORY[0x277CBEAA8];
        v9 = [v7 objectAtIndexedSubscript:0];
        [v9 doubleValue];
        v10 = [v8 dateWithTimeIntervalSince1970:?];
        convertFromMonotonicToSystem = [v10 convertFromMonotonicToSystem];
        [convertFromMonotonicToSystem timeIntervalSince1970];
        v13 = v12;

        v14 = MEMORY[0x277CBEAA8];
        v15 = [v7 objectAtIndexedSubscript:1];
        [v15 doubleValue];
        v16 = [v14 dateWithTimeIntervalSince1970:?];
        convertFromMonotonicToSystem2 = [v16 convertFromMonotonicToSystem];
        [convertFromMonotonicToSystem2 timeIntervalSince1970];
        v19 = v18;

        v20 = v19 % 3600;
        v21 = v13 - (v13 % 3600);
        if (v20 <= 0)
        {
          v22 = v19 - v20;
        }

        else
        {
          v22 = v19 - v20 + 3600.0;
        }

        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
        convertFromSystemToMonotonic = [v23 convertFromSystemToMonotonic];
        [convertFromSystemToMonotonic timeIntervalSince1970];
        v26 = v25;

        v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
        convertFromSystemToMonotonic2 = [v27 convertFromSystemToMonotonic];
        [convertFromSystemToMonotonic2 timeIntervalSince1970];
        v30 = v29;

        v31 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v42[0] = v31;
        v32 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
        v42[1] = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        [v37 addObject:v33];
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  return v37;
}

- (id)mergeAllChargingIntervals:(id)intervals
{
  v27 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v4 = objc_opt_new();
  v5 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146DC8];
  v7 = [v6 count];
  if (v7)
  {
    v8 = PLLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "adding paused charging intervals =%@", &v25, 0xCu);
    }

    [v4 setObject:v6 forKeyedSubscript:@"PLBatteryUIPausedChargingIntervalsKey"];
  }

  v9 = [intervalsCopy objectForKeyedSubscript:&unk_287146DB0];
  v10 = [v9 count];
  if (v10)
  {
    v11 = PLLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v9;
      _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "adding slow charging intervals =%@", &v25, 0xCu);
    }

    [v4 setObject:v9 forKeyedSubscript:@"PLBatteryUIChargingSpeedIntervalsKey"];
  }

  v12 = [intervalsCopy objectForKeyedSubscript:&unk_287146DE0];
  v13 = [v12 count];
  if (v13)
  {
    v14 = PLLogCommon(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "adding paused slow charging intervals =%@", &v25, 0xCu);
    }

    [v4 setObject:v12 forKeyedSubscript:@"PLBatteryUIPausedSlowChargingIntervalsKey"];
  }

  v15 = [intervalsCopy objectForKeyedSubscript:&unk_287146DF8];
  v16 = [v15 count];
  if (v16)
  {
    v17 = PLLogCommon(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v15;
      _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "adding stopped charging intervals =%@", &v25, 0xCu);
    }

    [v4 setObject:v15 forKeyedSubscript:@"PLBatteryUIStoppedChargingIntervalsKey"];
  }

  v18 = [intervalsCopy objectForKeyedSubscript:&unk_287146E10];
  v19 = [v18 count];
  if (v19)
  {
    v20 = PLLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v18;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "adding stopped slow charging intervals =%@", &v25, 0xCu);
    }

    [v4 setObject:v18 forKeyedSubscript:@"PLBatteryUIStoppedSlowChargingIntervalsKey"];
  }

  v21 = [v5 count];
  if (v21)
  {
    v22 = PLLogCommon(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v5;
      _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "adding edited charging intervals =%@", &v25, 0xCu);
    }

    v21 = [v4 setObject:v5 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];
  }

  v23 = PLLogCommon(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = v4;
    _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "charging intervals result =%@", &v25, 0xCu);
  }

  return v4;
}

- (id)enforceGraphIntervalPrecedence:(id)precedence
{
  *&v51[5] = *MEMORY[0x277D85DE8];
  v4 = [precedence mutableCopy];
  v5 = v4;
  v6 = 1;
  v7 = 0x277CCA000uLL;
  do
  {
    v8 = (v6 + 1);
    v49 = v6;
    v47 = v6;
    v46 = v6 + 1;
    do
    {
      v9 = PLLogCommon(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v51[0] = v49;
        LOWORD(v51[1]) = 1024;
        *(&v51[1] + 2) = v8;
        _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "precedence lower=%d higher=%d", buf, 0xEu);
      }

      v10 = [*(v7 + 2992) numberWithInt:v49];
      v11 = [v5 objectForKeyedSubscript:v10];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v11;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "lowerPrecedenceIntervals from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v14 = [*(v7 + 2992) numberWithInt:v8];
      v15 = [v5 objectForKeyedSubscript:v14];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v15;
        _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "higherPrecedenceIntervals from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v18 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSetsWithMergeThreshold:[(PLBatteryUIResponseTypeChargingStateIntervals *)self filterThreshold:v47] intervalSetA:v11 intervalSetB:v15];
      v19 = [v18 count];
      if (v19)
      {
        v20 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self unionBetweenSetAndIntersectingSet:v18 intervalSetB:v15];
        v21 = [*(v7 + 2992) numberWithInt:v8];
        [v5 setObject:v20 forKeyedSubscript:v21];

        v23 = PLLogCommon(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [*(v7 + 2992) numberWithInt:v8];
          v25 = [v5 objectForKeyedSubscript:v24];
          *buf = 138412290;
          *v51 = v25;
          _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "higher precedence after merging=%@", buf, 0xCu);
        }
      }

      v26 = PLLogCommon(v19);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v18;
        _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "lowerIntersectsHigher from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v27 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self differenceBetweenSetAndIntersectingSet:v11 intervalSetB:v18];
      v28 = PLLogCommon(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v27;
        _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_INFO, "lowerWithoutHigher from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      if ([v27 count])
      {
        v29 = [*(v7 + 2992) numberWithInt:v49];
        [v5 objectForKeyedSubscript:v29];
        v48 = v18;
        v30 = v11;
        v31 = v5;
        selfCopy = self;
        v34 = v33 = v7;
        v35 = [(PLBatteryUIResponseTypeChargingStateIntervals *)selfCopy intersectionOfTwoSets:v34 intervalSetB:v27];

        v36 = [*(v33 + 2992) numberWithInt:v49];
        v37 = [v31 objectForKeyedSubscript:v36];

        v38 = [*(v33 + 2992) numberWithInt:v49];
        v39 = v37 == 0;
        v7 = v33;
        self = selfCopy;
        v5 = v31;
        v11 = v30;
        v18 = v48;
        if (v39)
        {
          v40 = v27;
        }

        else
        {
          v40 = v35;
        }

        v41 = v5;
      }

      else
      {
        v35 = objc_opt_new();
        v38 = [*(v7 + 2992) numberWithInt:v49];
        v41 = v5;
        v40 = v35;
      }

      [v41 setObject:v40 forKeyedSubscript:v38];

      v8 = (v8 + 1);
    }

    while (v8 != 7);
    v6 = v46;
  }

  while (v46 != 6);
  v42 = [*(v7 + 2992) numberWithInt:6];
  v43 = [v5 objectForKeyedSubscript:v42];

  v44 = [*(v7 + 2992) numberWithInt:6];
  [v5 setObject:v43 forKeyedSubscript:v44];

  return v5;
}

- (id)mapChargingStateIntervalsToGraphIntervals:(id)intervals
{
  v54 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v5 = PLLogCommon(intervalsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = intervalsCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "chargingStateIntervals=%@", buf, 0xCu);
  }

  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "externalConnectedIntervals=%@", buf, 0xCu);
  }

  v8 = _os_feature_enabled_impl();
  v9 = 60.0;
  if (v8)
  {
    v9 = 900.0;
  }

  v10 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v6 withTolerance:v9];
  v11 = PLLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v10;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "allExternalConnectedIntervalsMerged=%@", buf, 0xCu);
  }

  v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v10 withThreshold:60.0];
  v46 = v10;
  v47 = v6;
  if ([(PLBatteryUIResponseTypeChargingStateIntervals *)self shouldSnapInterval])
  {
    v13 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self snapIntervals:v12];

    if (_os_feature_enabled_impl())
    {
      v14 = 900.0;
    }

    else
    {
      v14 = 60.0;
    }

    v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v13 withTolerance:v14];

    v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v15 withThreshold:60.0];
  }

  [intervalsCopy setObject:v12 forKeyedSubscript:&unk_287146D80];
  v16 = objc_opt_new();
  v17 = MEMORY[0x277CCABB0];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  [v17 numberWithDouble:?];
  v50 = v49 = &unk_287146D98;
  v45 = v50;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:2];
  v51 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];

  v44 = v19;
  v20 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v19 intervalSetB:v12];

  v21 = PLLogCommon([v16 setObject:v20 forKeyedSubscript:&unk_287146D80]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v16;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_INFO, "chargingEntries after slow charging determination is %@=", buf, 0xCu);
  }

  v22 = v20;
  v23 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:3];
  v48 = intervalsCopy;
  v24 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:4];
  v43 = v23;
  v25 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v23 withThreshold:900.0];
  v42 = v24;
  v26 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v24 withThreshold:900.0];
  if (_os_feature_enabled_impl())
  {
    v27 = 900.0;
  }

  else
  {
    v27 = 60.0;
  }

  v41 = v25;
  v28 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v25 withTolerance:v27];
  if (_os_feature_enabled_impl())
  {
    v29 = 900.0;
  }

  else
  {
    v29 = 60.0;
  }

  v40 = v26;
  v30 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v26 withTolerance:v29];
  v39 = v28;
  v31 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v22 intervalSetB:v28];
  [v16 setObject:v31 forKeyedSubscript:&unk_287146DC8];
  v32 = [v16 objectForKeyedSubscript:&unk_287146DB0];
  v33 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v32 intervalSetB:v31];
  if ([v33 count])
  {
    [v16 setObject:v33 forKeyedSubscript:&unk_287146DE0];
  }

  v34 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v22 intervalSetB:v30];
  [v16 setObject:v34 forKeyedSubscript:&unk_287146DF8];
  v35 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v32 intervalSetB:v34];
  if ([v35 count])
  {
    [v16 setObject:v35 forKeyedSubscript:&unk_287146E10];
  }

  v36 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self enforceGraphIntervalPrecedence:v16];

  v37 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeAllChargingIntervals:v36];

  return v37;
}

- (id)getChargingStateIntervals:(id)intervals forGraphIntervalType:(signed __int16)type
{
  intervalsCopy = intervals;
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke;
  v12[3] = &unk_279A5E988;
  typeCopy = type;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [intervalsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v9 = (a1 + 48);
  v8 = *(a1 + 48);
  if (v8 > 2)
  {
    if (v8 == 4)
    {
      if (![*(a1 + 32) isStoppedChargingIntervalType:{objc_msgSend(v5, "intValue")}])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v8 == 3)
    {
      if (![*(a1 + 32) isPausedChargingIntervalType:{objc_msgSend(v5, "intValue")}])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v8 == 1)
    {
      if ([v5 intValue] != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v8 == 2)
    {
      if (![MEMORY[0x277D3F058] supportsSlowCharging] || !objc_msgSend(*(a1 + 32), "isChargingSpeedIntervalType:", objc_msgSend(v5, "intValue")))
      {
        goto LABEL_18;
      }

LABEL_17:
      [*(a1 + 40) addObjectsFromArray:v7];
      goto LABEL_18;
    }
  }

  v10 = PLLogCommon(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke_cold_1(v9, v10);
  }

LABEL_18:
}

- (int)filterThreshold:(signed __int16)threshold
{
  if (threshold - 3 >= 4)
  {
    return 60;
  }

  else
  {
    return 900;
  }
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_1(void *a1)
{
  v6 = [a1 objectForKeyedSubscript:@"timestampEnd"];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "adding interval=%@ for entry=%@", &v3, 0x16u);
}

void __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke_cold_1(__int16 *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Unrecognized graphIntervalType=%d", v3, 8u);
}

@end