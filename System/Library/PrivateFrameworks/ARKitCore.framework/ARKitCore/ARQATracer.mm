@interface ARQATracer
+ (id)traceOutputDirectory;
- (ARQATracer)init;
- (ARQATracerDelegate)delegate;
- (BOOL)_shouldDumpSemanticData;
- (BOOL)isSemanticSegmentationDataAvailableForSession:(id)session;
- (CGPoint)offset;
- (__CVBuffer)_createRecordablePixelBufferFromSegmentationBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)_createRecordablePixelBufferFromSemanticsBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)flushDataBufferToFile;
- (void)receiveDefaults;
- (void)replaySensorDidFinishReplayingData;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)start:(id)start;
- (void)stop;
- (void)trace:(id)trace forKey:(id)key;
- (void)traceRaycastQuery:(id)query;
- (void)traceRaycastResults:(id)results;
- (void)update:(id)update session:(id)session;
- (void)writeJSONObjectToStream:(id)stream prefix:(id)prefix;
- (void)writeStringToOutputStream:(id)stream;
@end

@implementation ARQATracer

- (ARQATracer)init
{
  v25.receiver = self;
  v25.super_class = ARQATracer;
  v2 = [(ARQATracer *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    traceHeader = v2->_traceHeader;
    v2->_traceHeader = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.arQATracer", v5);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.arQATracer.segmentation", v8);
    segmentationVideoQueue = v2->_segmentationVideoQueue;
    v2->_segmentationVideoQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.arQATracer.semantics", v11);
    semanticsVideoQueue = v2->_semanticsVideoQueue;
    v2->_semanticsVideoQueue = v12;

    traceOutputDirectory = [objc_opt_class() traceOutputDirectory];
    v15 = [traceOutputDirectory stringByAppendingPathComponent:@"data.json"];
    [(ARQATracer *)v2 setTraceOutputFilePath:v15];

    v16 = objc_alloc(MEMORY[0x1E695DFC0]);
    traceOutputFilePath = [(ARQATracer *)v2 traceOutputFilePath];
    v18 = [v16 initToFileAtPath:traceOutputFilePath append:0];
    framesStreamToFile = v2->_framesStreamToFile;
    v2->_framesStreamToFile = v18;

    v20 = objc_opt_new();
    dataBuffer = v2->_dataBuffer;
    v2->_dataBuffer = v20;

    v2->_additionalResultsLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    additionalResults = v2->_additionalResults;
    v2->_additionalResults = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  segmentationYUVPixelBufferPool = self->_segmentationYUVPixelBufferPool;
  if (segmentationYUVPixelBufferPool)
  {
    CVPixelBufferPoolRelease(segmentationYUVPixelBufferPool);
    self->_segmentationYUVPixelBufferPool = 0;
  }

  semanticsYUVPixelBufferPool = self->_semanticsYUVPixelBufferPool;
  if (semanticsYUVPixelBufferPool)
  {
    CVPixelBufferPoolRelease(semanticsYUVPixelBufferPool);
    self->_semanticsYUVPixelBufferPool = 0;
  }

  segmentationTransferSession = self->_segmentationTransferSession;
  if (segmentationTransferSession)
  {
    VTPixelTransferSessionInvalidate(segmentationTransferSession);
    v6 = self->_segmentationTransferSession;
    if (v6)
    {
      CFRelease(v6);
    }

    self->_segmentationTransferSession = 0;
  }

  v7.receiver = self;
  v7.super_class = ARQATracer;
  [(ARQATracer *)&v7 dealloc];
}

- (void)traceRaycastQuery:(id)query
{
  v4 = [ARQAHelper dictionaryFromRaycastQuery:query];
  raycastQueryData = self->_raycastQueryData;
  self->_raycastQueryData = v4;
}

- (void)traceRaycastResults:(id)results
{
  v4 = [ARQAHelper arrayFromRaycastResults:results];
  raycastResultData = self->_raycastResultData;
  self->_raycastResultData = v4;
}

- (void)trace:(id)trace forKey:(id)key
{
  traceCopy = trace;
  keyCopy = key;
  os_unfair_lock_lock(&self->_additionalResultsLock);
  additionalResults = [(ARQATracer *)self additionalResults];
  v8 = [additionalResults objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    additionalResults2 = [(ARQATracer *)self additionalResults];
    v10 = [additionalResults2 objectForKeyedSubscript:keyCopy];
    encodeToDictionary = [traceCopy encodeToDictionary];
    [v10 addObject:encodeToDictionary];
  }

  else
  {
    v12 = MEMORY[0x1E695DF70];
    additionalResults2 = [traceCopy encodeToDictionary];
    v10 = [v12 arrayWithObject:additionalResults2];
    encodeToDictionary = [(ARQATracer *)self additionalResults];
    [encodeToDictionary setObject:v10 forKeyedSubscript:keyCopy];
  }

  os_unfair_lock_unlock(&self->_additionalResultsLock);
}

- (void)receiveDefaults
{
  v3 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.session.qatracing.screenRecording"];
  v13 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(ARQATracer *)self setRecordScreen:bOOLValue];
  v5 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.session.qatracing.forceQuitApp"];
  v6 = v5;
  if (v5)
  {
    bOOLValue2 = [v5 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  [(ARQATracer *)self setForceQuitApp:bOOLValue2];
  v8 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.qatracing.framesLabelOffset"];
  v9 = [v8 componentsSeparatedByString:{@", "}];
  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    integerValue = [v10 integerValue];
    v12 = [v9 objectAtIndexedSubscript:1];
    -[ARQATracer setOffset:](self, "setOffset:", integerValue, [v12 integerValue]);
  }
}

- (void)writeJSONObjectToStream:(id)stream prefix:(id)prefix
{
  v21 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    [(ARQATracer *)self writeStringToOutputStream:prefixCopy];
  }

  v14 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:streamCopy options:0 error:&v14];
  v9 = v14;
  [(NSMutableData *)self->_dataBuffer appendData:v8];

  if (v9)
  {
    v11 = _ARLogGeneral_35(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v16 = v13;
      v17 = 2048;
      selfCopy = self;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error serializing JSON with error %@", buf, 0x20u);
    }

    [(ARQATracer *)self writeStringToOutputStream:@"{}"];
  }
}

- (void)writeStringToOutputStream:(id)stream
{
  v4 = [stream dataUsingEncoding:4];
  [(NSMutableData *)self->_dataBuffer appendData:v4];
}

- (void)flushDataBufferToFile
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(NSOutputStream *)self->_framesStreamToFile write:[(NSMutableData *)self->_dataBuffer bytes] maxLength:[(NSMutableData *)self->_dataBuffer length]];
  v4 = [(NSMutableData *)self->_dataBuffer length];
  if (v3 != v4)
  {
    v5 = _ARLogGeneral_35(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138543618;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Not all bytes could be written to file", &v8, 0x16u);
    }
  }

  [(NSMutableData *)self->_dataBuffer setLength:0];
}

- (void)start:(id)start
{
  startCopy = start;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __20__ARQATracer_start___block_invoke;
  v7[3] = &unk_1E817BEC8;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(processingQueue, v7);
}

void __20__ARQATracer_start___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v2 = _ARLogGeneral_35(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      *buf = 138543618;
      v46 = v4;
      v47 = 2048;
      v48 = v5;
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Start", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 1;
    [*(*(a1 + 32) + 40) open];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{version:%@, frames:[", @"1.1"];
    [v6 writeStringToOutputStream:v7];

    v8 = [*(a1 + 40) configuration];
    v9 = [v8 replaySensor];

    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 setTraceReplaySensorDelegate:*(a1 + 32)];
    }

    [*(a1 + 32) receiveDefaults];
    v10 = [*(a1 + 40) configuration];
    v11 = [v10 frameSemantics];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [objc_opt_class() traceOutputDirectory];
      v14 = [v12 stringWithFormat:@"%@/segmentation.mov", v13];

      v16 = _ARLogGeneral_35(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = *(a1 + 32);
        *buf = 138543874;
        v46 = v18;
        v47 = 2048;
        v48 = v19;
        v49 = 2114;
        v50 = v14;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recording segmentation output to %{public}@", buf, 0x20u);
      }

      v20 = objc_alloc(MEMORY[0x1E698BEC8]);
      v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      v22 = [v20 initWithFileURL:v21 expectedFrameRate:MEMORY[0x1E695E0F8] fileSummary:60.0];
      v23 = *(a1 + 32);
      v24 = *(v23 + 56);
      *(v23 + 56) = v22;

      [*(*(a1 + 32) + 56) registerStreamID:@"Segmentation" withConfigObject:0];
    }

    if ([*(a1 + 32) _shouldDumpSemanticData] && objc_msgSend(*(a1 + 32), "isSemanticSegmentationDataAvailableForSession:", *(a1 + 40)))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = [objc_opt_class() traceOutputDirectory];
      v27 = [v25 stringWithFormat:@"%@/semantics.mov", v26];

      v29 = _ARLogGeneral_35(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = *(a1 + 32);
        *buf = 138543874;
        v46 = v31;
        v47 = 2048;
        v48 = v32;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recording semantics output to %{public}@", buf, 0x20u);
      }

      v33 = objc_alloc(MEMORY[0x1E698BEC8]);
      v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];
      v35 = [v33 initWithFileURL:v34 expectedFrameRate:MEMORY[0x1E695E0F8] fileSummary:10.0];
      v36 = *(a1 + 32);
      v37 = *(v36 + 64);
      *(v36 + 64) = v35;

      [*(*(a1 + 32) + 64) registerStreamID:@"Semantics" withConfigObject:0];
    }

    v38 = [*(a1 + 40) configuration];
    v39 = [*(a1 + 40) technique];
    v40 = [ARQAHelper headerInformationWithConfiguration:v38 technique:v39];
    v41 = *(a1 + 32);
    v42 = *(v41 + 24);
    *(v41 + 24) = v40;

    objc_initWeak(buf, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __20__ARQATracer_start___block_invoke_44;
    block[3] = &unk_1E817D9C0;
    block[4] = *(a1 + 32);
    objc_copyWeak(&v44, buf);
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }
}

void __20__ARQATracer_start___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [*(a1 + 32) offset];
    [v4 getFrameLabelFrameForOffset:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v6, v8];
    [*(*(a1 + 32) + 24) setObject:v13 forKeyedSubscript:@"frameLabelOffset"];

    v14 = v10;
    v15 = v12;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v14, v15];
    [*(*(a1 + 32) + 24) setObject:v16 forKeyedSubscript:@"frameLabelSize"];
  }

  v17 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [v19 getDeviceViewSize];
    v21 = v20;
    v23 = v22;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v21, v23];
    [*(*(a1 + 32) + 24) setObject:v24 forKeyedSubscript:@"deviceViewSize"];
  }

  v25 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained((*(a1 + 32) + 136));
    v28 = [v27 getRendererDescription];
    [*(*(a1 + 32) + 24) setObject:v28 forKeyedSubscript:@"rendererDescription"];
  }

  v29 = NSSelectorFromString(&cfstr_Startscreenrec.isa);
  v30 = objc_loadWeakRetained((a1 + 40));
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = *(a1 + 32);

    [v32 performSelector:v29];
  }
}

- (void)stop
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__ARQATracer_stop__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

void __18__ARQATracer_stop__block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = _ARLogGeneral_35(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    *buf = 138543618;
    v51 = v4;
    v52 = 2048;
    v53 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stop requested", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 16);
  v8 = _ARLogGeneral_35(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 32);
      *buf = 138543618;
      v51 = v11;
      v52 = 2048;
      v53 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 0;
    [*(a1 + 32) writeStringToOutputStream:@"]"];
    v13 = [*(a1 + 32) additionalResults];
    v14 = [v13 count];

    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = [v15 additionalResults];
      [v15 writeJSONObjectToStream:v16 prefix:{@", additionalData:"}];
    }

    [*(a1 + 32) writeJSONObjectToStream:*(*(a1 + 32) + 24) prefix:{@", header:"}];
    [*(a1 + 32) writeStringToOutputStream:@"}"];
    [*(a1 + 32) flushDataBufferToFile];
    [*(*(a1 + 32) + 40) close];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained((*(a1 + 32) + 136));
      v20 = *(a1 + 32);
      v21 = [v20 traceOutputFilePath];
      [v19 tracer:v20 finishedWritingJSONToPath:v21];
    }

    v22 = *(a1 + 32);
    v23 = v22[7];
    if (v23)
    {
      v49 = 0;
      [v23 finishWriting:&v49];
      v24 = v49;
      v25 = v24;
      if (v24)
      {
        v26 = _ARLogGeneral_35(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = *(a1 + 32);
          *buf = 138543618;
          v51 = v28;
          v52 = 2048;
          v53 = v29;
          _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not write segmentation video", buf, 0x16u);
        }
      }

      v22 = *(a1 + 32);
    }

    v30 = v22[8];
    if (v30)
    {
      v48 = 0;
      [v30 finishWriting:&v48];
      v31 = v48;
      v32 = v31;
      if (v31)
      {
        v33 = _ARLogGeneral_35(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = *(a1 + 32);
          *buf = 138543618;
          v51 = v35;
          v52 = 2048;
          v53 = v36;
          _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not write semantics video", buf, 0x16u);
        }
      }

      v22 = *(a1 + 32);
    }

    v37 = [v22 forceQuitApp];
    if (v37)
    {
      v38 = _ARLogGeneral_35(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = *(a1 + 32);
        *buf = 138543618;
        v51 = v40;
        v52 = 2048;
        v53 = v41;
        _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Requesting App termination on ARQATracer stop", buf, 0x16u);
      }

      v42 = [*(a1 + 32) delegate];
      [v42 requestDelayedAppTermination];
    }

    objc_initWeak(buf, *(a1 + 32));
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __18__ARQATracer_stop__block_invoke_84;
    v46[3] = &unk_1E817BDB0;
    objc_copyWeak(&v47, buf);
    v46[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v46);
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = *(a1 + 32);
      *buf = 138543618;
      v51 = v44;
      v52 = 2048;
      v53 = v45;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: User default for tracing is not set or not tracing", buf, 0x16u);
    }
  }
}

void __18__ARQATracer_stop__block_invoke_84(uint64_t a1)
{
  v2 = NSSelectorFromString(&cfstr_Stopscreenreco.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 performSelector:v2];
  }
}

- (void)update:(id)update session:(id)session
{
  updateCopy = update;
  processingQueue = self->_processingQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__ARQATracer_update_session___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_sync(processingQueue, v8);
}

void __29__ARQATracer_update_session___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 1)
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = [ARQAHelper traceFrameData:"traceFrameData:withFrameIndex:writeOBJ:" withFrameIndex:*(a1 + 40) writeOBJ:?];
    v4 = [v2 dictionaryWithDictionary:v3];

    if ([*(a1 + 40) segmentationBuffer])
    {
      v5 = *(*(a1 + 32) + 88);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__ARQATracer_update_session___block_invoke_2;
      block[3] = &unk_1E817BEC8;
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v37 = v6;
      v38 = v7;
      dispatch_async(v5, block);
    }

    if ([*(a1 + 32) _shouldDumpSemanticData])
    {
      v8 = [*(a1 + 40) rawSceneUnderstandingData];
      v9 = [v8 semanticSegmentationBuffer];

      if (v9)
      {
        v10 = *(*(a1 + 32) + 96);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __29__ARQATracer_update_session___block_invoke_3;
        v33[3] = &unk_1E817BEC8;
        v11 = *(a1 + 40);
        v12 = *(a1 + 32);
        v34 = v11;
        v35 = v12;
        dispatch_async(v10, v33);
      }
    }

    v13 = *(a1 + 32);
    v14 = v13[14];
    if (v14)
    {
      [v4 setObject:v14 forKeyedSubscript:@"raycastQueryData"];
      v15 = *(a1 + 32);
      v16 = *(v15 + 112);
      *(v15 + 112) = 0;

      v13 = *(a1 + 32);
    }

    v17 = v13[15];
    if (v17)
    {
      [v4 setObject:v17 forKeyedSubscript:@"raycastResultData"];
      v18 = *(a1 + 32);
      v19 = *(v18 + 120);
      *(v18 + 120) = 0;

      v13 = *(a1 + 32);
    }

    v20 = [v13 additionalResults];
    v21 = [v20 count];

    if (v21)
    {
      os_unfair_lock_lock((*(a1 + 32) + 128));
      v22 = [*(a1 + 32) additionalResults];
      [v4 addEntriesFromDictionary:v22];

      v23 = [*(a1 + 32) additionalResults];
      [v23 removeAllObjects];

      os_unfair_lock_unlock((*(a1 + 32) + 128));
    }

    v24 = *(a1 + 32);
    if (v24[1])
    {
      v25 = @",";
    }

    else
    {
      v25 = 0;
    }

    [v24 writeJSONObjectToStream:v4 prefix:v25];
    if ([*(*(a1 + 32) + 32) length] >= 0x30D41)
    {
      [*(a1 + 32) flushDataBufferToFile];
    }

    v26 = *(a1 + 32);
    v27 = v26[1];
    objc_initWeak(&location, v26);
    ++*(*(a1 + 32) + 8);
    v28 = [*(a1 + 32) delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __29__ARQATracer_update_session___block_invoke_4;
      v30[3] = &unk_1E817C740;
      objc_copyWeak(v31, &location);
      v30[4] = *(a1 + 32);
      v31[1] = v27;
      dispatch_async(MEMORY[0x1E69E96A0], v30);
      objc_destroyWeak(v31);
    }

    objc_destroyWeak(&location);
  }
}

void __29__ARQATracer_update_session___block_invoke_2(uint64_t a1, const char *a2)
{
  v18 = 0uLL;
  v19 = 0;
  v3 = MEMORY[0x1E698BEC8];
  objc_msgSend_timestamp(*(a1 + 32), a2);
  objc_msgSend_cmTimeFromTimestamp_(v3);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) camera];
  [v4 intrinsics];
  DWORD2(v15) = v5;
  DWORD2(v16) = v6;
  *&v15 = v7;
  *&v16 = v8;
  DWORD2(v17) = v9;
  *&v17 = v10;

  v11 = [*(a1 + 40) _createRecordablePixelBufferFromSegmentationBuffer:{objc_msgSend(*(a1 + 32), "segmentationBuffer")}];
  v12 = *(*(a1 + 40) + 56);
  v13 = v18;
  v14 = v19;
  [v12 processPixelBuffer:v11 withTimeStamp:&v13 intrinsics:&v15 exposureTime:@"Segmentation" streamID:0.0];
  CVPixelBufferRelease(v11);
}

void __29__ARQATracer_update_session___block_invoke_3(uint64_t a1, const char *a2)
{
  v20 = 0uLL;
  v21 = 0;
  v3 = MEMORY[0x1E698BEC8];
  objc_msgSend_timestamp(*(a1 + 32), a2);
  objc_msgSend_cmTimeFromTimestamp_(v3);
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) camera];
  [v4 intrinsics];
  DWORD2(v17) = v5;
  DWORD2(v18) = v6;
  *&v17 = v7;
  *&v18 = v8;
  DWORD2(v19) = v9;
  *&v19 = v10;

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) rawSceneUnderstandingData];
  v13 = [v11 _createRecordablePixelBufferFromSemanticsBuffer:{objc_msgSend(v12, "semanticSegmentationBuffer")}];

  v14 = *(*(a1 + 40) + 64);
  v15 = v20;
  v16 = v21;
  [v14 processPixelBuffer:v13 withTimeStamp:&v15 intrinsics:&v17 exposureTime:@"Semantics" streamID:0.0];
  CVPixelBufferRelease(v13);
}

void __29__ARQATracer_update_session___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 tracer:*(a1 + 32) processedFrameNumber:*(a1 + 48)];
}

+ (id)traceOutputDirectory
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.qatracing.filepath"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v8 = [infoDictionary objectForKey:*MEMORY[0x1E695E4E8]];

    v9 = NSTemporaryDirectory();
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"UnitTest";
    }

    v5 = [v9 stringByAppendingPathComponent:v11];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v5] & 1) == 0)
  {
    v24 = 0;
    [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v24];
    v13 = v24;
    v14 = _ARLogGeneral_35(v13);
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        v26 = v17;
        v27 = 2048;
        selfCopy2 = self;
        v29 = 2112;
        v30 = v13;
        v18 = "%{public}@ <%p>: Error creating directory: %@";
        v19 = v15;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      *buf = 138543874;
      v26 = v17;
      v27 = 2048;
      selfCopy2 = self;
      v29 = 2114;
      v30 = v5;
      v18 = "%{public}@ <%p>: Created tracing output directory: %{public}@";
      v19 = v15;
      v20 = OS_LOG_TYPE_DEBUG;
      goto LABEL_13;
    }
  }

  v22 = v5;

  return v5;
}

- (BOOL)isSemanticSegmentationDataAvailableForSession:(id)session
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  configuration2 = [sessionCopy configuration];
  v7 = configuration2;
  if (isKindOfClass)
  {
    isMLModelEnabled = [configuration2 planeDetection] && (objc_msgSend(v7, "isMLModelEnabled") & 1) != 0 || objc_msgSend(v7, "sceneReconstruction") != 0;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    configuration3 = [sessionCopy configuration];
    v7 = configuration3;
    if ((v9 & 1) == 0)
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        isMLModelEnabled = 0;
        goto LABEL_14;
      }

      configuration3 = [sessionCopy configuration];
      v7 = configuration3;
    }

    if ([configuration3 planeDetection])
    {
      isMLModelEnabled = [v7 isMLModelEnabled];
    }

    else
    {
      isMLModelEnabled = 0;
    }
  }

LABEL_14:
  return isMLModelEnabled;
}

- (BOOL)_shouldDumpSemanticData
{
  if (_shouldDumpSemanticData_onceToken != -1)
  {
    [ARQATracer _shouldDumpSemanticData];
  }

  return _shouldDumpSemanticData_dumpSemantics;
}

BOOL __37__ARQATracer__shouldDumpSemanticData__block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"];
  _shouldDumpSemanticData_dumpSemantics = result;
  return result;
}

- (void)replaySensorDidFinishReplayingData
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_35(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replay finished", &v6, 0x16u);
  }

  [(ARQATracer *)self stop];
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  if (state)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v7 = sessionCopy;
    [(ARQATracer *)self start:sessionCopy];
  }

  else
  {
    v7 = sessionCopy;
    [(ARQATracer *)self stop];
  }

  sessionCopy = v7;
LABEL_6:
}

- (__CVBuffer)_createRecordablePixelBufferFromSegmentationBuffer:(__CVBuffer *)buffer
{
  v28 = *MEMORY[0x1E69E9840];
  p_segmentationYUVPixelBufferPool = &self->_segmentationYUVPixelBufferPool;
  if (!self->_segmentationYUVPixelBufferPool)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    New = ar_pixelBufferPoolCreateNew(Width, Height, 875704422, p_segmentationYUVPixelBufferPool);
    if (New)
    {
      v8 = _ARLogGeneral_35(New);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v10 = NSStringFromClass(v15);
        *buf = 138543618;
        v25 = v10;
        v26 = 2048;
        selfCopy4 = self;
        v11 = "%{public}@ <%p>: Could not create pixel buffer pool.";
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v6 = *MEMORY[0x1E695E480];
  if (!self->_segmentationTransferSession)
  {
    v16 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_segmentationTransferSession);
    if (v16)
    {
      v8 = _ARLogGeneral_35(v16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v10 = NSStringFromClass(v17);
        *buf = 138543618;
        v25 = v10;
        v26 = 2048;
        selfCopy4 = self;
        v11 = "%{public}@ <%p>: Could not create VTPixelTransferSession.";
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  pixelBufferOut = 0;
  v7 = CVPixelBufferPoolCreatePixelBuffer(v6, *p_segmentationYUVPixelBufferPool, &pixelBufferOut);
  if (v7)
  {
    v8 = _ARLogGeneral_35(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v25 = v10;
      v26 = 2048;
      selfCopy4 = self;
      v11 = "%{public}@ <%p>: Could not create pixel buffer.";
LABEL_12:
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);
    }

LABEL_13:

    return 0;
  }

  v19 = VTPixelTransferSessionTransferImage(self->_segmentationTransferSession, buffer, pixelBufferOut);
  if (v19)
  {
    v20 = _ARLogGeneral_35(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543618;
      v25 = v22;
      v26 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create transfer pixel buffer.", buf, 0x16u);
    }
  }

  return pixelBufferOut;
}

- (__CVBuffer)_createRecordablePixelBufferFromSemanticsBuffer:(__CVBuffer *)buffer
{
  v22 = *MEMORY[0x1E69E9840];
  p_semanticsYUVPixelBufferPool = &self->_semanticsYUVPixelBufferPool;
  semanticsYUVPixelBufferPool = self->_semanticsYUVPixelBufferPool;
  if (!semanticsYUVPixelBufferPool)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    New = ar_pixelBufferPoolCreateNew(Width, Height, 1111970369, p_semanticsYUVPixelBufferPool);
    if (New)
    {
      v8 = _ARLogGeneral_35(New);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v10 = NSStringFromClass(v15);
        *buf = 138543618;
        v19 = v10;
        v20 = 2048;
        selfCopy2 = self;
        v11 = "%{public}@ <%p>: Could not create pixel buffer pool.";
        goto LABEL_8;
      }

LABEL_9:

      return 0;
    }

    semanticsYUVPixelBufferPool = *p_semanticsYUVPixelBufferPool;
  }

  pixelBufferOut = 0;
  v7 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], semanticsYUVPixelBufferPool, &pixelBufferOut);
  if (v7)
  {
    v8 = _ARLogGeneral_35(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v19 = v10;
      v20 = 2048;
      selfCopy2 = self;
      v11 = "%{public}@ <%p>: Could not create pixel buffer.";
LABEL_8:
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  ARCreatePixelBufferFromSourceWithPixelConverter(buffer, 0x42475241u, &pixelBufferOut, &__block_literal_global_103);
  return pixelBufferOut;
}

int8x8_t __62__ARQATracer__createRecordablePixelBufferFromSemanticsBuffer___block_invoke(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v5 = ARCV3DColorComponentsForRawSemantics(*a2, a2);
  v6 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(vext_s8(v5.n128_u64[0], *&vextq_s8(v5, v5, 8uLL), 4uLL)), vdupq_n_s64(0x406FE00000000000uLL))));
  v7 = (v5.n128_f32[0] * 255.0);
  v5.n128_u16[3] = 255;
  v5.n128_u64[1] = 0xFF00FF00FF00FFLL;
  v5.n128_u16[0] = v6.u16[2];
  v5.n128_u16[1] = v6.i16[0];
  v5.n128_u16[2] = v7;
  result = vmovn_s16(v5);
  *a4 = result.i32[0];
  return result;
}

- (ARQATracerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end