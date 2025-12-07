@interface AWPearlAttentionStreamer
- (id)cancelEventStream;
- (id)initForUnitTest:(BOOL)test queue:(id)queue;
- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)operation:(id)operation finishedWithReason:(int64_t)reason;
- (void)sendNotification:(unint64_t)notification;
- (void)setDisplayState:(BOOL)state;
- (void)setNotificationHandler:(id)handler;
- (void)setSmartCoverState:(BOOL)state;
@end

@implementation AWPearlAttentionStreamer

- (void)operation:(id)operation finishedWithReason:(int64_t)reason
{
  v23 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = absTimeNS();
      if (v8 == -1)
      {
        v9 = INFINITY;
      }

      else
      {
        v9 = v8 / 1000000000.0;
      }

      v17 = 134218498;
      v18 = v9;
      v19 = 2112;
      *v20 = operationCopy;
      *&v20[8] = 2080;
      *&v20[10] = getEndReasonDescriptions(reason);
      v14 = "%13.5f: Operation %@ cancelled due to reason: %s";
      v15 = v7;
      v16 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v10 = i;
        }

        else if (!*(i - 1))
        {
          v12 = absTimeNS();
          if (v12 == -1)
          {
            v13 = INFINITY;
          }

          else
          {
            v13 = v12 / 1000000000.0;
          }

          v17 = 136316162;
          v18 = *&v10;
          v19 = 1024;
          *v20 = 483;
          *&v20[4] = 2048;
          *&v20[6] = v13;
          *&v20[14] = 2112;
          *&v20[16] = operationCopy;
          v21 = 2080;
          EndReasonDescriptions = getEndReasonDescriptions(reason);
          v14 = "%30s:%-4d: %13.5f: Operation %@ cancelled due to reason: %s";
          v15 = v7;
          v16 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ((reason & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(AWPearlAttentionStreamer *)self sendNotification:1];
    self->_attentionStreamerRunning = 0;
  }
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  v96 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v68 = 0u;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  faceDetected = [changedCopy faceDetected];
  pitch = [changedCopy pitch];
  v9 = [changedCopy yaw];
  roll = [changedCopy roll];
  orientation = [changedCopy orientation];
  if ((orientation - 1) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = orientation;
  }

  v61 = v12;
  distance = [changedCopy distance];
  eyeReliefStatus = [changedCopy eyeReliefStatus];
  v15 = 0;
  v16 = 1;
  if (eyeReliefStatus <= 2)
  {
    if (eyeReliefStatus != 1 && eyeReliefStatus != 2)
    {
      goto LABEL_12;
    }
  }

  else if (eyeReliefStatus != 3 && eyeReliefStatus != 4 && eyeReliefStatus != 5)
  {
    goto LABEL_12;
  }

  v16 = 0;
  v15 = eyeReliefStatus;
LABEL_12:
  v59 = v16;
  faceDetectionScore = [changedCopy faceDetectionScore];
  [faceDetectionScore floatValue];
  v19 = v18;
  *(&v68 + 2) = v18;

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  if (currentLogLevel < 7)
  {
    goto LABEL_28;
  }

  v20 = _AALog();
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  v58 = operationCopy;
  v21 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; *(i - 1) == 47; ++i)
  {
    v21 = i;
LABEL_19:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_19;
  }

  v23 = absTimeNS();
  v56 = v9;
  v57 = pitch;
  if (v23 == -1)
  {
    v24 = INFINITY;
  }

  else
  {
    v24 = v23 / 1000000000.0;
  }

  pendingPresenceOperation = self->_pendingPresenceOperation;
  if (faceDetected)
  {
    v26 = "FACE FOUND";
  }

  else
  {
    v26 = "FACE NOT FOUND";
  }

  getFaceDetectOrientationDescription(v61);
  v28 = v27 = self;
  getEyeReliefFaceStateDescription(v15);
  v29 = v55 = v15;
  *buf = 136318466;
  v73 = *&v21;
  v74 = 1024;
  *v75 = 434;
  *&v75[4] = 2048;
  *&v75[6] = v24;
  *&v75[14] = 2112;
  *&v75[16] = v27;
  v76 = 2048;
  operationCopy = v58;
  v77 = v58;
  v78 = 2048;
  v79 = pendingPresenceOperation;
  v80 = 2080;
  v81 = v26;
  v82 = 2112;
  v9 = v56;
  pitch = v57;
  v83 = v57;
  v84 = 2112;
  v85 = v56;
  v86 = 2112;
  v87 = roll;
  v88 = 2112;
  v89 = v28;
  v90 = 2112;
  v91 = distance;
  v92 = 2112;
  v93 = v29;
  v94 = 2048;
  v95 = v19;
  _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ operation %p currentOperation %p faceDetectStateChanged %s pitch: %@ yaw: %@ roll: %@ orientation: %@ distance: %@ eyeReliefFaceState:%@ faceDetectionScore: %f", buf, 0x8Au);

  v15 = v55;
  self = v27;
LABEL_27:

LABEL_28:
  LOBYTE(v63) = faceDetected;
  memset_pattern16(v67, &unk_1BB32B2C0, 0x40uLL);
  *&v66 = v15;
  [distance doubleValue];
  *(&v65 + 1) = v30;
  [pitch doubleValue];
  *(&v63 + 1) = v31;
  [v9 doubleValue];
  *&v64 = v32;
  [roll doubleValue];
  *(&v64 + 1) = v33;
  *&v65 = v61;
  if (!self->_eyeReliefStarted)
  {
    goto LABEL_54;
  }

  if (v59)
  {
    if (currentLogLevel >= 3)
    {
      v34 = _AALog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = absTimeNS();
        if (v35 == -1)
        {
          v36 = INFINITY;
        }

        else
        {
          v36 = v35 / 1000000000.0;
        }

        *buf = 134217984;
        v73 = v36;
        _os_log_error_impl(&dword_1BB2EF000, v34, OS_LOG_TYPE_ERROR, "%13.5f: Invalid eyeRelief frame handed up to this layer. Don't pass this up", buf, 0xCu);
      }

      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (currentLogLevel == 5)
  {
    v37 = v15;
    v38 = v9;
    v39 = _AALog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = absTimeNS();
      if (v40 == -1)
      {
        v41 = INFINITY;
      }

      else
      {
        v41 = v40 / 1000000000.0;
      }

      v48 = getEyeReliefFaceStateDescription(v37);
      *buf = 134218498;
      v73 = v41;
      v74 = 2112;
      *v75 = distance;
      *&v75[8] = 2112;
      *&v75[10] = v48;
      _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, "%13.5f: Distance from EyeRelief network: %@ EyeReliefState: %@", buf, 0x20u);
    }

LABEL_52:

    v9 = v38;
    if (self->_eyeReliefStarted)
    {
      goto LABEL_53;
    }

LABEL_54:
    v50 = 1;
  }

  else
  {
    if (currentLogLevel >= 6)
    {
      v42 = v15;
      v38 = v9;
      v39 = _AALog();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      selfCopy = self;
      v43 = roll;
      v44 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v44 = j;
        }

        else if (!*(j - 1))
        {
          v46 = absTimeNS();
          if (v46 == -1)
          {
            v47 = INFINITY;
          }

          else
          {
            v47 = v46 / 1000000000.0;
          }

          v49 = getEyeReliefFaceStateDescription(v42);
          *buf = 136316162;
          v73 = *&v44;
          v74 = 1024;
          *v75 = 460;
          *&v75[4] = 2048;
          *&v75[6] = v47;
          *&v75[14] = 2112;
          *&v75[16] = distance;
          v76 = 2112;
          v77 = v49;
          _os_log_impl(&dword_1BB2EF000, v39, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: Distance from EyeRelief network: %@ EyeReliefState: %@", buf, 0x30u);

          roll = v43;
          self = selfCopy;
          goto LABEL_52;
        }
      }
    }

LABEL_53:
    v50 = 5;
  }

  *(&v66 + 1) = v50;
  v51 = [AWFaceDetectAttentionEvent alloc];
  v52 = absTimeNS();
  if (v52 == -1)
  {
    v53 = INFINITY;
  }

  else
  {
    v53 = v52 / 1000000000.0;
  }

  v34 = [(AWFaceDetectAttentionEvent *)v51 initWithTimestamp:0 tagIndex:&v63 faceMetadata:v53, v55];
  callbackBlock = self->_callbackBlock;
  if (callbackBlock)
  {
    callbackBlock[2](callbackBlock, v34);
  }

LABEL_60:

LABEL_61:
}

- (void)setDisplayState:(BOOL)state
{
  v29 = *MEMORY[0x1E69E9840];
  displayOn = self->_displayOn;
  if (displayOn != state)
  {
    stateCopy = state;
    self->_displayOn = state;
    if (currentLogLevel == 5)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        v13 = "OFF";
        if (stateCopy)
        {
          v13 = "ON";
        }

        v23 = 134218242;
        v24 = v8;
        v25 = 2080;
        *v26 = v13;
        v14 = "%13.5f: Display state changed to %s";
        v15 = v6;
        v16 = 22;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    LOBYTE(displayOn) = state;
    if (currentLogLevel >= 6)
    {
      v6 = _AALog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v9 = i;
        }

        else if (!*(i - 1))
        {
          v11 = absTimeNS();
          if (v11 == -1)
          {
            v12 = INFINITY;
          }

          else
          {
            v12 = v11 / 1000000000.0;
          }

          v17 = "OFF";
          v23 = 136315906;
          v24 = *&v9;
          v25 = 1024;
          if (stateCopy)
          {
            v17 = "ON";
          }

          *v26 = 377;
          *&v26[4] = 2048;
          *&v26[6] = v12;
          v27 = 2080;
          v28 = v17;
          v14 = "%30s:%-4d: %13.5f: Display state changed to %s";
          v15 = v6;
          v16 = 38;
LABEL_24:
          _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v23, v16);
LABEL_25:

          LOBYTE(displayOn) = self->_displayOn;
          break;
        }
      }
    }
  }

  if (!displayOn && self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }
}

- (void)setSmartCoverState:(BOOL)state
{
  v29 = *MEMORY[0x1E69E9840];
  smartCoverClosed = self->_smartCoverClosed;
  if (smartCoverClosed == state)
  {
LABEL_2:
    if (!smartCoverClosed)
    {
      return;
    }

    goto LABEL_29;
  }

  self->_smartCoverClosed = state;
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

      v12 = "Opened";
      if (self->_smartCoverClosed)
      {
        v12 = "Closed";
      }

      v23 = 134218242;
      v24 = v7;
      v25 = 2080;
      *v26 = v12;
      v13 = "%13.5f: Smart cover state changed to %s";
      v14 = v5;
      v15 = 22;
LABEL_27:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v23, v15);
    }
  }

  else
  {
    smartCoverClosed = state;
    if (currentLogLevel < 6)
    {
      goto LABEL_2;
    }

    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v8 = i;
        }

        else if (!*(i - 1))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          v16 = self->_smartCoverClosed;
          v23 = 136315906;
          if (v16)
          {
            v17 = "Closed";
          }

          else
          {
            v17 = "Opened";
          }

          v24 = *&v8;
          v25 = 1024;
          *v26 = 359;
          *&v26[4] = 2048;
          *&v26[6] = v11;
          v27 = 2080;
          v28 = v17;
          v13 = "%30s:%-4d: %13.5f: Smart cover state changed to %s";
          v14 = v5;
          v15 = 38;
          goto LABEL_27;
        }
      }
    }
  }

  if (!self->_smartCoverClosed)
  {
    return;
  }

LABEL_29:
  if (self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }
}

- (void)sendNotification:(unint64_t)notification
{
  notificationBlock = self->_notificationBlock;
  if (notificationBlock)
  {
    notificationBlock[2](notificationBlock, notification);
  }
}

- (id)cancelEventStream
{
  v15[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_attentionStreamerRunning)
  {
    v3 = self->_pendingPresenceOperation;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AWPearlAttentionStreamer_cancelEventStream__block_invoke;
    block[3] = &unk_1E7F38060;
    v12 = v3;
    selfCopy = self;
    v4 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    pendingPresenceOperation = self->_pendingPresenceOperation;
    self->_pendingPresenceOperation = 0;

    self->_attentionStreamerRunning = 0;
    callbackBlock = self->_callbackBlock;
    self->_callbackBlock = 0;

    self->_eyeReliefStarted = 0;
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @" Attention streamer not running";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v7 = [v8 errorWithDomain:v9 code:3 userInfo:v4];
  }

  return v7;
}

void __45__AWPearlAttentionStreamer_cancelEventStream__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancel];
  if (currentLogLevel == 5)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = absTimeNS();
      if (v3 == -1)
      {
        v4 = INFINITY;
      }

      else
      {
        v4 = v3 / 1000000000.0;
      }

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v16 = 134218498;
      v17 = v4;
      v18 = 2112;
      *v19 = v9;
      *&v19[8] = 2048;
      *&v19[10] = v10;
      v11 = "%13.5f: %@ cancelled presence operation %p";
      v12 = v2;
      v13 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      return;
    }

    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v5 = i;
        }

        else if (!*(i - 1))
        {
          v7 = absTimeNS();
          if (v7 == -1)
          {
            v8 = INFINITY;
          }

          else
          {
            v8 = v7 / 1000000000.0;
          }

          v15 = *(a1 + 32);
          v14 = *(a1 + 40);
          v16 = 136316162;
          v17 = *&v5;
          v18 = 1024;
          *v19 = 314;
          *&v19[4] = 2048;
          *&v19[6] = v8;
          *&v19[14] = 2112;
          *&v19[16] = v14;
          v20 = 2048;
          v21 = v15;
          v11 = "%30s:%-4d: %13.5f: %@ cancelled presence operation %p";
          v12 = v2;
          v13 = 48;
          goto LABEL_19;
        }
      }
    }
  }
}

- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock
{
  var0 = options.var0;
  v65[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  failedBlockCopy = failedBlock;
  dispatch_assert_queue_V2(self->_queue);
  if (![(AWPearlAttentionStreamer *)self isAttentionAwareFeaturesEnabled])
  {
    if (currentLogLevel >= 3)
    {
      v16 = _AALog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = absTimeNS();
        if (v22 == -1)
        {
          v23 = INFINITY;
        }

        else
        {
          v23 = v22 / 1000000000.0;
        }

        *buf = 134217984;
        v55 = v23;
        _os_log_error_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_ERROR, "%13.5f: User has AttentionAware features off, cannot start streaming operation with Pearl", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v64 = *MEMORY[0x1E696A578];
    v65[0] = @" Attention Aware Features turned OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = v65;
    v15 = &v64;
    goto LABEL_16;
  }

  if (!self->_displayOn)
  {
    if (currentLogLevel >= 3)
    {
      v17 = _AALog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v27 = absTimeNS();
        if (v27 == -1)
        {
          v28 = INFINITY;
        }

        else
        {
          v28 = v27 / 1000000000.0;
        }

        *buf = 134217984;
        v55 = v28;
        _os_log_error_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_ERROR, "%13.5f: Display OFF, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v62 = *MEMORY[0x1E696A578];
    v63 = @" Display OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v63;
    v15 = &v62;
    goto LABEL_16;
  }

  if (self->_smartCoverClosed)
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v31 = absTimeNS();
        if (v31 == -1)
        {
          v32 = INFINITY;
        }

        else
        {
          v32 = v31 / 1000000000.0;
        }

        *buf = 134217984;
        v55 = v32;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: Smart cover closed, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v60 = *MEMORY[0x1E696A578];
    v61 = @" Smart cover closed";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v61;
    v15 = &v60;
LABEL_16:
    v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v19 = [v11 errorWithDomain:v12 code:1 userInfo:v18];
LABEL_17:

    goto LABEL_18;
  }

  if (self->_matchOrEnrollOperationActive)
  {
    if (currentLogLevel >= 3)
    {
      v21 = _AALog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = absTimeNS();
        if (v33 == -1)
        {
          v34 = INFINITY;
        }

        else
        {
          v34 = v33 / 1000000000.0;
        }

        *buf = 134217984;
        v55 = v34;
        _os_log_error_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_ERROR, "%13.5f: Match or enroll operation underway, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v58 = *MEMORY[0x1E696A578];
    v59 = @" Match or enroll operation ongoing";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v59;
    v15 = &v58;
    goto LABEL_16;
  }

  if (!self->_attentionStreamerRunning)
  {
    goto LABEL_67;
  }

  if (!var0 || self->_eyeReliefStarted)
  {
    v19 = 0;
    goto LABEL_18;
  }

  if (currentLogLevel == 5)
  {
    v24 = _AALog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = absTimeNS();
      if (v25 == -1)
      {
        v26 = INFINITY;
      }

      else
      {
        v26 = v25 / 1000000000.0;
      }

      *buf = 134217984;
      v55 = v26;
      v37 = "%13.5f: Cancelling current stream and starting one with EyeRelief";
      v38 = v24;
      v39 = 12;
LABEL_64:
      _os_log_impl(&dword_1BB2EF000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
    }

LABEL_65:

    goto LABEL_66;
  }

  if (currentLogLevel >= 6)
  {
    v24 = _AALog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v29 = i;
        }

        else if (!*(i - 1))
        {
          v35 = absTimeNS();
          if (v35 == -1)
          {
            v36 = INFINITY;
          }

          else
          {
            v36 = v35 / 1000000000.0;
          }

          *buf = 136315650;
          v55 = *&v29;
          v56 = 1024;
          LODWORD(v57[0]) = 246;
          WORD2(v57[0]) = 2048;
          *(v57 + 6) = v36;
          v37 = "%30s:%-4d: %13.5f: Cancelling current stream and starting one with EyeRelief";
          v38 = v24;
          v39 = 28;
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_66:
  cancelEventStream = [(AWPearlAttentionStreamer *)self cancelEventStream];
LABEL_67:
  [(BKDevicePearl *)self->_pearlDevice setQueue:self->_queue];
  [(BKDevicePearl *)self->_pearlDevice setDelegate:self];
  pearlDevice = self->_pearlDevice;
  v53 = 0;
  v42 = [(BKDevicePearl *)pearlDevice createPresenceDetectOperationWithError:&v53];
  v19 = v53;
  pendingPresenceOperation = self->_pendingPresenceOperation;
  self->_pendingPresenceOperation = v42;

  v44 = self->_pendingPresenceOperation;
  if (v44)
  {
    [(BKFaceDetectOperation *)v44 setDelegate:self];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setQueue:self->_queue];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setMode:1];
    [(BKFaceDetectOperation *)self->_pendingPresenceOperation setEyeRelief:var0];
    if (blockCopy)
    {
      v45 = MEMORY[0x1BFB0D030](blockCopy);
      callbackBlock = self->_callbackBlock;
      self->_callbackBlock = v45;
    }

    v47 = self->_pendingPresenceOperation;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke;
    v51[3] = &unk_1E7F37408;
    v51[4] = self;
    v52 = failedBlockCopy;
    [(BKFaceDetectOperation *)v47 startWithReply:v51];
    v48 = v52;
    v18 = v19;

    v19 = v18;
    goto LABEL_17;
  }

  if (currentLogLevel >= 3)
  {
    v18 = _AALog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v49 = absTimeNS();
      if (v49 == -1)
      {
        v50 = INFINITY;
      }

      else
      {
        v50 = v49 / 1000000000.0;
      }

      *buf = 134218242;
      v55 = v50;
      v56 = 2112;
      v57[0] = v19;
      _os_log_error_impl(&dword_1BB2EF000, v18, OS_LOG_TYPE_ERROR, "%13.5f: Creating presence detect operation failed with error: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:

  return v19;
}

void __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    if (currentLogLevel == 5)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = absTimeNS();
        if (v10 == -1)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = v10 / 1000000000.0;
        }

        v27 = *(a1 + 32);
        v28 = *(v27 + 16);
        *buf = 134218754;
        v47 = v11;
        v48 = 2112;
        *v49 = v27;
        *&v49[8] = 2048;
        *&v49[10] = v28;
        *&v49[18] = 2112;
        *&v49[20] = v5;
        v29 = "%13.5f: %@ failed to start presence operation %p: %@ for streaming";
        v30 = v9;
        v31 = 42;
LABEL_47:
        _os_log_impl(&dword_1BB2EF000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_49:
        *(*(a1 + 32) + 48) = 0;
        *(*(a1 + 32) + 64) = 0;
        v40 = *(a1 + 32);
        v41 = *(v40 + 32);
        *(v40 + 32) = 0;

        v42 = *(*(a1 + 32) + 56);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __83__AWPearlAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke_34;
        v43[3] = &unk_1E7F37F78;
        v45 = *(a1 + 40);
        v44 = v5;
        dispatch_async(v42, v43);

        goto LABEL_50;
      }

      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v14 = i;
          }

          else if (!*(i - 1))
          {
            v18 = absTimeNS();
            if (v18 == -1)
            {
              v19 = INFINITY;
            }

            else
            {
              v19 = v18 / 1000000000.0;
            }

            v38 = *(a1 + 32);
            v39 = *(v38 + 16);
            *buf = 136316418;
            v47 = *&v14;
            v48 = 1024;
            *v49 = 289;
            *&v49[4] = 2048;
            *&v49[6] = v19;
            *&v49[14] = 2112;
            *&v49[16] = v38;
            *&v49[24] = 2048;
            *&v49[26] = v39;
            v50 = 2112;
            v51 = v5;
            v29 = "%30s:%-4d: %13.5f: %@ failed to start presence operation %p: %@ for streaming";
            v30 = v9;
            v31 = 58;
            goto LABEL_47;
          }
        }
      }
    }

    goto LABEL_49;
  }

  if (currentLogLevel == 5)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v20 = *(a1 + 32);
      v21 = *(v20 + 16);
      v22 = [v21 eyeRelief];
      v23 = "without";
      *buf = 134218754;
      v48 = 2112;
      v47 = v8;
      if (v22)
      {
        v23 = "with";
      }

      *v49 = v20;
      *&v49[8] = 2048;
      *&v49[10] = v21;
      *&v49[18] = 2080;
      *&v49[20] = v23;
      v24 = "%13.5f: %@ presence operation %p successfully started for streaming %s eyeRelief";
      v25 = v6;
      v26 = 42;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (currentLogLevel >= 6)
  {
    v6 = _AALog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
    for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++j)
    {
      if (*(j - 1) == 47)
      {
        v12 = j;
      }

      else if (!*(j - 1))
      {
        v16 = absTimeNS();
        if (v16 == -1)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16 / 1000000000.0;
        }

        v32 = *(a1 + 32);
        v33 = *(v32 + 16);
        v34 = [v33 eyeRelief];
        *buf = 136316418;
        v35 = "without";
        v47 = *&v12;
        v48 = 1024;
        *v49 = 276;
        if (v34)
        {
          v35 = "with";
        }

        *&v49[4] = 2048;
        *&v49[6] = v17;
        *&v49[14] = 2112;
        *&v49[16] = v32;
        *&v49[24] = 2048;
        *&v49[26] = v33;
        v50 = 2080;
        v51 = v35;
        v24 = "%30s:%-4d: %13.5f: %@ presence operation %p successfully started for streaming %s eyeRelief";
        v25 = v6;
        v26 = 58;
LABEL_40:
        _os_log_impl(&dword_1BB2EF000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_41:

        break;
      }
    }
  }

  *(*(a1 + 32) + 48) = 1;
  v36 = [*(*(a1 + 32) + 16) eyeRelief];
  v37 = *(a1 + 32);
  if (v36)
  {
    *(v37 + 64) = 1;
  }

  else
  {
    *(v37 + 64) = 0;
  }

LABEL_50:
}

- (void)setNotificationHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    __assert_rtn("[AWPearlAttentionStreamer setNotificationHandler:]", "PearlAttentionStreamer.m", 199, "notificationBlock != nil");
  }

  v7 = handlerCopy;
  v5 = MEMORY[0x1BFB0D030]();
  notificationBlock = self->_notificationBlock;
  self->_notificationBlock = v5;
}

- (id)initForUnitTest:(BOOL)test queue:(id)queue
{
  queueCopy = queue;
  v38.receiver = self;
  v38.super_class = AWPearlAttentionStreamer;
  v8 = [(AWPearlAttentionStreamer *)&v38 init];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v20 = v9;
    goto LABEL_12;
  }

  v8->_unitTest = test;
  if (test)
  {
    +[AWUnitTestPearlDevice sharedDevice];
  }

  else
  {
    getPearlDevice();
  }
  v10 = ;
  pearlDevice = v9->_pearlDevice;
  v9->_pearlDevice = v10;

  objc_storeStrong(&v9->_queue, queue);
  if (v9->_pearlDevice)
  {
    notificationBlock = v9->_notificationBlock;
    v9->_notificationBlock = 0;

    v9->_attentionStreamerRunning = 0;
    callbackBlock = v9->_callbackBlock;
    v9->_callbackBlock = 0;

    v9->_eyeReliefStarted = 0;
    v9->_matchOrEnrollOperationActive = 0;
    objc_initWeak(&location, v9);
    predicate = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke;
    block[3] = &unk_1E7F37910;
    v14 = v9;
    v34 = v14;
    objc_copyWeak(&v35, &location);
    dispatch_once(&predicate, block);
    [v14 setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
    if (v9->_unitTest)
    {
      *(v14 + 40) = 1;
      unitTestDevice = [v14 unitTestDevice];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_11;
      v31[3] = &unk_1E7F37B98;
      v16 = v14;
      v32 = v16;
      [unitTestDevice setDisplayCallback:v31];

      unitTestDevice2 = [v16 unitTestDevice];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_3;
      v29[3] = &unk_1E7F37B98;
      v30 = v16;
      [unitTestDevice2 setSmartCoverCallback:v29];
      v18 = &v32;
      v19 = &v30;
    }

    else
    {
      queue = v9->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_5;
      handler[3] = &unk_1E7F37BC0;
      v22 = v14;
      v28 = v22;
      notify_register_dispatch("com.apple.BiometricKit.activeOperation", v14 + 21, queue, handler);
      v18 = &v28;
      v23 = v9->_queue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_15;
      v25[3] = &unk_1E7F38038;
      v19 = &v26;
      v26 = v22;
      dispatch_async(v23, v25);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2;
  v4[3] = &unk_1E7F373E0;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  notify_register_dispatch("com.apple.AttentionAwareness.SupportedEventsChanged", (v2 + 68), v3, v4);

  objc_destroyWeak(&v6);
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_11(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2_12;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_4;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

uint64_t __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_5(uint64_t a1, int token)
{
  v22 = *MEMORY[0x1E69E9840];
  state64 = 0;
  result = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (state64 - 1 > 1)
  {
    *(v4 + 88) = 0;
    return result;
  }

  *(v4 + 88) = 1;
  result = *(a1 + 32);
  if (*(result + 48) != 1)
  {
    return result;
  }

  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

      *buf = 134217984;
      v17 = v7;
      v12 = "%13.5f: Match or enroll operation initiated when a stream was running, cancelling stream and sending a notification to clients";
      v13 = v5;
      v14 = 12;
LABEL_22:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }

LABEL_23:

    result = *(a1 + 32);
    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v8 = i;
        }

        else if (!*(i - 1))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          *buf = 136315650;
          v17 = *&v8;
          v18 = 1024;
          v19 = 174;
          v20 = 2048;
          v21 = v11;
          v12 = "%30s:%-4d: %13.5f: Match or enroll operation initiated when a stream was running, cancelling stream and sending a notification to clients";
          v13 = v5;
          v14 = 28;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  [result sendNotification:1];
  return [*(a1 + 32) cancelEventStream];
}

uint64_t __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BKSHIDServicesIsSmartCoverClosed() != 0;

  return [v1 setSmartCoverState:v2];
}

void __50__AWPearlAttentionStreamer_initForUnitTest_queue___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
  if (currentLogLevel < 7)
  {
    goto LABEL_16;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_15;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/PearlAttentionStreamer.m"; *(i - 1) == 47; ++i)
  {
    v4 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v6 = absTimeNS();
  if (v6 == -1)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6 / 1000000000.0;
  }

  v8 = [WeakRetained isAttentionAwareFeaturesEnabled];
  v9 = "OFF";
  *v11 = 136315906;
  *&v11[4] = v4;
  *&v11[12] = 1024;
  *&v11[14] = 134;
  if (v8)
  {
    v9 = "ON";
  }

  *&v11[18] = 2048;
  *&v11[20] = v7;
  v12 = 2080;
  v13 = v9;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: User toggled the Attention Aware Features flag to %s", v11, 0x26u);
LABEL_15:

LABEL_16:
  if (([WeakRetained isAttentionAwareFeaturesEnabled] & 1) == 0)
  {
    if ([WeakRetained attentionStreamerRunning])
    {
      v10 = [*(a1 + 32) cancelEventStream];
    }

    [WeakRetained sendNotification:4];
  }
}

@end