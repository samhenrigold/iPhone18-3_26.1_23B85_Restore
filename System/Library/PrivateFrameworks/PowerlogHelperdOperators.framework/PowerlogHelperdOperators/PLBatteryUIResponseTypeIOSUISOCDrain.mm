@interface PLBatteryUIResponseTypeIOSUISOCDrain
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeIOSUISOCDrain

- (void)configure:(id)configure
{
  v35[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setEnd:v12];

  v13 = +[PLUtilities getOverridableMonotonicNow];
  v14 = [configureCopy objectForKeyedSubscript:@"isDynamicEnd"];
  -[PLBatteryUIResponseTypeIOSUISOCDrain setIsDynamicEnd:](self, "setIsDynamicEnd:", [v14 BOOLValue]);

  isDynamicEnd = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self isDynamicEnd];
  v16 = 0.0;
  if (isDynamicEnd)
  {
    [v13 timeIntervalSince1970];
    v16 = v10 - v17;
  }

  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicEndOffset:v16];
  start = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self start];
  v19 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self end];
  [start timeIntervalSince1970];
  v21 = v20;
  [v19 timeIntervalSince1970];
  v23 = v22;

  v24 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v24 doubleValue];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setBucketSize:?];

  v25 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  if (!v25)
  {
    v26 = PLLogCommon(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeIOSUISOCDrain configure:v26];
    }
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp BETWEEN %f AND %f", v21 + -1800.0, v21 + -1800.0 + v23 - v21 + 1800.0];
  responderService = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self responderService];
  v29 = objc_msgSend_storage(responderService);
  v33 = v27;
  v34[0] = @"where";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v34[1] = @"order by";
  v35[0] = v30;
  v35[1] = &unk_28714B060;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v32 = [v29 entriesForKey:v25 withProperties:v31];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setUiLevelEntries:v32];
}

- (void)run
{
  bucketSize = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
  if (v4 == 0.0)
  {
    v5 = PLLogCommon(bucketSize);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeIOSUISOCDrain *)v5 run];
    }
  }

  start = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self start];
  v7 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self end];
  [start timeIntervalSince1970];
  v9 = v8;
  [v7 timeIntervalSince1970];
  v11 = v10 - v9;

  v65 = objc_opt_new();
  v64 = objc_opt_new();
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
  v67 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
  v63 = llround(v11 / v13);
  if (v63 >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v67;
      v17 = v12;
      v12 = [v67 copy];

      [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
      v67 = [v12 dateByAddingTimeInterval:?];

      v18 = v15;
      uiLevelEntries = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
      v20 = [uiLevelEntries count];

      if (v20 <= v15)
      {
        v22 = 0;
        intValue = 0;
      }

      else
      {
        uiLevelEntries2 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
        v22 = [uiLevelEntries2 objectAtIndexedSubscript:v15];

        v23 = [v22 objectForKeyedSubscript:@"Level"];
        intValue = [v23 intValue];
      }

      v25 = 0.0;
      if (v14 != v63 - 1)
      {
        [(PLBatteryUIResponseTypeIOSUISOCDrain *)self dynamicEndOffset];
        v25 = v26;
      }

      uiLevelEntries3 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
      v28 = [uiLevelEntries3 count];

      if (v28 <= v15)
      {
        v30 = 0;
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v66 = v14;
        do
        {
          v62 = intValue;
          v31 = v15++;
          while (1)
          {
            v32 = v22;
            uiLevelEntries4 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
            v22 = [uiLevelEntries4 objectAtIndexedSubscript:v18];

            [v67 timeIntervalSince1970];
            v35 = v34;
            entryDate = [v22 entryDate];
            [entryDate timeIntervalSince1970];
            v38 = v37;

            if (v35 < v38)
            {
LABEL_27:
              v15 = v31;
              v14 = v66;
              goto LABEL_28;
            }

            [v12 timeIntervalSince1970];
            v40 = v39;
            entryDate2 = [v22 entryDate];
            [entryDate2 timeIntervalSince1970];
            v43 = v42;

            if (v40 <= v43)
            {
              break;
            }

            ++v31;
            uiLevelEntries5 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
            v45 = [uiLevelEntries5 count];

            ++v15;
            v18 = v31;
            if (v45 <= v31)
            {
              goto LABEL_27;
            }
          }

          v46 = [v22 objectForKeyedSubscript:@"Level"];
          intValue2 = [v46 intValue];

          if (v62 > intValue2)
          {
            v48 = [v22 objectForKeyedSubscript:@"Level"];
            v49 = v62 - [v48 intValue];

            v30 = (v49 + v30);
            [v67 timeIntervalSince1970];
            v51 = v50 - v25;
            entryDate3 = [v22 entryDate];
            [entryDate3 timeIntervalSince1970];
            v54 = v53;

            if (v51 >= v54)
            {
              v55 = v49;
            }

            else
            {
              v55 = 0;
            }

            v29 = (v55 + v29);
          }

          v56 = [v22 objectForKeyedSubscript:@"Level"];
          intValue = [v56 intValue];

          v18 = v15;
          uiLevelEntries6 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
          v58 = [uiLevelEntries6 count];

          v59 = v58 > v15;
          v14 = v66;
        }

        while (v59);
      }

LABEL_28:
      v60 = [MEMORY[0x277CCABB0] numberWithInt:v30];
      [v65 addObject:v60];

      v61 = [MEMORY[0x277CCABB0] numberWithInt:v29];
      [v64 addObject:v61];

      ++v14;
    }

    while (v14 != v63);
  }

  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setResultArray:v65];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicResultArray:v64];
}

- (id)result
{
  v9[2] = *MEMORY[0x277D85DE8];
  isDynamicEnd = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self isDynamicEnd];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setUiLevelEntries:0];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicEndOffset:0.0];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setIsDynamicEnd:0];
  if (isDynamicEnd)
  {
    v8[0] = @"FullDay";
    resultArray = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self resultArray];
    v8[1] = @"Dynamic";
    v9[0] = resultArray;
    dynamicResultArray = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self dynamicResultArray];
    v9[1] = dynamicResultArray;
    resultArray2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    resultArray2 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self resultArray];
  }

  return resultArray2;
}

@end