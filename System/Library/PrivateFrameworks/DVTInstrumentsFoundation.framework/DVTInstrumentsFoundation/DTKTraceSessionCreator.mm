@interface DTKTraceSessionCreator
+ (id)getDefaultedRemotePath:(int *)path;
- (BOOL)stopWithError:(id *)error;
- (DTKTraceSessionCreator)initWithFD:(int)d configuration:(id)configuration error:(id *)error;
- (id)_providerTopErrors;
@end

@implementation DTKTraceSessionCreator

- (DTKTraceSessionCreator)initWithFD:(int)d configuration:(id)configuration error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v57.receiver = self;
  v57.super_class = DTKTraceSessionCreator;
  v8 = [(DTKTraceSessionCreator *)&v57 init];
  if (!v8)
  {
    goto LABEL_40;
  }

  bitmap = [configurationCopy bitmap];
  if (!bitmap)
  {
    v12 = error != 0;
LABEL_9:
    v16 = ktrace_session_create();
    ktrace_session_set_event_names_enabled();
    ktrace_session_set_default_event_names_enabled();
    ktrace_set_only_do_time_sensitive_postprocess();
    if ([configurationCopy collectionInterval])
    {
      [configurationCopy collectionInterval];
    }

    ktrace_set_collection_interval();
    if (!v16)
    {
      goto LABEL_19;
    }

    bitmap2 = [configurationCopy bitmap];
    if (bitmap2)
    {
      bitmap3 = [configurationCopy bitmap];
      v19 = bitmap3;
      [bitmap3 bytes];
      v20 = ktrace_events_filter_bitmap();
    }

    else
    {
      v20 = ktrace_events_all();
    }

    if (v20)
    {
      if (v12)
      {
        v21 = MEMORY[0x277CCA9B8];
        v64 = *MEMORY[0x277CCA450];
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", v20];
        v65 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        *error = [v21 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v23];
      }

LABEL_18:
      ktrace_session_destroy();
      goto LABEL_19;
    }

    if ([configurationCopy useExisting])
    {
      v25 = ktrace_set_use_existing();
      if (v25)
      {
        if (v12)
        {
          v26 = MEMORY[0x277CCA9B8];
          v62 = *MEMORY[0x277CCA450];
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", v25];
          v63 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          *error = [v26 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v28];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v29 = objc_opt_new();
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_247F70E14;
      v55 = sub_247F70E24;
      v56 = 0;
      providers = [configurationCopy providers];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_247F70E2C;
      v47[3] = &unk_278EF1490;
      v49 = &v51;
      v50 = v16;
      v46 = v29;
      v48 = v46;
      [providers enumerateKeysAndObjectsUsingBlock:v47];

      v31 = v52[5];
      if (v31)
      {
        v32 = MEMORY[0x277CCA9B8];
        v60 = *MEMORY[0x277CCA450];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to instantiate data providers"];
        v61 = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        providerLoggers = [v32 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v34];

        if (v12)
        {
          v36 = providerLoggers;
          *error = providerLoggers;
        }

        ktrace_session_destroy();
      }

      else
      {
        v37 = v46;
        providerLoggers = v8->_providerLoggers;
        v8->_providerLoggers = v37;
      }

      _Block_object_dispose(&v51, 8);
      if (v31)
      {
        goto LABEL_19;
      }
    }

    v38 = dispatch_semaphore_create(0);
    v39 = v38;
    ktrace_set_completion_handler();
    objc_storeStrong(&v8->_stoppingSemaphore, v38);
    started = ktrace_start_writing_fd();
    if (started)
    {
      if (v12)
      {
        v41 = MEMORY[0x277CCA9B8];
        v58 = *MEMORY[0x277CCA450];
        started = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", started];
        v59 = started;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v41 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v43];
      }

      goto LABEL_19;
    }

    if ([configurationCopy useExisting])
    {
      dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      if (v8->_ktraceSession)
      {
        ktrace_session_destroy();
      }

      stoppingSemaphore = v8->_stoppingSemaphore;
      v8->_ktraceSession = 0;
      v8->_stoppingSemaphore = 0;
    }

    v8->_ktraceSession = v16;

LABEL_40:
    v24 = v8;
    goto LABEL_41;
  }

  bitmap4 = [configurationCopy bitmap];
  v11 = [bitmap4 length] != 0x2000;

  v12 = error != 0;
  if (error)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CCA9B8];
  v66 = *MEMORY[0x277CCA450];
  v67[0] = @"Invalid tracing configuration bitmap";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  *error = [v14 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v15];

LABEL_19:
  v24 = 0;
LABEL_41:

  return v24;
}

- (id)_providerTopErrors
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_providerLoggers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        errors = [*(*(&v12 + 1) + 8 * i) errors];
        if ([errors count])
        {
          firstObject = [errors firstObject];
          [v3 addObject:firstObject];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)stopWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (!self->_ktraceSession)
  {
    return 1;
  }

  if (!self->_stoppingSemaphore)
  {
    sub_24802C280();
  }

  ktrace_end();
  dispatch_semaphore_wait(self->_stoppingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  ktrace_session_destroy();
  self->_ktraceSession = 0;
  _providerTopErrors = [(DTKTraceSessionCreator *)self _providerTopErrors];
  if (![_providerTopErrors count])
  {

    return 1;
  }

  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = _providerTopErrors;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        userInfo = [*(*(&v23 + 1) + 8 * i) userInfo];
        v13 = [userInfo objectForKeyedSubscript:@"DVTKtraceSessionProviderName"];

        if (v13)
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = MEMORY[0x277CCA9B8];
  v27[0] = *MEMORY[0x277CCA450];
  v15 = MEMORY[0x277CCACA8];
  allObjects = [v6 allObjects];
  v17 = [allObjects componentsJoinedByString:{@", "}];
  v18 = [v15 stringWithFormat:@"Data Providers emitted errors: %@", v17];
  v27[1] = @"DVTKtraceSessionProviderErrorsArrayKey";
  v28[0] = v18;
  v28[1] = v7;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v20 = [v14 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:2 userInfo:v19];

  if (error)
  {
    v21 = v20;
    *error = v20;
  }

  return 0;
}

+ (id)getDefaultedRemotePath:(int *)path
{
  if (!path)
  {
    sub_24802C2AC(a2, self);
  }

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"instrumentsXXXXXX.ktrace"];

  v6 = strdup([v5 fileSystemRepresentation]);
  *path = mkstemps(v6, 7);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v9 = [v7 fileURLWithPath:v8];

  free(v6);

  return v9;
}

@end