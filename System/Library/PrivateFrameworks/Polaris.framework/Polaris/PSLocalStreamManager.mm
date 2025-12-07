@interface PSLocalStreamManager
- (PRMWriterInstance)createWriterInstForKey:(id)key withResStream:(id)stream;
- (PSLocalStreamManager)initWithContext:(id)context withTransitionManager:(id)manager withDevice:(id)device withGSM:(ps_gsm_s *)m withPRMManager:(PSResourceManager *)mManager;
- (PSTransitionManager)transitionManager;
- (void)startEventSource:(id)source withResStream:(id)stream;
- (void)startIMUSource:(id)source withResStream:(id)stream;
- (void)startPolarisdCommsStream:(id)stream withResStream:(id)resStream;
- (void)startSourceForKey:(id)key;
- (void)stopSourceForKey:(id)key;
@end

@implementation PSLocalStreamManager

- (PSLocalStreamManager)initWithContext:(id)context withTransitionManager:(id)manager withDevice:(id)device withGSM:(ps_gsm_s *)m withPRMManager:(PSResourceManager *)mManager
{
  contextCopy = context;
  managerCopy = manager;
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = PSLocalStreamManager;
  v16 = [(PSLocalStreamManager *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, context);
    objc_storeWeak(&v17->_transitionManager, managerCopy);
    objc_storeStrong(&v17->_device, device);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreams = v17->_activeStreams;
    v17->_activeStreams = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedBufferIndexers = v17->_retainedBufferIndexers;
    v17->_retainedBufferIndexers = v20;

    v17->_prm_mgr = mManager;
    v17->_gsm = m;
  }

  return v17;
}

- (void)startSourceForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = __PLSLogSharedInstance(keyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    uTF8String = [keyCopy UTF8String];
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Starting local stream for key %s", &v16, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    [(PSLocalStreamManager *)&v16 startSourceForKey:keyCopy];
    goto LABEL_12;
  }

  v7 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  if (!v7)
  {
LABEL_12:
    [(PSLocalStreamManager *)&v16 startSourceForKey:keyCopy];
LABEL_13:
    [(PSLocalStreamManager *)&v16 startSourceForKey:keyCopy];
  }

  v8 = v7;
  v9 = [(PLSDevice *)self->_device propertiesForKey:keyCopy];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  type = [v9 type];
  if (type == 7)
  {
    [(PSLocalStreamManager *)self startEventSource:keyCopy withResStream:v8];
    goto LABEL_10;
  }

  if (type == 1)
  {
    [(PSLocalStreamManager *)self startIMUSource:keyCopy withResStream:v8];
LABEL_10:

    return;
  }

  v12 = [(PSLocalStreamManager *)&v16 startSourceForKey:v10];
  [(PSLocalStreamManager *)v12 createWriterInstForKey:v13 withResStream:v14, v15];
}

- (PRMWriterInstance)createWriterInstForKey:(id)key withResStream:(id)stream
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  streamCopy = stream;
  v8 = ps_prm_opts_create();
  [PSGraphCompiler populateWriterOpts:v8 forKey:keyCopy withCapacity:1 forGraph:0 withResStream:streamCopy withContext:self->_context retainedBufferIndexers:self->_retainedBufferIndexers withGSM:self->_gsm];

  v10 = __PLSLogSharedInstance(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    uTF8String = [keyCopy UTF8String];
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "Creating writer instance for source %s", buf, 0xCu);
  }

  writer_instance = ps_prm_create_writer_instance(self->_prm_mgr, v8);
  ps_prm_opts_destroy(v8);

  return writer_instance;
}

- (void)startIMUSource:(id)source withResStream:(id)stream
{
  streamCopy = stream;
  sourceCopy = source;
  v8 = [(PSLocalStreamManager *)self createWriterInstForKey:sourceCopy withResStream:streamCopy];
  v15 = [PSDispatchQueueCreator createGCDQueueWithQOS:0 key:sourceCopy];
  v9 = [PSHIDStream alloc];
  framerate = [streamCopy framerate];

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  name = [executionSession name];
  v14 = [(PSHIDStream *)v9 initWithKey:sourceCopy rate:framerate queue:v15 writerInstance:v8 execSessionName:name];

  [(PSHIDStream *)v14 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v14 forKeyedSubscript:sourceCopy];
}

- (void)startEventSource:(id)source withResStream:(id)stream
{
  v18 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  streamCopy = stream;
  v8 = [(PSLocalStreamManager *)self createWriterInstForKey:sourceCopy withResStream:streamCopy];
  v9 = __PLSLogSharedInstance(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    uTF8String = [sourceCopy UTF8String];
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "Starting event source for key %s", &v16, 0xCu);
  }

  v10 = [(PLSDevice *)self->_device isTimer:sourceCopy];
  if (v10)
  {
    framerate = [streamCopy framerate];
  }

  else
  {
    framerate = 0;
  }

  v12 = [PSDispatchQueueCreator createGCDQueueWithQOS:0 key:sourceCopy];
  if (!v10)
  {
    [PSLocalStreamManager startEventSource:sourceCopy withResStream:?];
LABEL_10:
    [PSLocalStreamManager startEventSource:sourceCopy withResStream:?];
  }

  v13 = v12;
  v14 = [[PSSystemEventStream alloc] initWithKey:sourceCopy event:1 rate:framerate queue:v12 writerInstance:v8];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  [(PSSystemEventStream *)v14 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v15 forKeyedSubscript:sourceCopy];
}

- (void)startPolarisdCommsStream:(id)stream withResStream:(id)resStream
{
  v10 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v6 = __PLSLogSharedInstance(streamCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    uTF8String = [streamCopy UTF8String];
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "Starting polarisd comms for key %s", &v8, 0xCu);
  }

  v7 = [[PSDaemonCommsStream alloc] initWithKey:streamCopy];
  [(PSDaemonCommsStream *)v7 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v7 forKeyedSubscript:streamCopy];
}

- (void)stopSourceForKey:(id)key
{
  v10 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    [(PSLocalStreamManager *)&v8 stopSourceForKey:keyCopy];
  }

  v6 = v5;
  v7 = __PLSLogSharedInstance(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    uTF8String = [keyCopy UTF8String];
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Stopping stream for key %s", &v8, 0xCu);
  }

  [v6 stop];
  if ([v6 writer_inst])
  {
    ps_prm_delete_writer_instance(self->_prm_mgr, [v6 writer_inst]);
    [(NSMutableDictionary *)self->_retainedBufferIndexers removeObjectForKey:keyCopy];
  }

  [(NSMutableDictionary *)self->_activeStreams removeObjectForKey:keyCopy];
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Stream for key %s is already active.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Stream for key %s is already active.", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [(PSLocalStreamManager *)v21 startSourceForKey:v22];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "Type not supported: %lu", [a2 type]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Type not supported: %lu", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSLocalStreamManager *)v20 startSourceForKey:v21];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "PLSDevice properties for key %s not defined.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d PLSDevice properties for key %s not defined.", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [(PSLocalStreamManager *)v21 startSourceForKey:v22];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.4(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Stream for key %s not defined in PSContext.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Stream for key %s not defined in PSContext.", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startEventSource:v21 withResStream:v22];
}

- (uint64_t)startEventSource:(char *)a1 withResStream:(void *)a2 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Unexpected system event key %s (only timers are supported on OSX)", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Unexpected system event key %s (only timers are supported on OSX)", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startEventSource:v21 withResStream:v22];
}

- (uint64_t)startEventSource:(char *)a1 withResStream:(void *)a2 .cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Something happened, stream could not be created for key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Something happened, stream could not be created for key %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [(PSLocalStreamManager *)v21 stopSourceForKey:v22];
}

- (uint64_t)stopSourceForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Stream for key %s is not running.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Stream for key %s is not running.", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_reader_block_acquire_cold_1(v21, v22);
}

@end