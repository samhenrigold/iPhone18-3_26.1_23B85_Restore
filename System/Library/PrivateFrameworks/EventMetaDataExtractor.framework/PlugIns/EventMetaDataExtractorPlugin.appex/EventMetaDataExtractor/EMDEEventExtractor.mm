@interface EMDEEventExtractor
+ (id)postProcessTitle:(id)title messageBody:(id)body;
- (BOOL)isEndTimeSignificantForEvent:(id)event;
- (BOOL)isStartTimeSignificantForEvent:(id)event;
- (EMDEEventExtractor)initWithConfigFile:(id)file assetFolderPath:(id)path error:(id *)error;
- (id)createEventResultForTravelCategory:(id)category title:(id)title date:(id)date;
- (id)createEventResultFromTitle:(id)title date:(id)date messageBody:(id)body;
- (id)dateStringForDate:(id)date;
- (id)extractDates;
- (id)extractEventDatesFromModelDateOutput:(id)output;
- (id)extractEventFromMessage:(id)message error:(id *)error;
- (id)extractTitleFromMessage:(id)message error:(id *)error;
- (id)extractTitles;
- (id)formatString:(id)string;
- (id)getDateFromString:(id)string;
@end

@implementation EMDEEventExtractor

- (EMDEEventExtractor)initWithConfigFile:(id)file assetFolderPath:(id)path error:(id *)error
{
  fileCopy = file;
  pathCopy = path;
  v10 = pathCopy;
  if (!fileCopy || !pathCopy)
  {
    v16 = extractionLogHandle(pathCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10008B38C();
    }

    v27 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithFormat:@"Found nil in input params during init of EMDEEventExtractor"];
    v28 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v18];

    goto LABEL_16;
  }

  v24.receiver = self;
  v24.super_class = EMDEEventExtractor;
  self = [(EMDEEventExtractor *)&v24 init];
  v11 = objc_alloc_init(EMDEModelWrapper);
  modelWrapper = self->_modelWrapper;
  self->_modelWrapper = v11;

  v13 = self->_modelWrapper;
  if (!v13)
  {
    v20 = extractionLogHandle(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10008B350();
    }

    v25 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithFormat:@"Couldn't instantiate EMDEModelWrapper"];
    v26 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    *error = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v22];

    goto LABEL_16;
  }

  v14 = [(EMDEModelWrapper *)v13 loadConfigFromFile:fileCopy assetFolderPath:v10 error:error];
  if (error && *error)
  {
    v15 = extractionLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10008B2D8();
    }

LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  self->_extractionFailureCode = -1;
  self = self;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (BOOL)isStartTimeSignificantForEvent:(id)event
{
  v4 = [event objectForKeyedSubscript:@"EMDE_START_TIME_IS_SIGNIFICANT"];
  bOOLValue = [v4 BOOLValue];

  return (event != 0) & bOOLValue;
}

- (BOOL)isEndTimeSignificantForEvent:(id)event
{
  v4 = [event objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
  bOOLValue = [v4 BOOLValue];

  return (event != 0) & bOOLValue;
}

- (id)dateStringForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = +[NSTimeZone localTimeZone];
  [v4 setTimeZone:v5];

  v6 = [v4 stringFromDate:dateCopy];

  return v6;
}

- (id)formatString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if ([v6 length])
    {
      v7 = [v6 substringWithRange:{0, 1}];
      uppercaseString = [v7 uppercaseString];
      v9 = [v6 stringByReplacingCharactersInRange:0 withString:{1, uppercaseString}];

      v6 = v9;
    }

    v10 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @".,!?:_(-");
    v11 = [v6 stringByTrimmingCharactersInSet:v10];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

+ (id)postProcessTitle:(id)title messageBody:(id)body
{
  titleCopy = title;
  bodyCopy = body;
  if (titleCopy)
  {
    v7 = [titleCopy length];
    if (bodyCopy)
    {
      if (v7 && [bodyCopy length] && objc_msgSend(titleCopy, "rangeOfString:options:", @"Travel booking", 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = objc_alloc_init(DDScannerHelper);
        v8 = +[NSLocale currentLocale];
        v9 = [(DDScannerHelper *)v19 runDataDetectorsOnBody:bodyCopy locale:v8];

        v10 = [v9 objectForKeyedSubscript:@"error"];

        if (!v10)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = [v9 objectForKeyedSubscript:@"extractions"];
          v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            v15 = *v21;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"ddType"];
                v18 = [v17 integerValue] == 8;

                if (v18)
                {
                  v11 = [titleCopy stringByReplacingOccurrencesOfString:@"Travel booking from" withString:@"Flight:" options:1 range:{0, objc_msgSend(titleCopy, "length")}];

                  goto LABEL_9;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }
      }
    }
  }

  v11 = titleCopy;
LABEL_9:

  return v11;
}

- (id)extractDates
{
  runBeamInferenceForDate = [(EMDEModelWrapper *)self->_modelWrapper runBeamInferenceForDate];
  v4 = runBeamInferenceForDate;
  if (runBeamInferenceForDate)
  {
    v5 = extractionLogHandle(runBeamInferenceForDate);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 objectForKey:@"prediction"];
      sub_10008B404(v6, v10, v5);
    }

    v7 = [(EMDEEventExtractor *)self extractEventDatesFromModelDateOutput:v4];
  }

  else
  {
    v8 = extractionLogHandle(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Predicted Date String.", v10, 2u);
    }

    v7 = 0;
    self->_extractionFailureCode = 1;
  }

  return v7;
}

- (id)extractEventDatesFromModelDateOutput:(id)output
{
  outputCopy = output;
  v5 = outputCopy;
  if (outputCopy)
  {
    v6 = [outputCopy objectForKey:@"score"];
    [v6 floatValue];
    v8 = v7;

    v9 = +[EMDEUtils config];
    v10 = [v9 objectForKeyedSubscript:@"EMDE_DATE_THRESHOLD"];
    if (v10)
    {
      v11 = +[EMDEUtils config];
      v12 = [v11 objectForKeyedSubscript:@"EMDE_DATE_THRESHOLD"];
      [v12 floatValue];
      v14 = v13;

      if (v8 < v14)
      {
        v16 = extractionLogHandle(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Date predicted has score below allowed threshold. Ignoring prediction.", buf, 2u);
        }

        v17 = 0;
        self->_extractionFailureCode = 3;
        goto LABEL_90;
      }
    }

    else
    {
    }

    v19 = [v5 objectForKey:@"prediction"];
    v99 = objc_alloc_init(NSMutableArray);
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v22 = [v19 rangeOfString:v21];

    v23 = +[EMDEUtils config];
    v24 = [v23 objectForKeyedSubscript:@"EMDE_HOTEL_BOOKING_START_DATE_TOKEN"];
    v25 = [v19 rangeOfString:v24 options:1];

    if (v22 == 0x7FFFFFFFFFFFFFFFLL && v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [(EMDEEventExtractor *)self getDateFromString:v19];
      v27 = [v26 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      integerValue = [v27 integerValue];

      v29 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v26];
      if (integerValue <= 5 && ((1 << integerValue) & 0x36) != 0 && v29)
      {
        [v99 addObject:v26];
LABEL_32:

LABEL_88:
        v76 = v99;
        v17 = v99;
        goto LABEL_89;
      }

      if (v26)
      {
        v55 = extractionLogHandle(v29);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v56 = 6;
      }

      else
      {
        v55 = extractionLogHandle(v29);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v56 = 5;
      }

      self->_extractionFailureCode = v56;
      goto LABEL_68;
    }

    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = +[EMDEUtils config];
      v31 = [v30 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
      v26 = [v19 componentsSeparatedByString:v31];

      v32 = objc_alloc_init(NSMutableDictionary);
      v33 = [v26 objectAtIndexedSubscript:0];
      v34 = [(EMDEEventExtractor *)self getDateFromString:v33];

      v35 = [v34 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      integerValue2 = [v35 integerValue];

      v37 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v34];
      if ((integerValue2 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v38 == 1)
      {
        v39 = [v34 objectForKeyedSubscript:@"EMDE_START_DATE"];
        [v32 setObject:v39 forKeyedSubscript:@"EMDE_START_DATE"];

        if ([v26 count] == 2)
        {
          v40 = [v26 objectAtIndexedSubscript:1];
          v41 = +[EMDEUtils config];
          v42 = [v41 objectForKeyedSubscript:@"EMDE_HOTEL_BOOKING_END_DATE_TOKEN"];
          v43 = [v40 rangeOfString:v42 options:1];

          if (v43 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = [v26 objectAtIndexedSubscript:1];
            v45 = [(EMDEEventExtractor *)self getDateFromString:v44];

            v46 = [v45 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
            integerValue3 = [v46 integerValue];

            v48 = [v45 objectForKeyedSubscript:@"EMDE_START_DATE"];
            v49 = [v34 objectForKeyedSubscript:@"EMDE_START_DATE"];
            v50 = [v48 compare:v49];

            if (v45 && (integerValue3 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v50 == 1)
            {
              v51 = [v45 objectForKeyedSubscript:@"EMDE_START_DATE"];
              [v32 setObject:v51 forKeyedSubscript:@"EMDE_END_DATE"];

              [v32 setObject:&__kCFBooleanTrue forKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
            }
          }
        }

        v52 = [v32 objectForKeyedSubscript:@"EMDE_END_DATE"];

        if (!v52)
        {
          v53 = [v34 objectForKeyedSubscript:@"EMDE_START_DATE"];
          v54 = [v53 dateByAddingTimeInterval:3600.0];
          [v32 setObject:v54 forKeyedSubscript:@"EMDE_END_DATE"];

          [v32 setObject:&__kCFBooleanFalse forKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
        }

        [v99 addObject:v32];

        goto LABEL_32;
      }

      if (v34)
      {
        v74 = extractionLogHandle(v37);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v75 = 6;
      }

      else
      {
        v74 = extractionLogHandle(v37);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v75 = 5;
      }

      self->_extractionFailureCode = v75;
LABEL_68:
      v17 = &__NSArray0__struct;
      v76 = v99;
LABEL_89:

      goto LABEL_90;
    }

    v57 = +[EMDEUtils config];
    v58 = [v57 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v59 = [v19 componentsSeparatedByString:v58];

    v60 = [v59 objectAtIndexedSubscript:0];
    v61 = [(EMDEEventExtractor *)self getDateFromString:v60];

    v62 = [v61 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
    integerValue4 = [v62 integerValue];

    v64 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v61];
    if ((integerValue4 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    if (v65 == 1)
    {
      [v99 addObject:v61];
      if ([v59 count] != 2)
      {
LABEL_87:

        goto LABEL_88;
      }

      v66 = [v59 objectAtIndexedSubscript:1];
      v67 = [(EMDEEventExtractor *)self getDateFromString:v66];

      v68 = [v67 objectForKeyedSubscript:@"EMDE_EXTRACTION_TYPE"];
      integerValue5 = [v68 integerValue];

      v70 = [(EMDEEventExtractor *)self isStartTimeSignificantForEvent:v67];
      if ((integerValue5 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      if (v71 == 1)
      {
        [v99 addObject:v67];
LABEL_86:

        goto LABEL_87;
      }

      if (integerValue5 - 1 < 2)
      {
        v77 = v70;
      }

      else
      {
        v77 = 0;
      }

      if (v77 != 1)
      {
        goto LABEL_86;
      }

      v98 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v78 = +[NSTimeZone localTimeZone];
      [v98 setTimeZone:v78];

      v79 = [v61 objectForKeyedSubscript:@"EMDE_START_DATE"];
      v97 = [v98 components:28 fromDate:v79];

      v80 = [v67 objectForKeyedSubscript:@"EMDE_START_DATE"];
      v81 = [v98 components:240 fromDate:v80];

      v96 = v81;
      [v97 setHour:{objc_msgSend(v81, "hour")}];
      [v97 setMinute:{objc_msgSend(v81, "minute")}];
      [v97 setSecond:{objc_msgSend(v81, "second")}];
      v95 = [v98 dateFromComponents:v97];
      if ([(EMDEEventExtractor *)self isEndTimeSignificantForEvent:v67])
      {
        v82 = [v61 objectForKeyedSubscript:@"EMDE_START_DATE"];
        v83 = [v98 components:28 fromDate:v82];

        v84 = [v67 objectForKeyedSubscript:@"EMDE_END_DATE"];
        v85 = [v98 components:240 fromDate:v84];

        [v83 setHour:{objc_msgSend(v85, "hour")}];
        [v83 setMinute:{objc_msgSend(v85, "minute")}];
        [v83 setSecond:{objc_msgSend(v85, "second")}];
        v86 = [v85 day];
        if (v86 == [v96 day] + 1 || objc_msgSend(v85, "day") == 1 && objc_msgSend(v96, "day") != 1)
        {
          [v83 setDay:{objc_msgSend(v83, "day") + 1}];
        }

        v88 = [v98 dateFromComponents:v83];

        v87 = &__kCFBooleanTrue;
      }

      else
      {
        [v95 dateByAddingTimeInterval:3600.0];
        v88 = v87 = &__kCFBooleanFalse;
      }

      v89 = [v88 compare:v95];
      v90 = v89;
      if (v89 == 1)
      {
        v101[0] = @"EMDE_START_DATE";
        v101[1] = @"EMDE_END_DATE";
        v102[0] = v95;
        v102[1] = v88;
        v101[2] = @"EMDE_EXTRACTION_TYPE";
        v91 = [v67 objectForKeyedSubscript:?];
        v101[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
        v102[2] = v91;
        v102[3] = v87;
        v92 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:4];

        [v99 addObject:v92];
      }

      else
      {
        v93 = extractionLogHandle(v89);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        self->_extractionFailureCode = 6;
      }

      if (v90 == 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v61)
      {
        v72 = extractionLogHandle(v64);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Significant Start DateTime found for the event.", buf, 2u);
        }

        v73 = 6;
      }

      else
      {
        v72 = extractionLogHandle(v64);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Data Detector failed to return any date from string", buf, 2u);
        }

        v73 = 5;
      }

      self->_extractionFailureCode = v73;
    }

    goto LABEL_68;
  }

  v18 = extractionLogHandle(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10008B45C();
  }

  v17 = 0;
LABEL_90:

  return v17;
}

- (id)extractTitles
{
  runBeamInferenceForTitle = [(EMDEModelWrapper *)self->_modelWrapper runBeamInferenceForTitle];
  v4 = runBeamInferenceForTitle;
  if (runBeamInferenceForTitle)
  {
    v5 = [runBeamInferenceForTitle objectForKey:@"prediction"];
    v6 = [v4 objectForKey:@"score"];
    [v6 floatValue];
    v8 = v7;

    v10 = extractionLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B498(v5, v10, v8);
    }

    v11 = +[EMDEUtils config];
    v12 = [v11 objectForKeyedSubscript:@"EMDE_TITLE_THRESHOLD"];
    if (v12)
    {
      v13 = +[EMDEUtils config];
      v14 = [v13 objectForKeyedSubscript:@"EMDE_TITLE_THRESHOLD"];
      [v14 floatValue];
      v16 = v8 < v15;

      if (v16)
      {
        v18 = extractionLogHandle(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Title predicted has score below allowed threshold. Ignoring prediction.", v32, 2u);
        }

        v19 = 0;
        self->_extractionFailureCode = 4;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v21 = +[EMDEUtils config];
    v22 = [v21 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
    v23 = [v5 rangeOfString:v22] == 0x7FFFFFFFFFFFFFFFLL;

    if (v23)
    {
      v24 = [(EMDEEventExtractor *)self formatString:v5];
      v33 = v24;
      v19 = [NSArray arrayWithObjects:&v33 count:1];
    }

    else
    {
      v26 = +[EMDEUtils config];
      v27 = [v26 objectForKeyedSubscript:@"EMDE_EVENT_SEPARATOR"];
      v28 = [v5 componentsSeparatedByString:v27];
      v19 = [v28 mutableCopy];

      for (i = 0; [v19 count] > i; ++i)
      {
        v30 = [v19 objectAtIndexedSubscript:i];
        v31 = [(EMDEEventExtractor *)self formatString:v30];
        [v19 setObject:v31 atIndexedSubscript:i];
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v20 = extractionLogHandle(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No Predicted Title String.", v32, 2u);
  }

  v19 = 0;
  self->_extractionFailureCode = 2;
LABEL_16:

  return v19;
}

- (id)extractTitleFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy)
  {
    self->_extractionFailureCode = -1;
    v8 = extractionLogHandle(messageCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B520(v7, v8);
    }

    if ([(EMDEModelWrapper *)self->_modelWrapper prepareInputsForText:v7 error:error]&& ([(EMDEEventExtractor *)self extractTitles], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      if (self->_extractionFailureCode == -1)
      {
        self->_extractionFailureCode = 0;
      }

      v20[0] = @"title";
      v11 = [v9 objectAtIndexedSubscript:0];
      v20[1] = @"errorCode";
      v21[0] = v11;
      v12 = [NSNumber numberWithInteger:self->_extractionFailureCode];
      v21[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    }

    else
    {
      v18 = @"errorCode";
      v14 = [NSNumber numberWithInteger:self->_extractionFailureCode];
      v19 = v14;
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v10 = v14;
    }

    goto LABEL_14;
  }

  v15 = extractionLogHandle(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10008B598();
  }

  if (error)
  {
    v22 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"Found nil in inputMessage for extractEventFromMessage"];
    v23 = v16;
    v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v10];
    *error = v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)extractEventFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v76 = messageCopy;
  if (messageCopy)
  {
    selfCopy = self;
    self->_extractionFailureCode = -1;
    v6 = extractionLogHandle(messageCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10008B5D4(v76, v6);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v7 = [&off_1000B0170 countByEnumeratingWithState:&v82 objects:v93 count:16];
    v8 = selfCopy;
    if (v7)
    {
      v9 = *v83;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v83 != v9)
          {
            objc_enumerationMutation(&off_1000B0170);
          }

          if ([v76 rangeOfString:*(*(&v82 + 1) + 8 * i) options:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v74 = objc_alloc_init(DDScannerHelper);
            v11 = +[NSLocale currentLocale];
            v75 = [(DDScannerHelper *)v74 runDataDetectorsOnBody:v76 locale:v11];

            v12 = [v75 objectForKeyedSubscript:@"error"];
            LOBYTE(v11) = v12 == 0;

            if ((v11 & 1) == 0)
            {

              v8 = selfCopy;
              continue;
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v17 = [v75 objectForKeyedSubscript:@"extractions"];
            v18 = [v17 countByEnumeratingWithState:&v78 objects:v92 count:16];
            if (!v18)
            {
              goto LABEL_30;
            }

            v19 = *v79;
            while (2)
            {
              v20 = 0;
LABEL_22:
              if (*v79 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = [*(*(&v78 + 1) + 8 * v20) objectForKeyedSubscript:@"ddType"];
              if ([v21 integerValue] == 8)
              {
                v22 = [v76 rangeOfString:@"Flight" options:1] == 0x7FFFFFFFFFFFFFFFLL;

                if (v22)
                {
                  [@"Flight " stringByAppendingString:v76];
                  v76 = v21 = v76;
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_27:
              }

              if (v18 == ++v20)
              {
                v18 = [v17 countByEnumeratingWithState:&v78 objects:v92 count:16];
                if (!v18)
                {
LABEL_30:

                  v8 = selfCopy;
                  goto LABEL_31;
                }

                continue;
              }

              goto LABEL_22;
            }
          }
        }

        v7 = [&off_1000B0170 countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v7);
    }

LABEL_31:
    v23 = [(EMDEModelWrapper *)v8->_modelWrapper prepareInputsForText:v76 error:error];
    if (v23)
    {
      extractDates = [(EMDEEventExtractor *)selfCopy extractDates];
      v25 = extractDates;
      if (extractDates)
      {
        extractDates = [extractDates count];
        if (extractDates)
        {
          extractDates = [(EMDEEventExtractor *)selfCopy extractTitles];
          if (extractDates)
          {
            v26 = extractDates;
            if ([v25 count] == 2 && objc_msgSend(v26, "count") == 2)
            {
              v27 = [v25 objectAtIndexedSubscript:0];
              v28 = [v27 objectForKeyedSubscript:@"EMDE_START_DATE"];
              [v28 timeIntervalSinceNow];
              if (v29 > 31536000.0)
              {
              }

              else
              {
                v30 = [v25 objectAtIndexedSubscript:1];
                v31 = [v30 objectForKeyedSubscript:@"EMDE_START_DATE"];
                [v31 timeIntervalSinceNow];
                v33 = v32 > 31536000.0;

                if (!v33)
                {
                  v35 = [v25 objectAtIndexedSubscript:0];
                  v36 = [v35 objectForKeyedSubscript:@"EMDE_START_DATE"];
                  [v36 timeIntervalSinceNow];
                  if (v37 < 0.0)
                  {
                  }

                  else
                  {
                    v38 = [v25 objectAtIndexedSubscript:1];
                    v39 = [v38 objectForKeyedSubscript:@"EMDE_START_DATE"];
                    [v39 timeIntervalSinceNow];
                    v41 = v40 < 0.0;

                    if (!v41)
                    {
                      v43 = [v26 objectAtIndexedSubscript:0];
                      v44 = [v25 objectAtIndexedSubscript:0];
                      v45 = [(EMDEEventExtractor *)selfCopy createEventResultFromTitle:v43 date:v44 messageBody:v76];

                      v46 = [v26 objectAtIndexedSubscript:1];
                      v47 = [v25 objectAtIndexedSubscript:1];
                      v48 = [(EMDEEventExtractor *)selfCopy createEventResultFromTitle:v46 date:v47 messageBody:v76];

                      selfCopy->_extractionFailureCode = 0;
                      v91[0] = v45;
                      v91[1] = v48;
                      v49 = [NSArray arrayWithObjects:v91 count:2];

LABEL_49:
                      if ([v49 count])
                      {
                        v88[1] = @"errorCode";
                        v89[0] = v49;
                        v88[0] = @"events";
                        v52 = [NSNumber numberWithInteger:selfCopy->_extractionFailureCode];
                        v89[1] = v52;
                        [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];
                      }

                      else
                      {
                        v86 = @"errorCode";
                        v52 = [NSNumber numberWithInteger:selfCopy->_extractionFailureCode];
                        v87 = v52;
                        [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                      }
                      v16 = ;

                      v15 = v76;
                      goto LABEL_53;
                    }
                  }

                  v67 = extractionLogHandle(v42);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is in past", buf, 2u);
                  }

                  goto LABEL_79;
                }
              }

              v60 = extractionLogHandle(v34);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is not in near future", buf, 2u);
              }

              goto LABEL_74;
            }

            v54 = [v25 count];
            if (v54)
            {
              v54 = [v26 count];
              if (v54)
              {
                v55 = [v25 objectAtIndexedSubscript:0];
                v56 = [v55 objectForKeyedSubscript:@"EMDE_START_DATE"];
                [v56 timeIntervalSinceNow];
                v58 = v57 > 31536000.0;

                if (!v58)
                {
                  v62 = [v25 objectAtIndexedSubscript:0];
                  v63 = [v62 objectForKeyedSubscript:@"EMDE_START_DATE"];
                  [v63 timeIntervalSinceNow];
                  v65 = v64 < 0.0;

                  if (!v65)
                  {
                    v69 = [v26 objectAtIndexedSubscript:0];
                    v70 = [v25 objectAtIndexedSubscript:0];
                    v71 = [(EMDEEventExtractor *)selfCopy createEventResultFromTitle:v69 date:v70 messageBody:v76];

                    selfCopy->_extractionFailureCode = 0;
                    v90 = v71;
                    v49 = [NSArray arrayWithObjects:&v90 count:1];

                    goto LABEL_49;
                  }

                  v67 = extractionLogHandle(v66);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted events because event date is in past", buf, 2u);
                  }

LABEL_79:

                  v49 = 0;
                  v68 = 7;
                  goto LABEL_80;
                }

                v60 = extractionLogHandle(v59);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Skipping extracted event because event date is not in near future", buf, 2u);
                }

LABEL_74:

                v49 = 0;
                v68 = 8;
LABEL_80:
                selfCopy->_extractionFailureCode = v68;
                goto LABEL_49;
              }
            }

            v61 = extractionLogHandle(v54);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No event extracted.", buf, 2u);
            }

LABEL_48:
            v49 = 0;
            goto LABEL_49;
          }
        }
      }
    }

    else
    {
      v50 = extractionLogHandle(v23);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10008B64C();
      }

      v25 = 0;
    }

    v51 = extractionLogHandle(extractDates);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "EMDEEventExtractor - No event extracted.", buf, 2u);
    }

    v26 = 0;
    goto LABEL_48;
  }

  v13 = extractionLogHandle(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10008B6C4();
  }

  if (error)
  {
    v94 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Found nil in inputMessage for extractEventFromMessage"];
    v95 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v15];
    *error = v16 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v16 = 0;
LABEL_54:

  return v16;
}

- (id)getDateFromString:(id)string
{
  stringCopy = string;
  v38 = objc_alloc_init(DDScannerHelper);
  v3 = +[NSLocale currentLocale];
  v4 = [(DDScannerHelper *)v38 runDataDetectorsOnBody:stringCopy locale:v3];

  v37 = v4;
  v5 = [v4 objectForKeyedSubscript:@"error"];

  if (v5)
  {
    v7 = extractionLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v37 objectForKeyedSubscript:@"error"];
      sub_10008B700(v8, buf, v7);
    }

    v9 = v37;
    v10 = v37;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v37 objectForKeyedSubscript:@"extractions"];
    v11 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v11)
    {
      v12 = *v41;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"type"];
          v16 = [@"NSTextCheckingTypeDate" isEqualToString:v15];

          if (v16)
          {
            v17 = [v14 objectForKeyedSubscript:@"startDate"];
            if (v17)
            {
              v18 = [v14 objectForKeyedSubscript:@"endDate"];
              v19 = v18 == 0;

              if (!v19)
              {
                v47[0] = @"EMDE_START_DATE";
                v29 = [v14 objectForKeyedSubscript:@"startDate"];
                v48[0] = v29;
                v47[1] = @"EMDE_END_DATE";
                v30 = [v14 objectForKeyedSubscript:@"endDate"];
                v48[1] = v30;
                v47[2] = @"EMDE_START_TIME_IS_SIGNIFICANT";
                v31 = [v14 objectForKeyedSubscript:@"startTimeIsSignificant"];
                v48[2] = v31;
                v47[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
                v32 = [v14 objectForKeyedSubscript:@"endTimeIsSignificant"];
                v48[3] = v32;
                v47[4] = @"EMDE_EXTRACTION_TYPE";
                v33 = [v14 objectForKeyedSubscript:@"ddType"];
                v48[4] = v33;
                v10 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:5];

                v28 = extractionLogHandle(v34);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_20;
                }

                goto LABEL_21;
              }
            }

            v20 = [v14 objectForKeyedSubscript:@"startDate"];
            v21 = v20 == 0;

            if (!v21)
            {
              v45[0] = @"EMDE_START_DATE";
              v22 = [v14 objectForKeyedSubscript:@"startDate"];
              v46[0] = v22;
              v45[1] = @"EMDE_END_DATE";
              v23 = [v14 objectForKeyedSubscript:@"startDate"];
              v24 = [v23 dateByAddingTimeInterval:3600.0];
              v46[1] = v24;
              v45[2] = @"EMDE_START_TIME_IS_SIGNIFICANT";
              v25 = [v14 objectForKeyedSubscript:@"startTimeIsSignificant"];
              v46[2] = v25;
              v46[3] = &__kCFBooleanFalse;
              v45[3] = @"EMDE_END_TIME_IS_SIGNIFICANT";
              v45[4] = @"EMDE_EXTRACTION_TYPE";
              v26 = [v14 objectForKeyedSubscript:@"ddType"];
              v46[4] = v26;
              v10 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];

              v28 = extractionLogHandle(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_20:
                sub_10008B758();
              }

LABEL_21:

              goto LABEL_22;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_22:
    v9 = v37;
  }

  return v10;
}

- (id)createEventResultForTravelCategory:(id)category title:(id)title date:(id)date
{
  categoryCopy = category;
  titleCopy = title;
  v31 = categoryCopy;
  dateCopy = date;
  v29 = titleCopy;
  categoryCopy = [NSString stringWithFormat:@"%@:", categoryCopy];
  v11 = [titleCopy stringByReplacingOccurrencesOfString:categoryCopy withString:&stru_1000AF768];

  v30 = v11;
  v12 = [v11 componentsSeparatedByString:@" to "];
  if ([v12 count] == 2)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [(EMDEEventExtractor *)self formatString:v13];

    v15 = [v12 objectAtIndexedSubscript:1];
    v16 = [(EMDEEventExtractor *)self formatString:v15];
    v17 = v12;
LABEL_5:

    goto LABEL_7;
  }

  v17 = [v11 componentsSeparatedByString:@"-"];

  if ([v17 count] == 2)
  {
    v18 = [v17 objectAtIndexedSubscript:0];
    v14 = [(EMDEEventExtractor *)self formatString:v18];

    v15 = [v17 objectAtIndexedSubscript:1];
    v16 = [(EMDEEventExtractor *)self formatString:v15];
    goto LABEL_5;
  }

  [(EMDEEventExtractor *)self formatString:v11];
  v14 = v16 = &stru_1000AF768;
LABEL_7:
  v19 = @"Travel booking";
  if ([v14 length])
  {
    v19 = [@"Travel booking" stringByAppendingFormat:@" from %@", v14];
  }

  if ([(__CFString *)v16 length])
  {
    v20 = [(__CFString *)v19 stringByAppendingFormat:@" to %@", v16];

    v19 = v20;
  }

  v33[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
  v33[1] = @"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION";
  v34[0] = categoryCopy;
  v34[1] = v14;
  v33[2] = @"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION";
  v33[3] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
  v34[2] = v16;
  v34[3] = v19;
  v33[4] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
  v21 = [dateCopy objectForKeyedSubscript:@"EMDE_START_DATE"];
  v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
  v34[4] = v22;
  v33[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
  v23 = [dateCopy objectForKeyedSubscript:@"EMDE_END_DATE"];
  v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
  v34[5] = v24;
  v33[6] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
  v25 = [dateCopy objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
  v34[6] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];

  v27 = [v26 mutableCopy];

  return v27;
}

- (id)createEventResultFromTitle:(id)title date:(id)date messageBody:(id)body
{
  titleCopy = title;
  dateCopy = date;
  v29 = titleCopy;
  if ([titleCopy hasPrefix:@"Flight:"])
  {
    v8 = @"Flight";
LABEL_7:
    v9 = [(EMDEEventExtractor *)self createEventResultForTravelCategory:v8 title:titleCopy date:dateCopy];
    goto LABEL_8;
  }

  if ([titleCopy hasPrefix:@"Train:"])
  {
    v8 = @"Train";
    goto LABEL_7;
  }

  if ([titleCopy hasPrefix:@"Bus:"])
  {
    v8 = @"Bus";
    goto LABEL_7;
  }

  if ([titleCopy hasPrefix:@"Stay:"])
  {
    v18 = [titleCopy stringByReplacingOccurrencesOfString:@"Stay:" withString:&stru_1000AF768];
    v19 = [(EMDEEventExtractor *)self formatString:v18];
    v20 = @"Booking";
    if ([v19 length])
    {
      v20 = [@"Booking" stringByAppendingFormat:@" for %@", v19];
    }

    v39[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
    v39[1] = @"EventMetaDataExtractor_ML_EVENT__NAME";
    v40[0] = @"Hotel";
    v40[1] = v19;
    v40[2] = v20;
    v39[2] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
    v39[3] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
    v21 = [dateCopy objectForKeyedSubscript:@"EMDE_START_DATE"];
    v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
    v40[3] = v22;
    v39[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
    v23 = [dateCopy objectForKeyedSubscript:@"EMDE_END_DATE"];
    v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
    v40[4] = v24;
    v39[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
    v25 = [dateCopy objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
    v40[5] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
    v27 = [v26 mutableCopy];
  }

  else
  {
    if (![titleCopy hasPrefix:@"Movie:"])
    {
      v35[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
      v35[1] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
      v36[0] = @"GenericEvent";
      v36[1] = titleCopy;
      v35[2] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
      v19 = [dateCopy objectForKeyedSubscript:@"EMDE_START_DATE"];
      v18 = [(EMDEEventExtractor *)self dateStringForDate:v19];
      v36[2] = v18;
      v35[3] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
      v20 = [dateCopy objectForKeyedSubscript:@"EMDE_END_DATE"];
      v21 = [(EMDEEventExtractor *)self dateStringForDate:v20];
      v36[3] = v21;
      v35[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
      v22 = [dateCopy objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
      v36[4] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
      v9 = [v23 mutableCopy];
      goto LABEL_31;
    }

    v18 = [titleCopy stringByReplacingOccurrencesOfString:@"Movie:" withString:&stru_1000AF768];
    v19 = [(EMDEEventExtractor *)self formatString:v18];
    v20 = @"Booking";
    if ([v19 length])
    {
      v20 = [@"Booking" stringByAppendingFormat:@" for %@", v19];
    }

    v37[0] = @"EventMetaDataExtractor_ML_EVENT__CATEGORY";
    v37[1] = @"EventMetaDataExtractor_ML_EVENT__NAME";
    v38[0] = @"Movie";
    v38[1] = v19;
    v38[2] = v20;
    v37[2] = @"EventMetaDataExtractor_ML_EVENT__TITLE";
    v37[3] = @"EventMetaDataExtractor_ML_EVENT__START_DATETIME";
    v21 = [dateCopy objectForKeyedSubscript:@"EMDE_START_DATE"];
    v22 = [(EMDEEventExtractor *)self dateStringForDate:v21];
    v38[3] = v22;
    v37[4] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME";
    v23 = [dateCopy objectForKeyedSubscript:@"EMDE_END_DATE"];
    v24 = [(EMDEEventExtractor *)self dateStringForDate:v23];
    v38[4] = v24;
    v37[5] = @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT";
    v25 = [dateCopy objectForKeyedSubscript:@"EMDE_END_TIME_IS_SIGNIFICANT"];
    v38[5] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];
    v27 = [v26 mutableCopy];
  }

  v9 = v27;

LABEL_31:
LABEL_8:
  [v9 allKeys];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v10 = v31 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if (v14 != @"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT")
        {
          v15 = [v9 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
          v16 = [v15 isEqualToString:&stru_1000AF768];

          if (v16)
          {
            [v9 removeObjectForKey:v14];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  return v9;
}

@end