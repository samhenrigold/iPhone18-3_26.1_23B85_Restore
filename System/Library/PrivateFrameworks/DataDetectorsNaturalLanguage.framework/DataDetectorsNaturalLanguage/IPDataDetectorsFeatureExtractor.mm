@interface IPDataDetectorsFeatureExtractor
- (BOOL)stringContainsNonTimeStrings:(id)strings aroundRange:(_NSRange)range;
- (IPDataDetectorsFeatureExtractor)init;
- (_NSRange)textRangeReferencingAfternoon:(id)afternoon;
- (_NSRange)textRangeReferencingAllDay:(id)day;
- (_NSRange)textRangeReferencingEvening:(id)evening;
- (_NSRange)textRangeReferencingMorning:(id)morning;
- (_NSRange)textRangeReferencingNewYearsEve:(id)eve;
- (_NSRange)textRangeReferencingNextWeekEnd:(id)end;
- (_NSRange)textRangeReferencingNoon:(id)noon;
- (_NSRange)textRangeReferencingThisWeekEnd:(id)end;
- (_NSRange)textRangeReferencingTomorrow:(id)tomorrow;
- (_NSRange)textRangeReferencingValentineDay:(id)day;
- (__DDScanner)standardScanner;
- (id)featureDataComplementingFeatureData:(id)data hour:(unint64_t)hour minute:(unint64_t)minute duration:(double)duration;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context;
- (id)newYearsEveDayDateFromReferenceDate:(id)date;
- (id)queue;
- (id)stringByReplacingDetectedDataWithNGramMarkersInString:(id)string;
- (id)thisSaturdayDateFromReferenceDate:(id)date;
- (id)tomorrowDateFromReferenceDate:(id)date;
- (id)valentineDayDateFromReferenceDate:(id)date;
- (void)setTimeZone:(id)zone forDateFeatures:(id)features;
- (void)standardizeTimezonesForDetectedFeatures:(id)features;
@end

@implementation IPDataDetectorsFeatureExtractor

- (IPDataDetectorsFeatureExtractor)init
{
  v4.receiver = self;
  v4.super_class = IPDataDetectorsFeatureExtractor;
  v2 = [(IPDataDetectorsFeatureExtractor *)&v4 init];
  if (init_onceToken != -1)
  {
    [IPDataDetectorsFeatureExtractor init];
  }

  return v2;
}

void __39__IPDataDetectorsFeatureExtractor_init__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Ipsos.IPDataDetectorsFeatureExtractor", v2);
  v1 = sStandardScannerQueue;
  sStandardScannerQueue = v0;
}

- (__DDScanner)standardScanner
{
  v15 = *MEMORY[0x277D85DE8];
  if (sScanner)
  {
    v2 = sLastPreferredLanguage;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults arrayForKey:@"AppleLanguages"];
    firstObject = [v4 firstObject];
    LOBYTE(v2) = [v2 isEqualToString:firstObject];

    result = sScanner;
    if (v2)
    {
      if (sScanner)
      {
        return result;
      }
    }

    else
    {
      CFRelease(sScanner);
      sScanner = 0;
    }
  }

  sScanner = DDScannerCreate();
  if (sScanner)
  {
    DDScannerEnableOptionalSource();
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults2 arrayForKey:@"AppleLanguages"];
    firstObject2 = [v9 firstObject];
    v11 = sLastPreferredLanguage;
    sLastPreferredLanguage = firstObject2;
  }

  else
  {
    v12 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(0, v7);
      v12 = _IPLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&dword_2485E4000, v12, OS_LOG_TYPE_ERROR, "standardScanner creation failed: %@ #Generic", buf, 0xCu);
    }

    CFRelease(0);
  }

  return sScanner;
}

- (BOOL)stringContainsNonTimeStrings:(id)strings aroundRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringsCopy = strings;
  v7 = [IPRegexToolbox regularExpressionWithKey:@"stringContainsNonTimeStrings:aroundRange:" generator:&__block_literal_global_15];
  if (location <= 1)
  {
    v8 = length;
  }

  else
  {
    v8 = length + 2;
  }

  if (location <= 1)
  {
    v9 = location;
  }

  else
  {
    v9 = location - 2;
  }

  v10 = [stringsCopy length] - (v9 + v8);
  if (v10 >= 2)
  {
    v10 = 2;
  }

  v11 = [v7 rangeOfFirstMatchInString:stringsCopy options:2 range:{v9, v10 + v8}];

  return v11 != 0x7FFFFFFFFFFFFFFFLL;
}

id __76__IPDataDetectorsFeatureExtractor_stringContainsNonTimeStrings_aroundRange___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([£%$€#]| (sera))" options:65 error:&v2];

  return v0;
}

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context
{
  v119 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  contextCopy = context;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
  originalMessage = [unitCopy originalMessage];
  dateSent = [originalMessage dateSent];

  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x3032000000;
  v115[3] = __Block_byref_object_copy__1;
  v115[4] = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v11 = [contextCopy objectForKey:@"IPFeatureExtractorDetectedDateInSubjectFeatureData"];
  value = [v11 value];
  v82 = v11;
  contextDictionary = [v11 contextDictionary];
  v14 = [contextDictionary objectForKeyedSubscript:?];
  bOOLValue = [v14 BOOLValue];

  contextDictionary2 = [v82 contextDictionary];
  v17 = [contextDictionary2 objectForKeyedSubscript:@"timeIsApproximate"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = [stringCopy length];
  v20 = [contextCopy objectForKey:@"IPFeatureExtractorContextText"];
  v92 = [stringCopy copy];
  v85 = v20;
  if (v20)
  {
    v19 = [stringCopy length];
    v21 = [v20 stringByAppendingString:stringCopy];

    v22 = v8;
    v20 = ([v20 length] + 1);
    stringCopy = v21;
  }

  else
  {
    v22 = v8;
  }

  v23 = sStandardScannerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__IPDataDetectorsFeatureExtractor_featuresForTextString_inMessageUnit_context___block_invoke;
  block[3] = &unk_278F23078;
  v108 = stringCopy;
  block[4] = self;
  v106 = v115;
  v86 = stringCopy;
  v102 = v86;
  v24 = v22;
  v103 = v24;
  v80 = value;
  v104 = v80;
  v109 = bOOLValue;
  v110 = bOOLValue2;
  v89 = dateSent;
  v105 = v89;
  v107 = &v111;
  dispatch_sync(v23, block);
  v25 = objc_autoreleasePoolPush();
  lowercaseString = [v86 lowercaseString];
  objc_autoreleasePoolPop(v25);
  if ((v112[3] & 1) == 0)
  {
    if (v89)
    {
      v27 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingTomorrow:lowercaseString, v80];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v26;
        v29 = [(IPDataDetectorsFeatureExtractor *)self tomorrowDateFromReferenceDate:v89];
        v30 = [IPFeatureData featureDataWithType:1 value:v29 matchRange:v27, v28];
        contextDictionary3 = [v30 contextDictionary];
        [contextDictionary3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"allDay"];

        contextDictionary4 = [v30 contextDictionary];
        [contextDictionary4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        contextDictionary5 = [v30 contextDictionary];
        [contextDictionary5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v30 setTextUnit:v86];
        [v24 addObject:v30];
      }
    }
  }

  if ((v112[3] & 1) == 0)
  {
    if (v89)
    {
      v35 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingValentineDay:lowercaseString];
      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v34;
        v37 = [(IPDataDetectorsFeatureExtractor *)self valentineDayDateFromReferenceDate:v89];
        v38 = [IPFeatureData featureDataWithType:1 value:v37 matchRange:v35, v36];
        contextDictionary6 = [v38 contextDictionary];
        [contextDictionary6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

        v40 = [v37 dateByAddingTimeInterval:10800.0];
        contextDictionary7 = [v38 contextDictionary];
        [contextDictionary7 setObject:v40 forKeyedSubscript:@"endDate"];

        contextDictionary8 = [v38 contextDictionary];
        [contextDictionary8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        contextDictionary9 = [v38 contextDictionary];
        [contextDictionary9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v38 setTextUnit:v86];
        [v24 addObject:v38];
      }
    }
  }

  if ((v112[3] & 1) == 0 && v89)
  {
    if (IPGregorianCalendar_once_0 != -1)
    {
      [IPDataDetectorsFeatureExtractor featuresForTextString:inMessageUnit:context:];
    }

    v44 = IPGregorianCalendar_calendar_0;
    v45 = [v44 components:8 fromDate:v89];
    if ([v45 month] == 12)
    {
      v47 = [(IPDataDetectorsFeatureExtractor *)self textRangeReferencingNewYearsEve:lowercaseString];
      if (v47 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = v46;
        v49 = [(IPDataDetectorsFeatureExtractor *)self newYearsEveDayDateFromReferenceDate:v89];
        v50 = [IPFeatureData featureDataWithType:1 value:v49 matchRange:v47, v48];
        contextDictionary10 = [v50 contextDictionary];
        [contextDictionary10 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

        v52 = [v49 dateByAddingTimeInterval:21600.0];
        contextDictionary11 = [v50 contextDictionary];
        [contextDictionary11 setObject:v52 forKeyedSubscript:@"endDate"];

        contextDictionary12 = [v50 contextDictionary];
        [contextDictionary12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"dateTimeIsTenseDependent"];

        contextDictionary13 = [v50 contextDictionary];
        [contextDictionary13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IPFeatureDataContextDateTimeFromIpsosOverlay"];

        [v50 setTextUnit:v86];
        [v24 addObject:v50];
      }
    }
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v24;
  v56 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
  if (!v56)
  {
LABEL_42:
    v65 = 0;
    v66 = obj;
LABEL_43:

    goto LABEL_44;
  }

  v57 = 0;
  v58 = *v98;
  while (2)
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v98 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v60 = *(*(&v97 + 1) + 8 * i);
      if (![v60 type] || objc_msgSend(v60, "type") == 1)
      {
        contextDictionary14 = [v60 contextDictionary];
        v62 = [contextDictionary14 objectForKeyedSubscript:@"allDay"];
        bOOLValue3 = [v62 BOOLValue];

        if (v57)
        {
          v64 = 0;
        }

        else
        {
          v64 = bOOLValue3;
        }

        if ((v64 & 1) == 0)
        {

          goto LABEL_42;
        }

        v57 = v60;
      }
    }

    v56 = [obj countByEnumeratingWithState:&v97 objects:v118 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

  v65 = v57;
  if (v57)
  {
    if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingMorning:lowercaseString]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingNoon:lowercaseString]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingAfternoon:lowercaseString]== 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingEvening:lowercaseString]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(IPDataDetectorsFeatureExtractor *)self textRangeReferencingAllDay:lowercaseString]== 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_44;
            }

            v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:8 minute:0 duration:43200.0];
            contextDictionary15 = [v66 contextDictionary];
            [contextDictionary15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"allDay"];

            contextDictionary16 = [v66 contextDictionary];
            [contextDictionary16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"prefersAllDay"];

            [v66 setTextUnit:v86];
            v65 = v57;
            [obj addObject:v66];
            [obj removeObject:v57];
          }

          else
          {
            v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:19 minute:0 duration:7200.0];
            [v66 setTextUnit:v86];
            [obj addObject:v66];
            [obj removeObject:v57];
          }
        }

        else
        {
          v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:15 minute:0 duration:7200.0];
          [v66 setTextUnit:v86];
          [obj addObject:v66];
          [obj removeObject:v57];
        }
      }

      else
      {
        v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:12 minute:0 duration:3600.0];
        [v66 setTextUnit:v86];
        [obj addObject:v66];
        [obj removeObject:v57];
      }
    }

    else
    {
      v66 = [(IPDataDetectorsFeatureExtractor *)self featureDataComplementingFeatureData:v57 hour:9 minute:0 duration:7200.0];
      [v66 setTextUnit:v86];
      [obj addObject:v66];
      [obj removeObject:v57];
    }

    goto LABEL_43;
  }

LABEL_44:
  [(IPDataDetectorsFeatureExtractor *)self standardizeTimezonesForDetectedFeatures:obj, v80];
  if (v85)
  {
    v91 = v65;
    v69 = [v85 length];
    v70 = objc_opt_new();
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v71 = obj;
    v72 = [v71 countByEnumeratingWithState:&v93 objects:v117 count:16];
    if (v72)
    {
      v73 = *v94;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v94 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v93 + 1) + 8 * j);
          v121.location = [v75 matchRange];
          v122.location = v20;
          v122.length = v19;
          if (NSIntersectionRange(v121, v122).length)
          {
            matchRange = [v75 matchRange];
            [v75 matchRange];
            [v75 setMatchRange:{matchRange - v69, v77}];
            [v75 setTextUnit:v92];
            [v70 addObject:v75];
          }
        }

        v72 = [v71 countByEnumeratingWithState:&v93 objects:v117 count:16];
      }

      while (v72);
    }

    obj = [v70 copy];
    v65 = v91;
  }

  v78 = obj;

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(v115, 8);

  return v78;
}

void __79__IPDataDetectorsFeatureExtractor_featuresForTextString_inMessageUnit_context___block_invoke(uint64_t a1)
{
  v1 = a1;
  v199 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) standardScanner];
  v2 = [*(v1 + 32) timeScanner];
  if (DDScannerScanString())
  {
    v3 = *(*(*(v1 + 72) + 8) + 40);
    v4 = DDScannerCopyResultsWithOptions();
    [v3 addObjectsFromArray:v4];
  }

  if ([*(*(*(v1 + 72) + 8) + 40) count])
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && DDScannerScanString())
  {
    v6 = DDScannerCopyResultsWithOptions();
    v7 = [MEMORY[0x277CBEB18] array];
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v191 objects:v198 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v192;
      v12 = *MEMORY[0x277D04198];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v192 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v191 + 1) + 8 * i);
          Type = DDResultGetType();
          if (CFStringCompare(Type, v12, 0) == kCFCompareEqualTo)
          {
            Range = DDResultGetRange();
            if (([*(v1 + 32) stringContainsNonTimeStrings:*(v1 + 40) aroundRange:{Range, v17}] & 1) == 0)
            {
              [v7 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v191 objects:v198 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      [v7 addObjectsFromArray:*(*(*(v1 + 72) + 8) + 40)];
      v200.length = CFArrayGetCount(v7);
      v200.location = 0;
      CFArraySortValues(v7, v200, IPDDResultRangeCompare, 0);
      if (CFArrayGetCount(v7) >= 2)
      {
        v18 = 0;
        do
        {
          CFArrayGetValueAtIndex(v7, v18);
          v19 = DDResultGetRange();
          v21 = v20;
          v22 = v18 + 1;
          CFArrayGetValueAtIndex(v7, v18 + 1);
          v23 = DDResultGetRange();
          if (v23 < v19 + v21)
          {
            if (v24 >= v21 && v19 == v23)
            {
              v26 = v18;
            }

            else
            {
              v26 = v18 + 1;
            }

            CFArrayRemoveValueAtIndex(v7, v26);
            v22 = v18;
          }

          v18 = v22;
        }

        while (v22 < CFArrayGetCount(v7) - 1);
      }

      objc_storeStrong((*(*(v1 + 72) + 8) + 40), v7);
    }
  }

  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(*(v1 + 72) + 8) + 40), "count")}];
  v28 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(*(*(v1 + 72) + 8) + 40), "count")}];
  v187 = 0u;
  v189 = 0u;
  v190 = 0u;
  v188 = 0u;
  obj = *(*(*(v1 + 72) + 8) + 40);
  v178 = [obj countByEnumeratingWithState:&v187 objects:v197 count:16];
  v180 = v1;
  v172 = v27;
  v173 = v28;
  if (v178)
  {
    v176 = *v188;
    do
    {
      v29 = 0;
      do
      {
        if (*v188 != v176)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v187 + 1) + 8 * v29);
        Category = DDResultGetCategory();
        v32 = DDResultGetRange();
        v34 = v33;
        v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld %ld", v32, v33];
        if (([v28 containsObject:?] & 1) == 0)
        {
          [v28 addObject:v181];
          if (Category > 2)
          {
            switch(Category)
            {
              case 3:
                if (DDResultGetSubresultWithType() && DDResultGetSubresultWithType())
                {
                  goto LABEL_87;
                }

                v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
                DDResultCopyFullAddressComponents();
                v38 = 3;
                break;
              case 4:
                goto LABEL_49;
              case 5:
                if (DDResultHasType())
                {
                  MatchedString = DDResultGetMatchedString();
                  v36 = CFRetain(MatchedString);
                  v28 = v173;
                  v61 = [IPFeatureData featureDataWithType:11 value:v36 matchRange:v32, v34];

                  goto LABEL_85;
                }

                ParsecDomain = DDResultGetParsecDomain();
                if (ParsecDomain > 8 || ((0x19Bu >> ParsecDomain) & 1) == 0)
                {
                  goto LABEL_87;
                }

                v59 = qword_24860E090[ParsecDomain];
                v60 = DDResultGetMatchedString();
                v37 = CFRetain(v60);
                v38 = v59;
                v28 = v173;
                break;
              default:
                goto LABEL_87;
            }

            v61 = [IPFeatureData featureDataWithType:v38 value:v37 matchRange:v32, v34];

            v27 = v172;
          }

          else
          {
            if (!Category)
            {
              if (!DDResultHasType())
              {
                goto LABEL_87;
              }

LABEL_49:
              [v27 addObject:v30];
              goto LABEL_87;
            }

            if (Category != 1)
            {
              if (Category != 2)
              {
                goto LABEL_87;
              }

              DDResultCopyPhoneValue();
              v61 = 0;
              goto LABEL_85;
            }

            v39 = DDResultCopyExtractedURLWithOptions();
            if (v39)
            {
              v40 = [MEMORY[0x277CBEBC0] URLWithString:v39];
              v41 = v40;
              if (v40)
              {
                v42 = [(__CFString *)v40 scheme];
                v43 = [v42 lowercaseString];

                v44 = [(__CFString *)v41 resourceSpecifier];
                if ([(__CFString *)v44 hasPrefix:@"//"])
                {
                  v45 = [(__CFString *)v44 substringFromIndex:2];
                  v46 = v44;
                  v44 = v45;
                }

                v167 = v44;
                v47 = [(__CFString *)v44 length];
                v28 = v173;
                if (v47 && [v43 length])
                {
                  if ([v43 isEqualToString:@"mailto"])
                  {
                    v164 = v43;
                    v161 = v41;
                    v48 = [(__CFString *)v167 componentsSeparatedByString:@"?"];
                    v49 = [v48 firstObject];
                    v50 = [v49 componentsSeparatedByString:{@", "}];

                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v51 = v50;
                    v52 = [v51 countByEnumeratingWithState:&v183 objects:v196 count:16];
                    if (v52)
                    {
                      v53 = v52;
                      v54 = *v184;
                      do
                      {
                        for (j = 0; j != v53; ++j)
                        {
                          if (*v184 != v54)
                          {
                            objc_enumerationMutation(v51);
                          }

                          v56 = *(*(&v183 + 1) + 8 * j);
                          if ([v56 containsString:@"@"])
                          {
                            v57 = [IPFeatureData featureDataWithType:5 value:v56 matchRange:v32, v34];
                            [v57 setTextUnit:*(v180 + 40)];
                            [*(v180 + 48) addObject:v57];
                          }
                        }

                        v53 = [v51 countByEnumeratingWithState:&v183 objects:v196 count:16];
                      }

                      while (v53);
                    }

                    v61 = 0;
                    v1 = v180;
                    v27 = v172;
                    v28 = v173;
                    v41 = v161;
LABEL_71:
                    v43 = v164;
                  }

                  else
                  {
                    if (([v43 isEqualToString:@"tel"] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"telprompt"))
                    {
                      v62 = 6;
                      v63 = v167;
                    }

                    else
                    {
                      if (([v43 isEqualToString:@"facetime"] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"facetime-audio"))
                      {
                        v64 = [(__CFString *)v167 componentsSeparatedByString:@"?"];
                        [v64 firstObject];
                        v65 = v164 = v43;

                        v28 = v173;
                        if ([v65 containsString:@"@"])
                        {
                          v66 = 5;
                        }

                        else
                        {
                          v66 = 6;
                        }

                        v61 = [IPFeatureData featureDataWithType:v66 value:v65 matchRange:v32, v34];

                        goto LABEL_71;
                      }

                      v62 = 4;
                      v63 = v41;
                    }

                    v61 = [IPFeatureData featureDataWithType:v62 value:v63 matchRange:v32, v34];
                  }
                }

                else
                {
                  v61 = 0;
                }
              }

              else
              {
                v61 = 0;
              }
            }

            else
            {
              v61 = 0;
            }
          }

LABEL_85:
          if (v61)
          {
            [v61 setTextUnit:*(v1 + 40)];
            [*(v1 + 48) addObject:v61];
          }
        }

LABEL_87:

        ++v29;
      }

      while (v29 != v178);
      v67 = [obj countByEnumeratingWithState:&v187 objects:v197 count:16];
      v178 = v67;
    }

    while (v67);
  }

  v68 = [v27 count];
  v148 = v68 - 1;
  if (v68 >= 1)
  {
    v69 = v68;
    v165 = 0;
    v152 = 0;
    v70 = 0;
    theString2 = *MEMORY[0x277D04198];
    v155 = *MEMORY[0x277D04190];
    obja = *MEMORY[0x277D040A8];
    v154 = *MEMORY[0x277D040A0];
    v168 = *MEMORY[0x277D040B0];
    v170 = -1;
    v169 = 1;
    v163 = -3;
    v149 = v68;
    while (1)
    {
      v71 = [v27 objectAtIndexedSubscript:v70];

      v72 = DDResultGetType();
      HasType = DDResultHasType();
      v74 = CFStringCompare(v72, theString2, 0);
      v75 = CFStringCompare(v72, v155, 0);
      v182 = CFStringCompare(v72, obja, 0);
      v171 = CFStringCompare(v72, v154, 0);
      v177 = HasType;
      if (HasType)
      {
        v76 = 0;
        v179 = 1;
      }

      else
      {
        v179 = CFStringCompare(v72, v168, 0) == kCFCompareEqualTo;
        v76 = DDResultTimeIsApprox() != 0;
      }

      v162 = v76;
      v77 = v182 && (!v179 || !v76) || DDResultDateExtractionDependsOnContextTense() == 0;
      v157 = v77;
      v78 = v74 == kCFCompareEqualTo || v75 == kCFCompareEqualTo;
      v79 = v78;
      v160 = v79;
      if (!v78)
      {
        break;
      }

      v82 = *(v1 + 56);
      if (!v82)
      {
        v125 = v70 + ~v163;
        if (v125 >= 2)
        {
          v125 = 2;
        }

        v126 = v125 + v70;
        if (v126 >= v148)
        {
          v126 = v148;
        }

        if (v70 < v126)
        {
          v127 = v169;
          v128 = v170 - v163;
          if (v170 - v163 >= 2)
          {
            v128 = 2;
          }

          v129 = v128 + v70;
          if (v129 >= v148)
          {
            v129 = v148;
          }

          v130 = v70 - v129;
          do
          {
            [v27 objectAtIndexedSubscript:v127];

            v131 = DDResultGetType();
            if (CFStringCompare(v131, v168, 0) && CFStringCompare(v131, obja, 0) || !DDResultCopyExtractedDateFromReferenceDate())
            {
              v28 = v173;
            }

            else
            {
              v28 = v173;
            }

            ++v127;
          }

          while (!__CFADD__(v130++, 1));
        }

        v80 = v149;
        v165 = 0;
        goto LABEL_115;
      }

      v80 = v69;
      v166 = v82;
      v81 = 0;
LABEL_118:
      v84 = DDResultGetRange();
      v85 = v177;
      if (v182 == kCFCompareEqualTo)
      {
        v85 = 1;
      }

      v86 = v85 | v179;
      if (v74)
      {
        v87 = 1;
      }

      else
      {
        v87 = v81;
      }

      if (v86 & 1) == 0 && (v87)
      {
        if (v75 && v171)
        {
          v69 = v80;
        }

        else
        {
          v121 = v83;
          v159 = v81;
          if (DDResultCopyExtractedStartDateEndDate())
          {
            if (DDResultDateExtractionDependsOnContextTense())
            {
              v122 = 1;
            }

            else
            {
              v122 = v74 == kCFCompareEqualTo;
            }

            v123 = v122;
            DDResultIsPartialDateRangeOrTimeRange();
            v99 = [IPFeatureData featureDataWithType:1 value:0 matchRange:v84, v121];

            v69 = v149;
            v133 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
            v134 = [v99 contextDictionary];
            [v134 setObject:v133 forKeyedSubscript:@"allDay"];

            v135 = [MEMORY[0x277CCABB0] numberWithBool:v162];
            v136 = [v99 contextDictionary];
            [v136 setObject:v135 forKeyedSubscript:@"timeIsApproximate"];

            v137 = [MEMORY[0x277CCABB0] numberWithBool:v123];
            v138 = [v99 contextDictionary];
            [v138 setObject:v137 forKeyedSubscript:@"dateTimeIsTenseDependent"];

            v139 = [MEMORY[0x277CCABB0] numberWithBool:v160 & v159];
            v140 = [v99 contextDictionary];
            [v140 setObject:v139 forKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];

            v141 = [MEMORY[0x277CCABB0] numberWithInt:v160];
            v142 = [v99 contextDictionary];
            [v142 setObject:v141 forKeyedSubscript:@"dateOnlyContainsTimeInformation"];

            v143 = [MEMORY[0x277CCABB0] numberWithBool:v171 == kCFCompareEqualTo];
            v144 = [v99 contextDictionary];
            [v144 setObject:v143 forKeyedSubscript:@"isDateRange"];

            v145 = [MEMORY[0x277CCABB0] numberWithBool:DDResultNeedsMeridianGuess() != 0];
            v146 = [v99 contextDictionary];
            [v146 setObject:v145 forKeyedSubscript:@"timeNeedsMeridianGuess"];

            *(*(*(v1 + 80) + 8) + 24) = 1;
            v27 = v172;
            v28 = v173;
            if (!v99)
            {
              goto LABEL_195;
            }

            goto LABEL_194;
          }

          v69 = v80;
        }

        goto LABEL_195;
      }

      v158 = v81;
      v153 = v83;
      if (!v152 || v74)
      {
        if (v152)
        {
LABEL_134:
          v69 = v80;
          v90 = v166;
        }

        else
        {
          v124 = *(v1 + 56);
          v69 = v80;
          v90 = v166;
          if (v124 != 0 && !v157)
          {
            v90 = [v124 dateByAddingTimeInterval:-86399.0];
          }
        }

        v89 = 0;
        v166 = v90;
        goto LABEL_136;
      }

      if ((DDResultHasType() & 1) == 0)
      {
        IsApprox = DDResultTimeIsApprox();
        v5 = IsApprox == DDResultTimeIsApprox();
        v28 = v173;
        if (v5)
        {
          goto LABEL_134;
        }
      }

      v195[0] = v71;
      v195[1] = v152;
      [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:2];
      v71 = DDResultCreateFromDateTimeResults();
      CFAutorelease(v71);
      v89 = 1;
      v69 = v80;
LABEL_136:
      if (DDResultCopyExtractedDateFromReferenceDate())
      {
        v91 = 0;
        if (DDResultDateExtractionDependsOnContextTense())
        {
          v92 = 1;
        }

        else
        {
          v92 = v74 == kCFCompareEqualTo;
        }

        v93 = v92;
        v150 = v93;
        v94 = *(v1 + 56);
        if (!v94 || ([v94 timeIntervalSinceDate:v91], fabs(v95) >= 43200.0) || (*(v1 + 96) & 1) != 0 || (*(v1 + 97) & 1) != 0)
        {
          v96 = v91;
        }

        else
        {
          v96 = v91;
          if (v162)
          {
            v1 = v180;
            v147 = *(v180 + 56);

            v162 = 0;
            v96 = v147;
          }

          else
          {
            v162 = 0;
            v1 = v180;
          }
        }

        v151 = v91;
        if (v177)
        {
          [v96 timeIntervalSinceReferenceDate];
          v98 = [v96 dateByAddingTimeInterval:-(v97 + -round(v97 / 600.0) * 600.0)];

          v96 = v98;
        }

        v99 = [IPFeatureData featureDataWithType:1 value:v96 matchRange:v84, v153];
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
        v101 = [v99 contextDictionary];
        [v101 setObject:v100 forKeyedSubscript:@"allDay"];

        v102 = [MEMORY[0x277CCABB0] numberWithBool:v162];
        v103 = [v99 contextDictionary];
        [v103 setObject:v102 forKeyedSubscript:@"timeIsApproximate"];

        v104 = [MEMORY[0x277CCABB0] numberWithBool:v177];
        v105 = [v99 contextDictionary];
        [v105 setObject:v104 forKeyedSubscript:@"isTimeOffset"];

        v106 = [MEMORY[0x277CCABB0] numberWithBool:v150];
        v107 = [v99 contextDictionary];
        [v107 setObject:v106 forKeyedSubscript:@"dateTimeIsTenseDependent"];

        v108 = [MEMORY[0x277CCABB0] numberWithBool:v160 & v158];
        v109 = [v99 contextDictionary];
        [v109 setObject:v108 forKeyedSubscript:@"dateIsTimeOnlyAndReferrengingToSentDate"];

        v110 = [MEMORY[0x277CCABB0] numberWithInt:(v160 | v177) & 1];
        v111 = [v99 contextDictionary];
        [v111 setObject:v110 forKeyedSubscript:@"dateOnlyContainsTimeInformation"];

        v112 = [MEMORY[0x277CCABB0] numberWithBool:v171 == kCFCompareEqualTo];
        v113 = [v99 contextDictionary];
        [v113 setObject:v112 forKeyedSubscript:@"isDateRange"];

        v114 = [MEMORY[0x277CCABB0] numberWithBool:DDResultNeedsMeridianGuess() != 0];
        v115 = [v99 contextDictionary];
        [v115 setObject:v114 forKeyedSubscript:@"timeNeedsMeridianGuess"];

        v116 = v165;
        if (v182 == kCFCompareEqualTo || v179)
        {
          v116 = 0;
        }

        v117 = v163;
        if (v182 == kCFCompareEqualTo || v179)
        {
          v117 = v70;
        }

        if (v171)
        {
          v118 = v116;
        }

        else
        {
          v118 = 0;
        }

        v119 = -3;
        if (v171)
        {
          v119 = v117;
        }

        v163 = v119;
        v165 = v118;
        *(*(*(v1 + 80) + 8) + 24) = 1;
        v28 = v173;
        v69 = v149;
        if ((v89 & 1) == 0)
        {
          if (v166)
          {
            v120 = CFRetain(v166);
            CFAutorelease(v120);
          }

          v152 = v71;
        }

        v27 = v172;
        if (!v99)
        {
          goto LABEL_195;
        }

LABEL_194:
        [v99 setTextUnit:*(v1 + 40)];
        [*(v1 + 48) addObject:v99];

        goto LABEL_195;
      }

      v27 = v172;
LABEL_195:
      ++v70;
      ++v169;
      ++v170;
      if (v70 == v69)
      {
        goto LABEL_202;
      }
    }

    v80 = v69;
LABEL_115:
    v166 = *(v1 + 64);
    v81 = 1;
    goto LABEL_118;
  }

LABEL_202:
}

- (void)standardizeTimezonesForDetectedFeatures:(id)features
{
  v25 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = featuresCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  obj = v5;
  if (!v6)
  {
LABEL_20:

    goto LABEL_21;
  }

  v7 = v6;
  v5 = 0;
  v8 = *v21;
  do
  {
    v9 = 0;
    do
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      if (![v10 type] || objc_msgSend(v10, "type") == 1)
      {
        contextDictionary = [v10 contextDictionary];
        v12 = [contextDictionary objectForKeyedSubscript:@"startDateTimeZone"];

        contextDictionary2 = [v10 contextDictionary];
        v14 = [contextDictionary2 objectForKeyedSubscript:@"endDateTimeZone"];

        if (v12)
        {
          v15 = v12;
          goto LABEL_12;
        }

        if (v14)
        {
          v15 = v14;
LABEL_12:
          v16 = v15;

          [(IPDataDetectorsFeatureExtractor *)self setTimeZone:v16 forDateFeatures:v4];
          [v4 removeAllObjects];
          v5 = v16;
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v17 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    v7 = v17;
  }

  while (v17);

  if (v5)
  {
    [(IPDataDetectorsFeatureExtractor *)self setTimeZone:v5 forDateFeatures:v4];
    goto LABEL_20;
  }

LABEL_21:
}

- (void)setTimeZone:(id)zone forDateFeatures:(id)features
{
  v38 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  featuresCopy = features;
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  secondsFromGMT = [zoneCopy secondsFromGMT];
  v29 = localTimeZone;
  secondsFromGMT2 = [localTimeZone secondsFromGMT];
  v32 = zoneCopy;
  secondsFromGMT3 = [zoneCopy secondsFromGMT];
  v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  secondsFromGMT4 = [v11 secondsFromGMT];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = featuresCopy;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v31 = secondsFromGMT3 - secondsFromGMT4 + 82800;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        contextDictionary = [v17 contextDictionary];
        v19 = [contextDictionary objectForKeyedSubscript:@"allDay"];
        bOOLValue = [v19 BOOLValue];

        v21 = secondsFromGMT - secondsFromGMT2;
        if (bOOLValue)
        {
          v21 = v31;
        }

        v22 = v21;
        value = [v17 value];
        v24 = [value dateByAddingTimeInterval:v22];
        [v17 setValue:v24];

        contextDictionary2 = [v17 contextDictionary];
        [contextDictionary2 setObject:v32 forKeyedSubscript:@"startDateTimeZone"];

        contextDictionary3 = [v17 contextDictionary];
        v27 = [contextDictionary3 objectForKeyedSubscript:@"endDate"];

        if (v27)
        {
          contextDictionary4 = [v17 contextDictionary];
          [contextDictionary4 setObject:0 forKeyedSubscript:@"endDate"];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }
}

- (id)featureDataComplementingFeatureData:(id)data hour:(unint64_t)hour minute:(unint64_t)minute duration:(double)duration
{
  dataCopy = data;
  value = [dataCopy value];
  if (IPGregorianCalendar_once_0 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v11 = IPGregorianCalendar_calendar_0;
  v12 = [v11 components:2097182 fromDate:value];
  v13 = objc_opt_new();
  [v13 setDay:{objc_msgSend(v12, "day")}];
  [v13 setMonth:{objc_msgSend(v12, "month")}];
  [v13 setYear:{objc_msgSend(v12, "year")}];
  [v13 setEra:{objc_msgSend(v12, "era")}];
  timeZone = [v12 timeZone];
  [v13 setTimeZone:timeZone];

  [v13 setHour:hour];
  [v13 setMinute:minute];
  v15 = [v11 dateFromComponents:v13];

  matchRange = [dataCopy matchRange];
  v18 = [IPFeatureData featureDataWithType:1 value:v15 matchRange:matchRange, v17];
  contextDictionary = [v18 contextDictionary];
  [contextDictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"allDay"];

  contextDictionary2 = [v18 contextDictionary];
  v21 = MEMORY[0x277CBEC38];
  [contextDictionary2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"timeIsApproximate"];

  contextDictionary3 = [v18 contextDictionary];
  [contextDictionary3 setObject:v21 forKeyedSubscript:@"dateTimeComplement"];

  contextDictionary4 = [dataCopy contextDictionary];

  v24 = [contextDictionary4 objectForKeyedSubscript:@"dateTimeIsTenseDependent"];
  contextDictionary5 = [v18 contextDictionary];
  [contextDictionary5 setObject:v24 forKeyedSubscript:@"dateTimeIsTenseDependent"];

  if (duration > 0.0)
  {
    v26 = [v15 dateByAddingTimeInterval:duration];
    contextDictionary6 = [v18 contextDictionary];
    [contextDictionary6 setObject:v26 forKeyedSubscript:@"endDate"];
  }

  return v18;
}

- (id)stringByReplacingDetectedDataWithNGramMarkersInString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [(IPDataDetectorsFeatureExtractor *)self featuresForTextString:stringCopy inMessageUnit:0 context:0];
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 matchRange] >= v10 && v10 < objc_msgSend(v13, "matchRange"))
        {
          v14 = [stringCopy substringWithRange:{v10, objc_msgSend(v13, "matchRange") - v10}];
          [v6 appendString:v14];

          nGramMarker = [v13 nGramMarker];
          [v6 appendString:nGramMarker];

          matchRange = [v13 matchRange];
          v10 = matchRange + v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = [stringCopy substringWithRange:{v10, objc_msgSend(stringCopy, "length") - v10}];
  [v6 appendString:v18];

  return v6;
}

- (id)thisSaturdayDateFromReferenceDate:(id)date
{
  v3 = IPGregorianCalendar_once_0;
  dateCopy = date;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:25088 fromDate:dateCopy];

  [v6 setWeekday:7];
  v7 = [v5 dateFromComponents:v6];

  return v7;
}

- (id)tomorrowDateFromReferenceDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  [v4 setDay:1];
  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 dateByAddingComponents:v4 toDate:dateCopy options:0];

  v8 = [v6 components:28 fromDate:v7];
  v9 = [v6 dateFromComponents:v8];

  return v9;
}

- (id)valentineDayDateFromReferenceDate:(id)date
{
  v3 = IPGregorianCalendar_once_0;
  dateCopy = date;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:4 fromDate:dateCopy];

  v7 = objc_opt_new();
  [v7 setDay:14];
  [v7 setMonth:2];
  [v7 setYear:{objc_msgSend(v6, "year")}];
  [v7 setHour:19];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (id)newYearsEveDayDateFromReferenceDate:(id)date
{
  v3 = IPGregorianCalendar_once_0;
  dateCopy = date;
  if (v3 != -1)
  {
    [IPDataDetectorsFeatureExtractor featureDataComplementingFeatureData:hour:minute:duration:];
  }

  v5 = IPGregorianCalendar_calendar_0;
  v6 = [v5 components:4 fromDate:dateCopy];

  v7 = objc_opt_new();
  [v7 setDay:31];
  [v7 setMonth:12];
  [v7 setYear:{objc_msgSend(v6, "year")}];
  [v7 setHour:20];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (_NSRange)textRangeReferencingTomorrow:(id)tomorrow
{
  tomorrowCopy = tomorrow;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingTomorrow" generator:&__block_literal_global_84];
  v5 = [v4 rangeOfFirstMatchInString:tomorrowCopy options:2 range:{0, objc_msgSend(tomorrowCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __64__IPDataDetectorsFeatureExtractor_textRangeReferencingTomorrow___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:tomorrow|demain|(?<!la)mañana|domani|morgen)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingThisWeekEnd:(id)end
{
  endCopy = end;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingThisWeekEnd" generator:&__block_literal_global_92];
  v5 = [v4 rangeOfFirstMatchInString:endCopy options:2 range:{0, objc_msgSend(endCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingThisWeekEnd___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:(?:this|(?<!de)ce) week-?end|(?:este|pr[óo]ximo) (?:finde|week-?end|fin de semana)|(?:quest|prossim)o (?:week- ?end|weekend|fine settimana)|(?:diese[sm]|kommende[sn]) w(?:eek-?end|ochenende))" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNextWeekEnd:(id)end
{
  endCopy = end;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNextWeekEnd" generator:&__block_literal_global_100];
  v5 = [v4 rangeOfFirstMatchInString:endCopy options:2 range:{0, objc_msgSend(endCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingNextWeekEnd___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:next week-?end|le week-?end prochain|n(?:ae|ä)chste[sn] w(?:eek-?end|ochenende))" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingAllDay:(id)day
{
  dayCopy = day;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingAllDay" generator:&__block_literal_global_108];
  v5 = [v4 rangeOfFirstMatchInString:dayCopy options:2 range:{0, objc_msgSend(dayCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __62__IPDataDetectorsFeatureExtractor_textRangeReferencingAllDay___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:all day|toute la journée)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingValentineDay:(id)day
{
  dayCopy = day;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingValentineDay" generator:&__block_literal_global_116];
  v5 = [v4 rangeOfFirstMatchInString:dayCopy options:2 range:{0, objc_msgSend(dayCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __68__IPDataDetectorsFeatureExtractor_textRangeReferencingValentineDay___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:valentine(?:['’]?s)? day|s(?:ain)?t[ \\-]valentin|san valent[ií]n|san valentino|valentinstag)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNewYearsEve:(id)eve
{
  eveCopy = eve;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNewYearsEve" generator:&__block_literal_global_124];
  v5 = [v4 rangeOfFirstMatchInString:eveCopy options:2 range:{0, objc_msgSend(eveCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __67__IPDataDetectorsFeatureExtractor_textRangeReferencingNewYearsEve___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:new year(?:['’]s)? eve|le nouvel an|du jour de l['’]an|du nouvel an|nochevieja|año nuevo|capodanno|l['’]ultimo dell['’]anno|silvester)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingMorning:(id)morning
{
  morningCopy = morning;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingMorning" generator:&__block_literal_global_132];
  v5 = [v4 rangeOfFirstMatchInString:morningCopy options:2 range:{0, objc_msgSend(morningCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __63__IPDataDetectorsFeatureExtractor_textRangeReferencingMorning___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:morning|matin|(début|fin) de matinée|la mañana|mattina|morgen früh|清晨|上午|朝)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingNoon:(id)noon
{
  noonCopy = noon;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingNoon" generator:&__block_literal_global_140];
  v5 = [v4 rangeOfFirstMatchInString:noonCopy options:2 range:{0, objc_msgSend(noonCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __60__IPDataDetectorsFeatureExtractor_textRangeReferencingNoon___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:lunch|(?<!after)noon|(?<!petit( |-))déjeuner|(?<!après-)midi|migdia|mezzogiorno|alla mezza|mitta(?:g(?:essen)?|ch)|中午|正午)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingAfternoon:(id)afternoon
{
  afternoonCopy = afternoon;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingAfternoon" generator:&__block_literal_global_148];
  v5 = [v4 rangeOfFirstMatchInString:afternoonCopy options:2 range:{0, objc_msgSend(afternoonCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __65__IPDataDetectorsFeatureExtractor_textRangeReferencingAfternoon___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:after(?:noon| lunch)|après(?:-midi| d[eé]jeuner)|tarde|después de comer|pomeriggio|nachmittag|下午|午後)" options:65 error:&v2];

  return v0;
}

- (_NSRange)textRangeReferencingEvening:(id)evening
{
  eveningCopy = evening;
  v4 = [IPRegexToolbox regularExpressionWithKey:@"textRangeReferencingEvening" generator:&__block_literal_global_156];
  v5 = [v4 rangeOfFirstMatchInString:eveningCopy options:2 range:{0, objc_msgSend(eveningCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

id __63__IPDataDetectorsFeatureExtractor_textRangeReferencingEvening___block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:evening|dinner|(?<!bonne)soirée|ce soir|tomar algo|cenar|(?:una |la |sta)sera|晚|夜)" options:65 error:&v2];

  return v0;
}

- (id)queue
{
  if (queue__onceToken_0 != -1)
  {
    [IPDataDetectorsFeatureExtractor queue];
  }

  v3 = queue__ipExprOnceResult_0;

  return v3;
}

void __40__IPDataDetectorsFeatureExtractor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("IPDataDetectorsFeatureExtractor", v1);
  v3 = queue__ipExprOnceResult_0;
  queue__ipExprOnceResult_0 = v2;

  objc_autoreleasePoolPop(v0);
}

@end