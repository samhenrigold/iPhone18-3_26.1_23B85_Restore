@interface _ANEDataReporter
+ (id)analyticsKey:(id)key;
+ (id)reportClient:(id)client modelName:(id)name;
+ (void)addValue:(int64_t)value forScalarKey:(id)key;
+ (void)reportErrorMsg:(unsigned int)msg status:(unsigned int)status;
+ (void)reportTelemetryToPPS:(id)s playload:(id)playload;
@end

@implementation _ANEDataReporter

+ (void)addValue:(int64_t)value forScalarKey:(id)key
{
  keyCopy = key;
  v6 = objc_autoreleasePoolPush();
  v7 = [self analyticsKey:keyCopy];
  v8 = +[_ANEStrings coreAnalyticsANEUsageKeyGroup];
  v9 = v7;
  AnalyticsSendEventLazy();

  objc_autoreleasePoolPop(v6);
}

+ (id)reportClient:(id)client modelName:(id)name
{
  clientCopy = client;
  nameCopy = name;
  v7 = +[_ANEStrings coreAnalyticsANEUsageDefaultReportedClient];
  v8 = v7;
  if (clientCopy && nameCopy)
  {
    v9 = [&unk_1F2254438 objectForKeyedSubscript:clientCopy];
    if (!v9)
    {
      v10 = +[_ANEStrings systemLibraryPath];
      v11 = [nameCopy stringByReplacingOccurrencesOfString:v10 withString:&stru_1F224D6A0];

      v12 = [v11 stringByReplacingOccurrencesOfString:@"PrivateFrameworks/" withString:&stru_1F224D6A0];
      v13 = [v12 stringByReplacingOccurrencesOfString:@"Frameworks/" withString:&stru_1F224D6A0];
      v14 = [v13 componentsSeparatedByString:@"/"];
      v15 = v14;
      if (!v14 || ([v14 objectAtIndexedSubscript:{objc_msgSend(v14, "count") > 1}], (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, objc_msgSend(&unk_1F2254460, "objectForKeyedSubscript:", v16), v9 = objc_claimAutoreleasedReturnValue(), v17, !v9))
      {
        v9 = v8;
      }
    }

    [_ANEDataReporter addValue:1 forScalarKey:v9];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

+ (id)analyticsKey:(id)key
{
  v3 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v5 = +[_ANEStrings coreAnalyticsANEUsageKeyGroup];
  keyCopy = [v3 stringWithFormat:@"%@.%@", v5, keyCopy];

  return keyCopy;
}

+ (void)reportTelemetryToPPS:(id)s playload:(id)playload
{
  sCopy = s;
  playloadCopy = playload;
  v7 = objc_autoreleasePoolPush();
  if (MEMORY[0x1EEE905B8] && MEMORY[0x1EEE905C0])
  {
    if (reportTelemetryToPPS_playload__onceToken != -1)
    {
      +[_ANEDataReporter reportTelemetryToPPS:playload:];
    }

    v8 = [reportTelemetryToPPS_playload__ppsIDMapping objectForKey:sCopy];
    v9 = v8;
    if (v8)
    {
      v13 = 0;
      [v8 getValue:&v13];
      v10 = v13;
      v11 = +[_ANELog common];
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v12)
        {
          [_ANEDataReporter reportTelemetryToPPS:sCopy playload:v11];
        }

        PPSSendTelemetry();
        goto LABEL_17;
      }

      if (v12)
      {
        [_ANEDataReporter reportTelemetryToPPS:sCopy playload:v11];
      }
    }

    else
    {
      v11 = +[_ANELog common];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_ANEDataReporter reportTelemetryToPPS:sCopy playload:v11];
      }
    }

    goto LABEL_17;
  }

  v9 = +[_ANELog common];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ANEDataReporter reportTelemetryToPPS:v9 playload:?];
  }

LABEL_17:

  objc_autoreleasePoolPop(v7);
}

+ (void)reportErrorMsg:(unsigned int)msg status:(unsigned int)status
{
  v4 = *&status;
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"statusType";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&msg];
  v9[1] = @"returnType";
  v10[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self reportTelemetryToPPS:@"ANEStatus" playload:v8];
}

+ (void)reportTelemetryToPPS:(uint64_t)a1 playload:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AD246000, a2, OS_LOG_TYPE_DEBUG, "Telemetry: report to category %@.", &v2, 0xCu);
}

+ (void)reportTelemetryToPPS:(uint64_t)a1 playload:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AD246000, a2, OS_LOG_TYPE_DEBUG, "Telemetry: ppsId not available %@!", &v2, 0xCu);
}

+ (void)reportTelemetryToPPS:(uint64_t)a1 playload:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AD246000, a2, OS_LOG_TYPE_ERROR, "Telemetry: invalid PPS category %@ specified!", &v2, 0xCu);
}

@end