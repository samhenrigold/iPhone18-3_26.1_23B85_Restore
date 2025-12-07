@interface ARRecordingTechniquePublic
- (ARRecordingTechniqueDelegate)recordingTechniqueDelegate;
- (ARRecordingTechniquePublic)initWithFileURL:(id)l recordingSensorDataTypes:(unint64_t)types startImmediately:(BOOL)immediately recordCollaborationData:(BOOL)data;
- (id)createFileMetadata;
- (id)processData:(id)data;
- (void)_fail:(id)_fail;
- (void)_finish:(id)_finish;
- (void)_finishRecording;
- (void)_startRecording;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didFinishRecording;
- (void)finishRecording;
- (void)isReadyToRecord;
- (void)processTimeSensitiveNSCoderObject:(id)object withTimestamp:(double)timestamp metadataID:(id)d;
- (void)recordAddedAnchor:(id)anchor;
- (void)recordCollaborationData:(id)data localSession:(BOOL)session;
- (void)recordCustomData:(id)data forTimestamp:(double)timestamp;
- (void)recordRemovedAnchor:(id)anchor;
- (void)removeTemporaryVideoFile;
- (void)setParentImageSensorSettings:(id)settings;
- (void)setupCustomTrack;
- (void)setupSensorTracks;
- (void)startRecording;
- (void)writeAudioData:(id)data;
- (void)writeImageData:(id)data;
- (void)writePearlDepthData:(id)data withTimestamp:(double)timestamp fromCaptureDevice:(id)device;
- (void)writeResultData:(id)data withTimestamp:(double)timestamp;
- (void)writeSensorData:(id)data;
- (void)writeTimeOfFlightData:(id)data;
@end

@implementation ARRecordingTechniquePublic

- (ARRecordingTechniquePublic)initWithFileURL:(id)l recordingSensorDataTypes:(unint64_t)types startImmediately:(BOOL)immediately recordCollaborationData:(BOOL)data
{
  immediatelyCopy = immediately;
  v72 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v64.receiver = self;
  v64.super_class = ARRecordingTechniquePublic;
  v11 = [(ARTechnique *)&v64 init];
  v12 = v11;
  if (v11)
  {
    v11->_recordCollaborationData = data;
    v11->_recordPearlDepthData = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.recordingTechnique.recordPearlDepthData"];
    v13 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.record.filepath"];
    v14 = v13;
    if (v13)
    {
      if ([v13 isAbsolutePath])
      {
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      }

      else
      {
        v17 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
        lastObject = [v17 lastObject];

        v19 = MEMORY[0x1E695DFF8];
        v20 = [lastObject stringByAppendingPathComponent:v14];
        v15 = [v19 fileURLWithPath:v20];

        lCopy = lastObject;
      }

      if (_ARLogSession_onceToken_0 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v21 = _ARLogSession_logObj_0;
      if (os_log_type_enabled(_ARLogSession_logObj_0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        absoluteString = [v15 absoluteString];
        *buf = 138543874;
        v67 = v24;
        v68 = 2048;
        v69 = v12;
        v70 = 2112;
        v71 = absoluteString;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting recording URL to %@", buf, 0x20u);
      }

      v16 = 0;
    }

    else if (lCopy)
    {
      v16 = 0;
      v15 = lCopy;
    }

    else
    {
      v60 = MEMORY[0x1E695DFF8];
      v61 = NSTemporaryDirectory();
      v62 = [v61 stringByAppendingPathComponent:@"movie.mov"];
      v15 = [v60 fileURLWithPath:v62];

      v16 = 1;
    }

    isFileURL = [v15 isFileURL];
    if (isFileURL)
    {
      uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
      v65 = *MEMORY[0x1E695DBF0];
      v27 = v65;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      [uRLByDeletingLastPathComponent resourceValuesForKeys:v28 error:0];
      v29 = v15;
      v30 = v14;
      v31 = v16;
      typesCopy = types;
      v34 = v33 = immediatelyCopy;
      v35 = [v34 objectForKeyedSubscript:v27];
      bOOLValue = [v35 BOOLValue];

      v37 = v33;
      v38 = typesCopy;
      v39 = v31;
      v14 = v30;
      v15 = v29;

      if (bOOLValue)
      {
        objc_storeStrong(&v12->_outputFileURL, v29);
        v12->_sensorDataTypes = v38;
        v40 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.arrecordingpublictechnique.mainqueue", 25, 0);
        recordingQueue = v12->_recordingQueue;
        v12->_recordingQueue = v40;

        v42 = dispatch_queue_attr_make_initially_inactive(0);
        v43 = dispatch_queue_create("com.apple.arkit.arrecordingpublictechnique.runningqueue", v42);
        timeSensitiveQueue = v12->_timeSensitiveQueue;
        v12->_timeSensitiveQueue = v43;

        dispatch_set_target_queue(v12->_timeSensitiveQueue, v12->_recordingQueue);
        v12->_state = 0;
        v12->_sessionSourceTime = -1.0;
        v45 = objc_opt_new();
        lastRecordedTimestamps = v12->_lastRecordedTimestamps;
        v12->_lastRecordedTimestamps = v45;

        v47 = objc_opt_new();
        knownVIOSessionIDs = v12->_knownVIOSessionIDs;
        v12->_knownVIOSessionIDs = v47;

        v12->_shouldSaveVideoInPhotosLibrary = v39;
        if (objc_opt_respondsToSelector())
        {
          [(ARRecordingTechniquePublic *)v12 performSelector:sel__subscribeToBackgroundNotifications];
        }

        if (v37)
        {
          [(ARRecordingTechniquePublic *)v12 startRecording];
        }

        goto LABEL_21;
      }
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v50 = ARShouldUseLogTypeError_internalOSVersion_15;
    v51 = _ARLogTechnique_11(isFileURL);
    v52 = v51;
    if (v50 == 1)
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *buf = 138543874;
        v67 = v54;
        v68 = 2048;
        v69 = v12;
        v70 = 2112;
        v71 = v15;
        v55 = "%{public}@ <%p>: Recording fileURL is not writable: %@";
        v56 = v52;
        v57 = OS_LOG_TYPE_ERROR;
LABEL_29:
        _os_log_impl(&dword_1C241C000, v56, v57, v55, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v58 = objc_opt_class();
      v54 = NSStringFromClass(v58);
      *buf = 138543874;
      v67 = v54;
      v68 = 2048;
      v69 = v12;
      v70 = 2112;
      v71 = v15;
      v55 = "Error: %{public}@ <%p>: Recording fileURL is not writable: %@";
      v56 = v52;
      v57 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    v49 = 0;
    goto LABEL_31;
  }

  v15 = lCopy;
LABEL_21:
  v49 = v12;
LABEL_31:

  return v49;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pearlFixedPointUnsigned13_3PixelBuffer);
  [(ARRecordingTechniquePublic *)self setState:4];
  timeSensitiveQueue = self->_timeSensitiveQueue;
  if (timeSensitiveQueue)
  {
    dispatch_activate(timeSensitiveQueue);
  }

  v4.receiver = self;
  v4.super_class = ARRecordingTechniquePublic;
  [(ARRecordingTechniquePublic *)&v4 dealloc];
}

- (void)setParentImageSensorSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  objc_storeStrong(&self->_parentImageSensorSettings, settings);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = settingsCopy;
  settings = [settingsCopy settings];
  v7 = [settings countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(settings);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        videoFormat = [v11 videoFormat];
        captureDevicePosition = [videoFormat captureDevicePosition];

        if (captureDevicePosition == 2)
        {
          metaData = [v11 metaData];

          sensorDataTypes = self->_sensorDataTypes;
          if (metaData)
          {
            sensorDataTypes |= 0x10uLL;
            self->_sensorDataTypes = sensorDataTypes;
          }

          v16 = sensorDataTypes | 0x21;
        }

        else
        {
          v16 = self->_sensorDataTypes | 1;
        }

        self->_sensorDataTypes = v16;
      }

      v8 = [settings countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)startRecording
{
  objc_initWeak(&location, self);
  recordingQueue = self->_recordingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ARRecordingTechniquePublic_startRecording__block_invoke;
  v4[3] = &unk_1E817BD88;
  objc_copyWeak(&v5, &location);
  dispatch_async(recordingQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__ARRecordingTechniquePublic_startRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startRecording];
}

- (void)recordCustomData:(id)data forTimestamp:(double)timestamp
{
  dataCopy = data;
  if (self->_expectCustomData)
  {
    objc_initWeak(&location, self);
    timeSensitiveQueue = self->_timeSensitiveQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__ARRecordingTechniquePublic_recordCustomData_forTimestamp___block_invoke;
    v8[3] = &unk_1E817C740;
    objc_copyWeak(v10, &location);
    v9 = dataCopy;
    v10[1] = *&timestamp;
    dispatch_async(timeSensitiveQueue, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __60__ARRecordingTechniquePublic_recordCustomData_forTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained processTimeSensitiveNSCoderObject:*(a1 + 32) withTimestamp:@"mdta/com.apple.arkit.customdata" metadataID:*(a1 + 48)];
}

- (void)finishRecording
{
  objc_initWeak(&location, self);
  timeSensitiveQueue = self->_timeSensitiveQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__ARRecordingTechniquePublic_finishRecording__block_invoke;
  v4[3] = &unk_1E817BD88;
  objc_copyWeak(&v5, &location);
  dispatch_async(timeSensitiveQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__ARRecordingTechniquePublic_finishRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishRecording];
}

- (void)removeTemporaryVideoFile
{
  v28 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([(NSURL *)self->_outputFileURL checkResourceIsReachableAndReturnError:0])
  {
    outputFileURL = self->_outputFileURL;
    v19 = 0;
    [defaultManager removeItemAtURL:outputFileURL error:&v19];
    v5 = v19;
    if (v5)
    {
      v6 = v5;
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v7 = ARShouldUseLogTypeError_internalOSVersion_15;
      v8 = _ARLogTechnique_11(v5);
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = self->_outputFileURL;
          localizedDescription = [v6 localizedDescription];
          *buf = 138544130;
          v21 = v11;
          v22 = 2048;
          selfCopy2 = self;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = localizedDescription;
          v14 = "%{public}@ <%p>: Could not remove temporary file at %@: %@";
          v15 = v9;
          v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
          _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v11 = NSStringFromClass(v17);
        v18 = self->_outputFileURL;
        localizedDescription = [v6 localizedDescription];
        *buf = 138544130;
        v21 = v11;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = localizedDescription;
        v14 = "Error: %{public}@ <%p>: Could not remove temporary file at %@: %@";
        v15 = v9;
        v16 = OS_LOG_TYPE_INFO;
        goto LABEL_10;
      }
    }
  }
}

- (void)_fail:(id)_fail
{
  v21 = *MEMORY[0x1E69E9840];
  _failCopy = _fail;
  v5 = _ARLogTechnique_11(_failCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [_failCopy description];
    v15 = 138543874;
    v16 = v7;
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Recording failed: %@", &v15, 0x20u);
  }

  [(ARRecordingTechniquePublic *)self setState:4];
  delegate = [(ARTechnique *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didFailWithError:_failCopy];
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 technique:self didFinishWithResult:_failCopy];
  }

  dispatch_activate(self->_timeSensitiveQueue);
}

- (void)_finish:(id)_finish
{
  v17 = *MEMORY[0x1E69E9840];
  _finishCopy = _finish;
  objc_storeStrong(&self->_finishedError, _finish);
  if (_finishCopy)
  {
    [(ARRecordingTechniquePublic *)self _fail:_finishCopy];
  }

  else
  {
    v7 = _ARLogTechnique_11(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Recording successful", &v13, 0x16u);
    }

    [(ARRecordingTechniquePublic *)self setState:4];
    recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
      [recordingTechniqueDelegate2 technique:self didFinishWithResult:0];
    }
  }
}

- (id)processData:(id)data
{
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    v5 = dataCopy;
    v6 = v5;
    if ([v5 conformsToProtocol:&unk_1F426CEB8])
    {
      v6 = [v5 copy];
    }

    objc_initWeak(&location, self);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      originalImage = [v7 originalImage];
      v9 = [originalImage copy];

      recordingQueue = self->_recordingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__ARRecordingTechniquePublic_processData___block_invoke;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v33, &location);
      v32 = v9;
      v11 = v9;
      dispatch_async(recordingQueue, block);

      objc_destroyWeak(&v33);
LABEL_12:
      v19 = v5;
      objc_destroyWeak(&location);

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timeSensitiveQueue = self->_timeSensitiveQueue;
      v13 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_2;
      v28[3] = &unk_1E817BDB0;
      objc_copyWeak(&v30, &location);
      v29 = v6;
      dispatch_async(timeSensitiveQueue, v28);
      v14 = v29;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
        v17 = self->_recordingQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_3;
        v25[3] = &unk_1E817BDB0;
        objc_copyWeak(&v27, &location);
        v26 = v16;
        v18 = v16;
        dispatch_async(v17, v25);

        v15 = &v27;
        goto LABEL_11;
      }

      if (![v6 conformsToProtocol:&unk_1F426CE58])
      {
        goto LABEL_12;
      }

      v21 = self->_recordingQueue;
      v13 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __42__ARRecordingTechniquePublic_processData___block_invoke_4;
      v22[3] = &unk_1E817BDB0;
      objc_copyWeak(&v24, &location);
      v23 = v6;
      dispatch_async(v21, v22);
      v14 = v23;
    }

    v15 = (v13 + 5);
LABEL_11:
    objc_destroyWeak(v15);
    goto LABEL_12;
  }

LABEL_13:

  return dataCopy;
}

void __42__ARRecordingTechniquePublic_processData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeImageData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeAudioData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeTimeOfFlightData:*(a1 + 32)];
}

void __42__ARRecordingTechniquePublic_processData___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeSensorData:*(a1 + 32)];
}

- (void)recordCollaborationData:(id)data localSession:(BOOL)session
{
  sessionCopy = session;
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (ARInternalOSBuild(dataCopy, v7) && self->_recordCollaborationData)
  {
    allowedToWrite = [(ARRecordingTechniquePublic *)self allowedToWrite];
    if ((allowedToWrite & 1) == 0)
    {
      v9 = _ARLogTechnique_11(allowedToWrite);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_27:

        goto LABEL_28;
      }

      v16 = objc_opt_class();
      v12 = NSStringFromClass(v16);
      *buf = 138543618;
      v34 = v12;
      v35 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping collaboration data which arrives while recording isn't running.", buf, 0x16u);
LABEL_26:

      goto LABEL_27;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llX", objc_msgSend(dataCopy, "vioSessionID")];
    v10 = [v9 length];
    if (v10 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 substringToIndex:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(dataCopy, "vioSessionID")}];
    v14 = [(NSMutableSet *)self->_knownVIOSessionIDs containsObject:v13];
    if (sessionCopy)
    {
      if ((v14 & 1) == 0)
      {
        [(NSMutableSet *)self->_knownVIOSessionIDs addObject:v13];
        v15 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:7 timestamp:CACurrentMediaTime()];
        [v15 setPeerDisplayName:v12];
        [v15 setSessionID:v13];
        [(MOVWriterInterface *)self->_writer processCVAUserEvent:v15];
      }

      goto LABEL_25;
    }

    if ((v14 & 1) == 0)
    {
      [(NSMutableSet *)self->_knownVIOSessionIDs addObject:v13];
      v17 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:5 timestamp:CACurrentMediaTime()];
      [v17 setPeerDisplayName:v12];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v17];
      v18 = [objc_alloc(MEMORY[0x1E698BEB8]) initWithEventType:11 timestamp:CACurrentMediaTime()];
      [v18 setPeerDisplayName:v12];
      [v18 setSessionID:v13];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v18];
    }

    v32 = 0;
    v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v32];
    v20 = v32;
    v21 = v20;
    if (v20)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v22 = ARShouldUseLogTypeError_internalOSVersion_15;
      v23 = _ARLogTechnique_11(v20);
      v24 = v23;
      if (v22 == 1)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138543874;
          v34 = v26;
          v35 = 2048;
          selfCopy3 = self;
          v37 = 2112;
          v38 = v21;
          v27 = "%{public}@ <%p>: Error encoding collaboration data during recording: %@";
          v28 = v24;
          v29 = OS_LOG_TYPE_ERROR;
LABEL_23:
          _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v26 = NSStringFromClass(v31);
        *buf = 138543874;
        v34 = v26;
        v35 = 2048;
        selfCopy3 = self;
        v37 = 2112;
        v38 = v21;
        v27 = "Error: %{public}@ <%p>: Error encoding collaboration data during recording: %@";
        v28 = v24;
        v29 = OS_LOG_TYPE_INFO;
        goto LABEL_23;
      }
    }

    else
    {
      v24 = objc_opt_new();
      vioData = [dataCopy vioData];
      [v24 setData:vioData];

      [v24 setAdditionalData:v19];
      [v24 setTimestamp:CACurrentMediaTime()];
      [v24 setIsSent:0];
      -[NSObject setType:](v24, "setType:", [dataCopy vioDataType]);
      [v24 setSourcePeerDisplayName:v12];
      [(MOVWriterInterface *)self->_writer processCMData:v24];
    }

LABEL_25:
    goto LABEL_26;
  }

LABEL_28:
}

- (void)recordAddedAnchor:(id)anchor
{
  v28 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  if (ARInternalOSBuild(anchorCopy, v5))
  {
    allowedToWrite = [(ARRecordingTechniquePublic *)self allowedToWrite];
    if ((allowedToWrite & 1) == 0)
    {
      v9 = _ARLogTechnique_11(allowedToWrite);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v18 = objc_opt_class();
      v7 = NSStringFromClass(v18);
      *buf = 138543618;
      v23 = v7;
      v24 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping added anchor data which arrives while recording isn't running.", buf, 0x16u);
LABEL_16:

      goto LABEL_17;
    }

    v21 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:anchorCopy requiringSecureCoding:1 error:&v21];
    v8 = v21;
    v9 = v8;
    if (v8)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v10 = ARShouldUseLogTypeError_internalOSVersion_15;
      v11 = _ARLogTechnique_11(v8);
      v12 = v11;
      if (v10 == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138543874;
          v23 = v14;
          v24 = 2048;
          selfCopy3 = self;
          v26 = 2112;
          v27 = v9;
          v15 = "%{public}@ <%p>: Error encoding anchor data during recording: %@";
          v16 = v12;
          v17 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v14 = NSStringFromClass(v20);
        *buf = 138543874;
        v23 = v14;
        v24 = 2048;
        selfCopy3 = self;
        v26 = 2112;
        v27 = v9;
        v15 = "Error: %{public}@ <%p>: Error encoding anchor data during recording: %@";
        v16 = v12;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else
    {
      v12 = objc_opt_new();
      [v12 setAnchorData:v7];
      [v12 setEventType:4];
      identifier = [anchorCopy identifier];
      [v12 setUuid:identifier];

      [v12 setTimestamp:CACurrentMediaTime()];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v12];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)recordRemovedAnchor:(id)anchor
{
  v28 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  if (ARInternalOSBuild(anchorCopy, v5))
  {
    allowedToWrite = [(ARRecordingTechniquePublic *)self allowedToWrite];
    if ((allowedToWrite & 1) == 0)
    {
      v9 = _ARLogTechnique_11(allowedToWrite);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v18 = objc_opt_class();
      v7 = NSStringFromClass(v18);
      *buf = 138543618;
      v23 = v7;
      v24 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping removed anchor data which arrives while recording isn't running.", buf, 0x16u);
LABEL_16:

      goto LABEL_17;
    }

    v21 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:anchorCopy requiringSecureCoding:1 error:&v21];
    v8 = v21;
    v9 = v8;
    if (v8)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v10 = ARShouldUseLogTypeError_internalOSVersion_15;
      v11 = _ARLogTechnique_11(v8);
      v12 = v11;
      if (v10 == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138543874;
          v23 = v14;
          v24 = 2048;
          selfCopy3 = self;
          v26 = 2112;
          v27 = v9;
          v15 = "%{public}@ <%p>: Error encoding anchor data during recording: %@";
          v16 = v12;
          v17 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v14 = NSStringFromClass(v20);
        *buf = 138543874;
        v23 = v14;
        v24 = 2048;
        selfCopy3 = self;
        v26 = 2112;
        v27 = v9;
        v15 = "Error: %{public}@ <%p>: Error encoding anchor data during recording: %@";
        v16 = v12;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }
    }

    else
    {
      v12 = objc_opt_new();
      [v12 setAnchorData:v7];
      [v12 setEventType:13];
      identifier = [anchorCopy identifier];
      [v12 setUuid:identifier];

      [v12 setTimestamp:CACurrentMediaTime()];
      [(MOVWriterInterface *)self->_writer processCVAUserEvent:v12];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)_startRecording
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(ARRecordingTechniquePublic *)self state])
  {
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Attempted to start recording more than once";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v4 = ARErrorWithCodeAndUserInfo(1001, v3);
    [(ARRecordingTechniquePublic *)self _fail:v4];
  }

  else
  {
    v5 = _ARLogTechnique_11(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = self;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting recording", &buf, 0x16u);
    }

    [(ARRecordingTechniquePublic *)self removeTemporaryVideoFile];
    v8 = objc_alloc(MEMORY[0x1E698BEC8]);
    outputFileURL = self->_outputFileURL;
    createFileMetadata = [(ARRecordingTechniquePublic *)self createFileMetadata];
    v11 = [v8 initWithFileURL:outputFileURL expectedFrameRate:createFileMetadata fileSummary:self->_recordingQueue callbackQueue:60.0];
    writer = self->_writer;
    self->_writer = v11;

    [(MOVWriterInterface *)self->_writer setInterface_delegate:self];
    makeDeviceString = [MEMORY[0x1E698BEC8] makeDeviceString];
    [(MOVWriterInterface *)self->_writer setDeviceString:makeDeviceString];

    CMTimeMake(&v15, 5, 1);
    v14 = self->_writer;
    buf = v15;
    [(MOVWriterInterface *)v14 setMovieFragmentInterval:&buf];
    [(ARRecordingTechniquePublic *)self setupSensorTracks];
    [(ARRecordingTechniquePublic *)self setupCustomTrack];
    [(ARRecordingTechniquePublic *)self setState:1];
  }
}

- (void)setupSensorTracks
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
  currentOrientation = [v3 currentOrientation];

  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  ARVideoTransformForDeviceOrientation(currentOrientation, &v66);
  writer = self->_writer;
  *asbd = v66;
  *&asbd[16] = v67;
  *&asbd[32] = v68;
  [(MOVWriterInterface *)writer setVideoTransform:asbd];
  parentImageSensorSettings = self->_parentImageSensorSettings;
  if (parentImageSensorSettings)
  {
    selfCopy = self;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    settings = [(ARParentImageSensorSettings *)parentImageSensorSettings settings];
    v8 = [settings countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v63;
      v12 = *MEMORY[0x1E6986930];
      framesPerSecond = -1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v63 != v11)
          {
            objc_enumerationMutation(settings);
          }

          v14 = *(*(&v62 + 1) + 8 * i);
          videoFormat = [v14 videoFormat];
          v16 = videoFormat;
          if (videoFormat)
          {
            deviceFormat = [videoFormat deviceFormat];
            isVisionDataDeliverySupported = [deviceFormat isVisionDataDeliverySupported];

            v10 |= isVisionDataDeliverySupported;
            captureDeviceType = [v16 captureDeviceType];
            v20 = [captureDeviceType isEqualToString:v12];

            if (v20)
            {
              framesPerSecond = [v16 framesPerSecond];
            }

            else if ([v14 isEnabled])
            {
              captureDeviceType2 = [v16 captureDeviceType];
              v22 = ARStreamIdentifierForDeviceTypeAndPosition(captureDeviceType2, [v16 captureDevicePosition]);

              [(MOVWriterInterface *)selfCopy->_writer registerStreamID:v22 withConfigObject:0];
              [(MOVWriterInterface *)selfCopy->_writer registerMetadataID:v22];
            }
          }
        }

        v9 = [settings countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      framesPerSecond = -1;
    }

    self = selfCopy;
  }

  else
  {
    [(MOVWriterInterface *)self->_writer registerStreamID:@"mdta/com.apple.arkit.stream.arimagedata" withConfigObject:0];
    [(MOVWriterInterface *)self->_writer registerMetadataID:@"mdta/com.apple.arkit.arimagedata"];
    v10 = 0;
    framesPerSecond = -1;
  }

  if (self->_recordPearlDepthData && (self->_sensorDataTypes & 0x20) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerCVADepthIR];
  }

  if ([(ARRecordingTechniquePublic *)self expectAudioData])
  {
    v23 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E69875A0]];
    if (v23 == 3)
    {
      *asbd = 0x40E5888000000000;
      *&asbd[24] = xmmword_1C25C8B40;
      *&asbd[8] = xmmword_1C25C8B50;
      formatDescriptionOut = 0;
      CMAudioFormatDescriptionCreate(0, asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
      v24 = self->_writer;
      v25 = formatDescriptionOut;
      [MEMORY[0x1E69AD978] audioNoneEncoderConfig];
      v27 = v26 = self;
      [(MOVWriterInterface *)v24 addTrackForStreamWithIdentifier:@"mdta/com.apple.arkit.stream.araudio" formatDescription:v25 recordingConfiguration:v27];

      self = v26;
      CFRelease(formatDescriptionOut);
    }

    else
    {
      v28 = _ARLogTechnique_11(v23);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *asbd = 138543618;
        *&asbd[4] = v30;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not add audio track since user has not granted microphone access to the app.", asbd, 0x16u);
      }
    }
  }

  [(MOVWriterInterface *)self->_writer registerAccelerometer];
  [(MOVWriterInterface *)self->_writer registerGyro];
  if ((self->_sensorDataTypes & 0x400) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerCompass];
  }

  [(MOVWriterInterface *)self->_writer registerDeviceMotion];
  if ((self->_sensorDataTypes & 0x40) != 0)
  {
    [(MOVWriterInterface *)self->_writer registerLocation];
  }

  [(MOVWriterInterface *)self->_writer registerCVACameraCalibrationData];
  registerCVAFeatureBuffer = +[ARWorldTrackingConfiguration backdropCameraOverride];
  if ((registerCVAFeatureBuffer == 0) | v10 & 1)
  {
    registerCVAFeatureBuffer = [(MOVWriterInterface *)self->_writer registerCVAFeatureBuffer];
  }

  v33 = ARDeviceSupportsJasper(registerCVAFeatureBuffer, v32);
  if (v33)
  {
    [(MOVWriterInterface *)self->_writer setDepthTOFTrackName:*MEMORY[0x1E698BF28]];
    registerCVADepthTOF = [(MOVWriterInterface *)self->_writer registerCVADepthTOF];
    if (framesPerSecond >= 1)
    {
      v36 = self->_writer;
      v69 = *MEMORY[0x1E698BF20];
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v70 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v39 = *MEMORY[0x1E698BEF8];
      v60 = 0;
      LOBYTE(v36) = [(MOVWriterInterface *)v36 setTrackMetadata:v38 forMetadataStream:v39 error:&v60];
      v40 = v60;

      if (v36)
      {
        goto LABEL_54;
      }

      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v49 = ARShouldUseLogTypeError_internalOSVersion_15;
      v50 = _ARLogTechnique_11(v41);
      v45 = v50;
      if (v49 == 1)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *asbd = 138543874;
          *&asbd[4] = v52;
          *&asbd[12] = 2048;
          *&asbd[14] = self;
          *&asbd[22] = 2112;
          *&asbd[24] = v40;
          v53 = "%{public}@ <%p>: Unable to set jasper FPS metadata: %@";
          v54 = v45;
          v55 = OS_LOG_TYPE_ERROR;
LABEL_52:
          _os_log_impl(&dword_1C241C000, v54, v55, v53, asbd, 0x20u);
        }
      }

      else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v52 = NSStringFromClass(v57);
        *asbd = 138543874;
        *&asbd[4] = v52;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        *&asbd[22] = 2112;
        *&asbd[24] = v40;
        v53 = "Error: %{public}@ <%p>: Unable to set jasper FPS metadata: %@";
        v54 = v45;
        v55 = OS_LOG_TYPE_INFO;
        goto LABEL_52;
      }

LABEL_53:

      goto LABEL_54;
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v42 = ARShouldUseLogTypeError_internalOSVersion_15;
    v43 = _ARLogTechnique_11(registerCVADepthTOF);
    v40 = v43;
    if (v42 == 1)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *asbd = 138543618;
        *&asbd[4] = v45;
        *&asbd[12] = 2048;
        *&asbd[14] = self;
        v46 = "%{public}@ <%p>: Unable to get jasper FPS metadata";
        v47 = v40;
        v48 = OS_LOG_TYPE_ERROR;
LABEL_49:
        _os_log_impl(&dword_1C241C000, v47, v48, v46, asbd, 0x16u);
        goto LABEL_53;
      }
    }

    else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v56 = objc_opt_class();
      v45 = NSStringFromClass(v56);
      *asbd = 138543618;
      *&asbd[4] = v45;
      *&asbd[12] = 2048;
      *&asbd[14] = self;
      v46 = "Error: %{public}@ <%p>: Unable to get jasper FPS metadata";
      v47 = v40;
      v48 = OS_LOG_TYPE_INFO;
      goto LABEL_49;
    }

LABEL_54:
  }

  if (ARInternalOSBuild(v33, v34))
  {
    [(MOVWriterInterface *)self->_writer registerCVAUserEvent];
    if (self->_recordCollaborationData)
    {
      [(MOVWriterInterface *)self->_writer registerCMData];
    }
  }
}

- (void)setupCustomTrack
{
  if (self->_expectCustomData)
  {
    [(MOVWriterInterface *)self->_writer registerMetadataID:@"mdta/com.apple.arkit.customdata"];
  }
}

- (id)createFileMetadata
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sensorDataTypes];
  [v3 setObject:v4 forKeyedSubscript:@"mdta/com.apple.arkit.arsensordatatypeinformation"];

  v6 = AROSVersionString(v5);
  [v3 setObject:v6 forKeyedSubscript:@"mdta/com.apple.arkit.osversion"];

  v7 = ARVersionStringForIdentifier(@"com.apple.ARKit");
  [v3 setObject:v7 forKeyedSubscript:@"mdta/com.apple.arkit.arkitversion"];

  [v3 setObject:self->_customUserData forKeyedSubscript:@"mdta/com.apple.arkit.customuserdata"];

  return v3;
}

- (void)writeTimeOfFlightData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if (![(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      Class = object_getClass(dataCopy);
      v12 = NSStringFromClass(Class);
      objc_msgSend_timestamp(dataCopy);
      *buf = 0;
      v6 = v12;
      [v6 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v6, "length"), 0}];

      *buf = 0;
      [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
      v13 = kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v14 = ARShouldUseLogTypeError_internalOSVersion_15;
      v15 = _ARLogTechnique_11(v13);
      v9 = v15;
      if (v14 == 1)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v17;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v6;
        v19 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v20 = v9;
        v21 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v22 = objc_opt_class();
        v17 = NSStringFromClass(v22);
        v18 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v17;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v6;
        v19 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v20 = v9;
        v21 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x2Au);

      goto LABEL_22;
    }

    v6 = dataCopy;
    v7 = objc_alloc(MEMORY[0x1E698BEA0]);
    pointCloudData = [v6 pointCloudData];
    objc_msgSend_timestamp(v6);
    v9 = [v7 initWithAVPointCloudData:pointCloudData timestamp:?];

    if (v9)
    {
      [(MOVWriterInterface *)self->_writer processCVADepthTOF:v9];
LABEL_22:

      goto LABEL_23;
    }

    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic writeTimeOfFlightData:];
    }

    v23 = ARShouldUseLogTypeError_internalOSVersion_15;
    v24 = _ARLogTechnique_11(v10);
    v25 = v24;
    if (v23 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138543618;
        *&buf[4] = v27;
        v33 = 2048;
        selfCopy4 = self;
        v28 = "%{public}@ <%p>: Failed to make CVADepthTOF for pointCloudData";
        v29 = v25;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v27 = NSStringFromClass(v31);
      *buf = 138543618;
      *&buf[4] = v27;
      v33 = 2048;
      selfCopy4 = self;
      v28 = "Error: %{public}@ <%p>: Failed to make CVADepthTOF for pointCloudData";
      v29 = v25;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)writeSensorData:(id)data
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if ([(ARRecordingTechniquePublic *)self allowedToWrite])
    {
      v6 = objc_opt_class();
      v7 = ARMetadataIdentifierForARSensorDataClass(v6, 1);
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [dataCopy appendToWriter:self->_writer];
LABEL_24:

        goto LABEL_25;
      }

      Class = object_getClass(dataCopy);
      v21 = NSStringFromClass(Class);
      objc_msgSend_timestamp(dataCopy);
      *buf = 0;
      v13 = v21;
      [v13 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:[v13 length], 0];

      *buf = 0;
      [@"BadClass" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"BadClass", "length"), 0}];
      v22 = kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v23 = ARShouldUseLogTypeError_internalOSVersion_15;
      v24 = _ARLogTechnique_11(v22);
      v15 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = NSStringFromSelector(a2);
          *buf = 138544130;
          *&buf[4] = v26;
          v34 = 2048;
          selfCopy4 = self;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v13;
          v28 = "%{public}@ <%p>: Tried to call %@ with %@ which we don't have support for";
          v29 = v15;
          v30 = OS_LOG_TYPE_ERROR;
LABEL_21:
          _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v26 = NSStringFromClass(v32);
        v27 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v26;
        v34 = 2048;
        selfCopy4 = self;
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v13;
        v28 = "Error: %{public}@ <%p>: Tried to call %@ with %@ which we don't have support for";
        v29 = v15;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }

    v8 = object_getClass(dataCopy);
    v9 = NSStringFromClass(v8);
    objc_msgSend_timestamp(dataCopy);
    *buf = 0;
    v7 = v9;
    [v7 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:[v7 length], 0];

    *buf = 0;
    [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
    v10 = kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_15;
    v12 = _ARLogTechnique_11(v10);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138544130;
        *&buf[4] = v15;
        v34 = 2048;
        selfCopy4 = self;
        v36 = 2112;
        v37 = v16;
        v38 = 2112;
        v39 = v7;
        v17 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v18 = v13;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v18, v19, v17, buf, 0x2Au);

        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v15 = NSStringFromClass(v31);
      v16 = NSStringFromSelector(a2);
      *buf = 138544130;
      *&buf[4] = v15;
      v34 = 2048;
      selfCopy4 = self;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v7;
      v17 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v18 = v13;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (void)writeImageData:(id)data
{
  v58 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    allowedToWrite = [(ARRecordingTechniquePublic *)self allowedToWrite];
    objc_msgSend_timestamp(dataCopy);
    if (allowedToWrite)
    {
      kdebug_trace();
      if ([(ARRecordingTechniquePublic *)self state]== 1 && self->_writerReady)
      {
        objc_msgSend_timestamp(dataCopy);
        self->_sessionSourceTime = v7;
        [(ARRecordingTechniquePublic *)self setState:2];
        dispatch_activate(self->_timeSensitiveQueue);
        v9 = _ARLogTechnique_11(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543618;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Writer is now running", buf, 0x16u);
        }
      }

      cameraType = [dataCopy cameraType];
      v13 = ARStreamIdentifierForDeviceTypeAndPosition(cameraType, [dataCopy cameraPosition]);

      v14 = v13;
      v15 = v14;
      if (self->_parentImageSensorSettings)
      {
        v16 = v14;
      }

      else
      {
        v16 = @"mdta/com.apple.arkit.stream.arimagedata";

        v30 = @"mdta/com.apple.arkit.arimagedata";
        v15 = v30;
      }

      [(MOVWriterInterface *)self->_writer processNSCoderObject:dataCopy metadataID:v15];
      if ([dataCopy visionData])
      {
        v31 = objc_alloc(MEMORY[0x1E698BEA8]);
        visionData = [dataCopy visionData];
        objc_msgSend_timestamp(dataCopy);
        v33 = [v31 initWithPixelBufferRef:visionData timestamp:v16 streamID:?];
        [(MOVWriterInterface *)self->_writer processCVAFeatureBuffer:v33];
      }

      v54 = 0uLL;
      v55 = 0;
      v34 = MEMORY[0x1E698BEC8];
      objc_msgSend_timestamp(dataCopy);
      objc_msgSend_cmTimeFromTimestamp_(v34);
      v57 = 0u;
      memset(buf, 0, sizeof(buf));
      [dataCopy cameraIntrinsics];
      *&buf[8] = v35;
      *&buf[24] = v36;
      *buf = v37;
      *&buf[16] = v38;
      DWORD2(v57) = v39;
      *&v57 = v40;
      writer = self->_writer;
      pixelBuffer = [dataCopy pixelBuffer];
      objc_msgSend_exposureDuration(dataCopy);
      v52 = v54;
      v53 = v55;
      [(MOVWriterInterface *)writer processPixelBuffer:pixelBuffer withTimeStamp:&v52 intrinsics:buf exposureTime:v16 streamID:?];
      if (self->_recordPearlDepthData)
      {
        depthData = [dataCopy depthData];

        if (depthData)
        {
          depthData2 = [dataCopy depthData];
          [dataCopy depthDataTimestamp];
          v46 = v45;
          captureDevice = [dataCopy captureDevice];
          [(ARRecordingTechniquePublic *)self writePearlDepthData:depthData2 withTimestamp:captureDevice fromCaptureDevice:v46];
        }
      }

      calibrationData = [dataCopy calibrationData];

      if (calibrationData)
      {
        v49 = objc_alloc(MEMORY[0x1E698BE90]);
        calibrationData2 = [dataCopy calibrationData];
        objc_msgSend_timestamp(dataCopy);
        v51 = [v49 initWithAVCameraCalibrationData:calibrationData2 timestamp:v16 streamID:?];

        [(MOVWriterInterface *)self->_writer processCVACameraCalibrationData:v51];
      }

      objc_msgSend_timestamp(dataCopy);
      kdebug_trace();

      goto LABEL_27;
    }

    *buf = 0;
    [@"ARImageData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARImageData", "length"), 0}];
    *buf = 0;
    [@"NotStart" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotStart", "length"), 0}];
    v17 = kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v18 = ARShouldUseLogTypeError_internalOSVersion_15;
    v19 = _ARLogTechnique_11(v17);
    v16 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        Class = object_getClass(dataCopy);
        v24 = NSStringFromClass(Class);
        *buf = 138544130;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v22;
        LOWORD(v57) = 2112;
        *(&v57 + 2) = v24;
        v25 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v26 = v16;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v21 = NSStringFromClass(v28);
      v22 = NSStringFromSelector(a2);
      v29 = object_getClass(dataCopy);
      v24 = NSStringFromClass(v29);
      *buf = 138544130;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v22;
      LOWORD(v57) = 2112;
      *(&v57 + 2) = v24;
      v25 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v26 = v16;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

LABEL_27:
  }
}

- (void)writePearlDepthData:(id)data withTimestamp:(double)timestamp fromCaptureDevice:(id)device
{
  v51[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dispatch_assert_queue_V2(self->_recordingQueue);
  depthDataMap = [dataCopy depthDataMap];
  if (!depthDataMap)
  {
    v15 = _ARLogTechnique_11(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      v44 = 138543618;
      v45 = v19;
      v46 = 2048;
      selfCopy7 = self;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Depth data has NULL depthDataMap, not writing Pearl frame", &v44, 0x16u);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v9 = depthDataMap;
  pearlFixedPointUnsigned13_3PixelBuffer = self->_pearlFixedPointUnsigned13_3PixelBuffer;
  if (!pearlFixedPointUnsigned13_3PixelBuffer)
  {
    v24 = *MEMORY[0x1E695E480];
    Width = CVPixelBufferGetWidth(depthDataMap);
    Height = CVPixelBufferGetHeight(v9);
    v50 = *MEMORY[0x1E69660D8];
    v51[0] = MEMORY[0x1E695E0F8];
    v27 = CVPixelBufferCreate(v24, Width, Height, 0x31332E33u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1], &self->_pearlFixedPointUnsigned13_3PixelBuffer);
    if (v27)
    {
      v28 = v27;
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v29 = ARShouldUseLogTypeError_internalOSVersion_15;
      v30 = _ARLogTechnique_11(v27);
      v15 = v30;
      if (v29 == 1)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v44 = 138543874;
        v45 = v32;
        v46 = 2048;
        selfCopy7 = self;
        v48 = 1024;
        v49 = v28;
        v33 = "%{public}@ <%p>: Failed to create 13_3 pixel buffer for transcoding Pearl data, CVReturn=%d";
        v34 = v15;
        v35 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v41 = objc_opt_class();
        v32 = NSStringFromClass(v41);
        v44 = 138543874;
        v45 = v32;
        v46 = 2048;
        selfCopy7 = self;
        v48 = 1024;
        v49 = v28;
        v33 = "Error: %{public}@ <%p>: Failed to create 13_3 pixel buffer for transcoding Pearl data, CVReturn=%d";
        v34 = v15;
        v35 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v34, v35, v33, &v44, 0x1Cu);

      goto LABEL_36;
    }

    pearlFixedPointUnsigned13_3PixelBuffer = self->_pearlFixedPointUnsigned13_3PixelBuffer;
  }

  if (ARConvertDepthFloatingPointBufferToFixedPointUnsigned13_3Buffer(v9, pearlFixedPointUnsigned13_3PixelBuffer))
  {
    v11 = self->_pearlFixedPointUnsigned13_3PixelBuffer;
    v12 = *MEMORY[0x1E69914F0];
    v13 = ARDepthRepresentationDictionary(dataCopy);
    CVBufferSetAttachment(v11, v12, v13, kCVAttachmentMode_ShouldPropagate);
    v14 = [objc_alloc(MEMORY[0x1E698BE98]) initWithPixelBufferRef:self->_pearlFixedPointUnsigned13_3PixelBuffer timestamp:timestamp];
    v15 = v14;
    if (!v14)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v36 = ARShouldUseLogTypeError_internalOSVersion_15;
      v37 = _ARLogTechnique_11(v14);
      v19 = v37;
      if (v36 == 1)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v21 = NSStringFromClass(v38);
          v44 = 138543618;
          v45 = v21;
          v46 = 2048;
          selfCopy7 = self;
          v22 = "%{public}@ <%p>: Failed to create CVADepthIR wrapper for writing depth data";
          goto LABEL_24;
        }

LABEL_35:

        goto LABEL_36;
      }

      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v42 = objc_opt_class();
      v21 = NSStringFromClass(v42);
      v44 = 138543618;
      v45 = v21;
      v46 = 2048;
      selfCopy7 = self;
      v22 = "Error: %{public}@ <%p>: Failed to create CVADepthIR wrapper for writing depth data";
LABEL_33:
      v39 = v19;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_34;
    }

    v16 = [(MOVWriterInterface *)self->_writer processCVADepthIR:v14];
    if ((v16 & 1) == 0)
    {
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v17 = ARShouldUseLogTypeError_internalOSVersion_15;
      v18 = _ARLogTechnique_11(v16);
      v19 = v18;
      if (v17 == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v44 = 138543618;
          v45 = v21;
          v46 = 2048;
          selfCopy7 = self;
          v22 = "%{public}@ <%p>: Failed to write a CVADepthIR instance";
LABEL_24:
          v39 = v19;
          v40 = OS_LOG_TYPE_ERROR;
LABEL_34:
          _os_log_impl(&dword_1C241C000, v39, v40, v22, &v44, 0x16u);

          goto LABEL_35;
        }

        goto LABEL_35;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v43 = objc_opt_class();
      v21 = NSStringFromClass(v43);
      v44 = 138543618;
      v45 = v21;
      v46 = 2048;
      selfCopy7 = self;
      v22 = "Error: %{public}@ <%p>: Failed to write a CVADepthIR instance";
      goto LABEL_33;
    }

LABEL_36:
  }
}

- (void)writeAudioData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  objc_msgSend_timestamp(dataCopy);
  v7 = v6;
  if ([(ARRecordingTechniquePublic *)self finished])
  {
    goto LABEL_19;
  }

  if ([(ARRecordingTechniquePublic *)self state]!= 2)
  {
    *buf = 0;
    [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
    *buf = 0;
    [@"NotRunning" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotRunning", "length"), 0}];
    v20 = kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_15;
    v22 = _ARLogTechnique_11(v20);
    v9 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v12 = NSStringFromSelector(a2);
        Class = object_getClass(dataCopy);
        v14 = NSStringFromClass(Class);
        *buf = 138544130;
        *&buf[4] = v11;
        v29 = 2048;
        selfCopy3 = self;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v14;
        v16 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v17 = v9;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_16:
        v19 = 42;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, v19);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v11 = NSStringFromClass(v25);
      v12 = NSStringFromSelector(a2);
      v26 = object_getClass(dataCopy);
      v14 = NSStringFromClass(v26);
      *buf = 138544130;
      *&buf[4] = v11;
      v29 = 2048;
      selfCopy3 = self;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v14;
      v16 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
      v17 = v9;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (self->_expectAudioData)
  {
    if (v7 >= self->_sessionSourceTime)
    {
      -[MOVWriterInterface appendAudioBuffer:forStream:](self->_writer, "appendAudioBuffer:forStream:", [dataCopy sampleBuffer], @"mdta/com.apple.arkit.stream.araudio");
      goto LABEL_19;
    }

    *buf = 0;
    [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
    *buf = 0;
    [@"OldData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"OldData", "length"), 0}];
    v8 = kdebug_trace();
    v9 = _ARLogTechnique_11(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v13 = object_getClass(dataCopy);
    v14 = NSStringFromClass(v13);
    sessionSourceTime = self->_sessionSourceTime;
    *buf = 138544642;
    *&buf[4] = v11;
    v29 = 2048;
    selfCopy3 = self;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v14;
    v35 = 2048;
    v36 = v7;
    v37 = 2048;
    v38 = sessionSourceTime;
    v16 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f < _sessionSourceTime %f, dropping";
    v17 = v9;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 62;
    goto LABEL_17;
  }

  *buf = 0;
  [@"ARAudioData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"ARAudioData", "length"), 0}];
  *buf = 0;
  [@"AudioOff" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"AudioOff", "length"), 0}];
  kdebug_trace();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ARRecordingTechniquePublic_writeAudioData___block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  if (writeAudioData__onceToken != -1)
  {
    dispatch_once(&writeAudioData__onceToken, block);
  }

LABEL_19:
}

void __45__ARRecordingTechniquePublic_writeAudioData___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (ARShouldUseLogTypeError_onceToken_15 != -1)
  {
    [ARRecordingTechniquePublic writeTimeOfFlightData:];
  }

  v2 = ARShouldUseLogTypeError_internalOSVersion_15;
  v3 = _ARLogTechnique_11(a1);
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v8 = "%{public}@ <%p>: You turned on audio data but we're not recording it because it wasn't turned on when you started recording.";
      v9 = v4;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v9, v10, v8, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v6 = NSStringFromClass(v11);
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v6;
    v15 = 2048;
    v16 = v12;
    v8 = "Error: %{public}@ <%p>: You turned on audio data but we're not recording it because it wasn't turned on when you started recording.";
    v9 = v4;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)writeResultData:(id)data withTimestamp:(double)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = ARMetadataIdentifierForARRecordableResultsClass(v12);
        [(ARRecordingTechniquePublic *)self processTimeSensitiveNSCoderObject:v11 withTimestamp:v13 metadataID:timestamp];

        ++v10;
      }

      while (v8 != v10);
      v8 = [dataCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)processTimeSensitiveNSCoderObject:(id)object withTimestamp:(double)timestamp metadataID:(id)d
{
  v67 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dCopy = d;
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  if (![(ARRecordingTechniquePublic *)self finished])
  {
    if ([(ARRecordingTechniquePublic *)self state]!= 2)
    {
      Class = object_getClass(objectCopy);
      v12 = NSStringFromClass(Class);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"NotRunning" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NotRunning", "length"), 0}];
      v25 = kdebug_trace();
      if (ARShouldUseLogTypeError_onceToken_15 != -1)
      {
        [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
      }

      v26 = ARShouldUseLogTypeError_internalOSVersion_15;
      v27 = _ARLogTechnique_11(v25);
      v14 = v27;
      if (v26 == 1)
      {
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v28 = objc_opt_class();
        v16 = NSStringFromClass(v28);
        v17 = NSStringFromSelector(a2);
        v29 = object_getClass(objectCopy);
        v19 = NSStringFromClass(v29);
        *buf = 138544130;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v60 = v17;
        v61 = 2112;
        v62 = v19;
        v21 = "%{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v22 = v14;
        v23 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v35 = objc_opt_class();
        v16 = NSStringFromClass(v35);
        v17 = NSStringFromSelector(a2);
        v36 = object_getClass(objectCopy);
        v19 = NSStringFromClass(v36);
        *buf = 138544130;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v60 = v17;
        v61 = 2112;
        v62 = v19;
        v21 = "Error: %{public}@ <%p>: Tried to call %@ with %@ before session has started";
        v22 = v14;
        v23 = OS_LOG_TYPE_INFO;
      }

      v37 = 42;
LABEL_20:
      _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, v37);

LABEL_21:
      goto LABEL_22;
    }

    if (self->_sessionSourceTime > timestamp)
    {
      v11 = object_getClass(objectCopy);
      v12 = NSStringFromClass(v11);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"OldData" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"OldData", "length"), 0}];
      v13 = kdebug_trace();
      v14 = _ARLogTechnique_11(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        v18 = object_getClass(objectCopy);
        v19 = NSStringFromClass(v18);
        sessionSourceTime = self->_sessionSourceTime;
        *buf = 138544642;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v60 = v17;
        v61 = 2112;
        v62 = v19;
        v63 = 2048;
        timestampCopy2 = timestamp;
        v65 = 2048;
        v66 = sessionSourceTime;
        v21 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f < _sessionSourceTime %f, dropping";
        v22 = v14;
        v23 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        v37 = 62;
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    v30 = [(NSMutableDictionary *)self->_lastRecordedTimestamps objectForKeyedSubscript:dCopy];
    [v30 doubleValue];
    v32 = v31;

    if (v32 + 2.22044605e-16 >= timestamp)
    {
      v38 = object_getClass(objectCopy);
      v12 = NSStringFromClass(v38);
      *buf = 0;
      [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}];
      *buf = 0;
      [@"TimeDupe" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"TimeDupe", "length"), 0}];
      v39 = kdebug_trace();
      v14 = _ARLogTechnique_11(v39);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v16 = NSStringFromClass(v40);
        v17 = NSStringFromSelector(a2);
        v41 = object_getClass(objectCopy);
        v19 = NSStringFromClass(v41);
        *buf = 138544642;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v60 = v17;
        v61 = 2112;
        v62 = v19;
        v63 = 2048;
        timestampCopy2 = timestamp;
        v65 = 2048;
        v66 = v32;
        v21 = "%{public}@ <%p>: %@ for %@ metadata with timestamp %f <= lastTimestamp %f, dropping";
        v22 = v14;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_19;
      }

LABEL_22:

      goto LABEL_23;
    }

    v12 = objc_opt_new();
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
    if (v14)
    {
      [v12 addObject:v14];
      memset(buf, 0, sizeof(buf));
      objc_msgSend_cmTimeFromTimestamp_(MEMORY[0x1E698BEC8], timestamp);
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
      [(NSMutableDictionary *)self->_lastRecordedTimestamps setObject:v33 forKeyedSubscript:dCopy];

      writer = self->_writer;
      v57 = *buf;
      v58 = *&buf[16];
      [(MOVWriterInterface *)writer appendMetadata:v12 withTimeStamp:&v57 toStream:dCopy];
      goto LABEL_22;
    }

    v42 = object_getClass(0);
    v16 = NSStringFromClass(v42);
    *buf = 0;
    [v16 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v16, "length"), 0}];
    *buf = 0;
    [@"Archive" getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"Archive", "length"), 0}];
    v43 = kdebug_trace();
    if (ARShouldUseLogTypeError_onceToken_15 != -1)
    {
      [ARRecordingTechniquePublic initWithFileURL:recordingSensorDataTypes:startImmediately:recordCollaborationData:];
    }

    v44 = ARShouldUseLogTypeError_internalOSVersion_15;
    v45 = _ARLogTechnique_11(v43);
    v46 = v45;
    if (v44 == 1)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = NSStringFromSelector(a2);
        v50 = object_getClass(0);
        v51 = NSStringFromClass(v50);
        *buf = 138544130;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v60 = v49;
        v61 = 2112;
        v62 = v51;
        v52 = "%{public}@ <%p>: Failed to archive data: %@ with %@";
        v53 = v46;
        v54 = OS_LOG_TYPE_ERROR;
LABEL_31:
        _os_log_impl(&dword_1C241C000, v53, v54, v52, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v55 = objc_opt_class();
      v48 = NSStringFromClass(v55);
      v49 = NSStringFromSelector(a2);
      v56 = object_getClass(0);
      v51 = NSStringFromClass(v56);
      *buf = 138544130;
      *&buf[4] = v48;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v60 = v49;
      v61 = 2112;
      v62 = v51;
      v52 = "Error: %{public}@ <%p>: Failed to archive data: %@ with %@";
      v53 = v46;
      v54 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_23:
}

- (void)_finishRecording
{
  v25[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_timeSensitiveQueue);
  state = [(ARRecordingTechniquePublic *)self state];
  if (state <= 2)
  {
    if (!state)
    {
      v24 = *MEMORY[0x1E696A578];
      v25[0] = @"Attempted to finish without starting";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v15 = ARErrorWithCodeAndUserInfo(1001, v14);
      [(ARRecordingTechniquePublic *)self _fail:v15];

      return;
    }

    if (state == 1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (state == 3)
  {
    return;
  }

  if (state != 4)
  {
LABEL_11:
    v6 = _ARLogTechnique_11([(ARRecordingTechniquePublic *)self setState:3]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v21 = v8;
      v22 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Finish requested", buf, 0x16u);
    }

    writer = self->_writer;
    v17 = 0;
    [(MOVWriterInterface *)writer finishWriting:&v17];
    v10 = v17;
    v11 = v10;
    if (v10)
    {
      v18 = *MEMORY[0x1E696AA08];
      v19 = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = ARErrorWithCodeAndUserInfo(1001, v12);
      [(ARRecordingTechniquePublic *)self _fail:v13];
    }

    return;
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 technique:self didFinishWithResult:self->_finishedError];
  }
}

- (void)isReadyToRecord
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  self->_writerReady = 1;
  v4 = _ARLogTechnique_11(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v10 = 138543618;
    v11 = v6;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Writer ready for recording", &v10, 0x16u);
  }

  recordingTechniqueDelegate = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    recordingTechniqueDelegate2 = [(ARRecordingTechniquePublic *)self recordingTechniqueDelegate];
    [recordingTechniqueDelegate2 recordingTechniqueDidBecomeReady:self];
  }
}

- (void)didFailWithError:(id)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  errorCopy = error;
  dispatch_assert_queue_V2(recordingQueue);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = errorCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v7 = ARErrorWithCodeAndUserInfo(1001, v6);
  [(ARRecordingTechniquePublic *)self _fail:v7];
}

- (void)didFinishRecording
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  if (self->_shouldSaveVideoInPhotosLibrary)
  {
    if (objc_opt_respondsToSelector())
    {
      outputFileURL = self->_outputFileURL;

      [(ARRecordingTechniquePublic *)self performSelector:sel__saveVideoInPhotosLibrary_ withObject:outputFileURL];
    }
  }

  else
  {
    v5 = _ARLogTechnique_11(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = self->_outputFileURL;
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      selfCopy = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Saved video to file at %@.", &v9, 0x20u);
    }

    [(ARRecordingTechniquePublic *)self _finish:0];
  }
}

- (ARRecordingTechniqueDelegate)recordingTechniqueDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingTechniqueDelegate);

  return WeakRetained;
}

@end