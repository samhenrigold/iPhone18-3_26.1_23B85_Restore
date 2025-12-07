@interface PLBatteryUIResponseTypeUISOCLevel
- (BOOL)dateIntervals:(id)intervals containDate:(id)date;
- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries;
- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)range;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUISOCLevel

- (void)configure:(id)configure
{
  v40[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setEnd:v12];

  start = [(PLBatteryUIResponseTypeUISOCLevel *)self start];
  v14 = [(PLBatteryUIResponseTypeUISOCLevel *)self end];
  [start timeIntervalSince1970];
  v16 = v15;
  [v14 timeIntervalSince1970];
  v18 = v17 - v16;

  v19 = [configureCopy objectForKeyedSubscript:@"bucket"];

  [v19 doubleValue];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBucketSize:?];

  v20 = objc_alloc(MEMORY[0x277D3F260]);
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v22 = [v20 initWithKey:@"timestamp" withValue:v21 withComparisonOperation:5];

  v23 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145E80 withComparisonOperation:3];
  v24 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  responderService = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v26 = objc_msgSend_storage(responderService);
  v40[0] = v22;
  v40[1] = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v28 = [v26 lastEntryForKey:v24 withComparisons:v27 isSingleton:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastBattEntry:v28];

  responderService2 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v30 = objc_msgSend_storage(responderService2);
  v31 = [v30 entriesForKey:v24 inTimeRange:0 withFilters:{v16, v18}];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBattEntries:v31];

  responderService3 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v33 = objc_msgSend_storage(responderService3);
  v39 = v22;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v35 = [v33 lastEntryForKey:@"PLDuetService_EventForward_BatterySaverMode" withComparisons:v34 isSingleton:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastLPMEntry:v35];

  responderService4 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v37 = objc_msgSend_storage(responderService4);
  v38 = [v37 entriesForKey:@"PLDuetService_EventForward_BatterySaverMode" inTimeRange:0 withFilters:{v16, v18}];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLpmEntries:v38];
}

- (void)run
{
  v7 = [a2 count];
  *self = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_25EE51000, a4, OS_LOG_TYPE_DEBUG, "Found %lu entries in range!", self, 0xCu);
}

- (id)result
{
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBattEntries:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLpmEntries:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastLPMEntry:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastBattEntry:0];

  return [(PLBatteryUIResponseTypeUISOCLevel *)self resultArray];
}

- (id)entriesInRange:(_PLTimeIntervalRange)range fromEntries:(id)entries
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = entriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        entryDate = [v14 entryDate];
        if (entryDate)
        {
          v16 = entryDate;
          [entryDate timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BOOL)dateIntervals:(id)intervals containDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  dateCopy = date;
  v7 = dateCopy;
  LOBYTE(v8) = 0;
  if (intervalsCopy && dateCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = intervalsCopy;
    v8 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsDate:{v7, v13}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v80 = *MEMORY[0x277D85DE8];
  v6 = PLLogCommon(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
  }

  v60 = objc_opt_new();
  lastLPMEntry = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];

  if (!lastLPMEntry)
  {
    goto LABEL_8;
  }

  lastLPMEntry2 = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];
  v10 = [lastLPMEntry2 objectForKeyedSubscript:@"Value"];
  bOOLValue = [v10 BOOLValue];

  v13 = PLLogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  if (bOOLValue)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location];
    v14 = v8;
    v15 = 1;
  }

  else
  {
LABEL_8:
    v14 = 0;
    v15 = 0;
  }

  v16 = PLLogCommon(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    lastLPMEntry3 = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];
    *buf = 138413058;
    *v68 = lastLPMEntry3;
    *&v68[8] = 2112;
    *&v68[10] = v14;
    v69 = 2048;
    v70 = location;
    v71 = 2048;
    v72 = length;
    _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "lastLPMEntry=%@, startOfInterval=%@, range.location=%f, range.length=%f", buf, 0x2Au);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  lpmEntries = [(PLBatteryUIResponseTypeUISOCLevel *)self lpmEntries];
  reverseObjectEnumerator = [lpmEntries reverseObjectEnumerator];

  v20 = reverseObjectEnumerator;
  v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v63 objects:v79 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v64;
    *&v22 = 138412290;
    v56 = v22;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v64 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v63 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:{@"Value", v56}];
        bOOLValue2 = [v27 BOOLValue];

        v30 = PLLogCommon(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = bOOLValue2;
          *&v68[4] = 2112;
          *&v68[6] = v26;
          _os_log_impl(&dword_25EE51000, v30, OS_LOG_TYPE_INFO, "LPM Entry: %d %@", buf, 0x12u);
        }

        if ((v15 & 1) == bOOLValue2)
        {
          v34 = PLLogCommon(v31);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIService *)&v61 getLPMIntervalsSpanningRange:v62, v34];
          }
        }

        else
        {
          entryDate = [v26 entryDate];
          v33 = entryDate;
          if (bOOLValue2)
          {
            v15 = 1;
            v34 = v14;
            v14 = entryDate;
          }

          else
          {
            v35 = [v14 compare:entryDate];

            if (v35 == 1)
            {
              v34 = PLLogCommon(v36);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                entryDate2 = [v26 entryDate];
                lastLPMEntry4 = [(PLBatteryUIResponseTypeUISOCLevel *)selfCopy lastLPMEntry];
                lpmEntries2 = [(PLBatteryUIResponseTypeUISOCLevel *)selfCopy lpmEntries];
                *buf = 138413826;
                *v68 = v14;
                *&v68[8] = 2112;
                *&v68[10] = entryDate2;
                v69 = 2048;
                v70 = location;
                v71 = 2048;
                v72 = length;
                v73 = 2112;
                v74 = lastLPMEntry4;
                v75 = 2112;
                v76 = v26;
                v77 = 2112;
                v78 = lpmEntries2;
                v38 = lpmEntries2;
                _os_log_fault_impl(&dword_25EE51000, v34, OS_LOG_TYPE_FAULT, "LOOP CASE: startOfInterval=%@ greater than lpmEntry.entryDate=%@, range.location=%f, range.length=%f, lastLPMEntry=%@, lpmEntry=%@, lpmEntries=%@", buf, 0x48u);
              }
            }

            else
            {
              v39 = objc_alloc(MEMORY[0x277CCA970]);
              entryDate3 = [v26 entryDate];
              v34 = [v39 initWithStartDate:v14 endDate:entryDate3];

              v41 = PLLogCommon([v60 addObject:v34]);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = v56;
                *v68 = v34;
                _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "Created LPM interval %@", buf, 0xCu);
              }

              v14 = 0;
              v15 = 0;
            }
          }
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v63 objects:v79 count:16];
    }

    while (v23);
  }

  if (v15)
  {
    v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v44 = [v14 compare:v43];

    v46 = PLLogCommon(v45);
    v47 = v46;
    if (v44 == 1)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
        lastLPMEntry5 = [(PLBatteryUIResponseTypeUISOCLevel *)selfCopy lastLPMEntry];
        lpmEntries3 = [(PLBatteryUIResponseTypeUISOCLevel *)selfCopy lpmEntries];
        *buf = 138413570;
        *v68 = v14;
        *&v68[8] = 2112;
        *&v68[10] = v48;
        v69 = 2048;
        v70 = location;
        v71 = 2048;
        v72 = length;
        v73 = 2112;
        v74 = lastLPMEntry5;
        v75 = 2112;
        v76 = lpmEntries3;
        _os_log_fault_impl(&dword_25EE51000, v47, OS_LOG_TYPE_FAULT, "TAIL CASE: startOfInterval=%@ greater than endDate=%@, range.location=%f, range.length=%f, lastLPMEntry=%@, lpmEntries=%@", buf, 0x3Eu);
      }

      goto LABEL_42;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
    }

    v51 = objc_alloc(MEMORY[0x277CCA970]);
    v52 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v53 = [v51 initWithStartDate:v14 endDate:v52];

    v54 = PLLogCommon([v60 addObject:v53]);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
    }
  }

  v47 = PLLogCommon(v42);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
  }

LABEL_42:

  return v60;
}

@end