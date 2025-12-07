@interface PerformanceLoggingDiagnosticExtensionExtension
- (BOOL)setEPLKeysForParameters:(id)parameters error:(id *)error domain:(__CFString *)domain;
- (id)attachmentsForParameters:(id)parameters;
- (id)keyWithPrefix:(id)prefix;
- (id)linkRMEAndGetEPLProfilePath;
- (id)sysdiagnoseParamsFromDEParams:(id)params;
- (id)takeSysdiagnose:(id)sysdiagnose error:(id *)error;
- (void)enableReportMemoryException:(BOOL)exception;
@end

@implementation PerformanceLoggingDiagnosticExtensionExtension

- (id)keyWithPrefix:(id)prefix
{
  if (prefix)
  {
    prefix = [NSString stringWithFormat:@"%@.%@", @"HTEPL", prefix];
  }

  else
  {
    prefix = 0;
  }

  return prefix;
}

- (id)sysdiagnoseParamsFromDEParams:(id)params
{
  paramsCopy = params;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  if (paramsCopy)
  {
    v6 = [paramsCopy objectForKeyedSubscript:@"shouldCreateTarBall"];

    if (v6)
    {
      v7 = [paramsCopy objectForKeyedSubscript:@"shouldCreateTarBall"];
      [v5 setObject:v7 forKeyedSubscript:@"shouldCreateTarBall"];
    }

    else
    {
      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"shouldCreateTarBall"];
    }

    v10 = [paramsCopy objectForKeyedSubscript:@"forceDiagnostic"];

    if (v10)
    {
      v11 = [paramsCopy objectForKeyedSubscript:@"forceDiagnostic"];
      [v5 setObject:v11 forKeyedSubscript:@"forceDiagnostic"];
    }

    else
    {
      [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"forceDiagnostic"];
    }

    v26[0] = @"HangTracerTailspins";
    v24 = @"maxSizeMB";
    v12 = [NSNumber numberWithUnsignedInteger:55];
    v25 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27[0] = v13;
    v26[1] = @"ForceResetTailspins";
    v22 = @"maxSizeMB";
    v14 = [NSNumber numberWithUnsignedInteger:175];
    v23 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v27[1] = v15;
    v26[2] = @"crashes_and_spins/MemoryExceptions";
    v20 = @"maxSizeMB";
    v16 = [NSNumber numberWithUnsignedInteger:50];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v27[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v5 setObject:v18 forKeyedSubscript:@"capOverride"];

    v9 = v5;
  }

  else
  {
    v8 = shared_pl_log_handle(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100008B04();
    }

    v9 = 0;
  }

  return v9;
}

- (id)takeSysdiagnose:(id)sysdiagnose error:(id *)error
{
  sysdiagnoseCopy = sysdiagnose;
  v6 = shared_pl_log_handle(sysdiagnoseCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to take sysdiagnose", buf, 2u);
  }

  if (sysdiagnoseCopy)
  {
    v14 = 0;
    v8 = [Libsysdiagnose sysdiagnoseWithMetadata:sysdiagnoseCopy withError:&v14];
    v9 = v14;
    v10 = v9;
    if (error)
    {
      v9 = v9;
      *error = v10;
    }

    v11 = shared_pl_log_handle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Returned sysdiagnose path: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v12 = shared_pl_log_handle(v7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100008B38();
  }

  if (error)
  {
    v10 = [NSDictionary dictionaryWithObject:@"sysdiagnose parameters dictionary is nil" forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"EPLErrorDomain" code:1 userInfo:v10];
    *error = v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)linkRMEAndGetEPLProfilePath
{
  if (qword_10001A1A0 != -1)
  {
    sub_100008B6C();
  }

  if (qword_10001A198)
  {
    getEPLProfilePath = [qword_10001A198 getEPLProfilePath];
    v3 = shared_pl_log_handle(getEPLProfilePath);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Successfully resolved EPLProfilePath dynamically", v5, 2u);
    }
  }

  else
  {
    v3 = shared_pl_log_handle(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008B80();
    }

    getEPLProfilePath = 0;
  }

  return getEPLProfilePath;
}

- (void)enableReportMemoryException:(BOOL)exception
{
  exceptionCopy = exception;
  linkRMEAndGetEPLProfilePath = [(PerformanceLoggingDiagnosticExtensionExtension *)self linkRMEAndGetEPLProfilePath];
  v5 = linkRMEAndGetEPLProfilePath;
  if (linkRMEAndGetEPLProfilePath)
  {
    if (exceptionCopy)
    {
      v6 = objc_alloc_init(NSDateComponents);
      [v6 setDay:2];
      v7 = +[NSCalendar currentCalendar];
      v8 = +[NSDate date];
      localizedDescription = [v7 dateByAddingComponents:v6 toDate:v8 options:0];

      v42[0] = @"FullDiagLimit";
      v42[1] = @"LiteDiagLimit";
      v43[0] = &off_100015D00;
      v43[1] = &off_100015D18;
      v42[2] = @"PerProcessLimit";
      v42[3] = @"ExpirationDate";
      v43[2] = &off_100015D30;
      v43[3] = localizedDescription;
      v10 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
      v35 = 0;
      v11 = [NSPropertyListSerialization dataWithPropertyList:v10 format:100 options:0 error:&v35];
      v12 = v35;
      v13 = v12;
      if (v11)
      {
        v14 = open([v5 UTF8String], 1538, 420);
        if (v14 == -1)
        {
          v18 = shared_pl_log_handle(v14);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100008D9C(v5, v18);
          }
        }

        else
        {
          v15 = v14;
          v32 = v13;
          v40 = NSFileProtectionKey;
          v41 = NSFileProtectionNone;
          v16 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v17 = +[NSFileManager defaultManager];
          v34 = 0;
          v31 = v16;
          LODWORD(v16) = [v17 setAttributes:v16 ofItemAtPath:v5 error:&v34];
          v18 = v34;

          if (v16)
          {
            v20 = write(v15, [v11 bytes], objc_msgSend(v11, "length"));
            v21 = shared_pl_log_handle(v20);
            v22 = v21;
            if (v20 == -1)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100008D10();
              }
            }

            else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v5;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Successfully wrote ReportMemoryException plist at %@", buf, 0xCu);
            }
          }

          else
          {
            v22 = shared_pl_log_handle(v19);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100008C74(v5, v18);
            }
          }

          close(v15);
          v13 = v32;
        }
      }

      else
      {
        v18 = shared_pl_log_handle(v12);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100008E14(v5, v13);
        }
      }
    }

    else
    {
      v23 = truncate([linkRMEAndGetEPLProfilePath UTF8String], 0);
      v24 = v23;
      v25 = shared_pl_log_handle(v23);
      v26 = v25;
      if (v24 == -1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100008BE8();
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v5;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully truncated ReportMemoryException plist at %@", buf, 0xCu);
      }

      v27 = +[NSFileManager defaultManager];
      v33 = 0;
      v28 = [v27 removeItemAtPath:v5 error:&v33];
      v6 = v33;

      v7 = shared_pl_log_handle(v29);
      v30 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v28)
      {
        if (v30)
        {
          *buf = 138412290;
          v37 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully deleted ReportMemoryException plist at %@", buf, 0xCu);
        }

        goto LABEL_32;
      }

      if (!v30)
      {
LABEL_32:

        goto LABEL_33;
      }

      localizedDescription = [v6 localizedDescription];
      *buf = 138412546;
      v37 = v5;
      v38 = 2112;
      v39 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Failed to delete ReportMemoryException plist at %@ with error %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  v6 = shared_pl_log_handle(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100008EB0();
  }

LABEL_33:
}

- (BOOL)setEPLKeysForParameters:(id)parameters error:(id *)error domain:(__CFString *)domain
{
  parametersCopy = parameters;
  v9 = parametersCopy;
  if (parametersCopy)
  {
    v10 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
    v11 = v10;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        if (configureTailspinForEPL(1))
        {
          persistAndUnredactLogs(1);
          [(PerformanceLoggingDiagnosticExtensionExtension *)self enableReportMemoryException:1];
          v12 = +[NSDate date];
          [v12 timeIntervalSinceReferenceDate];
          [PLPreferences setDouble:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLTimeoutTimestampSec"] key:domain domain:v13 + 172800.0];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLEnabled"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableAppActivationLogging"] domain:@"com.apple.hangtracer"];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnabled"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableTailspin"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableSignpostMonitoring"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableWorkflowResponsiveness"] domain:domain];
          [PLPreferences setBool:1 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerCollectOSSignpostsDeferred"] domain:domain];
          [PLPreferences setBool:0 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerShouldUploadToDiagPipe"] domain:domain];
          [PLPreferences setString:@"compressed" key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerKeepTailspinsWithFormat"] domain:domain];
          [PLPreferences setInteger:55 key:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerSavedTailspinsMaxMB"] domain:domain];

LABEL_11:
          if (error)
          {
            *error = 0;
          }

          v14 = 1;
          goto LABEL_21;
        }

        if (!error)
        {
          goto LABEL_20;
        }

        [NSString stringWithFormat:@"Failed to apply config object, tailspin enablement state will not change (enabled = %{BOOL}d)", 1];
      }

      else
      {
        persistAndUnredactLogs(0);
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLEnabled"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableAppActivationLogging"] domain:@"com.apple.hangtracer"];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnabled"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableTailspin"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableSignpostMonitoring"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerEnableWorkflowResponsiveness"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerCollectOSSignpostsDeferred"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerKeepTailspinsWithFormat"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerSavedTailspinsMaxMB"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"HangTracerShouldUploadToDiagPipe"] domain:domain];
        [PLPreferences removeKey:[(PerformanceLoggingDiagnosticExtensionExtension *)self keyWithPrefix:@"EPLTimeoutTimestampSec"] domain:domain];
        if (configureTailspinForEPL(0))
        {
          goto LABEL_11;
        }

        if (!error)
        {
          goto LABEL_20;
        }

        [NSString stringWithFormat:@"Failed to apply config object, tailspin enablement state will not change (enabled = %{BOOL}d)", 0];
      }
      v16 = ;
      v17 = [NSDictionary dictionaryWithObject:v16 forKey:NSLocalizedDescriptionKey];
      *error = [NSError errorWithDomain:@"EPLErrorDomain" code:3 userInfo:v17];
    }

    else if (error)
    {
      v15 = [NSDictionary dictionaryWithObject:@"Enhanced Performance Logging key not found in parameters" forKey:NSLocalizedDescriptionKey];
      *error = [NSError errorWithDomain:@"EPLErrorDomain" code:2 userInfo:v15];
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    v11 = [NSDictionary dictionaryWithObject:@"Parameters dictionary is nil" forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"EPLErrorDomain" code:1 userInfo:v11];
    *error = v14 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (qword_10001A1A8 != -1)
  {
    sub_100008EE4();
  }

  lock = [qword_10001A188 lock];
  if (byte_10001A1B0)
  {
    v6 = shared_pl_log_handle(lock);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100009018();
    }

    [qword_10001A188 unlock];
    v7 = &__NSArray0__struct;
  }

  else
  {
    byte_10001A1B0 = 1;
    [qword_10001A188 unlock];
    v24 = 0;
    [(PerformanceLoggingDiagnosticExtensionExtension *)self setEPLKeysForParameters:parametersCopy error:&v24];
    v8 = v24;
    v9 = shared_pl_log_handle(v8);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100008EF8(v8);
      }

      [qword_10001A188 lock];
      byte_10001A1B0 = 0;
      [qword_10001A188 unlock];
      v7 = &__NSArray0__struct;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Posting notification regarding EPL state change: %@", buf, 0xCu);
      }

      notify_post(EPL_STATE_CHANGED_NOTIFICATION);
      v12 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
      if (v12)
      {
        v13 = [parametersCopy objectForKeyedSubscript:@"EnableEnhancedPerformanceLogging"];
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          v12 = 0;
        }

        else
        {
          v15 = [(PerformanceLoggingDiagnosticExtensionExtension *)self sysdiagnoseParamsFromDEParams:parametersCopy];
          v23 = 0;
          v12 = [(PerformanceLoggingDiagnosticExtensionExtension *)self takeSysdiagnose:v15 error:&v23];
          v16 = v23;
          v17 = v16;
          if (v16)
          {
            v18 = shared_pl_log_handle(v16);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_100008F88(v17);
            }
          }

          [(PerformanceLoggingDiagnosticExtensionExtension *)self enableReportMemoryException:0];
          cleanupDiagnosticLogsDirectory(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/");
        }
      }

      v19 = +[NSMutableArray array];
      v7 = v19;
      if (v12)
      {
        v20 = shared_pl_log_handle(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Constructing DEAttachmentItem for sysdiagnose file", buf, 2u);
        }

        v21 = [DEAttachmentItem attachmentWithPath:v12];
        [v21 setDeleteOnAttach:&__kCFBooleanTrue];
        [v7 addObject:v21];
      }

      [qword_10001A188 lock];
      byte_10001A1B0 = 0;
      [qword_10001A188 unlock];
    }
  }

  return v7;
}

@end