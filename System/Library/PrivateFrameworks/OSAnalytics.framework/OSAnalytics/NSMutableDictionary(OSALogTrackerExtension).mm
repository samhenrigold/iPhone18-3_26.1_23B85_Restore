@interface NSMutableDictionary(OSALogTrackerExtension)
- (uint64_t)osa_logTracker_getForSubtype:()OSALogTrackerExtension forOwner:;
- (uint64_t)osa_logTracker_isLog:()OSALogTrackerExtension byKey:count:withinLimit:withOptions:errorDescription:;
- (uint64_t)osa_logTracker_recordNixedDuplicate:()OSALogTrackerExtension;
- (void)osa_logTracker_incrementForSubtype:()OSALogTrackerExtension signature:filepath:;
- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:;
- (void)osa_logTracker_trackLogTypes_internal:()OSALogTrackerExtension forOwner:rescan:;
@end

@implementation NSMutableDictionary(OSALogTrackerExtension)

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:
{
  v39[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [self objectForKey:v10];
  if (v12)
  {
    v13 = v12;
    [v12 setCount:{objc_msgSend(v12, "count") + 1}];
  }

  else
  {
    v13 = +[OSALogTrackerObject tracker];
    [self setObject:v13 forKey:v10];
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
  date = [MEMORY[0x1E695DF00] date];
  if (a6)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v37 = 0;
    v17 = [defaultManager attributesOfItemAtPath:v14 error:&v37];
    v18 = v37;

    if (v17)
    {
      v19 = [v17 objectForKey:*MEMORY[0x1E696A308]];

      date = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:v14 signature:v18 filepath:? scan:?];
    }
  }

  if (v13)
  {
    oldestDate = [v13 oldestDate];
    if (!oldestDate)
    {
      goto LABEL_14;
    }

    v21 = oldestDate;
    if (!date)
    {

      goto LABEL_16;
    }

    oldestDate2 = [v13 oldestDate];
    v23 = [oldestDate2 compare:date];

    if (v23 == 1)
    {
LABEL_14:
      [v13 setOldestDate:date];
      [v13 setOldestLogPath:v14];
    }
  }

LABEL_16:
  v24 = [v11 length];
  if (a5 && v24)
  {
    if (!v13)
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
    }

    v36 = v10;
    signatures = [v13 signatures];
    v26 = [signatures objectForKeyedSubscript:v11];

    if (v26)
    {
      v27 = [v26 objectForKeyedSubscript:@"dupes"];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v29 = [v28 copy];
      [v27 addObject:v29];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
      }
    }

    else
    {
      v38[0] = @"original";
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v34 = [v35 copy];
      v38[1] = @"dupes";
      v39[0] = v34;
      v30 = [MEMORY[0x1E695E0F0] mutableCopy];
      v39[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v32 = [v31 mutableCopy];
      signatures2 = [v13 signatures];
      [signatures2 setObject:v32 forKeyedSubscript:v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
      }
    }

    v10 = v36;
  }
}

- (void)osa_logTracker_incrementForSubtype:()OSALogTrackerExtension signature:filepath:
{
  v11 = a3;
  v8 = a4;
  v9 = sAccountingSemaphore;
  v10 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(v9, v10))
  {
    [self osa_logTracker_incrementForSubtype_internal:v11 signature:v8 filepath:a5 scan:0];
    dispatch_semaphore_signal(sAccountingSemaphore);
  }
}

- (void)osa_logTracker_trackLogTypes_internal:()OSALogTrackerExtension forOwner:rescan:
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = sAccountingSemaphore;
  v11 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(v10, v11))
  {
    memset(&v34, 0, sizeof(v34));
    if (osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel)
    {
      if (stat([osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel UTF8String], &v34) == -1)
      {
        if (*__error() != 2 && (a5 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (!a5)
      {
LABEL_15:
        dispatch_semaphore_signal(sAccountingSemaphore);
        goto LABEL_16;
      }
    }

    v12 = osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel;
    osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel = 0;

    [self enumerateKeysAndObjectsUsingBlock:&__block_literal_global_52];
    v13 = objc_autoreleasePoolPush();
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_trackLogTypes_internal:forOwner:rescan:];
    }

    v43 = @"exclude-retired";
    v44 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v15 = [v14 mutableCopy];

    if (v9)
    {
      [v15 setObject:v9 forKeyedSubscript:@"file-owner"];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __101__NSMutableDictionary_OSALogTrackerExtension__osa_logTracker_trackLogTypes_internal_forOwner_rescan___block_invoke_54;
    v21[3] = &unk_1E7A27FF8;
    v25 = &v45;
    v23 = &v30;
    v21[4] = self;
    v22 = v8;
    v24 = &v26;
    [OSALog iterateLogsWithOptions:v15 usingBlock:v21];
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = v31[3];
      v19 = [self count];
      v20 = v27[3];
      *buf = 134218754;
      v36 = v18;
      v37 = 2048;
      v38 = v19;
      v39 = 2048;
      v40 = v20;
      v41 = 2112;
      v42 = osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "scanned %zu logs with %lu types and %zu unknowns (sentinel is %@)", buf, 0x2Au);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    objc_autoreleasePoolPop(v13);
    goto LABEL_15;
  }

LABEL_16:
}

- (uint64_t)osa_logTracker_getForSubtype:()OSALogTrackerExtension forOwner:
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__NSMutableDictionary_OSALogTrackerExtension__osa_logTracker_getForSubtype_forOwner___block_invoke;
  block[3] = &unk_1E7A28020;
  block[4] = self;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  if (osa_logTracker_getForSubtype_forOwner__onceToken != -1)
  {
    dispatch_once(&osa_logTracker_getForSubtype_forOwner__onceToken, block);
  }

  v10 = [self objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 count];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)osa_logTracker_recordNixedDuplicate:()OSALogTrackerExtension
{
  value = 0;
  getxattr(path, "Multiple", &value, 2uLL, 0, 0);
  ++value;
  setxattr(path, "Multiple", &value, 2uLL, 0, 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_recordNixedDuplicate:];
  }

  return utimes(path, 0);
}

- (uint64_t)osa_logTracker_isLog:()OSALogTrackerExtension byKey:count:withinLimit:withOptions:errorDescription:
{
  v96 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [v15 objectForKeyedSubscript:@"file-owner"];
  selfCopy = self;
  v84 = [self osa_logTracker_getForSubtype:v14 forOwner:v16];
  v17 = v13;
  v18 = v15;
  v19 = [v18 objectForKeyedSubscript:@"set-log-limit"];
  v20 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.osanalytics"];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CountLimit", v17];
  v22 = [v20 objectForKey:v21];

  v83 = v18;
  if (([v17 isEqualToString:@"210"] & 1) == 0)
  {
    v78 = v16;
    v24 = v14;
    v25 = a5;
    v26 = a6;
    v27 = v17;
    v28 = [v18 objectForKeyedSubscript:@"override-limit"];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      unsignedIntegerValue = -1;
    }

    else
    {
      if (!v22)
      {
        v17 = v27;
        if (!v19)
        {
          v42 = [v27 isEqualToString:@"288"];
          a6 = v26;
          if ((v42 & 1) == 0)
          {
            a5 = v25;
            if (([v17 isEqualToString:@"187"] & 1) == 0)
            {
              v14 = v24;
              if ([v17 hasPrefix:@"211"])
              {
                unsignedIntegerValue = 150;
              }

              else if ([v17 hasPrefix:@"328"])
              {
                unsignedIntegerValue = 250;
              }

              else
              {
                unsignedIntegerValue = 25;
              }

              goto LABEL_11;
            }

            unsignedIntegerValue = 100;
LABEL_10:
            v14 = v24;
LABEL_11:
            v16 = v78;
            goto LABEL_12;
          }

          unsignedIntegerValue = 100;
LABEL_9:
          a5 = v25;
          goto LABEL_10;
        }

        unsignedIntegerValue = [v19 unsignedIntegerValue];
LABEL_8:
        a6 = v26;
        goto LABEL_9;
      }

      unsignedIntegerValue = [v22 integerValue];
    }

    v17 = v27;
    goto LABEL_8;
  }

  unsignedIntegerValue = -1;
LABEL_12:

  v30 = v84;
  v31 = unsignedIntegerValue;
  if (v84 < unsignedIntegerValue || (v81 = unsignedIntegerValue, [selfCopy osa_logTracker_trackLogTypes_internal:v14 forOwner:v16 rescan:osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles], v30 = objc_msgSend(selfCopy, "osa_logTracker_getForSubtype:forOwner:", v14, v16), v31 = unsignedIntegerValue, v30 < unsignedIntegerValue))
  {
    v32 = 1;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v85 = v30;
  v77 = [v18 objectForKeyedSubscript:@"Signature"];
  if (v77)
  {
    v34 = sAccountingSemaphore;
    v35 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(v34, v35))
    {
      v36 = [selfCopy objectForKey:v14];
      if (!v36)
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_isLog:byKey:count:withinLimit:withOptions:errorDescription:];
      }

      v37 = v36;
      signatures = [v36 signatures];
      v39 = [signatures objectForKeyedSubscript:v77];

      v40 = v39;
      if (v39)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "known duplicate signature", buf, 2u);
        }

        v41 = [v39 objectForKeyedSubscript:@"original"];
        [selfCopy osa_logTracker_recordNixedDuplicate:{objc_msgSend(v41, "fileSystemRepresentation")}];

        v40 = v39;
        goto LABEL_55;
      }

      v73 = v17;
      v74 = a5;
      v79 = v16;
      v75 = v14;
      v76 = a6;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      signatures2 = [v37 signatures];
      v88 = [signatures2 countByEnumeratingWithState:&v89 objects:v95 count:16];
      if (v88)
      {
        v44 = 0;
        obj = signatures2;
        v87 = *v90;
        do
        {
          for (i = 0; i != v88; ++i)
          {
            if (*v90 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v89 + 1) + 8 * i);
            signatures3 = [v37 signatures];
            v48 = [signatures3 objectForKeyedSubscript:v46];
            v49 = [v48 objectForKeyedSubscript:@"dupes"];
            v50 = v37;
            v51 = [v49 count];
            v52 = [v44 objectForKeyedSubscript:@"dupes"];
            v53 = v44;
            v54 = [v52 count];

            if (v51 <= v54)
            {
              v37 = v50;
              v44 = v53;
            }

            else
            {
              signatures4 = [v50 signatures];
              v44 = [signatures4 objectForKeyedSubscript:v46];

              v37 = v50;
            }
          }

          v88 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
        }

        while (v88);

        v40 = 0;
        if (v44)
        {
          v14 = v75;
          a6 = v76;
          a5 = v74;
          v16 = v79;
          do
          {
            v56 = [v44 objectForKeyedSubscript:@"dupes"];
            v57 = [v56 count];

            if (v57 < 2)
            {
              break;
            }

            v58 = [v44 objectForKeyedSubscript:@"dupes"];
            v59 = [v58 objectAtIndex:0];

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v94 = v59;
              _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "new signature found -- prioritizing over duplicate (removing %@)", buf, 0xCu);
            }

            v60 = [v44 objectForKeyedSubscript:@"dupes"];
            [v60 removeObjectAtIndex:0];

            v61 = [v44 objectForKeyedSubscript:@"original"];
            [selfCopy osa_logTracker_recordNixedDuplicate:{objc_msgSend(v61, "fileSystemRepresentation")}];

            fileSystemRepresentation = [v59 fileSystemRepresentation];
            remove(fileSystemRepresentation, v63);
            [v37 setCount:{objc_msgSend(v37, "count") - 1}];

            --v85;
            v40 = 0;
          }

          while (v85 >= v81);

LABEL_54:
          v17 = v73;
LABEL_55:
          dispatch_semaphore_signal(sAccountingSemaphore);

          goto LABEL_56;
        }
      }

      else
      {
      }

      v14 = v75;
      a6 = v76;
      a5 = v74;
      v16 = v79;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "new signature found -- but no room available", buf, 2u);
      }

      goto LABEL_54;
    }
  }

LABEL_56:
  if (osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles == 1)
  {
    osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles = 0;
  }

  if (v85 >= v81)
  {
    if ([selfCopy osa_logTracker_shouldRotateLog:v17])
    {
      v64 = a6;
      v65 = v17;
      v66 = +[OSALogTrackerObject sharedTrackers];
      v67 = [v66 objectForKey:v14];

      oldestLogPath = [v67 oldestLogPath];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v70 = defaultManager;
      if (oldestLogPath && [defaultManager fileExistsAtPath:oldestLogPath] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v71 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend(v71, "removeItemAtPath:error:", oldestLogPath, 0), v71, !v72))
      {
        v32 = 0;
        if (a8)
        {
          *a8 = @"Delete oldest file failed";
        }
      }

      else
      {
        v32 = 1;
        osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles = 1;
      }

      v17 = v65;
      a6 = v64;
    }

    else
    {
      v32 = 0;
      if (a8)
      {
        *a8 = @"Log limit exceeded";
      }
    }
  }

  else
  {
    v32 = 1;
  }

  v30 = v85;
  v31 = v81;
  if (a5)
  {
LABEL_15:
    *a5 = v30;
  }

LABEL_16:
  if (a6)
  {
    *a6 = v31;
  }

  return v32;
}

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to retrieve file attributes at path %@. Error: %@", &v2, 0x16u);
}

@end