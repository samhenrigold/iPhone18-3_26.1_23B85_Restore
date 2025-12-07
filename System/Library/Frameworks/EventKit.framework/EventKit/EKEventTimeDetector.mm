@interface EKEventTimeDetector
+ (id)dateResultsFromString:(id)string referenceDate:(id)date;
+ (id)resultDictionaryForString:(id)string referenceDate:(id)date;
+ (id)resultDictionaryForString:(id)string referenceDate:(id)date ignoreDurationForApproximateTime:(BOOL)time;
+ (id)stripRanges:(id)ranges fromString:(id)string;
@end

@implementation EKEventTimeDetector

+ (id)resultDictionaryForString:(id)string referenceDate:(id)date
{
  dateCopy = date;
  stringCopy = string;
  v7 = [objc_opt_class() resultDictionaryForString:stringCopy referenceDate:dateCopy ignoreDurationForApproximateTime:0];

  return v7;
}

+ (id)resultDictionaryForString:(id)string referenceDate:(id)date ignoreDurationForApproximateTime:(BOOL)time
{
  timeCopy = time;
  v120 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dateCopy = date;
  [MEMORY[0x1E695DF70] array];
  v84 = v83 = self;
  v85 = stringCopy;
  v9 = [objc_opt_class() dateResultsFromString:stringCopy referenceDate:dateCopy];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v111 objects:v119 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v112;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v112 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (dateCopy)
        {
          date = [*(*(&v111 + 1) + 8 * i) date];
          v17 = [date isSameDayAsDate:dateCopy inCalendar:currentCalendar];

          if (!v17)
          {

            v12 = [objc_opt_class() dateResultsFromString:v85 referenceDate:0];
            goto LABEL_12;
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v111 objects:v119 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v12 = v10;
  }

LABEL_12:

  v81 = v12;
  v82 = dateCopy;
  if (![v12 count])
  {
    v21 = 0;
    date2 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = MEMORY[0x1E695E0F0];
    v90 = MEMORY[0x1E695E0F0];
    goto LABEL_88;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (!v19)
  {

    v21 = 0;
LABEL_38:
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v45 = v18;
    v46 = v18;
    v47 = [v46 countByEnumeratingWithState:&v99 objects:v116 count:16];
    if (v47)
    {
      v48 = v47;
      v38 = 0;
      v49 = *v100;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v100 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v99 + 1) + 8 * j);
          if (!v38 || ([*(*(&v99 + 1) + 8 * j) timeIsApproximate] & 1) == 0)
          {
            v52 = v51;

            v38 = v52;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v99 objects:v116 count:16];
      }

      while (v48);
    }

    else
    {
      v38 = 0;
    }

    v18 = v45;
    goto LABEL_51;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v108;
  v87 = 0;
  v89 = *v108;
  do
  {
    v23 = 0;
    v91 = v20;
    do
    {
      if (*v108 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v107 + 1) + 8 * v23);
      if (([v24 timeIsSignificant] & 1) == 0)
      {
        v93 = v21;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v25 = v18;
        v26 = v18;
        v27 = [v26 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v104;
LABEL_21:
          v30 = 0;
          while (1)
          {
            if (*v104 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v103 + 1) + 8 * v30);
            if (v24 != v31)
            {
              range = [v24 range];
              v34 = v33;
              v123.location = [v31 range];
              v123.length = v35;
              v122.location = range;
              v122.length = v34;
              if (NSIntersectionRange(v122, v123).length)
              {
                break;
              }
            }

            if (v28 == ++v30)
            {
              v28 = [v26 countByEnumeratingWithState:&v103 objects:v117 count:16];
              if (v28)
              {
                goto LABEL_21;
              }

              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:

          v26 = v87;
          v87 = v24;
        }

        v20 = v91;
        v21 = v93;
        v18 = v25;
        v22 = v89;
      }

      timeZone = [v24 timeZone];

      if (timeZone)
      {
        timeZone2 = [v24 timeZone];

        v21 = timeZone2;
      }

      ++v23;
    }

    while (v23 != v20);
    v20 = [v18 countByEnumeratingWithState:&v107 objects:v118 count:16];
  }

  while (v20);

  v38 = v87;
  if (!v87)
  {
    goto LABEL_38;
  }

LABEL_51:
  date2 = [v38 date];
  [v38 duration];
  v54 = v53;
  v90 = rangesSafeToRemove(v38);
  timeIsApproximate = [v38 timeIsApproximate];
  v88 = v38;
  if ([v38 timeIsSignificant])
  {
    v56 = 1;
LABEL_70:
    v44 = MEMORY[0x1E695E0F0];
    goto LABEL_73;
  }

  if ([v18 count] < 2)
  {
    v56 = 0;
    goto LABEL_70;
  }

  timeIsApproximate2 = timeIsApproximate;
  v94 = v21;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v57 = v18;
  v58 = [v57 countByEnumeratingWithState:&v95 objects:v115 count:16];
  if (v58)
  {
    v59 = v58;
    v56 = 0;
    v60 = 0;
    v61 = *v96;
    v44 = MEMORY[0x1E695E0F0];
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v96 != v61)
        {
          objc_enumerationMutation(v57);
        }

        v63 = *(*(&v95 + 1) + 8 * k);
        if ([v63 timeIsSignificant])
        {
          if (![v63 timeIsApproximate] || v60 == 0)
          {
            v65 = v63;

            [v65 duration];
            v54 = v66;
            v67 = MEMORY[0x1E695DF00];
            date3 = [v65 date];
            v69 = [v67 dateWithDatePartFromDate:date2 timePartFromDate:date3 inCalendar:currentCalendar];

            v70 = rangesSafeToRemove(v65);

            timeIsApproximate2 = [v65 timeIsApproximate];
            v56 = 1;
            v44 = v70;
            date2 = v69;
            v60 = v65;
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v95 objects:v115 count:16];
    }

    while (v59);
  }

  else
  {
    v56 = 0;
    v60 = 0;
    v44 = MEMORY[0x1E695E0F0];
  }

  v21 = v94;
  timeIsApproximate = timeIsApproximate2;
LABEL_73:

  if (date2)
  {
    if (timeCopy)
    {
      v71 = timeIsApproximate;
      if (![v82 isSameDayAsDate:date2 inCalendar:0])
      {
        v71 = 0;
        v43 = 0;
        if (v56)
        {
LABEL_82:
          if ((v54 <= 0.0) | v71 & 1)
          {
            v42 = 0;
            v41 = v56 ^ 1;
          }

          else
          {
            v73 = [v43 dateByAddingTimeInterval:v54];
            v42 = v73;
            if (v56)
            {
              v41 = 0;
            }

            else
            {
              v41 = 1;
              v74 = [v73 dateByAddingDays:1 inCalendar:currentCalendar];

              v42 = [v74 dateByAddingTimeInterval:-1.0];
            }
          }

          goto LABEL_87;
        }

LABEL_81:
        v72 = [v43 dateRemovingTimeComponentsInCalendar:currentCalendar];

        v43 = v72;
        goto LABEL_82;
      }
    }

    else
    {
      v71 = 0;
    }

    v43 = date2;
    [v84 addObjectsFromArray:v90];
    [v84 addObjectsFromArray:v44];
    if (v56)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_87:
  v40 = timeIsApproximate;
LABEL_88:
  v75 = objc_opt_new();
  v76 = [v83 stripRanges:v84 fromString:v85];
  [v75 setValue:v76 forKey:@"EKEventTimeDetectorResultTitleKey"];
  [v75 setValue:v43 forKey:@"EKEventTimeDetectorResultStartDateKey"];
  [v75 setValue:v42 forKey:@"EKEventTimeDetectorResultEndDateKey"];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v40 & 1];
  [v75 setValue:v77 forKey:@"EKEventTimeDetectorResultTimeIsApproximateKey"];

  if (v43 | v42)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:v41 & 1];
    [v75 setValue:v78 forKey:@"EKEventTimeDetectorResultAllDayKey"];
  }

  if (v21)
  {
    [v75 setValue:v21 forKey:@"EKEventTimeDetectorResultTimeZoneKey"];
  }

  return v75;
}

+ (id)dateResultsFromString:(id)string referenceDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  array = [MEMORY[0x1E695DF70] array];
  if ([stringCopy length])
  {
    if (dateResultsFromString_referenceDate__onceToken != -1)
    {
      +[EKEventTimeDetector dateResultsFromString:referenceDate:];
    }

    v8 = dateResultsFromString_referenceDate__dateScannerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke_2;
    block[3] = &unk_1E77FD7C8;
    v14 = stringCopy;
    v15 = dateCopy;
    v9 = array;
    v16 = v9;
    dispatch_sync(v8, block);
    v10 = v16;
    v11 = v9;
  }

  return array;
}

uint64_t __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke()
{
  dateResultsFromString_referenceDate__s_dateScanner = DDScannerCreate();
  v0 = dispatch_queue_create("EKEventTimeDetectorDateScannerQueue", 0);
  v1 = dateResultsFromString_referenceDate__dateScannerQueue;
  dateResultsFromString_referenceDate__dateScannerQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke_2(uint64_t a1)
{
  if (dateResultsFromString_referenceDate__s_dateScanner)
  {
    if (DDScannerScanString())
    {
      v2 = DDScannerCopyResultsWithOptions();
      if (v2)
      {
        v3 = v2;
        v4 = *(a1 + 48);
        v5 = *(a1 + 40);
        v13 = v4;
        Count = CFArrayGetCount(v3);
        if (Count >= 1)
        {
          v6 = 0;
          v14 = v3;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
            DDResultGetRange();
            v8 = DDResultGetType();
            if (([@"Date" isEqualToString:v8] & 1) != 0 || (objc_msgSend(@"Time", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"DateTime", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"DateDuration", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"TimeDuration", "isEqualToString:", v8) & 1) != 0 || objc_msgSend(@"Timestamp", "isEqualToString:", v8))
            {
              v9 = v5;
              if (!v5)
              {
                v9 = [MEMORY[0x1E695DF00] date];
              }

              v10 = v9;
              v11 = [MEMORY[0x1E695DFE8] defaultTimeZone];
              [v8 rangeOfString:@"Duration"];
              if (!v12 || !DDResultCopyExtractedStartDateEndDate())
              {
                DDResultCopyExtractedDateFromReferenceDate();
              }

              if (resultHasApproxTime(ValueAtIndex))
              {
                resultHasExactTime(ValueAtIndex);
              }

              DDResultIsPastDate();
              v3 = v14;
            }

            ++v6;
          }

          while (Count != v6);
        }

        CFRelease(v3);
      }
    }
  }
}

+ (id)stripRanges:(id)ranges fromString:(id)string
{
  v42 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v6 = MEMORY[0x1E695DF70];
  v7 = [ranges sortedArrayUsingComparator:&__block_literal_global_24];
  v8 = [v6 arrayWithArray:v7];

  if ([v8 count] && objc_msgSend(v8, "count") != 1)
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      rangeValue = [v10 rangeValue];
      v13 = v12;

      v14 = [v8 objectAtIndexedSubscript:v9 + 1];
      rangeValue2 = [v14 rangeValue];
      v17 = v16;

      v44.location = rangeValue;
      v44.length = v13;
      v46.location = rangeValue2;
      v46.length = v17;
      if (NSIntersectionRange(v44, v46).length)
      {
        v18 = MEMORY[0x1E696B098];
        v45.location = rangeValue;
        v45.length = v13;
        v47.location = rangeValue2;
        v47.length = v17;
        v19 = NSUnionRange(v45, v47);
        v20 = [v18 valueWithRange:{v19.location, v19.length}];
        [v8 setObject:v20 atIndexedSubscript:v9];

        [v8 removeObjectAtIndex:v9 + 1];
      }

      else
      {
        ++v9;
      }
    }

    while (v9 < [v8 count] - 1);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v23 = stringCopy;
  if (v22)
  {
    v24 = v22;
    v25 = *v38;
    v23 = stringCopy;
    do
    {
      v26 = 0;
      v27 = v23;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v21);
        }

        rangeValue3 = [*(*(&v37 + 1) + 8 * v26) rangeValue];
        v23 = [v27 stringByReplacingCharactersInRange:rangeValue3 withString:{v29, &stru_1F1B49D68}];

        ++v26;
        v27 = v23;
      }

      while (v24 != v26);
      v24 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v24);
  }

  if ([v21 count])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v31 = [v23 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
    v33 = [v31 filteredArrayUsingPredicate:v32];

    v34 = [v33 componentsJoinedByString:@" "];

    if ([v34 length])
    {
      v35 = v34;
    }

    else
    {
      v35 = stringCopy;
    }

    v23 = v35;
  }

  return v23;
}

uint64_t __46__EKEventTimeDetector_stripRanges_fromString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

@end