@interface AWAttentionStreamer
- ($EB925890EBEBD6850280D1FB85A9BD43)getStreamerOptionsWithMask:(unint64_t)mask;
- (AWAttentionStreamer)initWithOptions:(id)options;
- (BOOL)isStreamerRunningWithMask:(unint64_t)mask;
- (id)cancelEventStreamWithMask:(unint64_t)mask;
- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation;
- (id)streamEventsWithMask:(unint64_t)mask block:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock;
- (void)logStreamComplete:(unint64_t)complete identifier:(id)identifier duration:(unint64_t)duration ERActivated:(BOOL)activated;
- (void)setDisplayStateWithMask:(unint64_t)mask displayState:(BOOL)state;
- (void)setNotificationHandler:(id)handler withMask:(unint64_t)mask;
- (void)setSmartCoverStateWithMask:(unint64_t)mask smartCoverState:(BOOL)state;
@end

@implementation AWAttentionStreamer

- (void)setDisplayStateWithMask:(unint64_t)mask displayState:(BOOL)state
{
  if (mask == 128)
  {
    [(StreamingOperation *)self->_faceDetectStreamer setDisplayState:state];
  }
}

- (void)setSmartCoverStateWithMask:(unint64_t)mask smartCoverState:(BOOL)state
{
  if (mask == 128)
  {
    [(StreamingOperation *)self->_faceDetectStreamer setSmartCoverState:state];
  }
}

- (void)logStreamComplete:(unint64_t)complete identifier:(id)identifier duration:(unint64_t)duration ERActivated:(BOOL)activated
{
  if (complete == 128)
  {
    [(AWSampleLogger *)self->_sampleLogger streamingCompleteWithidentifier:identifier duration:duration ERActivated:activated];
  }
}

- ($EB925890EBEBD6850280D1FB85A9BD43)getStreamerOptionsWithMask:(unint64_t)mask
{
  if (mask == 128)
  {
    return [(StreamingOperation *)self->_faceDetectStreamer getStreamerOptions];
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (void)setNotificationHandler:(id)handler withMask:(unint64_t)mask
{
  if (mask == 128)
  {
    [(StreamingOperation *)self->_faceDetectStreamer setNotificationHandler:handler];
  }
}

- (BOOL)isStreamerRunningWithMask:(unint64_t)mask
{
  v10 = *MEMORY[0x1E69E9840];
  if (mask != 128)
  {
    return 0;
  }

  faceDetectStreamer = self->_faceDetectStreamer;
  if (!faceDetectStreamer)
  {
    if (currentLogLevel >= 3)
    {
      v5 = _AALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = absTimeNS();
        if (v6 == -1)
        {
          v7 = INFINITY;
        }

        else
        {
          v7 = v6 / 1000000000.0;
        }

        v8 = 134217984;
        v9 = v7;
        _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: No Attention streamer available", &v8, 0xCu);
      }
    }

    return 0;
  }

  return [(StreamingOperation *)faceDetectStreamer attentionStreamerRunning];
}

- (id)cancelEventStreamWithMask:(unint64_t)mask
{
  v23 = *MEMORY[0x1E69E9840];
  if (mask == 128)
  {
    faceDetectStreamer = self->_faceDetectStreamer;
    if (faceDetectStreamer)
    {
      cancelEventStream = [(StreamingOperation *)faceDetectStreamer cancelEventStream];
      goto LABEL_6;
    }

    if (currentLogLevel >= 3)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = absTimeNS();
        if (v15 == -1)
        {
          v16 = INFINITY;
        }

        else
        {
          v16 = v15 / 1000000000.0;
        }

        *buf = 134217984;
        v22 = v16;
        _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, "%13.5f: No Attention streamer available", buf, 0xCu);
      }
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v19 = *MEMORY[0x1E696A578];
    v20 = @" No attention streamer found";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = v13;
    v9 = v14;
    v10 = 19;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A798];
    v17 = *MEMORY[0x1E696A578];
    v18 = @" Invalid mask to start a stream";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = v5;
    v9 = v6;
    v10 = 22;
  }

  cancelEventStream = [v8 errorWithDomain:v9 code:v10 userInfo:v7];

LABEL_6:

  return cancelEventStream;
}

- (id)streamEventsWithMask:(unint64_t)mask block:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock
{
  v7 = *&options.var0;
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  failedBlockCopy = failedBlock;
  if (mask == 128)
  {
    faceDetectStreamer = self->_faceDetectStreamer;
    if (faceDetectStreamer)
    {
      v13 = [(StreamingOperation *)faceDetectStreamer streamEventWithBlock:blockCopy options:*&v7 & 0xFFFFFFLL operationStartFailedBlock:failedBlockCopy];
      goto LABEL_6;
    }

    if (currentLogLevel >= 3)
    {
      v21 = _AALog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = absTimeNS();
        if (v24 == -1)
        {
          v25 = INFINITY;
        }

        else
        {
          v25 = v24 / 1000000000.0;
        }

        *buf = 134217984;
        v31 = v25;
        _os_log_error_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_ERROR, "%13.5f: No Attention streamer available", buf, 0xCu);
      }
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v28 = *MEMORY[0x1E696A578];
    v29 = @" No attention streamer found";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = v22;
    v18 = v23;
    v19 = 19;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A798];
    v26 = *MEMORY[0x1E696A578];
    v27 = @" Invalid mask to start a stream";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = v14;
    v18 = v15;
    v19 = 22;
  }

  v13 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];

LABEL_6:

  return v13;
}

- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation
{
  foundationCopy = foundation;
  v16.receiver = self;
  v16.super_class = AWAttentionStreamer;
  v6 = [(AWAttentionStreamer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_unitTestMode = test;
    v8 = awQueue(1);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = +[AWSampleLogger sharedLogger];
    sampleLogger = v7->_sampleLogger;
    v7->_sampleLogger = v10;

    v12 = off_1E7F37058;
    if (!foundationCopy)
    {
      v12 = off_1E7F37088;
    }

    v13 = [objc_alloc(*v12) initForUnitTest:v7->_unitTestMode queue:v7->_queue];
    faceDetectStreamer = v7->_faceDetectStreamer;
    v7->_faceDetectStreamer = v13;
  }

  return v7;
}

- (AWAttentionStreamer)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (!optionsCopy)
  {
    goto LABEL_7;
  }

  selfCopy = [optionsCopy valueForKey:@"eventMask"];

  if (selfCopy)
  {
    selfCopy = [v5 valueForKey:@"useAVFoundation"];

    if (selfCopy)
    {
      selfCopy = [v5 valueForKey:@"unitTest"];

      if (selfCopy)
      {
        v7 = [v5 valueForKey:@"eventMask"];
        unsignedLongValue = [v7 unsignedLongValue];

        v9 = [v5 valueForKey:@"unitTest"];
        bOOLValue = [v9 BOOLValue];

        v11 = [v5 valueForKey:@"useAVFoundation"];
        bOOLValue2 = [v11 BOOLValue];

        if (unsignedLongValue == 128)
        {
          self = [(AWAttentionStreamer *)self initForUnitTest:bOOLValue useAVFoundation:bOOLValue2];
          selfCopy = self;
          goto LABEL_8;
        }

LABEL_7:
        selfCopy = 0;
      }
    }
  }

LABEL_8:

  return selfCopy;
}

@end