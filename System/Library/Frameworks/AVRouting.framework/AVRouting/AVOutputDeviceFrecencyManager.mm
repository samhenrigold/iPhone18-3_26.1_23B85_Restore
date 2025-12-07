@interface AVOutputDeviceFrecencyManager
+ (AVOutputDeviceFrecentsReader)_frecentsReaderAfterMigrationIfNecessary;
+ (AVOutputDeviceFrecentsWriter)_frecentsWriter;
+ (BOOL)_migrateFrecentsFromCFPreferencesToFrecentsFilePath:(id)path;
+ (double)frecencyScoreForDeviceID:(id)d;
+ (id)_applicationSupportPath;
+ (id)_frecentsContainerPath;
+ (id)_frecentsFilePath;
+ (id)_frecentsReaderAfterMigrationIfNecessary;
+ (id)_frecentsWriter;
+ (void)updateFrecencyListForDeviceID:(id)d;
@end

@implementation AVOutputDeviceFrecencyManager

void __73__AVOutputDeviceFrecencyManager__frecentsReaderAfterMigrationIfNecessary__block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

+ (id)_frecentsReaderAfterMigrationIfNecessary
{
  if ([objc_msgSend(+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")])
  {
    +[(AVOutputDeviceFrecencyManager *)self];
    return v4;
  }

  else
  {
    if (_frecentsReaderAfterMigrationIfNecessary_loggingOnce != -1)
    {
      +[AVOutputDeviceFrecencyManager _frecentsReaderAfterMigrationIfNecessary];
    }

    return +[AVOutputDeviceLegacyFrecentsReader defaultFrecentsReader];
  }
}

+ (double)frecencyScoreForDeviceID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  _frecentsReaderAfterMigrationIfNecessary = [self _frecentsReaderAfterMigrationIfNecessary];
  if (!d)
  {
    return 0.0;
  }

  if (!_frecentsReaderAfterMigrationIfNecessary)
  {
    return 0.0;
  }

  v5 = [_frecentsReaderAfterMigrationIfNecessary frecencyInfoForDeviceWithID:d];
  if (!v5)
  {
    return 0.0;
  }

  v6 = [v5 objectForKeyedSubscript:@"FrecencyScore"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0.0;
  }

  [v6 doubleValue];
  return result;
}

uint64_t __50__AVOutputDeviceFrecencyManager__frecentsFilePath__block_invoke(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

+ (id)_frecentsWriter
{
  if ([objc_msgSend(+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")])
  {
    +[(AVOutputDeviceFrecencyManager *)self];
    return v4;
  }

  else
  {

    return +[AVOutputDeviceLegacyFrecentsWriter defaultFrecentsWriter];
  }
}

+ (void)updateFrecencyListForDeviceID:(id)d
{
  v93 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  _frecentsReaderAfterMigrationIfNecessary = [self _frecentsReaderAfterMigrationIfNecessary];
  _frecentsWriter = [self _frecentsWriter];
  if (_frecentsReaderAfterMigrationIfNecessary)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(_frecentsReaderAfterMigrationIfNecessary, "deviceIDs")}];
    if (([v7 containsObject:d] & 1) == 0)
    {
      [v7 addObject:d];
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v84 objects:v92 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      v77 = *v85;
      v12 = 0.0;
      *&v9 = 136315395;
      v73 = v9;
      *&v9 = 136315651;
      v74 = v9;
      dCopy = d;
      obj = v7;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v85 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v84 + 1) + 8 * i);
          v15 = [_frecentsReaderAfterMigrationIfNecessary frecencyInfoForDeviceWithID:v14];
          v16 = 1.0;
          if (!v15)
          {
LABEL_25:
            v19 = 0;
            goto LABEL_27;
          }

          v17 = v15;
          v18 = [v15 objectForKey:@"FrecencyScore"];
          v19 = [v17 objectForKey:@"LastUsedTimestamp"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 doubleValue];
              v21 = v20;
              [date timeIntervalSinceDate:v19];
              v16 = v21 * exp2(v22 / 86400.0 * -0.5) + 1.0;
              goto LABEL_27;
            }

            if (!dword_1ED6F6B68)
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_4_1();
            v44 = OUTLINED_FUNCTION_2_1(qword_1ED6F6B60, v37, v38, v39, v40, v41, v42, v43, v69, v70, v71, v72, v73, *(&v73 + 1), v74, *(&v74 + 1), dCopy, obj, v77, _frecentsWriter, v79, v80, v81, type, v83);
            if (os_log_type_enabled(v44, type))
            {
              v45 = v83;
            }

            else
            {
              v45 = v83 & 0xFFFFFFFE;
            }

            if (v45)
            {
              v88 = v74;
              OUTLINED_FUNCTION_3_1();
              v89 = v18;
              v90 = v46;
              v91 = v14;
              OUTLINED_FUNCTION_1_3();
              _os_log_send_and_compose_impl(v47, v48, v49, v50, &dword_1AB586000, v44, type, "<<<< AVOutputDevice >>>> %s: Ignoring non-number frecency score %{private}@ for device %{private}@");
            }
          }

          else
          {
            if (!dword_1ED6F6B68)
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_4_1();
            v30 = OUTLINED_FUNCTION_2_1(qword_1ED6F6B60, v23, v24, v25, v26, v27, v28, v29, v69, v70, v71, v72, v73, *(&v73 + 1), v74, *(&v74 + 1), dCopy, obj, v77, _frecentsWriter, v79, v80, v81, type, v83);
            if (os_log_type_enabled(v30, type))
            {
              v31 = v83;
            }

            else
            {
              v31 = v83 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v88 = v74;
              OUTLINED_FUNCTION_3_1();
              v89 = v19;
              v90 = v32;
              v91 = v14;
              OUTLINED_FUNCTION_1_3();
              _os_log_send_and_compose_impl(v33, v34, v35, v36, &dword_1AB586000, v30, type, "<<<< AVOutputDevice >>>> %s: Ignoring non-date last used timestamp %{private}@ for device %{private}@");
            }
          }

          OUTLINED_FUNCTION_1_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v19 = 0;
          d = dCopy;
LABEL_27:
          v51 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          if (v12 == 0.0)
          {
            v11 = v14;
            v12 = v16;
          }

          v52 = [v14 isEqualToString:d];
          if (v12 > v16)
          {
            v53 = v14;
          }

          else
          {
            v53 = v11;
          }

          if (v12 > v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = v12;
          }

          if (v52)
          {
            v55 = date;
          }

          else
          {
            v55 = v19;
          }

          if ((v52 & 1) == 0)
          {
            v11 = v53;
            v12 = v54;
          }

          if (v55)
          {
            v71 = @"LastUsedTimestamp";
            v72 = 0;
            v70 = v55;
            v69 = @"FrecencyScore";
            [_frecentsWriter setFrecencyInfo:objc_msgSend(MEMORY[0x1E695DF20] forDeviceID:{"dictionaryWithObjectsAndKeys:", v51, v54), v14}];
          }

          else
          {
            if (dword_1ED6F6B68)
            {
              OUTLINED_FUNCTION_4_1();
              v63 = OUTLINED_FUNCTION_2_1(qword_1ED6F6B60, v56, v57, v58, v59, v60, v61, v62, v69, v70, v71, v72, v73, *(&v73 + 1), v74, *(&v74 + 1), dCopy, obj, v77, _frecentsWriter, v79, v80, v81, type, v83);
              if (os_log_type_enabled(v63, type))
              {
                v64 = v83;
              }

              else
              {
                v64 = v83 & 0xFFFFFFFE;
              }

              if (v64)
              {
                v88 = v73;
                OUTLINED_FUNCTION_3_1();
                v89 = v14;
                OUTLINED_FUNCTION_1_3();
                _os_log_send_and_compose_impl(v65, v66, v67, v68, &dword_1AB586000, v63, type, "<<<< AVOutputDevice >>>> %s: Removing frecents entry for device %{private}@ which previously had an invalid or missing LastUsedTimestamp");
              }

              OUTLINED_FUNCTION_1_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              d = dCopy;
            }

            [_frecentsWriter removeFrecencyInfoForDeviceID:{v14, v54}];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
        if (!v10)
        {
          goto LABEL_54;
        }
      }
    }

    v11 = 0;
LABEL_54:
    if ([_frecentsWriter numberOfKeysToBeSet] >= 51 && (objc_msgSend(v11, "isEqualToString:", d) & 1) == 0)
    {
      if (v11)
      {
        [_frecentsWriter removeFrecencyInfoForDeviceID:v11];
      }
    }

    v79 = 0;
    [_frecentsWriter persistToDiskReturningError:&v79];
  }
}

+ (id)_applicationSupportPath
{
  v5 = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  if (MEMORY[0x1AC59FE00](started, v4))
  {
    return [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:30];
  }

  else
  {
    return 0;
  }
}

+ (id)_frecentsContainerPath
{
  result = [self _applicationSupportPath];
  if (result)
  {
    v3 = [objc_msgSend(result stringByAppendingPathComponent:{@"com.apple.avfoundation", "stringByAppendingPathComponent:", @"Frecents"}];
    v4 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)_frecentsFilePath
{
  _frecentsContainerPath = [self _frecentsContainerPath];
  if (_frecentsContainerPath)
  {
    _frecentsContainerPath = [_frecentsContainerPath stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.plist", @"com.apple.avfoundation.frecents"}];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AVOutputDeviceFrecencyManager__frecentsFilePath__block_invoke;
    block[3] = &unk_1E794ED28;
    block[4] = _frecentsContainerPath;
    if (_frecentsFilePath_pathLoggingOnce != -1)
    {
      dispatch_once(&_frecentsFilePath_pathLoggingOnce, block);
    }
  }

  return _frecentsContainerPath;
}

+ (BOOL)_migrateFrecentsFromCFPreferencesToFrecentsFilePath:(id)path
{
  v43[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    OUTLINED_FUNCTION_4_1();
    v11 = OUTLINED_FUNCTION_2_1(qword_1ED6F6B60, v4, v5, v6, v7, v8, v9, v10, v24, v25, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, v34, v35, type, v37);
    if (os_log_type_enabled(v11, type))
    {
      v12 = v37;
    }

    else
    {
      v12 = v37 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v39 = 136315394;
      v40 = "+[AVOutputDeviceFrecencyManager _migrateFrecentsFromCFPreferencesToFrecentsFilePath:]";
      v41 = 2114;
      stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];
      LODWORD(v26) = 22;
      _os_log_send_and_compose_impl(v12, 0, v43, 128, &dword_1AB586000, v11, type, "<<<< AVOutputDevice >>>> %s: Migrating frecents from CFPreferences to %{public}@", &v39, v26);
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = +[AVOutputDeviceLegacyFrecentsReader defaultFrecentsReader];
  v14 = +[AVOutputDeviceLegacyFrecentsWriter defaultFrecentsWriter];
  v15 = [[AVOutputDeviceFrecentsWriter alloc] initWithFrecentsFilePath:path];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  deviceIDs = [v13 deviceIDs];
  v17 = [deviceIDs countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(deviceIDs);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        -[AVOutputDeviceFrecentsWriter setFrecencyInfo:forDeviceID:](v15, "setFrecencyInfo:forDeviceID:", [v13 frecencyInfoForDeviceWithID:v21], v21);
        [v14 removeFrecencyInfoForDeviceID:v21];
      }

      v18 = [deviceIDs countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v18);
  }

  v43[0] = 0;
  if ([(AVOutputDeviceFrecentsWriter *)v15 persistToDiskReturningError:v43])
  {
    v28 = 0;
    v22 = [v14 persistToDiskReturningError:&v28];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (AVOutputDeviceFrecentsReader)_frecentsReaderAfterMigrationIfNecessary
{
  _frecentsFilePath = [self _frecentsFilePath];
  if (_frecentsFilePath)
  {
    v5 = _frecentsFilePath;
    v9 = 0;
    _frecentsFilePath = [[AVOutputDeviceFrecentsReader alloc] initWithFrecentsFilePath:_frecentsFilePath error:&v9];
    if (!_frecentsFilePath)
    {
      v6 = v9;
      if (v9 && (v7 = [v9 domain], (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E696A250]) & 1) != 0) && objc_msgSend(v6, "code") == 260 && (objc_msgSend(self, "_migrateFrecentsFromCFPreferencesToFrecentsFilePath:", v5) & 1) != 0)
      {
        _frecentsFilePath = [[AVOutputDeviceFrecentsReader alloc] initWithFrecentsFilePath:v5 error:&v9];
      }

      else
      {
        _frecentsFilePath = 0;
      }
    }
  }

  result = _frecentsFilePath;
  *a2 = result;
  return result;
}

+ (AVOutputDeviceFrecentsWriter)_frecentsWriter
{
  _frecentsFilePath = [self _frecentsFilePath];
  if (_frecentsFilePath)
  {
    _frecentsFilePath = [[AVOutputDeviceFrecentsWriter alloc] initWithFrecentsFilePath:_frecentsFilePath];
  }

  result = _frecentsFilePath;
  *a2 = result;
  return result;
}

@end