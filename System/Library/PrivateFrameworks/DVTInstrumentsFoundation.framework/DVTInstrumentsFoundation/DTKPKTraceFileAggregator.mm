@interface DTKPKTraceFileAggregator
- (BOOL)stopKtraceSessionWithError:(id *)error;
- (DTKPKTraceFileAggregator)initWithConfig:(id)config;
- (id)start;
- (id)stop;
- (id)swapOutCurrentDatastream:(id *)datastream;
- (int)startKtraceSession:(char *)session useExisting:(BOOL)existing outputFileURL:(id *)l;
@end

@implementation DTKPKTraceFileAggregator

- (DTKPKTraceFileAggregator)initWithConfig:(id)config
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = DTKPKTraceFileAggregator;
  v6 = [(DTKPKTraceFileAggregator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v7->_kperfSample = 0;
    fileStream = v7->_fileStream;
    v7->_fileStream = 0;

    v9 = os_log_create("com.apple.DTServiceHub", "Ktrace File Recording");
    logHandle = v7->_logHandle;
    v7->_logHandle = v9;
  }

  return v7;
}

- (int)startKtraceSession:(char *)session useExisting:(BOOL)existing outputFileURL:(id *)l
{
  existingCopy = existing;
  v33 = *MEMORY[0x277D85DE8];
  providerOptions = [(DTKPConfiguration *)self->_config providerOptions];
  v10 = providerOptions;
  v11 = MEMORY[0x277CBEC10];
  if (providerOptions)
  {
    v11 = providerOptions;
  }

  v12 = v11;

  v30 = 0;
  v13 = [DTKTraceSessionCreator getDefaultedRemotePath:&v30];
  if (v30 == -1)
  {
    v18 = 5;
  }

  else
  {
    logHandle = self->_logHandle;
    if (os_signpost_enabled(logHandle))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_247F67000, logHandle, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Start Operation", "", buf, 2u);
    }

    v15 = objc_opt_new();
    [v15 setProviders:v12];
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:session length:0x2000];
    [v15 setBitmap:v16];

    [v15 setUseExisting:existingCopy];
    [v15 setCollectionInterval:{-[DTKPConfiguration collectionInterval](self->_config, "collectionInterval")}];
    *buf = -1;
    if (kperf_bless_get() || (v17 = *buf, v17 != getpid()) || geteuid())
    {
      v18 = 5;
    }

    else
    {
      v25 = [DTKTraceSessionCreator alloc];
      v29 = 0;
      v26 = [(DTKTraceSessionCreator *)v25 initWithFD:v30 configuration:v15 error:&v29];
      v27 = v29;
      ktraceSession = self->_ktraceSession;
      self->_ktraceSession = v26;

      if (v26)
      {
        v18 = 0;
      }

      else
      {
        v18 = 5;
      }
    }

    if (!existingCopy)
    {
      v19 = self->_logHandle;
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_247F67000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Recording Lifetime", "", buf, 2u);
      }
    }

    if (v18)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtURL:v13 error:0];

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failure: %s", strerror(v18)];
    }

    else
    {
      v22 = v13;
      *l = v13;
      v21 = @"Success";
    }

    v23 = self->_logHandle;
    if (os_signpost_enabled(v23))
    {
      *buf = 138412290;
      v32 = v21;
      _os_signpost_emit_with_name_impl(&dword_247F67000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Start Operation", "Result: %@", buf, 0xCu);
    }
  }

  return v18;
}

- (BOOL)stopKtraceSessionWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  logHandle = self->_logHandle;
  if (os_signpost_enabled(logHandle))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_247F67000, logHandle, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Recording Lifetime", "", buf, 2u);
  }

  v6 = self->_logHandle;
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_247F67000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "End Operation", "", buf, 2u);
  }

  ktraceSession = self->_ktraceSession;
  v18 = 0;
  v8 = [(DTKTraceSessionCreator *)ktraceSession stopWithError:&v18];
  v9 = v18;
  v10 = self->_ktraceSession;
  self->_ktraceSession = 0;

  if (error)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    localizedDescription = 0;
    if (v8)
    {
LABEL_10:
      ktraceURL = localizedDescription;
      localizedDescription = @"Success";
      goto LABEL_16;
    }
  }

  else
  {
    if (!v9)
    {
      v9 = sub_247FC5D88(@"Failed stoping ktrace session.", -11);
    }

    v14 = v9;
    *error = v9;
    localizedDescription = [v9 localizedDescription];
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (!self->_ktraceURL)
  {
    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:self->_ktraceURL error:0];

  ktraceURL = self->_ktraceURL;
  self->_ktraceURL = 0;
LABEL_16:

LABEL_17:
  v16 = self->_logHandle;
  if (os_signpost_enabled(v16))
  {
    *buf = 138412290;
    v20 = localizedDescription;
    _os_signpost_emit_with_name_impl(&dword_247F67000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "End Operation", "Result: %@", buf, 0xCu);
  }

  return v8;
}

- (id)start
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  selfCopy = self;
  v19 = &v19;
  v20 = &v19;
  triggers = [(DTKPConfiguration *)self->_config triggers];
  v3 = [triggers count];

  if ([(DTKPConfiguration *)selfCopy->_config hasEnabledCountingWithManualConfiguration])
  {
    [(DTKPConfiguration *)selfCopy->_config enabledKPCClasses];
    if (kpc_set_counting())
    {
      v4 = *__error();
      for (i = v20; i != &v19; i = i[1])
      {
        sub_247FC6A28(v23, (i + 2));
        if (!v24)
        {
          sub_247F93BE0();
        }

        (*(*v24 + 48))(v24);
        sub_247FC6B34(v23);
      }

      queryCodeSet = [MEMORY[0x277CCACA8] stringWithFormat:@"kpc_set_counting failed (%s).", strerror(v4)];
      v7 = sub_247FC5D88(queryCodeSet, -6);
      goto LABEL_34;
    }
  }

  if (v3)
  {
    kperf_sample_on();
    v23[0] = &unk_285A189C0;
    v23[1] = &selfCopy;
    v24 = v23;
    operator new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queryCodeSet = [(DTKPConfiguration *)selfCopy->_config queryCodeSet];
    [queryCodeSet addClass:37];
    if ([(DTKPConfiguration *)selfCopy->_config collectionMode]== 3)
    {
      if (![(DTKPConfiguration *)selfCopy->_config hasEnabledCountingWithManualConfiguration]|| ([(DTKPConfiguration *)selfCopy->_config enabledKPCClasses], !kpc_set_counting()))
      {
        kperf_logging_start();
        v23[0] = &unk_285A18AD0;
        v24 = v23;
        operator new();
      }

      v8 = *__error();
      for (j = v20; j != &v19; j = j[1])
      {
        sub_247FC6A28(v23, (j + 2));
        if (!v24)
        {
          sub_247F93BE0();
        }

        (*(*v24 + 48))(v24);
        sub_247FC6B34(v23);
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"kpc_set_counting failed (%s).", strerror(v8)];
      v16 = sub_247FC5D88(v14, -6);
    }

    else
    {
      v11 = [queryCodeSet createFilterMask:0];
      v18 = 0;
      v12 = [(DTKPKTraceFileAggregator *)selfCopy startKtraceSession:v11 useExisting:0 outputFileURL:&v18];
      v13 = v18;
      v14 = v18;
      objc_storeStrong(&selfCopy->_ktraceURL, v13);
      [DTKPKDebugCodeSet releaseFilterMask:v11];
      if (!v12)
      {
        v7 = 0;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      for (k = v20; k != &v19; k = k[1])
      {
        sub_247FC6A28(v23, (k + 2));
        if (!v24)
        {
          sub_247F93BE0();
        }

        (*(*v24 + 48))(v24);
        sub_247FC6B34(v23);
      }

      v16 = sub_247FC5D88(@"Failed starting ktrace session.", -11);
    }

    v7 = v16;
    goto LABEL_33;
  }

  for (m = v20; m != &v19; m = m[1])
  {
    sub_247FC6A28(v23, (m + 2));
    if (!v24)
    {
      sub_247F93BE0();
    }

    (*(*v24 + 48))(v24);
    sub_247FC6B34(v23);
  }

  v7 = sub_247FC5D88(@"DTKPKTraceFileAggregator can only work with DTKPKperfConfiguration.", -11);
LABEL_35:
  sub_247FC6AC0(&v19);

  return v7;
}

- (id)stop
{
  if ([(DTKPConfiguration *)self->_config collectionMode]== 3)
  {
    queryCodeSet = [(DTKPConfiguration *)self->_config queryCodeSet];
    [queryCodeSet addClass:37];
    v4 = [queryCodeSet createFilterMask:0];
    v14 = 0;
    [(DTKPKTraceFileAggregator *)self startKtraceSession:v4 useExisting:1 outputFileURL:&v14];
    v5 = v14;
    v6 = v14;
    objc_storeStrong(&self->_ktraceURL, v5);
    [DTKPKDebugCodeSet releaseFilterMask:v4];

    v7 = 0;
  }

  else
  {
    v13 = 0;
    [(DTKPKTraceFileAggregator *)self stopKtraceSessionWithError:&v13];
    v7 = v13;
  }

  if (self->_kperfSample)
  {
    kperf_sample_off();
  }

  if ([(DTKPConfiguration *)self->_config hasEnabledCounting])
  {
    kpc_set_counting();
    config_count = kpc_get_config_count();
    v9 = malloc_type_calloc(8uLL, config_count, 0x100004000313F17uLL);
    if (v9)
    {
      kpc_set_config();
      kpc_set_period();
      free(v9);
    }

    v10 = malloc_type_calloc(4uLL, config_count, 0x100004052888210uLL);
    if (v10)
    {
      kpc_set_actionid();
      free(v10);
    }
  }

  if ([(DTKPConfiguration *)self->_config collectionMode]== 3)
  {
    v11 = kperf_logging_stop();
    MEMORY[0x24C1C3750](v11);
  }

  kperf_reset();

  return v7;
}

- (id)swapOutCurrentDatastream:(id *)datastream
{
  if (self->_ktraceURL)
  {
    fileStream = self->_fileStream;
    if (!fileStream)
    {
      v6 = [[DVTFileStream alloc] initWithURL:self->_ktraceURL];
      v7 = self->_fileStream;
      self->_fileStream = v6;

      fileStream = self->_fileStream;
    }

    v8 = fileStream;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end