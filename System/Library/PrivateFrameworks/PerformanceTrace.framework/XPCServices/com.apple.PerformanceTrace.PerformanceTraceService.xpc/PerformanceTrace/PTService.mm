@interface PTService
- (BOOL)_appendLogContentToKtraceFile:(id)file withError:(id *)error;
- (BOOL)_aspSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers;
- (BOOL)_configureKtraceSession:(id)session withError:(id *)error;
- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement;
- (BOOL)_faultSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers;
- (BOOL)_graphicsSamplingInit;
- (BOOL)_postProcessKtraceFile:(id)file withError:(id *)error;
- (BOOL)_syscallSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers;
- (BOOL)_validSymbolicationPreferences;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCConnection)recordingConnectionPointer;
- (PTService)init;
- (id)_generateToken:(id)token;
- (id)_traceRecordArgsArrayFromConfig:(id)config outputFilePath:(id)path xpcConnection:(id)connection error:(id *)error;
- (void)_graphicsSamplingTeardown;
- (void)_startPerformanceTrace:(id)trace;
- (void)_startPerformanceTraceLegacy:(id)legacy;
- (void)_stopPerformanceTrace;
- (void)_stopPerformanceTraceLegacy;
- (void)_symbolicateKtraceFile:(id)file;
- (void)_updateRecordingStatus:(BOOL)status;
- (void)applyConfig:(id)config withError:(id)error;
- (void)getCurrentStoredConfig:(id)config;
- (void)isInRecordingWorkflow:(id)workflow;
- (void)pingService:(id)service;
- (void)resetConfig:(id)config;
- (void)startPerformanceTrace:(id)trace;
- (void)stopPerformanceTrace;
@end

@implementation PTService

- (void)_updateRecordingStatus:(BOOL)status
{
  statusCopy = status;
  isInRecordingWorkflow = [(PTService *)self isInRecordingWorkflow];
  if (isInRecordingWorkflow != statusCopy)
  {
    self->_isInRecordingWorkflow = statusCopy;
    v6 = sub_1000022A8(isInRecordingWorkflow);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Not recording";
      if (statusCopy)
      {
        v7 = "Recording";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated recording status to '%s'", &v8, 0xCu);
    }

    PTServicesPostStateDidChangeNotification();
  }
}

- (PTService)init
{
  v3.receiver = self;
  v3.super_class = PTService;
  result = [(PTService *)&v3 init];
  if (result)
  {
    result->_ktraceSession = 0;
    result->_isInRecordingWorkflow = 0;
  }

  return result;
}

- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement
{
  v4 = [entitled valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_syscallSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers
{
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  v6 = kperf_kdebug_filter_add_class_subclass_fn();
  if (v6)
  {
    v7 = sub_1000022A8(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000E6DC();
    }

LABEL_7:

    return 0;
  }

  v8 = kperf_kdebug_filter_add_class_subclass_fn();
  if (v8)
  {
    v7 = sub_1000022A8(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000E74C();
    }

    goto LABEL_7;
  }

  *samplers |= 8u;
  return 1;
}

- (BOOL)_faultSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers
{
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  v5 = kperf_kdebug_filter_add_class_subclass_fn();
  v6 = v5;
  if (v5)
  {
    v7 = sub_1000022A8(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000E7BC();
    }
  }

  else
  {
    *samplers |= 8u;
  }

  return v6 == 0;
}

- (BOOL)_graphicsSamplingInit
{
  for (i = 0; i != 5; ++i)
  {
    v5 = 1;
    sysctlbyname(off_1000186E0[i], 0, 0, &v5, 4uLL);
  }

  [(PTService *)self ktraceSession];
  ktrace_events_range();
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  return 1;
}

- (void)_graphicsSamplingTeardown
{
  for (i = 0; i != 5; ++i)
  {
    sysctlbyname(off_1000186E0[i], 0, 0, 0, 4uLL);
  }
}

- (BOOL)_aspSamplingInitFilter:(kperf_kdebug_filter *)filter withSamplers:(unsigned int *)samplers
{
  [(PTService *)self ktraceSession:filter];
  ktrace_events_range();
  return 1;
}

- (BOOL)_configureKtraceSession:(id)session withError:(id *)error
{
  sessionCopy = session;
  [(PTService *)self ktraceSession];
  ktrace_set_thread_groups_enabled();
  kperf_reset();
  kperf_action_count_set();
  v7 = kperf_kdebug_filter_create();
  if (!v7)
  {
    if (error)
    {
      v17 = @"Unable to create kdebug filter for kperf";
      goto LABEL_48;
    }

LABEL_65:
    v34 = 0;
    goto LABEL_66;
  }

  v8 = v7;
  traceGroups = [sessionCopy traceGroups];
  v10 = [traceGroups containsObject:&off_10001A5B0];

  if (v10 && ![(PTService *)self _graphicsSamplingInit])
  {
    if (error)
    {
      v17 = @"Unable to init graphics sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  v42 = 0;
  traceGroups2 = [sessionCopy traceGroups];
  v12 = [traceGroups2 containsObject:&off_10001A5C8];

  if (v12 && ![(PTService *)self _syscallSamplingInitFilter:v8 withSamplers:&v42])
  {
    if (error)
    {
      v17 = @"Unable to init syscall sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  traceGroups3 = [sessionCopy traceGroups];
  v14 = [traceGroups3 containsObject:&off_10001A5E0];

  if (!v14)
  {
    goto LABEL_9;
  }

  if (![(PTService *)self _faultSamplingInitFilter:v8 withSamplers:&v42])
  {
    if (error)
    {
      v17 = @"Unable to init vmfault sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  v12 = 1;
LABEL_9:
  traceGroups4 = [sessionCopy traceGroups];
  v16 = [traceGroups4 containsObject:&off_10001A5F8];

  if (!v16)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if ([(PTService *)self _aspSamplingInitFilter:v8 withSamplers:&v42])
  {
LABEL_18:
    if (kperf_kdebug_filter_set())
    {
      desc = kperf_kdebug_filter_create_desc();
      if (!error)
      {
        goto LABEL_65;
      }

      v19 = "???";
      if (desc)
      {
        v19 = desc;
      }

      goto LABEL_63;
    }

    v20 = kperf_kdebug_action_set();
    if (v20)
    {
      if (!error)
      {
        goto LABEL_65;
      }

      [NSString stringWithFormat:@"Unable to set kperf action for kdebug events: %{errno}d", v20];
      goto LABEL_63;
    }

    v21 = kperf_action_samplers_set();
    if (v21)
    {
      if (!error)
      {
        goto LABEL_65;
      }

      [NSString stringWithFormat:@"Unable to set samplers for kdebug kperf events: %{errno}d", v21];
      goto LABEL_63;
    }

LABEL_33:
    kperf_kdebug_filter_destroy();
    traceGroups5 = [sessionCopy traceGroups];
    v23 = [traceGroups5 containsObject:&off_10001A610];

    if (v23)
    {
      for (i = 0; i != 52; i += 4)
      {
        [(PTService *)self ktraceSession];
        ktrace_events_range();
      }

      v25 = &unk_100012258;
      v26 = 3;
      do
      {
        [(PTService *)self ktraceSession];
        ktrace_events_range();
        v25 += 8;
        --v26;
      }

      while (v26);
    }

    else
    {
      traceGroups6 = [sessionCopy traceGroups];
      v28 = [traceGroups6 containsObject:&off_10001A628];

      if (v28)
      {
        for (j = 0; j != 32; j += 4)
        {
          [(PTService *)self ktraceSession];
          ktrace_events_range();
        }

        v30 = 1;
        do
        {
          v31 = v30;
          [(PTService *)self ktraceSession];
          ktrace_events_range();
          v30 = 0;
        }

        while ((v31 & 1) != 0);
      }
    }

    traceGroups7 = [sessionCopy traceGroups];
    v33 = [traceGroups7 containsObject:&off_10001A640];

    if (v33)
    {
      [sessionCopy includeKernelStacks];
      if (kperf_action_samplers_set())
      {
        if (error)
        {
          v17 = @"Unable to set samplers for kperf timer action";
          goto LABEL_48;
        }

        goto LABEL_65;
      }

      kperf_timer_count_set();
      v35 = 1000000 * [sessionCopy callstackSamplingRateMS];
      kperf_ns_to_ticks();
      if (kperf_timer_period_set())
      {
        if (!error)
        {
          goto LABEL_65;
        }

        [NSString stringWithFormat:@"Unable to set kperf timer period to %llu ns", v35];
        goto LABEL_63;
      }

      if (kperf_timer_period_get())
      {
        if (!error)
        {
          goto LABEL_65;
        }

        v36 = @"Unable to retrieve kperf timer period";
LABEL_55:
        *error = [NSError error:0 description:v36];
        goto LABEL_65;
      }

      v37 = kperf_ticks_to_ns();
      if (v37 != v35)
      {
        if (!error)
        {
          goto LABEL_65;
        }

        v39 = [NSString stringWithFormat:@"Unable to set the callstack sampling rate requested.                            Kperf timer period could only be set to %llu ns", v37];
        v40 = 4;
        goto LABEL_64;
      }

      if (kperf_timer_action_set())
      {
        if (!error)
        {
          goto LABEL_65;
        }

        v36 = @"Unable to set kperf timer action";
        goto LABEL_55;
      }
    }

    [(PTService *)self ktraceSession];
    v34 = 1;
    ktrace_set_vnode_paths_enabled();
    v38 = kperf_sample_set();
    if (!v38)
    {
      goto LABEL_66;
    }

    if (!error)
    {
      goto LABEL_65;
    }

    [NSString stringWithFormat:@"Could not enable sampling: %{errno}d", v38];
    v39 = LABEL_63:;
    v40 = 0;
LABEL_64:
    *error = [NSError error:v40 description:v39];

    goto LABEL_65;
  }

  if (!error)
  {
    goto LABEL_65;
  }

  v17 = @"Unable to init asp sampling";
LABEL_48:
  [NSError error:0 description:v17];
  *error = v34 = 0;
LABEL_66:

  return v34;
}

- (BOOL)_validSymbolicationPreferences
{
  v2 = CFPreferencesCopyAppValue(@"DBGFileMappedPaths", @"com.apple.DebugSymbols");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFArrayGetTypeID() && CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFStringGetTypeID())
        {
          v7 |= CFStringCompare(ValueAtIndex, @"/Library/Caches/com.apple.bni.symbols/bursar.apple.com/uuids", 0) == kCFCompareEqualTo;
        }

        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFStringGetTypeID())
        {
          v6 |= CFStringCompare(ValueAtIndex, @"/Library/Caches/com.apple.bni.symbols/uuidsymmap.apple.com/uuids", 0) == kCFCompareEqualTo;
        }

        ++v5;
      }

      while (CFArrayGetCount(v3) > v5);
      CFRelease(v3);
      if (v7 & v6)
      {
        LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"XBSCopyExecutable", @"com.apple.dsymForUUID", 0) != 0;
        return v2;
      }
    }

    else
    {
      CFRelease(v3);
    }

    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)_symbolicateKtraceFile:(id)file
{
  fileCopy = file;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = has_internal_diagnostics;
  v6 = sub_1000022A8(has_internal_diagnostics);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping symbolication because of OS variant.", v12, 2u);
    }

    goto LABEL_10;
  }

  if (v7)
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Symbolicating Performance Trace", v12, 2u);
  }

  path = [fileCopy path];
  [path UTF8String];
  v9 = ktrace_file_open();

  if (!v9)
  {
    v6 = sub_1000022A8(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E82C();
    }

LABEL_10:

    goto LABEL_11;
  }

  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, @"/");
  v12[0] = Mutable;
  v12[1] = 1;
  ktrace_create_dsym_search_configuration();
  ktrace_symbolicate_file();
  ktrace_free_dsym_search_configuration();
  ktrace_file_close();
  CFRelease(Mutable);
LABEL_11:
}

- (BOOL)_appendLogContentToKtraceFile:(id)file withError:(id *)error
{
  fileCopy = file;
  activeConfig = [(PTService *)self activeConfig];
  includeOSLogs = [activeConfig includeOSLogs];

  if (includeOSLogs)
  {
    v9 = 71;
  }

  else
  {
    v9 = 0;
  }

  activeConfig2 = [(PTService *)self activeConfig];
  includeOSSignposts = [activeConfig2 includeOSSignposts];

  if (includeOSSignposts)
  {
    v13 = v9 | 0x20;
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    v25 = sub_1000022A8(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000E984();
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v26 = @"Failed to append logs due to missing flags.";
LABEL_26:
    [NSError error:0 description:v26];
    *error = v27 = 0;
    goto LABEL_32;
  }

  startTime = [(PTService *)self startTime];

  v16 = sub_1000022A8(v15);
  v17 = v16;
  if (!startTime)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000E948();
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v26 = @"Unable to append logs due to missing startTime.";
    goto LABEL_26;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Starting to append logs.", buf, 2u);
  }

  path = [fileCopy path];
  [path UTF8String];
  v19 = ktrace_file_open();

  if (!v19)
  {
    v28 = __error();
    v29 = *v28;
    v30 = sub_1000022A8(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10000E8D8();
    }

    if (error)
    {
      v31 = [NSString stringWithFormat:@"Failed to open file to append logs: %{errno}d", v29];
      *error = [NSError error:0 description:v31];
    }

    goto LABEL_31;
  }

  startTime2 = [(PTService *)self startTime];
  appended = ktrace_file_append_local_log_content();

  if (appended)
  {
    v23 = sub_1000022A8(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10000E868();
    }

    if (error)
    {
      appended = [NSString stringWithFormat:@"Failed to append logs: %{errno}d", appended];
      *error = [NSError error:0 description:appended];
    }

    ktrace_file_close();
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v33 = ktrace_file_close();
  v34 = sub_1000022A8(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Done appending logs.", v35, 2u);
  }

  v27 = 1;
LABEL_32:

  return v27;
}

- (BOOL)_postProcessKtraceFile:(id)file withError:(id *)error
{
  fileCopy = file;
  path = [fileCopy path];
  [path UTF8String];
  v8 = ktrace_file_open();

  if (v8)
  {
    ktrace_file_append_live_ariadne_signpost_specs();
    ktrace_file_close();
    if (ktrace_session_create())
    {
      ktrace_set_execnames_enabled();
      ktrace_session_set_event_names_enabled();
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v26 = 1;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v24[3] = 0;
      ktrace_events_all();
      v9 = dispatch_semaphore_create(0);
      ktrace_set_completion_handler();
      path2 = [fileCopy path];
      [path2 UTF8String];
      v11 = ktrace_set_file();

      if (v11)
      {
        if (error)
        {
          v12 = [NSString stringWithFormat:@"Failed to open trace file for post-processing: %{errno}d", v11];
          v13 = [NSError error:0 description:v12];
LABEL_15:
          *error = v13;

          goto LABEL_16;
        }

        goto LABEL_16;
      }

      v16 = &_dispatch_main_q;
      v17 = ktrace_start();

      if (v17)
      {
        if (error)
        {
          v12 = [NSString stringWithFormat:@"Failed to parse trace file for post-processing: %{errno}d", v17];
          v13 = [NSError error:0 description:v12];
          goto LABEL_15;
        }

LABEL_16:
        ktrace_session_destroy();
        goto LABEL_17;
      }

      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      ktrace_session_destroy();
      if (v28[3])
      {
        if (error)
        {
          [NSError error:6 description:@"Events were lost during tracing. Trace will be unreadable"];
          *error = v15 = 0;
          goto LABEL_18;
        }

LABEL_17:
        v15 = 0;
LABEL_18:

        _Block_object_dispose(v24, 8);
        _Block_object_dispose(v25, 8);
        _Block_object_dispose(&v27, 8);
        goto LABEL_19;
      }

      activeConfig = [(PTService *)self activeConfig];
      if ([activeConfig includeOSLogs])
      {
      }

      else
      {
        activeConfig2 = [(PTService *)self activeConfig];
        includeOSSignposts = [activeConfig2 includeOSSignposts];

        if (!includeOSSignposts)
        {
          goto LABEL_28;
        }
      }

      if (![(PTService *)self _appendLogContentToKtraceFile:fileCopy withError:error]|| *error)
      {
        goto LABEL_17;
      }

LABEL_28:
      activeConfig3 = [(PTService *)self activeConfig];
      symbolicate = [activeConfig3 symbolicate];

      if (symbolicate)
      {
        [(PTService *)self _symbolicateKtraceFile:fileCopy];
      }

      v15 = 1;
      goto LABEL_18;
    }

    if (error)
    {
      v14 = @"Failed to create the tracing session for post-processing";
      goto LABEL_10;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_19;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  v14 = @"Failed to open the trace file to append specs";
LABEL_10:
  [NSError error:0 description:v14];
  *error = v15 = 0;
LABEL_19:

  return v15;
}

- (id)_generateToken:(id)token
{
  path = [token path];
  [path UTF8String];
  activeConfig = [(PTService *)self activeConfig];
  [activeConfig ownerPID];
  v6 = sandbox_extension_issue_file_to_process_by_pid();

  if (v6)
  {
    v8 = [NSString stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v9 = sub_1000022A8(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000E9C0();
    }

    v8 = 0;
  }

  return v8;
}

- (void)startPerformanceTrace:(id)trace
{
  traceCopy = trace;
  [(PTService *)self _updateRecordingStatus:1];
  if ([traceCopy useTraceRecord])
  {
    [(PTService *)self _startPerformanceTrace:traceCopy];
  }

  else
  {
    [(PTService *)self _startPerformanceTraceLegacy:traceCopy];
  }
}

- (void)_startPerformanceTrace:(id)trace
{
  traceCopy = trace;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_1000022A8(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ownerName = [traceCopy ownerName];
    *buf = 138543618;
    v102 = ownerName;
    v103 = 1024;
    ownerPID = [traceCopy ownerPID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting PerformanceTrace for %{public}@ [%d]", buf, 0x12u);
  }

  if (![(PTService *)self ktraceRecording]&& ![(PTService *)self ktraceSession])
  {
    os_variant_has_internal_content();
    ownerName2 = [traceCopy ownerName];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PerformanceTrace: %@ [%d]", ownerName2, [traceCopy ownerPID]);

    if (v13)
    {
      [v13 UTF8String];
    }

    [(PTService *)self setKtraceRecording:ktrace_recording_create()];
    if ([(PTService *)self ktraceRecording])
    {
      if (ktrace_config_create_current())
      {
        if (ktrace_config_get_owner_kind() == 1)
        {
          owner_name = ktrace_config_get_owner_name();
          v18 = strncmp(owner_name, "com.apple.Perfor", 0x20uLL);
          if (v18)
          {
            v19 = [NSString stringWithFormat:@"Cannot start tracing as another process already owns foreground tracing: %s [%i]", owner_name, ktrace_config_get_owner_pid()];
            v14 = [NSError error:3 description:v19];

            ktrace_config_destroy();
            activeConfig = [(PTService *)self activeConfig];

            if (activeConfig)
            {
              activeConfig2 = [(PTService *)self activeConfig];
              [activeConfig2 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v22 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018818];
            v23 = sub_1000022A8(v22);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v24 = sub_1000022A8(v18);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_10000EA88();
          }

          v25 = ktrace_reset_existing();
          if (v25)
          {
            v26 = [NSString stringWithFormat:@"ktrace was left in a bad state and cannot be reset: %{errno}d", v25];
            v14 = [NSError error:0 description:v26];

            ktrace_config_destroy();
            activeConfig3 = [(PTService *)self activeConfig];

            if (activeConfig3)
            {
              activeConfig4 = [(PTService *)self activeConfig];
              [activeConfig4 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v22 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187D8];
            v23 = sub_1000022A8(v22);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v29 = kperf_reset();
          if (v29)
          {
            v30 = [NSString stringWithFormat:@"kperf was left in a bad state and cannot be reset: %{errno}d", v29];
            v14 = [NSError error:0 description:v30];

            ktrace_config_destroy();
            activeConfig5 = [(PTService *)self activeConfig];

            if (activeConfig5)
            {
              activeConfig6 = [(PTService *)self activeConfig];
              [activeConfig6 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v22 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187F8];
            v23 = sub_1000022A8(v22);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }

        ktrace_config_destroy();
      }

      [(PTService *)self setActiveConfig:traceCopy];
      [(PTService *)self setRecordingConnectionPointer:v5];
      v33 = +[NSDate date];
      [(PTService *)self setStartTime:v33];

      v14 = objc_alloc_init(NSDateFormatter);
      [v14 setDateStyle:1];
      [v14 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      traceName = [traceCopy traceName];
      v35 = traceName;
      if (traceName)
      {
        v22 = traceName;
      }

      else
      {
        startTime = [(PTService *)self startTime];
        v37 = [v14 stringFromDate:startTime];
        v22 = [NSString stringWithFormat:@"trace_%@.atrc", v37];
      }

      traceDirectoryURL = [traceCopy traceDirectoryURL];
      path = [traceDirectoryURL path];
      v40 = path;
      v41 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
      if (path)
      {
        v41 = path;
      }

      v42 = v41;

      v43 = PTServicesCreateTraceDirectory(v42);
      if (v43)
      {
        activeConfig7 = [(PTService *)self activeConfig];

        if (activeConfig7)
        {
          activeConfig8 = [(PTService *)self activeConfig];
          [activeConfig8 setTracingActiveTransaction:0];

          [(PTService *)self setActiveConfig:0];
          [(PTService *)self setRecordingConnectionPointer:0];
          [(PTService *)self _updateRecordingStatus:0];
        }

        if ([(PTService *)self ktraceRecording])
        {
          [(PTService *)self ktraceRecording];
          ktrace_recording_destroy();
          kperf_reset();
          [(PTService *)self setKtraceRecording:0];
        }

        [(PTService *)self _graphicsSamplingTeardown];
        v46 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018838];
        v47 = sub_1000022A8(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10000E9FC(v43);
        }

        [v46 performanceTraceDidStart:v43];
      }

      else
      {
        v46 = [(__CFString *)v42 stringByAppendingPathComponent:v22];
        v99 = 0;
        v48 = [(PTService *)self _traceRecordArgsArrayFromConfig:traceCopy outputFilePath:v46 xpcConnection:v5 error:&v99];
        v78 = v99;
        v79 = v48;
        if (v78)
        {
          activeConfig9 = [(PTService *)self activeConfig];

          if (activeConfig9)
          {
            activeConfig10 = [(PTService *)self activeConfig];
            [activeConfig10 setTracingActiveTransaction:0];

            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
            [(PTService *)self _updateRecordingStatus:0];
          }

          if ([(PTService *)self ktraceRecording])
          {
            [(PTService *)self ktraceRecording];
            ktrace_recording_destroy();
            kperf_reset();
            [(PTService *)self setKtraceRecording:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          v51 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018858];
          v52 = sub_1000022A8(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10000E9FC(v78);
          }

          v53 = v78;
          [v51 performanceTraceDidStart:v78];
        }

        else
        {
          v75 = v42;
          v76 = v22;
          [(PTService *)self ktraceRecording];
          ktrace_recording_set_streams();
          v54 = os_transaction_create();
          [traceCopy setTracingActiveTransaction:v54];

          [(PTService *)self ktraceRecording];
          v91 = _NSConcreteStackBlock;
          v92 = 3221225472;
          v93 = sub_1000048FC;
          v94 = &unk_100018900;
          selfCopy = self;
          v77 = v5;
          v96 = v5;
          v97 = traceCopy;
          v74 = v46;
          v98 = v46;
          ktrace_recording_follow_notifications();
          v55 = dispatch_get_global_queue(25, 0);
          v56 = dispatch_queue_create_with_target_V2("com.apple.PerformanceTrace.tracingStartedNotificationQueue", 0, v55);
          queue = v55;

          out_token = 0;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100005214;
          handler[3] = &unk_100018948;
          v72 = v96;
          v89 = v72;
          notify_register_dispatch("com.apple.PerformanceTrace.StartedTraceRecord", &out_token, v56, handler);
          v71 = [v79 count];
          v57 = malloc_type_calloc(v71 + 1, 8uLL, 0x10040436913F5uLL);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v58 = v79;
          v59 = [v58 countByEnumeratingWithState:&v84 objects:v100 count:16];
          if (v59)
          {
            v60 = v59;
            v69 = v56;
            v70 = v13;
            v61 = 0;
            v62 = *v85;
            do
            {
              v63 = 0;
              v64 = v61 << 32;
              v61 = v61;
              do
              {
                if (*v85 != v62)
                {
                  objc_enumerationMutation(v58);
                }

                v57[v61++] = strdup([*(*(&v84 + 1) + 8 * v63) UTF8String]);
                v63 = v63 + 1;
                v64 += &_mh_execute_header;
              }

              while (v60 != v63);
              v60 = [v58 countByEnumeratingWithState:&v84 objects:v100 count:16];
            }

            while (v60);
            v65 = v64 >> 32;
            v13 = v70;
            v56 = v69;
            v43 = 0;
          }

          else
          {
            v65 = 0;
          }

          v57[v65] = 0;
          v67 = sub_1000022A8(v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v58 componentsJoinedByString:@" "];
            *buf = 138412290;
            v102 = v68;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "trace record args: %@", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000052F8;
          block[3] = &unk_100018990;
          v83 = v71;
          block[4] = self;
          v82 = v57;
          v81 = v72;
          dispatch_async(queue, block);

          v22 = v76;
          v5 = v77;
          v46 = v74;
          v42 = v75;
          v53 = 0;
        }
      }

      goto LABEL_79;
    }

    v14 = [NSError error:0 description:@"Cannot start tracing as Performance Trace failed to create the ktrace recording"];
    v22 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187B8];
    v23 = sub_1000022A8(v22);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      [v22 performanceTraceDidStart:v14];
LABEL_79:

      goto LABEL_11;
    }

LABEL_25:
    sub_10000E9FC(v14);
    goto LABEL_26;
  }

  activeConfig11 = [(PTService *)self activeConfig];

  if (activeConfig11)
  {
    activeConfig12 = [(PTService *)self activeConfig];
    ownerName3 = [activeConfig12 ownerName];
    activeConfig13 = [(PTService *)self activeConfig];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Tracing is already in progress by another PerformanceTrace client: %@ [%i]", ownerName3, [activeConfig13 ownerPID]);
    v13 = [NSError error:3 description:v12];

    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018778];
    v15 = sub_1000022A8(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [NSError error:3 description:@"Tracing is already in progress by another PerformanceTrace client: Unknown"];
    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018798];
    v15 = sub_1000022A8(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_10000E9FC(v13);
    }
  }

  [v14 performanceTraceDidStart:v13];
LABEL_11:
}

- (id)_traceRecordArgsArrayFromConfig:(id)config outputFilePath:(id)path xpcConnection:(id)connection error:(id *)error
{
  configCopy = config;
  pathCopy = path;
  connectionCopy = connection;
  v13 = [NSMutableArray arrayWithObject:@"record"];
  v54 = pathCopy;
  v14 = [NSArray arrayWithObjects:&v54 count:1];
  [v13 addObjectsFromArray:v14];

  traceRecordArgs = [configCopy traceRecordArgs];

  if (traceRecordArgs)
  {
    traceRecordArgs2 = [configCopy traceRecordArgs];
    [v13 addObjectsFromArray:traceRecordArgs2];
  }

  planNameOrPath = [configCopy planNameOrPath];

  if (planNameOrPath)
  {
    v53[0] = @"--plan";
    planNameOrPath2 = [configCopy planNameOrPath];
    v53[1] = planNameOrPath2;
    v19 = [NSArray arrayWithObjects:v53 count:2];
    [v13 addObjectsFromArray:v19];

    planNameOrPath3 = [configCopy planNameOrPath];
    LODWORD(v19) = [planNameOrPath3 isAbsolutePath];

    if (v19)
    {
      [v13 addObject:@"--experimental"];
    }
  }

  traceGroups = [configCopy traceGroups];
  v22 = [traceGroups containsObject:&off_10001A5B0];

  if (v22)
  {
    [v13 addObjectsFromArray:&off_10001A7C0];
  }

  traceGroups2 = [configCopy traceGroups];
  v24 = [traceGroups2 containsObject:&off_10001A5C8];

  if (v24)
  {
    [v13 addObjectsFromArray:&off_10001A7D8];
  }

  traceGroups3 = [configCopy traceGroups];
  v26 = [traceGroups3 containsObject:&off_10001A5E0];

  if (v26)
  {
    [v13 addObjectsFromArray:&off_10001A7F0];
  }

  traceGroups4 = [configCopy traceGroups];
  v28 = [traceGroups4 containsObject:&off_10001A5F8];

  if (v28)
  {
    [v13 addObjectsFromArray:&off_10001A808];
  }

  traceGroups5 = [configCopy traceGroups];
  v30 = [traceGroups5 containsObject:&off_10001A640];

  if (!v30 || [configCopy callstackSamplingRateMS] == 1)
  {
    traceType = [configCopy traceType];
    if (traceType == 2)
    {
      if (![configCopy traceDurationSecs])
      {
        if (error)
        {
          v38 = @"Non-zero traceDurationSecs must be specified when using ringbuffer mode";
LABEL_40:
          [NSString stringWithFormat:v38, v48];
          goto LABEL_41;
        }

LABEL_43:
        v41 = 0;
        goto LABEL_60;
      }

      v51[0] = @"--trailing-duration";
      v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lus", [configCopy traceDurationSecs]);
      v51[1] = v34;
      v35 = v51;
    }

    else
    {
      if (traceType != 1)
      {
        if (error)
        {
          +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cannot start tracing as an unknown trace type is used: %lu", [configCopy traceType]);
          v36 = LABEL_41:;
          v37 = 4;
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      traceDurationSecs = [configCopy traceDurationSecs];
      v33 = traceDurationSecs;
      if ((traceDurationSecs - 31) <= 0xFFFFFFFFFFFFFFE1)
      {
        if (connectionCopy && (traceDurationSecs = [(PTService *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.PerformanceTrace.OverrideTimeout"], (traceDurationSecs & 1) != 0))
        {
          if (!v33)
          {
LABEL_36:
            if ([configCopy kernelBufferSizeMB])
            {
              if ([configCopy kernelBufferSizeMB] >= 0x401)
              {
                if (error)
                {
                  v48 = 1024;
                  v38 = @"Cannot start tracing as PerformanceTrace cannot have a kernel buffer size larger than %dMB.";
                  goto LABEL_40;
                }

                goto LABEL_43;
              }

              v50[0] = @"--unsafe";
              v50[1] = @"--kdebug-buffer-size";
              v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lumb", [configCopy kernelBufferSizeMB]);
              v50[2] = v42;
              v43 = [NSArray arrayWithObjects:v50 count:3];
              [v13 addObjectsFromArray:v43];
            }

            if ([configCopy enableSwiftUITracing])
            {
              [v13 addObjectsFromArray:&off_10001A820];
            }

            if ([configCopy overrideIncludeOSLogs] && objc_msgSend(configCopy, "includeOSLogs"))
            {
              [v13 addObjectsFromArray:&off_10001A838];
            }

            if ([configCopy overrideIncludeOSSignposts] && (objc_msgSend(configCopy, "includeOSSignposts") & 1) == 0)
            {
              [v13 addObjectsFromArray:&off_10001A850];
            }

            if ([configCopy overrideSymbolicate])
            {
              if ([configCopy symbolicate])
              {
                v44 = &off_10001A868;
              }

              else
              {
                v44 = &off_10001A880;
              }
            }

            else
            {
              v44 = &off_10001A898;
            }

            [v13 addObjectsFromArray:v44];
            [v13 addObjectsFromArray:&off_10001A8B0];
            v45 = qword_10001D7A0++;
            v36 = [NSString stringWithFormat:@"%s.%llu", "com.apple.PerformanceTrace.EndTraceRecord", v45];
            v49[0] = @"--end-on-notification";
            v49[1] = v36;
            v46 = [NSArray arrayWithObjects:v49 count:2];
            [v13 addObjectsFromArray:v46];

            [configCopy setTraceRecordEndNotificationName:v36];
            v41 = [v13 copy];
            goto LABEL_59;
          }
        }

        else
        {
          v39 = sub_1000022A8(traceDurationSecs);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10000ECD8();
          }

          v33 = 30;
        }
      }

      v52[0] = @"--end-after-duration";
      v34 = [NSString stringWithFormat:@"%lus", v33];
      v52[1] = v34;
      v35 = v52;
    }

    v40 = [NSArray arrayWithObjects:v35 count:2];
    [v13 addObjectsFromArray:v40];

    goto LABEL_36;
  }

  if (!error)
  {
    goto LABEL_43;
  }

  v36 = [NSString stringWithFormat:@"Callstack sampling rate other than 1ms not supported"];
  v37 = 0;
LABEL_42:
  [NSError error:v37 description:v36];
  *error = v41 = 0;
LABEL_59:

LABEL_60:

  return v41;
}

- (void)_startPerformanceTraceLegacy:(id)legacy
{
  legacyCopy = legacy;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_1000022A8(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ownerName = [legacyCopy ownerName];
    *buf = 138543618;
    v81 = ownerName;
    v82 = 1024;
    ownerPID = [legacyCopy ownerPID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting PerformanceTrace (legacy) for %{public}@ [%d]", buf, 0x12u);
  }

  if (![(PTService *)self ktraceRecording]&& ![(PTService *)self ktraceSession])
  {
    [(PTService *)self setKtraceSession:ktrace_session_create()];
    if (![(PTService *)self ktraceSession])
    {
      v13 = [NSError error:0 description:@"Cannot start tracing as Performance Trace failed to create the ktrace session"];
      v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189F0];
      v15 = sub_1000022A8(v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [(PTService *)self ktraceSession];
    ktrace_set_execnames_enabled();
    [(PTService *)self ktraceSession];
    ktrace_session_set_event_names_enabled();
    if (ktrace_config_create_current())
    {
      if (ktrace_config_get_owner_kind() == 1)
      {
        owner_name = ktrace_config_get_owner_name();
        v17 = strncmp(owner_name, "com.apple.Perfor", 0x20uLL);
        if (v17)
        {
          v18 = [NSString stringWithFormat:@"Cannot start tracing as another process already owns foreground tracing: %s [%i]", owner_name, ktrace_config_get_owner_pid()];
          v13 = [NSError error:3 description:v18];

          ktrace_config_destroy();
          activeConfig = [(PTService *)self activeConfig];

          if (activeConfig)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A50];
          v15 = sub_1000022A8(v14);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v20 = sub_1000022A8(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_10000EA88();
        }

        v21 = ktrace_reset_existing();
        if (v21)
        {
          v22 = [NSString stringWithFormat:@"ktrace was left in a bad state and cannot be reset: %{errno}d", v21];
          v13 = [NSError error:0 description:v22];

          ktrace_config_destroy();
          activeConfig2 = [(PTService *)self activeConfig];

          if (activeConfig2)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A10];
          v15 = sub_1000022A8(v14);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v24 = kperf_reset();
        if (v24)
        {
          v25 = [NSString stringWithFormat:@"kperf was left in a bad state and cannot be reset: %{errno}d", v24];
          v13 = [NSError error:0 description:v25];

          ktrace_config_destroy();
          activeConfig3 = [(PTService *)self activeConfig];

          if (activeConfig3)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A30];
          v15 = sub_1000022A8(v14);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      ktrace_config_destroy();
    }

    [(PTService *)self setActiveConfig:legacyCopy];
    [(PTService *)self setRecordingConnectionPointer:v5];
    v27 = +[NSDate date];
    [(PTService *)self setStartTime:v27];

    v13 = objc_alloc_init(NSDateFormatter);
    [v13 setDateStyle:1];
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    traceName = [legacyCopy traceName];
    v29 = traceName;
    if (traceName)
    {
      v14 = traceName;
    }

    else
    {
      startTime = [(PTService *)self startTime];
      v31 = [v13 stringFromDate:startTime];
      v14 = [NSString stringWithFormat:@"trace_%@.ktrace", v31];
    }

    traceDirectoryURL = [legacyCopy traceDirectoryURL];
    path = [traceDirectoryURL path];
    v34 = path;
    v35 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    if (path)
    {
      v35 = path;
    }

    v36 = v35;

    v37 = PTServicesCreateTraceDirectory(v36);
    if (v37)
    {
      activeConfig4 = [(PTService *)self activeConfig];

      if (activeConfig4)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v39 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A70];
      v40 = sub_1000022A8(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v37);
      }

      [v39 performanceTraceDidStart:v37];
      goto LABEL_104;
    }

    v39 = [(__CFString *)v36 stringByAppendingPathComponent:v14];
    v79 = 0;
    v41 = [(PTService *)self _configureKtraceSession:legacyCopy withError:&v79];
    v42 = v79;
    if (v42 || (v41 & 1) == 0)
    {
      activeConfig5 = [(PTService *)self activeConfig];

      if (activeConfig5)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v47 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A90];
      v49 = sub_1000022A8(v47);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v42);
      }

      [v47 performanceTraceDidStart:v42];
      goto LABEL_103;
    }

    if ([legacyCopy kernelBufferSizeMB] >= 0x401)
    {
      1024 = [NSString stringWithFormat:@"Cannot start tracing as PerformanceTrace cannot have a kernel buffer size larger than %dMB.", 1024];
      v71 = [NSError error:4 description:1024];

      activeConfig6 = [(PTService *)self activeConfig];

      if (activeConfig6)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v45 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018AB0];
      v46 = sub_1000022A8(v45);
      v42 = 0;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v71);
      }

      v47 = v71;
      [v45 performanceTraceDidStart:v71];

      goto LABEL_103;
    }

    [(PTService *)self ktraceSession];
    [legacyCopy kernelBufferSizeMB];
    ktrace_set_buffer_size();
    [(PTService *)self ktraceSession];
    [legacyCopy kernelBufferDrainQoS];
    ktrace_set_collection_qos();
    [(PTService *)self ktraceSession];
    [legacyCopy kernelBufferDrainRateMS];
    ktrace_set_collection_interval();
    v72 = os_transaction_create();
    [(PTService *)self ktraceSession];
    handler[5] = _NSConcreteStackBlock;
    handler[6] = 3221225472;
    handler[7] = sub_100006E90;
    handler[8] = &unk_100018AF8;
    handler[9] = self;
    v50 = v39;
    v75 = v50;
    v51 = legacyCopy;
    v76 = v51;
    v70 = v5;
    v77 = v70;
    v73 = v72;
    v78 = v73;
    ktrace_set_completion_handler();
    traceType = [v51 traceType];
    if (traceType == 2)
    {
      [(PTService *)self ktraceSession];
      started = ktrace_configure();
    }

    else
    {
      if (traceType != 1)
      {
        v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cannot start tracing as an unknown trace type is used: %lu", [v51 traceType]);
        v67 = [NSError error:4 description:v58];

        activeConfig7 = [(PTService *)self activeConfig];

        if (activeConfig7)
        {
          [(PTService *)self setActiveConfig:0];
          [(PTService *)self setRecordingConnectionPointer:0];
        }

        v42 = 0;
        if ([(PTService *)self ktraceSession])
        {
          [(PTService *)self ktraceSession];
          ktrace_session_destroy();
          kperf_reset();
          [(PTService *)self setKtraceSession:0];
        }

        [(PTService *)self _graphicsSamplingTeardown];
        [(PTService *)self _updateRecordingStatus:0];
        v56 = [v70 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B18];
        v57 = sub_1000022A8(v56);
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_88;
        }

LABEL_87:
        sub_10000E9FC(v67);
LABEL_88:

        [v56 performanceTraceDidStart:v67];
        v60 = v67;
LABEL_102:
        v47 = v73;

LABEL_103:
LABEL_104:

        goto LABEL_11;
      }

      [(PTService *)self ktraceSession];
      [v50 UTF8String];
      started = ktrace_start_writing_path();
    }

    if (started)
    {
      started = [NSString stringWithFormat:@"Cannot start tracing as Performance Trace failed to write to the expected output path: %{errno}d", started];
      v67 = [NSError error:4 description:started];

      activeConfig8 = [(PTService *)self activeConfig];

      if (activeConfig8)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      v42 = 0;
      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v56 = [v70 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B38];
      v57 = sub_1000022A8(v56);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    traceTimeoutS = [v51 traceTimeoutS];
    traceTimeoutS2 = [v51 traceTimeoutS];
    v42 = 0;
    if (traceTimeoutS2 && (traceTimeoutS2 = [v51 traceTimeoutS], traceTimeoutS2 < 0x1F) || v70 && (traceTimeoutS2 = -[PTService _connectionIsEntitled:toEntitlement:](self, "_connectionIsEntitled:toEntitlement:", v70, @"com.apple.PerformanceTrace.OverrideTimeout"), (traceTimeoutS2 & 1) != 0))
    {
      v62 = traceTimeoutS;
      if (!traceTimeoutS)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v63 = sub_1000022A8(traceTimeoutS2);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10000ECD8();
      }

      v62 = 30;
    }

    v69 = v62;
    v64 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v65 = dispatch_time(0, 1000000000 * v69);
    dispatch_source_set_timer(v64, v65, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000073A4;
    handler[3] = &unk_100018738;
    handler[4] = self;
    dispatch_source_set_event_handler(v64, handler);
    dispatch_activate(v64);
    [(PTService *)self setActiveTimer:v64];

LABEL_99:
    v66 = sub_1000022A8(traceTimeoutS2);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Sucessfully started Performance Trace", buf, 2u);
    }

    v60 = [v70 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B58];
    [v60 performanceTraceDidStart:0];
    goto LABEL_102;
  }

  activeConfig9 = [(PTService *)self activeConfig];

  if (activeConfig9)
  {
    activeConfig10 = [(PTService *)self activeConfig];
    ownerName2 = [activeConfig10 ownerName];
    activeConfig11 = [(PTService *)self activeConfig];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Tracing is already in progress by another PerformanceTrace client: %@ [%i]", ownerName2, [activeConfig11 ownerPID]);
    v13 = [NSError error:3 description:v12];

    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189B0];
    v15 = sub_1000022A8(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [NSError error:3 description:@"Tracing is already in progress by another PerformanceTrace client: Unknown"];
    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189D0];
    v15 = sub_1000022A8(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_10000E9FC(v13);
    }
  }

LABEL_10:

  [v14 performanceTraceDidStart:v13];
LABEL_11:
}

- (void)stopPerformanceTrace
{
  activeConfig = [(PTService *)self activeConfig];

  if (activeConfig)
  {
    activeConfig2 = [(PTService *)self activeConfig];
    useTraceRecord = [activeConfig2 useTraceRecord];

    if (useTraceRecord)
    {

      [(PTService *)self _stopPerformanceTrace];
    }

    else
    {

      [(PTService *)self _stopPerformanceTraceLegacy];
    }
  }
}

- (void)_stopPerformanceTrace
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_1000022A8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    activeConfig = [(PTService *)self activeConfig];
    ownerName = [activeConfig ownerName];
    activeConfig2 = [(PTService *)self activeConfig];
    v23 = 138543618;
    v24 = ownerName;
    v25 = 1024;
    ownerPID = [activeConfig2 ownerPID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Performance Trace for %{public}@ [%d]", &v23, 0x12u);
  }

  ktraceRecording = [(PTService *)self ktraceRecording];
  if (!ktraceRecording || ([(PTService *)self activeConfig], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v20 = sub_1000022A8(ktraceRecording);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF58();
    }

    v19 = [NSError error:5 description:@"No current tracing session exists to stop."];
    v21 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B78];
    v22 = sub_1000022A8(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_10000EECC(v19);
LABEL_19:

    [(PTService *)self _updateRecordingStatus:0];
    [v21 performanceTraceDidStop:v19];

    goto LABEL_20;
  }

  activeConfig3 = [(PTService *)self activeConfig];
  traceRecordEndNotificationName = [activeConfig3 traceRecordEndNotificationName];
  uTF8String = [traceRecordEndNotificationName UTF8String];

  v14 = sub_1000022A8(v13);
  v15 = v14;
  if (!uTF8String)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE90();
    }

    v19 = [NSError error:5 description:@"Failed to extract valid notification name for trace record run"];
    v21 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B98];
    v22 = sub_1000022A8(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EDE0();
  }

  v16 = notify_post(uTF8String);
  if (v16)
  {
    v17 = sub_1000022A8(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE20();
    }
  }

  v18 = sub_1000022A8(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Successfully stopped Performance Trace", &v23, 2u);
  }

  v19 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BB8];
  [v19 performanceTraceDidStop:0];
LABEL_20:
}

- (void)_stopPerformanceTraceLegacy
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_1000022A8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    activeConfig = [(PTService *)self activeConfig];
    ownerName = [activeConfig ownerName];
    activeConfig2 = [(PTService *)self activeConfig];
    *buf = 138543618;
    *&buf[4] = ownerName;
    *&buf[12] = 1024;
    *&buf[14] = [activeConfig2 ownerPID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping PerformanceTrace (legacy) for %{public}@ [%d]", buf, 0x12u);
  }

  activeTimer = [(PTService *)self activeTimer];
  v9 = activeTimer == 0;

  if (!v9)
  {
    activeTimer2 = [(PTService *)self activeTimer];
    dispatch_source_cancel(activeTimer2);

    [(PTService *)self setActiveTimer:0];
  }

  if ([(PTService *)self ktraceSession])
  {
    activeConfig3 = [(PTService *)self activeConfig];
    v12 = [activeConfig3 traceType] == 1;

    if (v12)
    {
      [(PTService *)self ktraceSession];
      v13 = ktrace_end();
LABEL_61:
      v63 = sub_1000022A8(v13);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Successfully stopped Performance Trace", buf, 2u);
      }

      v64 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CC0];
      [v64 performanceTraceDidStop:0];

      goto LABEL_64;
    }

    activeConfig4 = [(PTService *)self activeConfig];
    v19 = [activeConfig4 traceType] == 2;

    if (!v19)
    {
      goto LABEL_61;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v74 = ktrace_session_create();
    v20 = objc_alloc_init(NSDateFormatter);
    [v20 setDateStyle:1];
    [v20 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    activeConfig5 = [(PTService *)self activeConfig];
    traceName = [activeConfig5 traceName];
    v23 = traceName;
    if (traceName)
    {
      v68 = traceName;
    }

    else
    {
      v24 = +[NSDate date];
      v25 = [v20 stringFromDate:v24];
      v68 = [NSString stringWithFormat:@"trace_%@.ktrace", v25];
    }

    activeConfig6 = [(PTService *)self activeConfig];
    traceDirectoryURL = [activeConfig6 traceDirectoryURL];
    path = [traceDirectoryURL path];
    v29 = path;
    v30 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    if (path)
    {
      v30 = path;
    }

    v31 = v30;

    v69 = +[NSFileManager defaultManager];
    v71 = NSFilePosixPermissions;
    v72 = &off_10001A658;
    v32 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v70 = 0;
    v33 = [v69 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:v32 error:&v70];
    v34 = v70;
    v35 = v34;
    if ((v33 & 1) == 0)
    {
      localizedDescription = [v34 localizedDescription];
      v45 = [NSString stringWithFormat:@"Cannot dump ringbuffer trace as Performance Trace cannot write to the target directory: %@", localizedDescription];
      v46 = [NSError error:4 description:v45 underlyingError:v35];

      activeConfig7 = [(PTService *)self activeConfig];
      v48 = activeConfig7 == 0;

      if (!v48)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v49 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BF8];
      v50 = sub_1000022A8(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [v46 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      [v49 performanceTraceDidStop:v46];
      [v49 performanceTraceDidComplete:0 withToken:0 withError:v46];

      goto LABEL_49;
    }

    v36 = [(__CFString *)v31 stringByAppendingPathComponent:v68];
    if (!*(*&buf[8] + 24))
    {
      v39 = [NSError error:0 description:@"Cannot stop ringbuffer tracing as Performance Trace was unable to generate a ktrace session"];
      activeConfig8 = [(PTService *)self activeConfig];
      v52 = activeConfig8 == 0;

      if (!v52)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v42 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018C18];
      v43 = sub_1000022A8(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [v39 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      goto LABEL_48;
    }

    ktrace_set_execnames_enabled();
    ktrace_session_set_event_names_enabled();
    v37 = ktrace_set_use_existing();
    if (v37)
    {
      v38 = [NSString stringWithFormat:@"Cannot write ringbuffer trace due to failure to find existing session: %{errno}d", v37];
      v39 = [NSError error:0 description:v38];

      activeConfig9 = [(PTService *)self activeConfig];
      v41 = activeConfig9 == 0;

      if (!v41)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v42 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018C38];
      v43 = sub_1000022A8(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [v39 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

LABEL_48:

      [v42 performanceTraceDidStop:v39];
      [v42 performanceTraceDidComplete:0 withToken:0 withError:v39];

LABEL_49:
      _Block_object_dispose(buf, 8);
      goto LABEL_64;
    }

    v53 = os_transaction_create();
    v54 = v36;
    v66 = v32;
    v65 = v3;
    v67 = v53;
    ktrace_set_completion_handler();
    [(PTService *)self ktraceSession];
    ktrace_session_free();
    [(PTService *)self setKtraceSession:0];
    v55 = v54;
    [v54 UTF8String];
    started = ktrace_start_writing_path();
    if (started)
    {
      started = [NSString stringWithFormat:@"Cannot write ringbuffer trace due to failure to start writing out buffer: %{errno}d", started];
      v58 = [NSError error:0 description:started];

      activeConfig10 = [(PTService *)self activeConfig];
      v60 = activeConfig10 == 0;

      if (!v60)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v61 = [v65 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CA0];
      v62 = sub_1000022A8(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [v58 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      [v61 performanceTraceDidStop:v58];
      [v61 performanceTraceDidComplete:0 withToken:0 withError:v58];
    }

    _Block_object_dispose(buf, 8);
    if (!started)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v14 = sub_1000022A8(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF58();
    }

    v15 = [NSError error:5 description:@"No current tracing session exists to stop."];
    v16 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BD8];
    v17 = sub_1000022A8(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000EFDC(v15);
    }

    [(PTService *)self _updateRecordingStatus:0];
    [v16 performanceTraceDidStop:v15];
  }

LABEL_64:
}

- (void)getCurrentStoredConfig:(id)config
{
  configCopy = config;
  v5 = sub_1000022A8(configCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Getting Current Config", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = sub_100008F9C;
  v28 = sub_100008FAC;
  v29 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:@"/private/var/tmp/com.apple.PerformanceTrace"];

  if ((v7 & 1) == 0)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100008FB4;
    v23[3] = &unk_100018640;
    v23[4] = buf;
    v8 = [(PTService *)self resetConfig:v23];
  }

  v9 = (v25 + 40);
  if (*(v25 + 5))
  {
    v10 = sub_1000022A8(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000F06C();
    }

    (*(configCopy + 2))(configCopy, *(v25 + 5), 0);
  }

  else
  {
    obj = 0;
    v11 = [NSData dataWithContentsOfFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&obj];
    objc_storeStrong(v9, obj);
    if (*(v25 + 5) || !v11)
    {
      v20 = sub_1000022A8(v12);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10000F13C();
      }

      (*(configCopy + 2))(configCopy, *(v25 + 5), 0);
    }

    else
    {
      v13 = objc_opt_class();
      v14 = (v25 + 40);
      v21 = *(v25 + 5);
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:v13 fromData:v11 error:&v21];
      objc_storeStrong(v14, v21);
      if (*(v25 + 5))
      {
        v17 = sub_1000022A8(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10000F0D4();
        }

        v18 = 0;
        v19 = *(v25 + 5);
      }

      else
      {
        v19 = 0;
        v18 = v15;
      }

      (*(configCopy + 2))(configCopy, v19, v18);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)applyConfig:(id)config withError:(id)error
{
  errorCopy = error;
  configCopy = config;
  v7 = sub_1000022A8(configCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Applying Config", buf, 2u);
  }

  [configCopy setSource:3];
  v15 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:configCopy requiringSecureCoding:1 error:&v15];

  v9 = v15;
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000022A8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1A4();
    }

LABEL_11:

    errorCopy[2](errorCopy, v10);
    goto LABEL_12;
  }

  v14 = 0;
  v12 = [v8 writeToFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&v14];
  v13 = v14;
  v10 = v13;
  if (v13 || (v12 & 1) == 0)
  {
    v11 = sub_1000022A8(v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000F20C();
    }

    goto LABEL_11;
  }

  errorCopy[2](errorCopy, 0);
LABEL_12:
}

- (void)resetConfig:(id)config
{
  configCopy = config;
  v3 = sub_1000022A8(configCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resetting Config", buf, 2u);
  }

  v4 = [PTTraceConfig configWithTemplate:1];
  [v4 setSource:0];
  v5 = CFPreferencesCopyValue(@"selectedConfigName", @"com.apple.internal.taptotrace", @"mobile", kCFPreferencesAnyHost);
  v98[0] = @"/Library/Managed Preferences/";
  v98[1] = @"mobile";
  v6 = [@"com.apple.internal.taptotrace" stringByAppendingString:@".plist"];
  v98[2] = v6;
  v7 = [NSArray arrayWithObjects:v98 count:3];
  v8 = [NSURL fileURLWithPathComponents:v7];

  path = [v8 path];
  v10 = [NSDictionary dictionaryWithContentsOfFile:path];

  if (v10)
  {
    v12 = [v10 valueForKey:@"selectedConfigName"];

    if (v12)
    {
      v13 = [v10 valueForKey:@"selectedConfigName"];

      v5 = v13;
    }
  }

  if (v5)
  {
    v14 = sub_1000022A8(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device has a legacy configuration installed. Resolving config.", buf, 2u);
    }

    [v4 setSymbolicate:0];
    [v4 setTraceType:2];
    [v4 setSource:1];
    if ([v5 isEqualToString:@"audio"])
    {
      [v4 setKernelBufferSizeMB:512];
      v15 = [NSMutableArray arrayWithObjects:&off_10001A610, &off_10001A640, &off_10001A5C8, &off_10001A5E0, 0];
      [v4 setTraceGroups:v15];
    }
  }

  v81 = v5;
  v83 = v4;
  v16 = CFPreferencesCopyMultiple(0, @"com.apple.PerformanceTrace.config", @"mobile", kCFPreferencesAnyHost);
  v97[0] = @"/Library/Managed Preferences/";
  v97[1] = @"mobile";
  v17 = [@"com.apple.PerformanceTrace.config" stringByAppendingString:@".plist"];
  v97[2] = v17;
  v18 = [NSArray arrayWithObjects:v97 count:3];
  v19 = [NSURL fileURLWithPathComponents:v18];

  path2 = [v19 path];
  v21 = [NSDictionary dictionaryWithContentsOfFile:path2];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  allKeys = [v21 allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v91;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(allKeys);
        }

        v27 = *(*(&v90 + 1) + 8 * i);
        v28 = [v21 valueForKey:v27];

        if (v28)
        {
          v29 = [v21 valueForKey:v27];
          [(__CFDictionary *)v16 setValue:v29 forKey:v27];
        }
      }

      v24 = [allKeys countByEnumeratingWithState:&v90 objects:v96 count:16];
    }

    while (v24);
  }

  v31 = v83;
  if (v16)
  {
    v32 = sub_1000022A8(v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Device has a configuration installed. Resolving config.", buf, 2u);
    }

    v33 = [(__CFDictionary *)v16 valueForKey:@"symbolicate"];

    if (v33)
    {
      v34 = [(__CFDictionary *)v16 valueForKey:@"symbolicate"];
      [v83 setSymbolicate:{objc_msgSend(v34, "BOOLValue")}];

      [v83 setSource:2];
    }

    v35 = [(__CFDictionary *)v16 valueForKey:@"callstackSamplingRateMS"];

    if (v35)
    {
      v36 = [(__CFDictionary *)v16 valueForKey:@"callstackSamplingRateMS"];
      [v83 setCallstackSamplingRateMS:{objc_msgSend(v36, "unsignedLongValue")}];

      [v83 setSource:2];
    }

    v37 = [(__CFDictionary *)v16 valueForKey:@"traceName"];

    if (v37)
    {
      v38 = [(__CFDictionary *)v16 valueForKey:@"traceName"];
      v39 = [v38 copy];
      [v83 setTraceName:v39];

      [v83 setSource:2];
    }

    v40 = [(__CFDictionary *)v16 valueForKey:@"compressWhenFinished"];

    if (v40)
    {
      v41 = [(__CFDictionary *)v16 valueForKey:@"compressWhenFinished"];
      [v83 setCompressWhenFinished:{objc_msgSend(v41, "BOOLValue")}];

      [v83 setSource:2];
    }

    v42 = [(__CFDictionary *)v16 valueForKey:@"includeOSLogs"];

    if (v42)
    {
      v43 = [(__CFDictionary *)v16 valueForKey:@"includeOSLogs"];
      [v83 setIncludeOSLogs:{objc_msgSend(v43, "BOOLValue")}];

      [v83 setSource:2];
    }

    v44 = [(__CFDictionary *)v16 valueForKey:@"includeOSSignposts"];

    if (v44)
    {
      v45 = [(__CFDictionary *)v16 valueForKey:@"includeOSSignposts"];
      [v83 setIncludeOSSignposts:{objc_msgSend(v45, "BOOLValue")}];

      [v83 setSource:2];
    }

    v46 = [(__CFDictionary *)v16 valueForKey:@"traceTimeoutS"];

    if (v46)
    {
      v47 = [(__CFDictionary *)v16 valueForKey:@"traceTimeoutS"];
      [v83 setTraceTimeoutS:{objc_msgSend(v47, "unsignedLongValue")}];

      [v83 setSource:2];
    }

    v48 = [(__CFDictionary *)v16 valueForKey:@"skipNotification"];

    if (v48)
    {
      v49 = [(__CFDictionary *)v16 valueForKey:@"skipNotification"];
      [v83 setSkipNotification:{objc_msgSend(v49, "BOOLValue")}];

      [v83 setSource:2];
    }

    v50 = [(__CFDictionary *)v16 valueForKey:@"includeKernelStacks"];

    if (v50)
    {
      v51 = [(__CFDictionary *)v16 valueForKey:@"includeKernelStacks"];
      [v83 setIncludeKernelStacks:{objc_msgSend(v51, "BOOLValue")}];

      [v83 setSource:2];
    }

    v52 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferSizeMB"];

    if (v52)
    {
      v53 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferSizeMB"];
      [v83 setKernelBufferSizeMB:{objc_msgSend(v53, "unsignedLongValue")}];

      [v83 setSource:2];
    }

    v54 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferDrainQoS"];

    if (v54)
    {
      v55 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferDrainQoS"];
      [v83 setKernelBufferDrainQoS:{objc_msgSend(v55, "unsignedIntValue")}];

      [v83 setSource:2];
    }

    v56 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferDrainRateMS"];

    if (v56)
    {
      v57 = [(__CFDictionary *)v16 valueForKey:@"kernelBufferDrainRateMS"];
      [v83 setKernelBufferDrainRateMS:{objc_msgSend(v57, "unsignedLongValue")}];

      [v83 setSource:2];
    }

    v58 = [(__CFDictionary *)v16 valueForKey:@"traceDirectoryURL"];

    if (v58)
    {
      v59 = [(__CFDictionary *)v16 valueForKey:@"traceDirectoryURL"];
      v60 = [NSURL fileURLWithPath:v59];
      [v83 setTraceDirectoryURL:v60];

      [v83 setSource:2];
    }

    v61 = [(__CFDictionary *)v16 valueForKey:@"traceType"];

    if (v61)
    {
      v62 = [(__CFDictionary *)v16 valueForKey:@"traceType"];
      [v83 setTraceType:traceTypeForString(v62)];

      [v83 setSource:2];
    }

    v63 = [(__CFDictionary *)v16 valueForKey:@"traceGroups"];

    if (v63)
    {
      v80 = v19;
      v64 = [(__CFDictionary *)v16 valueForKey:@"traceGroups"];
      v65 = +[NSMutableArray array];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v66 = v64;
      v67 = [v66 countByEnumeratingWithState:&v86 objects:v95 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v87;
        do
        {
          for (j = 0; j != v68; j = j + 1)
          {
            if (*v87 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v86 + 1) + 8 * j);
            if (v71 && traceGroupForString(*(*(&v86 + 1) + 8 * j)))
            {
              v72 = [NSNumber numberWithUnsignedInteger:traceGroupForString(v71)];
              [v65 addObject:v72];
            }
          }

          v68 = [v66 countByEnumeratingWithState:&v86 objects:v95 count:16];
        }

        while (v68);
      }

      v31 = v83;
      if ([v65 count])
      {
        [v83 setTraceGroups:v65];
        [v83 setSource:2];
      }

      v19 = v80;
    }
  }

  v85 = 0;
  v73 = [NSKeyedArchiver archivedDataWithRootObject:v31 requiringSecureCoding:1 error:&v85];
  v74 = v85;
  if (v74)
  {
    v75 = v74;
    v76 = sub_1000022A8(v74);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1A4();
    }

LABEL_73:

    v79 = configCopy;
    (*(configCopy + 2))(configCopy, v75);

    goto LABEL_74;
  }

  v84 = 0;
  v77 = [v73 writeToFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&v84];
  v78 = v84;
  v75 = v78;
  if (v78 || (v77 & 1) == 0)
  {
    v76 = sub_1000022A8(v78);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      sub_10000F20C();
    }

    goto LABEL_73;
  }

  v79 = configCopy;
  (*(configCopy + 2))(configCopy, 0);
LABEL_74:
}

- (void)pingService:(id)service
{
  serviceCopy = service;
  v4 = +[NSXPCConnection currentConnection];
  proc_name([v4 processIdentifier], buffer, 0x21u);
  v5 = [NSString stringWithCString:buffer encoding:4];
  v6 = v5;
  if (!v5)
  {
    v5 = [NSString stringWithCString:buffer encoding:1];
    v6 = v5;
  }

  v7 = sub_1000022A8(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412802;
    v10 = serviceCopy;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    processIdentifier = [v4 processIdentifier];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received Ping: %@ from Client: %{public}@ [%i]", &v9, 0x1Cu);
  }

  v8 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CE0];
  [v8 _didPingService:0];
}

- (void)isInRecordingWorkflow:(id)workflow
{
  workflowCopy = workflow;
  (*(workflow + 2))(workflowCopy, [(PTService *)self isInRecordingWorkflow], 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  proc_name(processIdentifier, buffer, 0x20u);
  v7 = [NSString stringWithUTF8String:buffer];
  v8 = [(PTService *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.PerformanceTrace.Tracing"];
  v9 = v8;
  if (v8)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTServiceInterface];
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTTraceSessionDelegatePrivate];
    [connectionCopy setRemoteObjectInterface:v11];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000A1E0;
    v25[3] = &unk_100018990;
    v12 = v7;
    v29 = processIdentifier;
    v26 = v12;
    selfCopy = self;
    v28 = connectionCopy;
    [connectionCopy setInvalidationHandler:v25];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000A31C;
    v20 = &unk_100018990;
    v13 = v12;
    v24 = processIdentifier;
    v21 = v13;
    selfCopy2 = self;
    v23 = connectionCopy;
    v14 = sub_1000022A8([connectionCopy setInterruptionHandler:&v17]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v13;
      v32 = 1024;
      v33 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received and accepted new connection from %{public}@ [%d]", buf, 0x12u);
    }

    [connectionCopy resume];
    v15 = v26;
  }

  else
  {
    v15 = sub_1000022A8(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000F2DC();
    }
  }

  return v9;
}

- (NSXPCConnection)recordingConnectionPointer
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingConnectionPointer);

  return WeakRetained;
}

@end