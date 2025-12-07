@interface LPKPerfResultAnalyzer
+ (id)_abstractUserSwitchsFromTheEnd:(int64_t)end userSwitches:(id)switches;
+ (id)_perfResultsFromUserSwitches:(id)switches;
+ (id)analyzePerformanceTestResult:(id)result type:(unint64_t)type count:(int64_t)count;
+ (void)_populateMigratorsData:(id)data;
@end

@implementation LPKPerfResultAnalyzer

+ (id)analyzePerformanceTestResult:(id)result type:(unint64_t)type count:(int64_t)count
{
  v59 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy_;
  v55[4] = __Block_byref_object_dispose_;
  v56 = 0;
  v8 = objc_opt_new();
  [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSS"];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __65__LPKPerfResultAnalyzer_analyzePerformanceTestResult_type_count___block_invoke;
  v50[3] = &unk_279827A60;
  v40 = v8;
  v51 = v40;
  v9 = v6;
  v52 = v9;
  v54 = v55;
  v10 = v7;
  v53 = v10;
  [resultCopy enumerateObjectsUsingBlock:v50];
  v39 = resultCopy;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v14)
  {
    v15 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        startDate = [v17 startDate];
        if (startDate)
        {
          endDate = [v17 endDate];
          v20 = endDate == 0;

          if (!v20)
          {
            [v11 addObject:v17];
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v14);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v22)
  {
    v23 = *v43;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v42 + 1) + 8 * j);
        startDate2 = [v25 startDate];
        if (startDate2)
        {
          endDate2 = [v25 endDate];
          v28 = endDate2 == 0;

          if (!v28)
          {
            [v12 addObject:v25];
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v22);
  }

  v29 = v11;
  v30 = v12;

  if (type - 2 < 2)
  {
    v32 = [v30 count];
    if (v32 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v32;
    }

    v31 = [v30 subarrayWithRange:{0, countCopy}];
    goto LABEL_30;
  }

  if (type == 1)
  {
LABEL_25:
    v31 = [self _abstractUserSwitchsFromTheEnd:count userSwitches:v29];
LABEL_30:
    v34 = v31;
    goto LABEL_32;
  }

  if (!type)
  {
    [LPKPerfResultAnalyzer _populateMigratorsData:v29];
    goto LABEL_25;
  }

  v34 = 0;
LABEL_32:
  v35 = [LPKPerfResultAnalyzer _perfResultsFromUserSwitches:v34];

  _Block_object_dispose(v55, 8);

  return v35;
}

void __65__LPKPerfResultAnalyzer_analyzePerformanceTestResult_type_count___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [v30 objectForKeyedSubscript:@"eventname"];
  if ([v3 length] && objc_msgSend(v3, "containsString:", @"LGN"))
  {
    v4 = [v30 objectForKeyedSubscript:@"walltime"];
    v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 3}];

    v6 = [*(a1 + 32) dateFromString:v5];
    v7 = [v3 componentsSeparatedByString:@"_"];
    v8 = [v7 lastObject];
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = [v9 isEqualToString:@"S"];

    if (!v10)
    {
      v14 = [v7 objectAtIndexedSubscript:1];
      v15 = [v14 isEqualToString:@"E"];

      if (!v15)
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = [*(*(*(a1 + 56) + 8) + 40) signposts];
      v17 = [v16 objectForKeyedSubscript:v8];

      [v17 setEndDate:v6];
      v18 = [v7 objectAtIndexedSubscript:2];
      v19 = [v18 isEqualToString:@"Login"];

      if (v19)
      {
        v20 = 40;
      }

      else
      {
        v28 = [v7 objectAtIndexedSubscript:2];
        v29 = [v28 isEqualToString:@"Logout"];

        if (!v29)
        {
LABEL_17:

          goto LABEL_18;
        }

        v20 = 48;
      }

      v27 = [*(a1 + v20) lastObject];
      [v27 setEndDate:v6];
LABEL_16:

      goto LABEL_17;
    }

    v11 = [v7 objectAtIndexedSubscript:2];
    v12 = [v11 isEqualToString:@"Login"];

    if (v12)
    {
      v13 = 40;
    }

    else
    {
      v21 = [v7 objectAtIndexedSubscript:2];
      v22 = [v21 isEqualToString:@"Logout"];

      if (!v22)
      {
LABEL_12:
        v17 = objc_opt_new();
        [v17 setStartDate:v6];
        [v17 setName:v8];
        v26 = [v30 objectForKeyedSubscript:@"execname"];
        [v17 setProcessName:v26];

        v27 = [*(*(*(a1 + 56) + 8) + 40) signposts];
        [v27 setObject:v17 forKeyedSubscript:v8];
        goto LABEL_16;
      }

      v13 = 48;
    }

    v23 = objc_opt_new();
    [v23 setStartDate:v6];
    [*(a1 + v13) addObject:v23];
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    goto LABEL_12;
  }

LABEL_19:
}

+ (id)_perfResultsFromUserSwitches:(id)switches
{
  switchesCopy = switches;
  v4 = objc_opt_new();
  if ([switchesCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [switchesCopy objectAtIndexedSubscript:v5];
      signposts = [v6 signposts];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__LPKPerfResultAnalyzer__perfResultsFromUserSwitches___block_invoke;
      v11[3] = &unk_279827A88;
      v12 = v4;
      [signposts enumerateKeysAndObjectsUsingBlock:v11];

      ++v5;
    }

    while ([switchesCopy count] > v5);
  }

  allValues = [v4 allValues];
  v9 = [allValues sortedArrayUsingComparator:&__block_literal_global_93];

  return v9;
}

void __54__LPKPerfResultAnalyzer__perfResultsFromUserSwitches___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 endDate];
  if (v6)
  {
  }

  else
  {
    [v5 duration];
    if (v7 <= 0.0)
    {
      goto LABEL_7;
    }
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:v11];

  if (!v8)
  {
    v9 = objc_opt_new();
    [v9 setEntryName:v11];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v11];
  [v5 duration];
  [v10 addEntryValue:?];

LABEL_7:
}

uint64_t __54__LPKPerfResultAnalyzer__perfResultsFromUserSwitches___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 medianValue];
  v7 = v6;
  [v5 medianValue];
  if (v7 >= v8)
  {
    [v4 medianValue];
    v11 = v10;
    [v5 medianValue];
    if (v11 == v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (void)_populateMigratorsData:(id)data
{
  dataCopy = data;
  if ([dataCopy count])
  {
    NSLog(&cfstr_AnalyzingMigra.isa);
    v42[0] = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\((.*?)\\)" options:16 error:v42];
    v5 = v42[0];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy_;
    v40[4] = __Block_byref_object_dispose_;
    firstObject = [dataCopy firstObject];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    localStore = [MEMORY[0x277D24438] localStore];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke;
    v32[3] = &unk_279827AD0;
    v32[4] = &v33;
    [localStore prepareWithCompletionHandler:v32];
    v7 = dispatch_semaphore_create(0);
    v8 = objc_alloc(MEMORY[0x277D24440]);
    v9 = [v8 initWithSource:v34[5]];
    v10 = _populateMigratorsData__stream;
    _populateMigratorsData__stream = v9;

    [_populateMigratorsData__stream setFlags:20];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"process==%@", @"com.apple.datamigrator"];
    [_populateMigratorsData__stream setFilterPredicate:v11];
    v12 = _populateMigratorsData__stream;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke_2;
    v27[3] = &unk_279827B20;
    v30 = v39;
    v13 = dataCopy;
    v28 = v13;
    v31 = v40;
    v14 = v4;
    v29 = v14;
    [v12 setEventHandler:v27];
    v15 = _populateMigratorsData__stream;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke_4;
    v25[3] = &unk_279827B48;
    v16 = v7;
    v26 = v16;
    [v15 setInvalidationHandler:v25];
    firstObject2 = [v13 firstObject];
    startDate = [firstObject2 startDate];

    if (startDate)
    {
      v19 = _populateMigratorsData__stream;
      v20 = MEMORY[0x277CBEAA8];
      firstObject3 = [v13 firstObject];
      startDate2 = [firstObject3 startDate];
      [startDate2 timeIntervalSince1970];
      v24 = [v20 dateWithTimeIntervalSince1970:v23 + -1.0];
      [v19 activateStreamFromDate:v24];

      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v40, 8);
  }
}

void __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1024)
  {
    v4 = [v3 composedMessage];
    v5 = [v4 containsString:@"completed migration"];

    if (v5)
    {
      v6 = [v3 date];
      while (1)
      {
        v7 = *(*(*(a1 + 48) + 8) + 24);
        if (v7 >= [*(a1 + 32) count])
        {
          break;
        }

        v8 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = [*(*(*(a1 + 56) + 8) + 40) startDate];
        v12 = [v6 compare:v11];

        if (v12 == -1)
        {
          goto LABEL_16;
        }

        v13 = [*(*(*(a1 + 56) + 8) + 40) startDate];
        if ([v6 compare:v13] == -1)
        {
        }

        else
        {
          v14 = [*(*(*(a1 + 56) + 8) + 40) endDate];
          v15 = [v6 compare:v14];

          if (v15 != 1)
          {
            break;
          }
        }

        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v16 = *(*(*(a1 + 48) + 8) + 24);
      if (v16 != [*(a1 + 32) count])
      {
        v17 = [v3 composedMessage];
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy_;
        v37 = __Block_byref_object_dispose_;
        v38 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = __Block_byref_object_copy_;
        v31 = __Block_byref_object_dispose_;
        v32 = 0;
        v18 = *(a1 + 40);
        v19 = [v17 length];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke_3;
        v23[3] = &unk_279827AF8;
        v20 = v17;
        v24 = v20;
        v25 = &v33;
        v26 = &v27;
        [v18 enumerateMatchesInString:v20 options:16 range:0 usingBlock:{v19, v23}];
        if (v34[5] && v28[5])
        {
          v21 = objc_opt_new();
          [v21 setName:v34[5]];
          [v21 setProcessName:@"com.apple.datamigrator"];
          [LPKPerfResultAnalyzer _durationFromString:v28[5]];
          [v21 setDuration:?];
          v22 = [*(*(*(a1 + 56) + 8) + 40) signposts];
          [v22 setObject:v21 forKeyedSubscript:v34[5]];
        }

        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v33, 8);
      }

LABEL_16:
    }
  }
}

void __48__LPKPerfResultAnalyzer__populateMigratorsData___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 numberOfRanges] >= 2;
  v4 = v13;
  if (v3)
  {
    v5 = [v13 rangeAtIndex:1];
    v7 = v6;
    v8 = v5 + v6 > [*(a1 + 32) length];
    v4 = v13;
    if (!v8)
    {
      v9 = a1 + 40;
      if (!*(*(*(a1 + 40) + 8) + 40) || (v9 = a1 + 48, v4 = v13, !*(*(*(a1 + 48) + 8) + 40)))
      {
        v10 = [*(a1 + 32) substringWithRange:{v5, v7}];
        v11 = *(*v9 + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v4 = v13;
      }
    }
  }
}

+ (id)_abstractUserSwitchsFromTheEnd:(int64_t)end userSwitches:(id)switches
{
  switchesCopy = switches;
  v6 = [switchesCopy count];
  if (v6 >= end)
  {
    endCopy = end;
  }

  else
  {
    endCopy = v6;
  }

  v8 = [switchesCopy count];
  v9 = [switchesCopy subarrayWithRange:{(v8 - end) & ~((v8 - end) >> 63), endCopy}];

  return v9;
}

@end