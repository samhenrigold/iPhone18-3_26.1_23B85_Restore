@interface BiometricSupportTools
+ (id)dateFromNanoTime:(unint64_t)time nanoseconds:(unsigned int *)nanoseconds;
+ (void)analyticsOSLogNSDictionary:(id)dictionary forEvent:(id)event toLogPath:(id)path withPrefix:(id)prefix;
@end

@implementation BiometricSupportTools

+ (id)dateFromNanoTime:(unint64_t)time nanoseconds:(unsigned int *)nanoseconds
{
  result = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:time / 1000000000.0];
  if (nanoseconds)
  {
    *nanoseconds = time % 0x3B9ACA00;
  }

  return result;
}

+ (void)analyticsOSLogNSDictionary:(id)dictionary forEvent:(id)event toLogPath:(id)path withPrefix:(id)prefix
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  eventCopy = event;
  pathCopy = path;
  prefixCopy = prefix;
  v31 = os_transaction_create();
  v12 = [dictionaryCopy description];
  v13 = [v12 length];
  v43 = 0;
  v44 = 0;
  v42 = 0;
  array = [MEMORY[0x1E695DF70] array];
  queue = dispatch_queue_create("com.apple.biometrickit.analyticsFileLog", 0);
  if (queue)
  {
    if (prefixCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
    if (prefixCopy)
    {
      goto LABEL_3;
    }
  }

  +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
LABEL_3:
  if (isInternalBuild_onceToken == -1)
  {
    if (!pathCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    +[BiometricSupportTools analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:];
    if (!pathCopy)
    {
      goto LABEL_8;
    }
  }

  if (isInternalBuild_isInternal)
  {
    v15 = +[BioUserDefaults sharedInstance];
    v16 = [v15 BOOLForKey:@"analyticsSaveToFile"];

    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__1;
      *v47 = __Block_byref_object_dispose__1;
      v17 = MEMORY[0x1E696AEC0];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      *&v47[8] = [v17 stringWithFormat:@"%@/%d_%@.plist", pathCopy, v19, eventCopy];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke;
      block[3] = &unk_1E8304380;
      v36 = v31;
      v37 = pathCopy;
      v41 = buf;
      v38 = eventCopy;
      v39 = prefixCopy;
      v40 = dictionaryCopy;
      dispatch_async(queue, block);

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_8:
  if (v13)
  {
    v20 = 0;
    do
    {
      [v12 getParagraphStart:&v44 end:&v43 contentsEnd:&v42 forRange:{v20, 0}];
      v21 = [v12 substringWithRange:{v44, v42 - v44}];
      [array addObject:v21];

      v20 = v43;
    }

    while (v43 < v13);
  }

  v33 = prefixCopy;
  v29 = pathCopy;
  v32 = [array count] / 0x19uLL + 1;
  string = [MEMORY[0x1E696AD60] string];
  if ([array count])
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = [array objectAtIndexedSubscript:v23];
      [string appendString:v25];

      [string appendString:@"\n"];
      if (v24 - 1 < v23 / 0x19)
      {
        if (__osLog)
        {
          v26 = __osLog;
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = eventCopy;
          *&buf[22] = 2048;
          v46 = v24;
          *v47 = 2048;
          *&v47[2] = v32;
          *&v47[10] = 2112;
          *&v47[12] = string;
          _os_log_impl(&dword_1C82AD000, v26, OS_LOG_TYPE_DEBUG, "%@: sendEvent: %@ (print %ld of %ld): \n%@\n", buf, 0x34u);
        }

        string2 = [MEMORY[0x1E696AD60] string];

        ++v24;
        string = string2;
      }

      ++v23;
    }

    while (v23 < [array count]);
  }

  else
  {
    v24 = 1;
  }

  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = v33;
    *&buf[12] = 2112;
    *&buf[14] = eventCopy;
    *&buf[22] = 2048;
    v46 = v24;
    *v47 = 2048;
    *&v47[2] = v32;
    *&v47[10] = 2112;
    *&v47[12] = string;
    _os_log_impl(&dword_1C82AD000, v28, OS_LOG_TYPE_DEBUG, "%@: sendEvent: %@ (print %ld of %ld): \n%@\n", buf, 0x34u);
  }
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E696A3A0];
    v28[0] = *MEMORY[0x1E696A360];
    v28[1] = v5;
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x1E696A3A8];
    v29[0] = @"mobile";
    v29[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    LOBYTE(v6) = [v4 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:v8 error:0];

    if ((v6 & 1) == 0)
    {
      __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_1();
    }
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:*(*(*(a1 + 72) + 8) + 40)];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSince1970];
    v15 = [v11 stringWithFormat:@"%@/%d_%@.plist", v12, (v14 + 1), *(a1 + 48)];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if (__osLog)
  {
    v18 = __osLog;
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 48);
    v19 = *(a1 + 56);
    v21 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412802;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEBUG, "%@: write event: %@ to file: %@\n", buf, 0x20u);
  }

  if (([*(a1 + 64) writeToFile:*(*(*(a1 + 72) + 8) + 40) atomically:1] & 1) == 0)
  {
    __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_2();
  }
}

+ (void)analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

+ (void)analyticsOSLogNSDictionary:forEvent:toLogPath:withPrefix:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __82__BiometricSupportTools_analyticsOSLogNSDictionary_forEvent_toLogPath_withPrefix___block_invoke_cold_2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end