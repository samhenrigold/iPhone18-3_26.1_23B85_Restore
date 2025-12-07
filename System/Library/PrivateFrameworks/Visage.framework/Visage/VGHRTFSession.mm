@interface VGHRTFSession
- (BOOL)_asyncProcessCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error;
- (BOOL)processCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error;
- (BOOL)waitWithError:(id *)error;
- (VGHRTFSession)initWithConfig:(id)config error:(id *)error;
@end

@implementation VGHRTFSession

- (VGHRTFSession)initWithConfig:(id)config error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v38.receiver = self;
  v38.super_class = VGHRTFSession;
  v8 = [(VGHRTFSession *)&v38 init];
  if (v8)
  {
    [configCopy overwriteWithDefaults];
    objc_storeStrong(&v8->_config, config);
    v10 = __VGLogSharedInstance(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      writeDebugData = [(VGHRTFSessionConfig *)v8->_config writeDebugData];
      v12 = @"NO";
      if (writeDebugData)
      {
        v12 = @"YES";
      }

      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_DEBUG, " Write HRTF debug data: %@ ", buf, 0xCu);
    }

    if ([(VGHRTFSessionConfig *)v8->_config writeDebugData])
    {
      debugDataRootPath = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
      if (!debugDataRootPath)
      {
        v14 = objc_opt_new();
        [v14 setDateFormat:@"yyyyMMdd_HHmmss_SSS"];
        date = [MEMORY[0x277CBEAA8] date];
        v16 = [v14 stringFromDate:date];

        debugDataRootPath = [@"/private/var/mobile/Library/Caches/VisageTestApp/HRTF/" stringByAppendingPathComponent:v16];
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [defaultManager fileExistsAtPath:debugDataRootPath];

      if (v18)
      {
        NSLog(&cfstr_PathAlreadyExi.isa, debugDataRootPath);

LABEL_23:
        v19 = 0;
        goto LABEL_24;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [defaultManager2 createDirectoryAtPath:debugDataRootPath withIntermediateDirectories:1 attributes:0 error:&v37];
      v21 = v37;

      if (v21)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create debug path %@.", debugDataRootPath];
        vg::hrtf::setError(error, v22);

        goto LABEL_23;
      }

      v23 = __VGLogSharedInstance([(VGHRTFSessionConfig *)v8->_config setDebugDataRootPath:debugDataRootPath]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        debugDataRootPath2 = [(VGHRTFSessionConfig *)v8->_config debugDataRootPath];
        *buf = 138412290;
        v40 = debugDataRootPath2;
        _os_log_impl(&dword_270F06000, v23, OS_LOG_TYPE_DEBUG, " Using path for dumping HRTF debug data: %@ ", buf, 0xCu);
      }
    }

    v25 = [[VGHRTFCaptureProcessor alloc] initWithConfig:v8->_config error:error];
    captureProcessor = v8->_captureProcessor;
    v8->_captureProcessor = v25;

    if (v8->_captureProcessor)
    {
      v27 = [[VGHRTFPostProcessor alloc] initWithConfig:v8->_config error:error];
      postProcessor = v8->_postProcessor;
      v8->_postProcessor = v27;

      if (v8->_postProcessor)
      {
        v29 = dispatch_queue_create("com.apple.visage.hrtf.processor", 0);
        processQueue = v8->_processQueue;
        v8->_processQueue = v29;

        v31 = dispatch_group_create();
        processGroup = v8->_processGroup;
        v8->_processGroup = v31;

        v33 = dispatch_queue_create("com.apple.visage.hrtf.timer", 0);
        timerQueue = v8->_timerQueue;
        v8->_timerQueue = v33;

        atomic_store(0, &v8->_processing);
        atomic_store(0, &v8->_captureFinished);
        v19 = v8;
        goto LABEL_24;
      }

      v35 = @"Failed to initialize post processor.";
    }

    else
    {
      v35 = @"Failed to initialize capture processor.";
    }

    vg::hrtf::setError(error, v35);
    goto LABEL_23;
  }

  vg::hrtf::setError(error, @"Failed to initialize VGHRTFSession.");
  v19 = 0;
LABEL_24:

  return v19;
}

- (BOOL)_asyncProcessCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error
{
  dataCopy = data;
  faceDataCopy = faceData;
  v11 = atomic_load(&self->_captureFinished);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    initEmpty = [[VGHRTFUpdateData alloc] initEmpty];
    [initEmpty setStep:0];
    v14 = [(VGHRTFCaptureProcessor *)self->_captureProcessor processCaptureData:dataCopy faceData:faceDataCopy error:error];
    state = [v14 state];
    if (state >= 2)
    {
      if (state == 2)
      {
        [initEmpty setStep:_os_feature_enabled_impl() ^ 1];
        atomic_store(1u, &self->_captureFinished);
      }
    }

    else
    {
      [initEmpty setStep:state];
    }

    [initEmpty setCaptureUpdateData:v14];
    delegate = [(VGHRTFSessionConfig *)self->_config delegate];
    [delegate updateWithData:initEmpty error:error];

    v18 = atomic_load(&self->_captureFinished);
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    v19 = __VGLogSharedInstance(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_DEBUG, " Capture finished, starting post-processing... ", buf, 2u);
    }

    captureProcessor = self->_captureProcessor;
    self->_captureProcessor = 0;

    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, self->_timerQueue);
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __66__VGHRTFSession__asyncProcessCaptureData_faceData_userData_error___block_invoke;
    handler[3] = &unk_279E28D28;
    v22 = v14;
    v34 = v22;
    selfCopy = self;
    v36 = buf;
    dispatch_source_set_event_handler(v21, handler);
    if (error)
    {
      *error = *(v38 + 5);
    }

    dispatch_source_set_timer(v21, 0, 0x3B9ACA00uLL, 0);
    dispatch_resume(v21);
    v23 = [(VGHRTFPostProcessor *)self->_postProcessor processCaptureUpdateData:v22 error:error];
    dispatch_suspend(v21);
    dispatch_source_cancel(v21);
    dispatch_resume(v21);
    if (v23)
    {
      initEmpty2 = [[VGHRTFUpdateData alloc] initEmpty];
      [initEmpty2 setCaptureUpdateData:v22];
      [initEmpty2 setStep:3];
      [initEmpty2 setPostProcessUpdateData:v23];
      delegate2 = [(VGHRTFSessionConfig *)self->_config delegate];
      [delegate2 updateWithData:initEmpty2 error:error];

      initEmpty3 = __VGLogSharedInstance(v27);
      if (os_log_type_enabled(initEmpty3, OS_LOG_TYPE_DEBUG))
      {
        *v32 = 0;
        _os_log_impl(&dword_270F06000, initEmpty3, OS_LOG_TYPE_DEBUG, " Successfully completed post-processing ", v32, 2u);
      }
    }

    else
    {
      v29 = __VGLogSharedInstance(v24);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Post-processing failed! ", v32, 2u);
      }

      vg::hrtf::setError(error, @"Failed to run post-processing.");
      initEmpty2 = [[VGHRTFUpdateData alloc] initEmpty];
      [initEmpty2 setCaptureUpdateData:v22];
      [initEmpty2 setStep:3];
      initEmpty3 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
      [initEmpty3 setState:1];
      [initEmpty3 setResult:0];
      [initEmpty2 setPostProcessUpdateData:initEmpty3];
      delegate3 = [(VGHRTFSessionConfig *)self->_config delegate];
      [delegate3 updateWithData:initEmpty2 error:error];
    }

    _Block_object_dispose(buf, 8);
    if (!v23)
    {
      v12 = 0;
    }

    else
    {
LABEL_19:
      v12 = 1;
    }
  }

  return v12;
}

void __66__VGHRTFSession__asyncProcessCaptureData_faceData_userData_error___block_invoke(void *a1)
{
  v2 = [[VGHRTFUpdateData alloc] initEmpty];
  [v2 setCaptureUpdateData:a1[4]];
  [v2 setStep:2];
  v3 = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
  [v3 setState:0];
  [v3 setResult:0];
  [v2 setPostProcessUpdateData:v3];
  v4 = [*(a1[5] + 8) delegate];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  [v4 updateWithData:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (BOOL)processCaptureData:(id)data faceData:(id)faceData userData:(id)userData error:(id *)error
{
  dataCopy = data;
  faceDataCopy = faceData;
  userDataCopy = userData;
  v13 = atomic_exchange(&self->_processing.__a_.__a_value, 1u);
  if (v13)
  {
    vg::hrtf::setError(error, @"Dropped this frame while still processing a previous frame.");
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    processQueue = self->_processQueue;
    processGroup = self->_processGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__VGHRTFSession_processCaptureData_faceData_userData_error___block_invoke;
    block[3] = &unk_279E28D50;
    block[4] = self;
    v18 = dataCopy;
    v19 = faceDataCopy;
    v20 = userDataCopy;
    v21 = &v22;
    dispatch_group_async(processGroup, processQueue, block);
    if (error)
    {
      *error = v23[5];
    }

    _Block_object_dispose(&v22, 8);
  }

  return (v13 & 1) == 0;
}

void __60__VGHRTFSession_processCaptureData_faceData_userData_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  [v2 _asyncProcessCaptureData:v3 faceData:v4 userData:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  atomic_store(0, (a1[4] + 56));
}

- (BOOL)waitWithError:(id *)error
{
  v4 = dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (v4)
  {
    vg::hrtf::setError(error, @"HRTF session sync failed.");
  }

  return v4 == 0;
}

@end