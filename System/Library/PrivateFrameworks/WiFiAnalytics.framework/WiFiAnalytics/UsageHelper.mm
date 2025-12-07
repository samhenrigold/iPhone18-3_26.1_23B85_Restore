@interface UsageHelper
+ (Class)classForTimeSpan:(unint64_t)span withError:(id *)error;
+ (NSCalendar)calendar;
+ (NSDateComponents)componentsOneMonth;
+ (NSISO8601DateFormatter)dailyDateFormatter;
+ (NSISO8601DateFormatter)monthlyDateFormatter;
+ (id)aggregateNameFor:(unint64_t)for withError:(id *)error;
+ (id)availableDimensionsFor:(unint64_t)for withError:(id *)error;
+ (id)binnedDate:(id)date as:(unint64_t)as;
+ (id)getHigherEdgeIncludedBinFor:(int64_t)for In:(id)in;
+ (id)getLowerEdgeIncludedBinFor:(int64_t)for In:(id)in;
@end

@implementation UsageHelper

+ (NSCalendar)calendar
{
  if (qword_1EDE5CB70 != -1)
  {
    dispatch_once(&qword_1EDE5CB70, &__block_literal_global_6);
  }

  v3 = qword_1EDE5CB68;

  return v3;
}

void __23__UsageHelper_calendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = qword_1EDE5CB68;
  qword_1EDE5CB68 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [qword_1EDE5CB68 setTimeZone:v2];
}

+ (NSDateComponents)componentsOneMonth
{
  if (qword_1EDE5CB78 != -1)
  {
    dispatch_once(&qword_1EDE5CB78, &__block_literal_global_107);
  }

  v3 = qword_1EDE5CB60;

  return v3;
}

uint64_t __33__UsageHelper_componentsOneMonth__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v1 = qword_1EDE5CB60;
  qword_1EDE5CB60 = v0;

  v2 = qword_1EDE5CB60;

  return [v2 setMonth:1];
}

+ (NSISO8601DateFormatter)dailyDateFormatter
{
  if (qword_1EDE5CB80 != -1)
  {
    dispatch_once(&qword_1EDE5CB80, &__block_literal_global_110);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

uint64_t __33__UsageHelper_dailyDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [_MergedGlobals_9 setTimeZone:v2];

  v3 = _MergedGlobals_9;

  return [v3 setFormatOptions:275];
}

+ (NSISO8601DateFormatter)monthlyDateFormatter
{
  if (qword_1EDE5CB88 != -1)
  {
    dispatch_once(&qword_1EDE5CB88, &__block_literal_global_113);
  }

  v3 = qword_1EDE5CB58;

  return v3;
}

uint64_t __35__UsageHelper_monthlyDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1EDE5CB58;
  qword_1EDE5CB58 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [qword_1EDE5CB58 setTimeZone:v2];

  v3 = qword_1EDE5CB58;

  return [v3 setFormatOptions:259];
}

+ (id)getLowerEdgeIncludedBinFor:(int64_t)for In:(id)in
{
  inCopy = in;
  v6 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:1];
  for (i = 0; i < [inCopy count]; ++i)
  {
    v8 = [inCopy objectAtIndexedSubscript:i];
    integerValue = [v8 integerValue];

    if (integerValue > for)
    {
      break;
    }

    v10 = [inCopy objectAtIndexedSubscript:i];
    [v6 setLowerThan:v10];
  }

  lowerThan = [v6 lowerThan];
  [v6 setGreaterOrEqualTo:lowerThan];

  if (i < [inCopy count])
  {
    v12 = [inCopy objectAtIndexedSubscript:i];
    integerValue2 = [v12 integerValue];

    if (integerValue2 > for)
    {
      v14 = [inCopy objectAtIndexedSubscript:i];
      [v6 setLowerThan:v14];
    }
  }

  if (i == [inCopy count])
  {
    lowerThan2 = [v6 lowerThan];
    integerValue3 = [lowerThan2 integerValue];

    if (integerValue3 < for)
    {
      [v6 setLowerThan:0];
    }
  }

  return v6;
}

+ (id)getHigherEdgeIncludedBinFor:(int64_t)for In:(id)in
{
  inCopy = in;
  v6 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:0];
  for (i = 0; i < [inCopy count]; ++i)
  {
    v8 = [inCopy objectAtIndexedSubscript:i];
    integerValue = [v8 integerValue];

    if (integerValue >= for)
    {
      break;
    }

    v10 = [inCopy objectAtIndexedSubscript:i];
    [v6 setLowerOrEqualTo:v10];
  }

  lowerOrEqualTo = [v6 lowerOrEqualTo];
  [v6 setGreaterThan:lowerOrEqualTo];

  if (i < [inCopy count])
  {
    v12 = [inCopy objectAtIndexedSubscript:i];
    integerValue2 = [v12 integerValue];

    if (integerValue2 >= for)
    {
      v14 = [inCopy objectAtIndexedSubscript:i];
      [v6 setLowerOrEqualTo:v14];
    }
  }

  if (i == [inCopy count])
  {
    lowerOrEqualTo2 = [v6 lowerOrEqualTo];
    integerValue3 = [lowerOrEqualTo2 integerValue];

    if (integerValue3 < for)
    {
      [v6 setLowerOrEqualTo:0];
    }
  }

  return v6;
}

+ (id)binnedDate:(id)date as:(unint64_t)as
{
  dateCopy = date;
  v7 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:1];
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  if (as > 2)
  {
    if (as == 3)
    {
      v43 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v43, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "monthly bin", "", buf, 2u);
      }

      monthlyDateFormatter = [self monthlyDateFormatter];
      monthlyDateFormatter2 = [self monthlyDateFormatter];
      v46 = [monthlyDateFormatter2 stringFromDate:dateCopy];
      v47 = [monthlyDateFormatter dateFromString:v46];
      [v7 setGreaterOrEqualTo:v47];

      calendar = [self calendar];
      componentsOneMonth = [self componentsOneMonth];
      greaterOrEqualTo = [v7 greaterOrEqualTo];
      v51 = [calendar dateByAddingComponents:componentsOneMonth toDate:greaterOrEqualTo options:0];
      [v7 setLowerThan:v51];

      v12 = WALogCategoryDeviceStoreHandle();
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v42 = "monthly bin";
      goto LABEL_24;
    }

    if (as != 4)
    {
      goto LABEL_26;
    }

    v24 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "yearly bin", "", buf, 2u);
    }

    calendar2 = [self calendar];
    v12 = [calendar2 components:4 fromDate:dateCopy];

    calendar3 = [self calendar];
    v27 = [calendar3 dateFromComponents:v12];
    [v7 setGreaterOrEqualTo:v27];

    calendar4 = [self calendar];
    greaterOrEqualTo2 = [v7 greaterOrEqualTo];
    v30 = [calendar4 dateByAddingUnit:4 value:1 toDate:greaterOrEqualTo2 options:0];
    [v7 setLowerThan:v30];

    v31 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "yearly bin", "", buf, 2u);
    }
  }

  else
  {
    if (as != 1)
    {
      if (as != 2)
      {
        goto LABEL_26;
      }

      v53 = v8;
      v10 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "weekly bin", "", buf, 2u);
      }

      calendar5 = [self calendar];
      v12 = [calendar5 components:512 fromDate:dateCopy];

      calendar6 = [self calendar];
      v14 = 1 - [v12 weekday];
      dailyDateFormatter = [self dailyDateFormatter];
      dailyDateFormatter2 = [self dailyDateFormatter];
      v17 = [dailyDateFormatter2 stringFromDate:dateCopy];
      v18 = [dailyDateFormatter dateFromString:v17];
      v19 = [calendar6 dateByAddingUnit:16 value:v14 toDate:v18 options:0];
      [v7 setGreaterOrEqualTo:v19];

      calendar7 = [self calendar];
      greaterOrEqualTo3 = [v7 greaterOrEqualTo];
      v22 = [calendar7 dateByAddingUnit:0x2000 value:1 toDate:greaterOrEqualTo3 options:0];
      [v7 setLowerThan:v22];

      v23 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "weekly bin", "", buf, 2u);
      }

      v9 = v53;
      goto LABEL_25;
    }

    v32 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "daily bin", "", buf, 2u);
    }

    dailyDateFormatter3 = [self dailyDateFormatter];
    dailyDateFormatter4 = [self dailyDateFormatter];
    v35 = [dailyDateFormatter4 stringFromDate:dateCopy];
    v36 = [dailyDateFormatter3 dateFromString:v35];
    [v7 setGreaterOrEqualTo:v36];

    dailyDateFormatter5 = [self dailyDateFormatter];
    dailyDateFormatter6 = [self dailyDateFormatter];
    v39 = [dateCopy dateByAddingTimeInterval:86400.0];
    v40 = [dailyDateFormatter6 stringFromDate:v39];
    v41 = [dailyDateFormatter5 dateFromString:v40];
    [v7 setLowerThan:v41];

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      v42 = "daily bin";
LABEL_24:
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v42, "", buf, 2u);
    }
  }

LABEL_25:

LABEL_26:
  objc_autoreleasePoolPop(v9);

  return v7;
}

+ (Class)classForTimeSpan:(unint64_t)span withError:(id *)error
{
  v5 = 0;
  v36[1] = *MEMORY[0x1E69E9840];
  if (span > 1)
  {
    switch(span)
    {
      case 2uLL:
        if (error)
        {
          *error = 0;
        }

        break;
      case 3uLL:
        if (error)
        {
          *error = 0;
        }

        break;
      case 4uLL:
        if (error)
        {
          v6 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A588];
          v32 = @"WAErrorCodeInvalidInput";
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          *error = [v6 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v7];
        }

        v8 = WALogCategoryDeviceStoreHandle();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
        *&buf[12] = 1024;
        *&buf[14] = 262;
        v9 = "%{public}s::%d:Yearly Usage is not currenlty implemented";
        goto LABEL_15;
      default:
        goto LABEL_26;
    }

    v5 = objc_opt_class();
    goto LABEL_26;
  }

  if (!span)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A588];
      v36[0] = @"WAErrorCodeInvalidInput";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      *error = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    }

    goto LABEL_25;
  }

  if (span != 1)
  {
    goto LABEL_26;
  }

  if (error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A588];
    v34 = @"WAErrorCodeInvalidInput";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    *error = [v10 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v11];
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
    *&buf[12] = 1024;
    *&buf[14] = 247;
    v9 = "%{public}s::%d:Daily Usage is not currenlty implemented";
LABEL_15:
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
  }

LABEL_16:

LABEL_25:
  v5 = 0;
LABEL_26:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
      *&buf[12] = 1024;
      *&buf[14] = 267;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a Usage Entity", buf, 0x1Cu);
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v17 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v29 = @"WAErrorCodeStore_Fault";
    v18 = MEMORY[0x1E695DF20];
    v19 = &v29;
    v20 = &v28;
    goto LABEL_45;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
      *&buf[12] = 1024;
      *&buf[14] = 268;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not an Entity", buf, 0x1Cu);
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v17 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A588];
    v27 = @"WAErrorCodeStore_Fault";
    v18 = MEMORY[0x1E695DF20];
    v19 = &v27;
    v20 = &v26;
    goto LABEL_45;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = v5;
    goto LABEL_30;
  }

  v22 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446722;
    *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
    *&buf[12] = 1024;
    *&buf[14] = 269;
    *&buf[18] = 2112;
    *&buf[20] = v5;
    _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a Usage Entity", buf, 0x1Cu);
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A588];
    v25 = @"WAErrorCodeStore_Fault";
    v18 = MEMORY[0x1E695DF20];
    v19 = &v25;
    v20 = &v24;
LABEL_45:
    v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:{1, v24, v25, v26, v27, v28, v29, *buf, *&buf[8]}];
    *error = [v17 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v23];
  }

LABEL_46:
  v14 = 0;
LABEL_30:

  return v14;
}

+ (id)availableDimensionsFor:(unint64_t)for withError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [self classForTimeSpan:for withError:?];
  if (v5)
  {
    v6 = +[WAPersistentContainer dimensionsForUsageEntity:](WAPersistentContainer, "dimensionsForUsageEntity:", [v5 performSelector:sel_entity]);
  }

  else
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = @"no error provided";
      }

      v10 = 136446722;
      v11 = "+[UsageHelper availableDimensionsFor:withError:]";
      v12 = 1024;
      v13 = 280;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:failed: %@", &v10, 0x1Cu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)aggregateNameFor:(unint64_t)for withError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [self classForTimeSpan:for withError:?];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(__CFString *)v6 performSelector:sel_aggregateName];
      goto LABEL_4;
    }

    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = 136446722;
      v13 = "+[UsageHelper aggregateNameFor:withError:]";
      v14 = 1024;
      v15 = 292;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ does not implement aggregateName", &v12, 0x1Cu);
    }
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v10 = *error;
      }

      else
      {
        v10 = @"no error provided";
      }

      v12 = 136446722;
      v13 = "+[UsageHelper aggregateNameFor:withError:]";
      v14 = 1024;
      v15 = 291;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:failed: %@", &v12, 0x1Cu);
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

@end