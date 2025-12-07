@interface CPUTraceProvider
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error;
- (void)buildSymbolicationProviderSparseSymbolMap:(ktrace_file *)map;
- (void)configurePostprocessingWithSession:(ktrace_session *)session;
- (void)configureWithSession:(ktrace_session *)session;
- (void)dealloc;
- (void)didStartTracingToFile:(ktrace_file *)file;
- (void)didStopTracingToFile:(ktrace_file *)file;
- (void)iterateThreadCursorsForSystem:(hwtrace_system *)system;
- (void)postprocessingCompleteWithFile:(ktrace_file *)file;
- (void)stopPollingTraceSize;
- (void)willEndTracing;
- (void)willFinishWithCatalog:(ktrace_catalog *)catalog file:(ktrace_file *)file;
@end

@implementation CPUTraceProvider

- (void)willEndTracing
{
  [(CPUTraceProvider *)self stopPollingTraceSize];
  if (self->_state == 2)
  {
    v3 = atomic_load(&unk_C951);
    if (v3)
    {
      v4 = atomic_load(&unk_C952);
      if ((v4 & 1) == 0)
      {
        return;
      }

LABEL_11:
      self->_state = 3;
      return;
    }

    if (!hwtrace_live_recording_pause())
    {
      goto LABEL_11;
    }

    logger = self->_logger;
    v6 = @"Unable to pause recording.";
  }

  else
  {
    logger = self->_logger;
    v6 = @"CPUTrace not started.";
  }

  [(KTProviderLogger *)logger failWithReason:v6];
}

- (void)stopPollingTraceSize
{
  v2 = atomic_load(&unk_C950);
  if (v2)
  {
    atomic_store(0, &unk_C950);
    std::mutex::lock(&stru_C860);
    std::condition_variable::notify_one(&stru_C8A0);
    std::mutex::unlock(&stru_C860);

    std::thread::join(&qword_C938);
  }
}

- (void)dealloc
{
  if (self->_rec)
  {
    hwtrace_live_recording_deinit();
  }

  v3.receiver = self;
  v3.super_class = CPUTraceProvider;
  [(CPUTraceProvider *)&v3 dealloc];
}

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error
{
  loggerCopy = logger;
  optionsCopy = options;
  objc_storeStrong(&self->_logger, logger);
  v12 = [[CPUTraceProviderConfiguration alloc] initWithOptions:optionsCopy error:error];
  config = self->_config;
  self->_config = v12;

  if (*error)
  {
    logger = self->_logger;
    userInfo = [*error userInfo];
    v16 = [NSString stringWithFormat:@"Invalid CPUTrace configuration. %@", userInfo];
    [(KTProviderLogger *)logger failWithReason:v16];
  }

  self->_state = 0;
  if (qword_C948 != -1)
  {
    sub_4CA8();
  }

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error
{
  if (!self->_config)
  {
    goto LABEL_4;
  }

  if (atomic_exchange(&unk_C953, 1u))
  {
    [(KTProviderLogger *)self->_logger failWithReason:@"Concurrent recordings are not supported.", error];
LABEL_4:
    LOBYTE(v5) = 0;
    return v5;
  }

  objc_storeStrong(&qword_C930, self->_logger);
  v5 = hwtrace_live_topology();
  if (!v5)
  {
    logger = self->_logger;
    v9 = @"Could not determine cputrace topology.";
    goto LABEL_9;
  }

  hwtrace_live_recording_options_init();
  v17 = 0;
  v18 = 0;
  hwtrace_live_topology_systems();
  hwtrace_live_recording_options_set_session_policy();
  v6 = hwtrace_live_recording_init_with_options();
  LOBYTE(v5) = v6 == 0;
  if (v6)
  {
    v7 = qword_C930;
    qword_C930 = 0;

    atomic_store(0, &unk_C953);
    logger = self->_logger;
    v9 = @"Unable to create recording.";
LABEL_9:
    [(KTProviderLogger *)logger failWithReason:v9];
    return v5;
  }

  sizeLimit = [(CPUTraceProviderConfiguration *)self->_config sizeLimit];
  if (sizeLimit)
  {
    v11 = sizeLimit;
    sizeLimit2 = [(CPUTraceProviderConfiguration *)self->_config sizeLimit];
    intValue = [sizeLimit2 intValue];

    if (intValue >= 1)
    {
      atomic_store(1u, &unk_C950);
      [(CPUTraceProviderConfiguration *)self->_config sizeLimit];
      v15 = ([objc_claimAutoreleasedReturnValue() unsignedLongLongValue] << 20);
      sub_36E0(&v16.__t_, polling_callback, &self->_rec, &v15);
    }
  }

  self->_state = 1;
  return v5;
}

- (void)configureWithSession:(ktrace_session *)session
{
  ktrace_events_range();

  _ktrace_add_stackshot_flags(session, 0x10000000);
}

- (void)didStartTracingToFile:(ktrace_file *)file
{
  if (self->_state == 1)
  {
    if (!hwtrace_live_recording_start())
    {
      self->_state = 2;
      return;
    }

    logger = self->_logger;
    v5 = @"Unable to start recording.";
  }

  else
  {
    logger = self->_logger;
    v5 = @"CPUTrace not configured.";
  }

  [(KTProviderLogger *)logger failWithReason:v5];
}

- (void)didStopTracingToFile:(ktrace_file *)file
{
  if (self->_state == 3)
  {
    if (!hwtrace_live_recording_stop())
    {
      self->_state = 4;
      return;
    }

    logger = self->_logger;
    v5 = @"Unable to stop recording.";
  }

  else
  {
    logger = self->_logger;
    v5 = @"CPUTrace not paused.";
  }

  [(KTProviderLogger *)logger failWithReason:v5];
}

- (void)configurePostprocessingWithSession:(ktrace_session *)session
{
  if (self->_state == 4)
  {
    hwtrace_live_recording_postprocess_options_init();
    hwtrace_live_recording_postprocess_options_set_ktrace_session();
    v4 = hwtrace_live_recording_postprocess();
    hwtrace_live_recording_postprocess_options_deinit();
    if (!v4)
    {
      return;
    }

    v5 = @"hwtrace_live_recording_postprocess failed.";
  }

  else
  {
    v5 = @"CPUTrace not stopped.";
  }

  logger = self->_logger;

  [(KTProviderLogger *)logger failWithReason:v5];
}

- (void)postprocessingCompleteWithFile:(ktrace_file *)file
{
  if (self->_state == 4)
  {
    if (hwtrace_live_recording_finalize_postprocessing())
    {
      [(KTProviderLogger *)self->_logger warnWithMessage:@"hwtrace_live_recording_finalize_postprocessing failed"];
    }

    v5 = hwtrace_recording_init_from_live_recording();
    logger = self->_logger;
    if (v5)
    {
      [(KTProviderLogger *)logger failWithReason:@"hwtrace_recording_init_from_live_recording failed"];
    }

    else
    {
      [(KTProviderLogger *)logger warnWithMessage:@"Saving CPUTrace..."];
      if ([(CPUTraceProviderConfiguration *)self->_config copyImages])
      {
        [(CPUTraceProviderConfiguration *)self->_config appleInternal];
      }

      if ([(CPUTraceProviderConfiguration *)self->_config copyImages]&& ![(CPUTraceProviderConfiguration *)self->_config appleInternal])
      {
        [(KTProviderLogger *)self->_logger warnWithMessage:@"copy-images is only supported on internal builds"];
      }

      hwtrace_recording_save_options_init();
      hwtrace_recording_save_options_set_ktrace_file();
      hwtrace_recording_save_options_set_port_mode();
      [(CPUTraceProviderConfiguration *)self->_config decode];
      hwtrace_recording_save_options_set_decode_trace();
      if ([(CPUTraceProviderConfiguration *)self->_config decode])
      {
        decodeCompression = [(CPUTraceProviderConfiguration *)self->_config decodeCompression];

        if (decodeCompression)
        {
          decodeCompression2 = [(CPUTraceProviderConfiguration *)self->_config decodeCompression];
          [decodeCompression2 UTF8String];

          hwtrace_recording_save_options_set_decode_compression();
        }
      }

      v10 = hwtrace_recording_save();
      hwtrace_recording_save_options_deinit();
      if (v10)
      {
        [(KTProviderLogger *)self->_logger failWithReason:@"Unable to save CPUTrace."];
      }

      hwtrace_recording_deinit();
      if (ats_symbolication_enabled())
      {
        if ([(CPUTraceProviderConfiguration *)self->_config collectSymbols])
        {
          [(CPUTraceProvider *)self buildSymbolicationProviderSparseSymbolMap:file];
        }
      }
    }
  }

  else
  {
    v7 = self->_logger;

    [(KTProviderLogger *)v7 failWithReason:@"CPUTrace not stopped."];
  }
}

- (void)willFinishWithCatalog:(ktrace_catalog *)catalog file:(ktrace_file *)file
{
  v5 = qword_C930;
  qword_C930 = 0;

  atomic_store(0, &unk_C953);
  [(CPUTraceProvider *)self stopPollingTraceSize];
  atomic_store(0, &unk_C951);
  atomic_store(0, &unk_C952);
}

- (void)buildSymbolicationProviderSparseSymbolMap:(ktrace_file *)map
{
  [(KTProviderLogger *)self->_logger warnWithMessage:@"Collecting symbols..."];
  if (hwtrace_recording_init_from_ktrace())
  {
    logger = self->_logger;
    v5 = @"Unable to init recording for symbolication.";
LABEL_5:
    [(KTProviderLogger *)logger warnWithMessage:v5];
    return;
  }

  hwtrace_load_options_init();
  v6 = hwtrace_trace_init_from_recording();
  hwtrace_load_options_deinit();
  if (v6)
  {
    hwtrace_recording_deinit();
    logger = self->_logger;
    v5 = @"Unable to init trace for symbolication.";
    goto LABEL_5;
  }

  hwtrace_trace_topology();
  hwtrace_topology_systems();
  hwtrace_trace_deinit();
  hwtrace_recording_deinit();
}

- (void)iterateThreadCursorsForSystem:(hwtrace_system *)system
{
  hwtrace_system_tasks();
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_2FC8;
  v26 = sub_2FEC;
  v27 = "";
  memset(v28, 0, sizeof(v28));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3018;
  block[3] = &unk_85E8;
  block[4] = &v22;
  dispatch_apply(0, 0, block);
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v15 = 0u;
  v16 = 0u;
  v17 = 1065353216;
  v3 = v23[6];
  v4 = v23[7];
  if (v3 != v4)
  {
    v5 = v3 + 40;
    do
    {
      hwtrace_thread_task();
      v14 = hwtrace_task_id();
      v6 = v5 + 8;
      sub_3E48(&v18, (v5 + 8));
      v7 = sub_41D8(&v15, &v14);
      if (v7)
      {
        sub_3E48(v7 + 3, (v5 - 32));
      }

      else
      {
        v12[0] = &v14;
        v8 = sub_428C(&v15, &v14, &std::piecewise_construct, v12);
        if ((v5 - 32) != v8 + 3)
        {
          *(v8 + 14) = *v5;
          sub_4548(v8 + 3, *(v5 - 16), 0);
        }
      }

      v5 += 88;
    }

    while (v6 + 40 != v4);
    for (i = v19; i; i = *i)
    {
      ats_configure_postprocessing_with_additional_address();
    }
  }

  for (j = v16; j; j = *j)
  {
    sub_4B90(v12, (j + 3));
    for (k = v13; k; k = *k)
    {
      ats_configure_postprocessing_with_additional_address();
    }

    sub_38FC(v12);
  }

  sub_3DC8(&v15);
  sub_38FC(&v18);
  _Block_object_dispose(&v22, 8);
  *&v18 = v28;
  sub_3130(&v18);
}

@end