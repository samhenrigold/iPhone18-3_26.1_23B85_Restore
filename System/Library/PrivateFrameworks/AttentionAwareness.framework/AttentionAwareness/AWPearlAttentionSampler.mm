@interface AWPearlAttentionSampler
- (AWPearlAttentionSampler)initWithOptions:(id)options;
- (id)createNewSamplingOperation;
- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation;
- (int)currentState;
- (unint64_t)minimumAttentionSamplerErrorRetryTime;
- (unint64_t)nextSampleTimeForSamplingInterval:(unint64_t)interval ignoreDisplayState:(BOOL)state;
- (void)cameraActivityNotification:(int)notification data:(id *)data forOperation:(id)operation;
- (void)cancelFaceDetect:(id)detect;
- (void)cancelStalledTimer;
- (void)faceDetectStalled:(id)stalled;
- (void)finishingFaceDetect:(id)detect;
- (void)pearlAttentionSamplerErrorOccurred;
- (void)setCarPlayConnected:(BOOL)connected;
- (void)setCurrentState:(int)state;
- (void)setDisplayState:(BOOL)state;
- (void)setSmartCoverClosed:(BOOL)closed;
- (void)shouldSample:(BOOL)sample withDeadline:(unint64_t)deadline withOptions:(id)options;
- (void)startStalledTimerForOperation:(id)operation;
- (void)triggerFaceDetectWithDeadline:(unint64_t)deadline options:(id)options;
- (void)updateFaceState:(int)state;
- (void)updateFaceState:(int)state withFaceMetadata:(AWFaceDetectMetadata *)metadata;
- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client;
- (void)updateSuppressedMaskWithDisplayState:(BOOL)state smartCoverClosed:(BOOL)closed carPlayConnected:(BOOL)connected;
@end

@implementation AWPearlAttentionSampler

- (int)currentState
{
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_displayState && !self->_currentOptions.AWAttentionSamplerActivateMotionDetection)
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = AWPearlAttentionSampler;
  return [(AWAttentionSampler *)&v4 currentState];
}

- (void)cancelStalledTimer
{
  dispatch_assert_queue_V2(self->super._queue);
  operationStalledTimer = self->_operationStalledTimer;
  if (operationStalledTimer)
  {
    dispatch_source_cancel(operationStalledTimer);
    v4 = self->_operationStalledTimer;
    self->_operationStalledTimer = 0;
  }
}

- (unint64_t)minimumAttentionSamplerErrorRetryTime
{
  dispatch_assert_queue_V2(self->super._queue);
  lastErrorTime = self->_lastErrorTime;
  v4 = lastErrorTime + 1000000000;
  if (lastErrorTime + 1000000000 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = -2;
  }

  if (lastErrorTime < 0xFFFFFFFFC4653600)
  {
    return v4;
  }

  else
  {
    return -2;
  }
}

- (id)createNewSamplingOperation
{
  if (self->_useAVFoundation)
  {
    v3 = off_1E7F37050;
  }

  else
  {
    v3 = &off_1E7F37098;
  }

  v4 = [objc_alloc(*v3) initWithQueue:self->super._queue forUnitTest:self->_unitTest];
  [v4 setDelegate:self];

  return v4;
}

- (void)cameraActivityNotification:(int)notification data:(id *)data forOperation:(id)operation
{
  v87 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
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

      *buf = 134218240;
      v82 = v11;
      v83 = 1024;
      *v84 = notification;
      v16 = "%13.5f: cameraActivityNotification %u received";
      v17 = v9;
      v18 = 18;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v12 = i;
        }

        else if (!*(i - 1))
        {
          v14 = absTimeNS();
          if (v14 == -1)
          {
            v15 = INFINITY;
          }

          else
          {
            v15 = v14 / 1000000000.0;
          }

          *buf = 136315906;
          v82 = *&v12;
          v83 = 1024;
          *v84 = 706;
          *&v84[4] = 2048;
          *&v84[6] = v15;
          *&v84[14] = 1024;
          *&v84[16] = notification;
          v16 = "%30s:%-4d: %13.5f: cameraActivityNotification %u received";
          v17 = v9;
          v18 = 34;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if (notification > 2)
  {
    if (notification != 3)
    {
      if (notification != 4)
      {
        goto LABEL_136;
      }

      if (currentLogLevel == 5)
      {
        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = absTimeNS();
          if (v23 == -1)
          {
            v24 = INFINITY;
          }

          else
          {
            v24 = v23 / 1000000000.0;
          }

          var1 = data->var1;
          *buf = 134218240;
          v82 = v24;
          v83 = 1024;
          *v84 = var1;
          v46 = "%13.5f: Device state %d received";
          v47 = v22;
          v48 = 18;
LABEL_114:
          _os_log_impl(&dword_1BB2EF000, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
          goto LABEL_116;
        }

        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v31 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
          for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++j)
          {
            if (*(j - 1) == 47)
            {
              v31 = j;
            }

            else if (!*(j - 1))
            {
              v37 = absTimeNS();
              if (v37 == -1)
              {
                v38 = INFINITY;
              }

              else
              {
                v38 = v37 / 1000000000.0;
              }

              v71 = data->var1;
              *buf = 136315906;
              v82 = *&v31;
              v83 = 1024;
              *v84 = 799;
              *&v84[4] = 2048;
              *&v84[6] = v38;
              *&v84[14] = 1024;
              *&v84[16] = v71;
              v46 = "%30s:%-4d: %13.5f: Device state %d received";
              v47 = v22;
              v48 = 34;
              goto LABEL_114;
            }
          }
        }
      }

LABEL_116:
      if (data->var1 == 5)
      {
        [(AWPearlAttentionSampler *)self pearlAttentionSamplerErrorOccurred];
      }

      goto LABEL_136;
    }

    if (currentLogLevel == 5)
    {
      v26 = _AALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
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

        v49 = data->var1;
        *buf = 134218240;
        v82 = v28;
        v83 = 1024;
        *v84 = v49;
        v50 = "%13.5f: Device event %d received";
        v51 = v26;
        v52 = 18;
LABEL_120:
        _os_log_impl(&dword_1BB2EF000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_122;
      }

      v26 = _AALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++k)
        {
          if (*(k - 1) == 47)
          {
            v33 = k;
          }

          else if (!*(k - 1))
          {
            v39 = absTimeNS();
            if (v39 == -1)
            {
              v40 = INFINITY;
            }

            else
            {
              v40 = v39 / 1000000000.0;
            }

            v72 = data->var1;
            *buf = 136315906;
            v82 = *&v33;
            v83 = 1024;
            *v84 = 777;
            *&v84[4] = 2048;
            *&v84[6] = v40;
            *&v84[14] = 1024;
            *&v84[16] = v72;
            v50 = "%30s:%-4d: %13.5f: Device event %d received";
            v51 = v26;
            v52 = 34;
            goto LABEL_120;
          }
        }
      }
    }

LABEL_122:
    v73 = data->var1;
    if (data->var1 == 4)
    {
      selfCopy3 = self;
      v75 = 4;
    }

    else if (v73 == 3)
    {
      selfCopy3 = self;
      v75 = 5;
    }

    else
    {
      if (v73 != 2)
      {
        goto LABEL_136;
      }

      selfCopy3 = self;
      v75 = 3;
    }

    [(AWPearlAttentionSampler *)selfCopy3 updateFaceState:v75];
    goto LABEL_136;
  }

  if (notification == 1)
  {
    if (data->var0.var0)
    {
      v25 = 5;
    }

    else
    {
      v25 = 4;
    }

    [(AWPearlAttentionSampler *)self updateFaceState:v25 withFaceMetadata:data];
  }

  else if (notification == 2)
  {
    if (currentLogLevel == 5)
    {
      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = absTimeNS();
        if (v20 == -1)
        {
          v21 = INFINITY;
        }

        else
        {
          v21 = v20 / 1000000000.0;
        }

        v41 = data->var1;
        *buf = 134218240;
        v82 = v21;
        v83 = 1024;
        *v84 = v41;
        v42 = "%13.5f: Operation end reason %d received";
        v43 = v19;
        v44 = 18;
LABEL_80:
        _os_log_impl(&dword_1BB2EF000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_82;
      }

      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++m)
        {
          if (*(m - 1) == 47)
          {
            v29 = m;
          }

          else if (!*(m - 1))
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

            v53 = data->var1;
            *buf = 136315906;
            v82 = *&v29;
            v83 = 1024;
            *v84 = 718;
            *&v84[4] = 2048;
            *&v84[6] = v36;
            *&v84[14] = 1024;
            *&v84[16] = v53;
            v42 = "%30s:%-4d: %13.5f: Operation end reason %d received";
            v43 = v19;
            v44 = 34;
            goto LABEL_80;
          }
        }
      }
    }

LABEL_82:
    if (self->_currentOperation == operationCopy)
    {
      v54 = data->var1;
      if (data->var1 == 4)
      {
        [(SamplingOperation *)operationCopy Timeout];
        if (v55 != 0.0)
        {
          [(AWAttentionSampler *)self setLastPollTimeoutTime:absTimeNS()];
        }

        v54 = data->var1;
      }

      if (v54 == 1)
      {
        cameraActivityNotification_data_forOperation__operationEndFailureCount = 0;
      }

      else if (++cameraActivityNotification_data_forOperation__operationEndFailureCount < 6)
      {
        [(AWPearlAttentionSampler *)self updateFaceState:4];
      }

      else
      {
        cameraActivityNotification_data_forOperation__operationEndFailureCount = 0;
        [(AWPearlAttentionSampler *)self pearlAttentionSamplerErrorOccurred];
      }

      if (self->_useAVFoundation && data->var1 == 3)
      {
        v56 = [(SamplingOperation *)self->_currentOperation cancelActiveOperation:@"Interruption cancellation"];
      }

      currentOperation = self->_currentOperation;
      self->_currentOperation = 0;

      [(AWPearlAttentionSampler *)self setCurrentState:0];
      v58 = MEMORY[0x1E696AEC0];
      v59 = self->_currentOperation;
      [(SamplingOperation *)v59 Timeout];
      v61 = [v58 stringWithFormat:@"operation %p currentOperation %p (timeout %13.5f)", operationCopy, v59, v60];
      stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
      (stateChangedCallback)[2](stateChangedCallback, v61);
    }

    finishingOperation = self->_finishingOperation;
    if (!finishingOperation || finishingOperation == operationCopy)
    {
      goto LABEL_135;
    }

    if (currentLogLevel == 5)
    {
      v64 = _AALog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = absTimeNS();
        if (v65 == -1)
        {
          v66 = INFINITY;
        }

        else
        {
          v66 = v65 / 1000000000.0;
        }

        v76 = self->_finishingOperation;
        *buf = 134218754;
        v82 = v66;
        v83 = 2112;
        *v84 = self;
        *&v84[8] = 2048;
        *&v84[10] = operationCopy;
        *&v84[18] = 2048;
        *&v84[20] = v76;
        v77 = "%13.5f: %@ unexpected finish for operation %p, expecting operation %p";
        v78 = v64;
        v79 = 42;
LABEL_133:
        _os_log_impl(&dword_1BB2EF000, v78, OS_LOG_TYPE_DEFAULT, v77, buf, v79);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_135:
        self->_finishingOperation = 0;

        goto LABEL_136;
      }

      v64 = _AALog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v67 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (n = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++n)
        {
          if (*(n - 1) == 47)
          {
            v67 = n;
          }

          else if (!*(n - 1))
          {
            v69 = absTimeNS();
            if (v69 == -1)
            {
              v70 = INFINITY;
            }

            else
            {
              v70 = v69 / 1000000000.0;
            }

            v80 = self->_finishingOperation;
            *buf = 136316418;
            v82 = *&v67;
            v83 = 1024;
            *v84 = 769;
            *&v84[4] = 2048;
            *&v84[6] = v70;
            *&v84[14] = 2112;
            *&v84[16] = self;
            *&v84[24] = 2048;
            *&v84[26] = operationCopy;
            v85 = 2048;
            v86 = v80;
            v77 = "%30s:%-4d: %13.5f: %@ unexpected finish for operation %p, expecting operation %p";
            v78 = v64;
            v79 = 58;
            goto LABEL_133;
          }
        }
      }
    }

    finishingOperation = self->_finishingOperation;
    goto LABEL_135;
  }

LABEL_136:
}

- (void)updateSamplingDeadline:(unint64_t)deadline forClient:(id)client
{
  v27 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_displayState && ([clientCopy activateMotionDetect] & 1) == 0)
  {
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

        if (deadline == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = deadline / 1000000000.0;
        }

        identifier = [clientCopy identifier];
        *buf = 134218754;
        v22 = v9;
        v23 = 2112;
        *v24 = self;
        *&v24[8] = 2048;
        *&v24[10] = v14;
        *&v24[18] = 2112;
        *&v24[20] = identifier;
        v16 = "%13.5f: %@ ignoring sample with deadline %13.5f for client %@ since sampling is disabled";
        v17 = v7;
        v18 = 42;
LABEL_29:
        _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        goto LABEL_4;
      }

      v7 = _AALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

            if (deadline == -1)
            {
              v19 = INFINITY;
            }

            else
            {
              v19 = deadline / 1000000000.0;
            }

            identifier = [clientCopy identifier];
            *buf = 136316418;
            v22 = *&v10;
            v23 = 1024;
            *v24 = 698;
            *&v24[4] = 2048;
            *&v24[6] = v13;
            *&v24[14] = 2112;
            *&v24[16] = self;
            *&v24[24] = 2048;
            *&v24[26] = v19;
            v25 = 2112;
            v26 = identifier;
            v16 = "%30s:%-4d: %13.5f: %@ ignoring sample with deadline %13.5f for client %@ since sampling is disabled";
            v17 = v7;
            v18 = 58;
            goto LABEL_29;
          }
        }
      }
    }

    goto LABEL_4;
  }

  v20.receiver = self;
  v20.super_class = AWPearlAttentionSampler;
  [(AWAttentionSampler *)&v20 updateSamplingDeadline:deadline forClient:clientCopy];
LABEL_4:
}

- (void)setSmartCoverClosed:(BOOL)closed
{
  closedCopy = closed;
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if (self->_smartCoverClosed != closedCopy)
  {
    self->_smartCoverClosed = closedCopy;
    [(AWPearlAttentionSampler *)self updateSuppressedMaskWithDisplayState:self->_displayState smartCoverClosed:closedCopy carPlayConnected:self->_carPlayConnected];
    v5 = "open";
    if (closedCopy)
    {
      v5 = "closed";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"smart cover %s", v5];
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

        *buf = 134218498;
        v19 = v9;
        v20 = 2112;
        *v21 = self;
        *&v21[8] = 2112;
        *&v21[10] = v6;
        v14 = "%13.5f: %@ %@";
        v15 = v7;
        v16 = 32;
LABEL_22:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_24:
        stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
        (stateChangedCallback)[2](stateChangedCallback, v6);

        return;
      }

      v7 = _AALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

            *buf = 136316162;
            v19 = *&v10;
            v20 = 1024;
            *v21 = 666;
            *&v21[4] = 2048;
            *&v21[6] = v13;
            *&v21[14] = 2112;
            *&v21[16] = self;
            v22 = 2112;
            v23 = v6;
            v14 = "%30s:%-4d: %13.5f: %@ %@";
            v15 = v7;
            v16 = 48;
            goto LABEL_22;
          }
        }
      }
    }

    goto LABEL_24;
  }
}

- (void)setDisplayState:(BOOL)state
{
  stateCopy = state;
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if (self->_displayState == stateCopy)
  {
    return;
  }

  self->_displayState = stateCopy;
  [(AWPearlAttentionSampler *)self updateSuppressedMaskWithDisplayState:stateCopy smartCoverClosed:self->_smartCoverClosed carPlayConnected:self->_carPlayConnected];
  v5 = "off";
  if (stateCopy)
  {
    v5 = "on";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setDisplayState %s", v5];
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

      *buf = 134218498;
      v19 = v9;
      v20 = 2112;
      *v21 = self;
      *&v21[8] = 2112;
      *&v21[10] = v6;
      v14 = "%13.5f: %@ %@";
      v15 = v7;
      v16 = 32;
LABEL_22:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

LABEL_23:

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          *buf = 136316162;
          v19 = *&v10;
          v20 = 1024;
          *v21 = 644;
          *&v21[4] = 2048;
          *&v21[6] = v13;
          *&v21[14] = 2112;
          *&v21[16] = self;
          v22 = 2112;
          v23 = v6;
          v14 = "%30s:%-4d: %13.5f: %@ %@";
          v15 = v7;
          v16 = 48;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  if (self->_displayState)
  {
    [(AWAttentionSampler *)self setLastPollTimeoutTime:absTimeNS()];
  }

  stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
  (stateChangedCallback)[2](stateChangedCallback, v6);
}

- (void)setCarPlayConnected:(BOOL)connected
{
  connectedCopy = connected;
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if (self->_carPlayConnected != connectedCopy)
  {
    self->_carPlayConnected = connectedCopy;
    [(AWPearlAttentionSampler *)self updateSuppressedMaskWithDisplayState:self->_displayState smartCoverClosed:self->_smartCoverClosed carPlayConnected:connectedCopy];
    v5 = "Disconnected from";
    if (connectedCopy)
    {
      v5 = "Connected to";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s CarPlay", v5];
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

        *buf = 134218498;
        v19 = v9;
        v20 = 2112;
        *v21 = self;
        *&v21[8] = 2112;
        *&v21[10] = v6;
        v14 = "%13.5f: %@ %@";
        v15 = v7;
        v16 = 32;
LABEL_22:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_24:
        stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
        (stateChangedCallback)[2](stateChangedCallback, v6);

        return;
      }

      v7 = _AALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

            *buf = 136316162;
            v19 = *&v10;
            v20 = 1024;
            *v21 = 628;
            *&v21[4] = 2048;
            *&v21[6] = v13;
            *&v21[14] = 2112;
            *&v21[16] = self;
            v22 = 2112;
            v23 = v6;
            v14 = "%30s:%-4d: %13.5f: %@ %@";
            v15 = v7;
            v16 = 48;
            goto LABEL_22;
          }
        }
      }
    }

    goto LABEL_24;
  }
}

- (void)updateSuppressedMaskWithDisplayState:(BOOL)state smartCoverClosed:(BOOL)closed carPlayConnected:(BOOL)connected
{
  connectedCopy = connected;
  closedCopy = closed;
  stateCopy = state;
  dispatch_assert_queue_V2(self->super._queue);
  v9 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFBLL;
  v10 = 4;
  if (!connectedCopy)
  {
    v10 = 0;
  }

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v9 | v10];
  v11 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFDLL;
  v12 = 2;
  if (!closedCopy)
  {
    v12 = 0;
  }

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v11 | v12];
  v13 = [(AWAttentionSampler *)self samplingSuppressedMask]& 0xFFFFFFFFFFFFFFFELL | !stateCopy;

  [(AWAttentionSampler *)self setSamplingSuppressedMask:v13];
}

- (void)startStalledTimerForOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(self->super._queue);
  if (!self->_operationStalledTimer)
  {
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->super._queue);
    operationStalledTimer = self->_operationStalledTimer;
    self->_operationStalledTimer = v5;

    v7 = self->_operationStalledTimer;
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v9 = self->_operationStalledTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AWPearlAttentionSampler_startStalledTimerForOperation___block_invoke;
    v10[3] = &unk_1E7F38060;
    v10[4] = self;
    v11 = operationCopy;
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_operationStalledTimer);
  }
}

- (unint64_t)nextSampleTimeForSamplingInterval:(unint64_t)interval ignoreDisplayState:(BOOL)state
{
  stateCopy = state;
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if (([(AWAttentionSampler *)self samplingSuppressedMask]& 1) != 0 && !stateCopy)
  {
    return -1;
  }

  lastTriggerTime = [(AWAttentionSampler *)self lastTriggerTime];
  lastPollTimeoutTime = [(AWAttentionSampler *)self lastPollTimeoutTime];
  if (lastTriggerTime <= lastPollTimeoutTime)
  {
    v10 = lastPollTimeoutTime;
  }

  else
  {
    v10 = lastTriggerTime;
  }

  v11 = v10 + interval;
  if (v10 + interval >= 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = -2;
  }

  if (__CFADD__(v10, interval))
  {
    v12 = -2;
  }

  else
  {
    v12 = v11;
  }

  minimumAttentionSamplerErrorRetryTime = [(AWPearlAttentionSampler *)self minimumAttentionSamplerErrorRetryTime];
  if (currentLogLevel < 7)
  {
    goto LABEL_31;
  }

  v14 = _AALog();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_30;
  }

  v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; *(i - 1) == 47; ++i)
  {
    v15 = i;
LABEL_19:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_19;
  }

  v17 = absTimeNS();
  if (v17 == -1)
  {
    v18 = INFINITY;
  }

  else
  {
    v18 = v17 / 1000000000.0;
  }

  if (v10 == -1)
  {
    v19 = INFINITY;
  }

  else
  {
    v19 = v10 / 1000000000.0;
  }

  if (minimumAttentionSamplerErrorRetryTime == -1)
  {
    v20 = INFINITY;
  }

  else
  {
    v20 = minimumAttentionSamplerErrorRetryTime / 1000000000.0;
  }

  v21 = 136316674;
  v22 = v15;
  v23 = 1024;
  v24 = 562;
  v25 = 2048;
  v26 = v18;
  v27 = 2112;
  selfCopy = self;
  v29 = 2048;
  v30 = v19;
  v31 = 2048;
  v32 = v12 / 1000000000.0;
  v33 = 2048;
  v34 = v20;
  _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ lastTriggerTime %13.5f nextTriggerTime %13.5f minErrorRetryTime %13.5f", &v21, 0x44u);
LABEL_30:

LABEL_31:
  if (v12 <= minimumAttentionSamplerErrorRetryTime)
  {
    return minimumAttentionSamplerErrorRetryTime;
  }

  else
  {
    return v12;
  }
}

- (void)setCurrentState:(int)state
{
  v3 = *&state;
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if ([(AWPearlAttentionSampler *)self currentState]!= v3)
  {
    currentState = [(AWPearlAttentionSampler *)self currentState];
    if (currentState > 2)
    {
      if ((currentState - 4) < 2)
      {
        v6 = v3 == 0;
        goto LABEL_14;
      }

      if (currentState == 3)
      {
        v7 = v3 == 2;
LABEL_11:
        v6 = !v7;
        goto LABEL_14;
      }
    }

    else
    {
      if ((currentState - 1) < 2)
      {
        v6 = 1;
        goto LABEL_14;
      }

      if (!currentState)
      {
        v7 = v3 == 4;
        goto LABEL_11;
      }
    }

    if (currentLogLevel < 3)
    {
      return;
    }

    v13 = _AALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

      *buf = 134218240;
      v29 = v26;
      v30 = 1024;
      *v31 = [(AWPearlAttentionSampler *)self currentState];
      _os_log_error_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_ERROR, "%13.5f: unknown AWAttentionSamplerState %d", buf, 0x12u);
    }

    v6 = 0;
LABEL_14:
    if (currentLogLevel == 5)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        if (v6)
        {
          v16 = "completing";
        }

        else
        {
          v16 = "ignoring invalid";
        }

        AttentionSamplerStateDescription = getAttentionSamplerStateDescription([(AWPearlAttentionSampler *)self currentState]);
        v18 = getAttentionSamplerStateDescription(v3);
        *buf = 134219010;
        v29 = v10;
        v30 = 2112;
        *v31 = self;
        *&v31[8] = 2080;
        *&v31[10] = v16;
        *&v31[18] = 2080;
        *&v31[20] = AttentionSamplerStateDescription;
        *&v31[28] = 2080;
        *&v31[30] = v18;
        v19 = "%13.5f: %@ %s AWAttentionSamplerState transition (%s -> %s)";
        v20 = v8;
        v21 = 52;
LABEL_43:
        _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
        if (!v6)
        {
          return;
        }

LABEL_45:
        v27.receiver = self;
        v27.super_class = AWPearlAttentionSampler;
        [(AWAttentionSampler *)&v27 setCurrentState:v3];
        return;
      }

      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v11 = i;
          }

          else if (!*(i - 1))
          {
            v14 = absTimeNS();
            if (v14 == -1)
            {
              v15 = INFINITY;
            }

            else
            {
              v15 = v14 / 1000000000.0;
            }

            if (v6)
            {
              v22 = "completing";
            }

            else
            {
              v22 = "ignoring invalid";
            }

            v23 = getAttentionSamplerStateDescription([(AWPearlAttentionSampler *)self currentState]);
            v24 = getAttentionSamplerStateDescription(v3);
            *buf = 136316674;
            v29 = *&v11;
            v30 = 1024;
            *v31 = 537;
            *&v31[4] = 2048;
            *&v31[6] = v15;
            *&v31[14] = 2112;
            *&v31[16] = self;
            *&v31[24] = 2080;
            *&v31[26] = v22;
            *&v31[34] = 2080;
            *&v31[36] = v23;
            v32 = 2080;
            v33 = v24;
            v19 = "%30s:%-4d: %13.5f: %@ %s AWAttentionSamplerState transition (%s -> %s)";
            v20 = v8;
            v21 = 68;
            goto LABEL_43;
          }
        }
      }
    }

    if (!v6)
    {
      return;
    }

    goto LABEL_45;
  }
}

- (void)pearlAttentionSamplerErrorOccurred
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  self->_lastErrorTime = absTimeNS();
  [(AWPearlAttentionSampler *)self setCurrentState:1];
  if (currentLogLevel == 5)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = absTimeNS();
      if (v4 == -1)
      {
        v5 = INFINITY;
      }

      else
      {
        v5 = v4 / 1000000000.0;
      }

      *v14 = 134218498;
      *&v14[4] = v5;
      *&v14[12] = 2112;
      *&v14[14] = self;
      *&v14[22] = 2112;
      *&v14[24] = @"Pearl attention sampler error!";
      v10 = "%13.5f: %@ %@";
      v11 = v3;
      v12 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v6 = i;
        }

        else if (!*(i - 1))
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

          *v14 = 136316162;
          *&v14[4] = v6;
          *&v14[12] = 1024;
          *&v14[14] = 480;
          *&v14[18] = 2048;
          *&v14[20] = v9;
          *&v14[28] = 2112;
          *&v14[30] = self;
          *&v14[38] = 2112;
          v15 = @"Pearl attention sampler error!";
          v10 = "%30s:%-4d: %13.5f: %@ %@";
          v11 = v3;
          v12 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v13 = [(AWAttentionSampler *)self stateChangedCallback:*v14];
  (v13)[2](v13, @"Pearl attention sampler error!");
}

- (void)updateFaceState:(int)state withFaceMetadata:(AWFaceDetectMetadata *)metadata
{
  v5 = *&state;
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  if ((v5 - 6) <= 0xFFFFFFFC)
  {
    __assert_rtn("[AWPearlAttentionSampler updateFaceState:withFaceMetadata:]", "PearlAttentionSampler.m", 341, "(state == AWAttentionSamplerStateInitialized) || (state == AWAttentionSamplerStateAbsent) || (state == AWAttentionSamplerStatePresent)");
  }

  v7 = absTimeNS();
  v8 = "FACE FOUND";
  if (v5 != 5)
  {
    v8 = "FACE NOT FOUND";
  }

  if (v7 == -1)
  {
    v9 = INFINITY;
  }

  else
  {
    v9 = v7 / 1000000000.0;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updateFaceState:withFaceMetadata: %s at %13.5f", v8, *&v9];
  if (currentLogLevel == 5)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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

      *buf = 134218498;
      v47 = v13;
      v48 = 2112;
      *v49 = self;
      *&v49[8] = 2112;
      *&v49[10] = v10;
      v18 = "%13.5f: %@ %@";
      v19 = v11;
      v20 = 32;
LABEL_25:
      _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_27;
    }

    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
        }

        else if (!*(i - 1))
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

          *buf = 136316162;
          v47 = *&v14;
          v48 = 1024;
          *v49 = 348;
          *&v49[4] = 2048;
          *&v49[6] = v17;
          *&v49[14] = 2112;
          *&v49[16] = self;
          v50 = 2112;
          v51 = v10;
          v18 = "%30s:%-4d: %13.5f: %@ %@";
          v19 = v11;
          v20 = 48;
          goto LABEL_25;
        }
      }
    }
  }

LABEL_27:
  [(AWPearlAttentionSampler *)self cancelStalledTimer];
  [(AWAttentionSampler *)self setLastTriggerTime:self->_operationCreateTime];
  v21 = 0x1EBC52000;
  if (v5 != 5)
  {
    goto LABEL_68;
  }

  [(AWAttentionSampler *)self setLastPositiveDetectTime:v7];
  if (metadata)
  {
    if (!self->_signpostLogged)
    {
      v22 = _AALog();
      v23 = _AALog();
      v24 = os_signpost_id_generate(v23);

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v22, OS_SIGNPOST_EVENT, v24, "AA: Face detect success", &unk_1BB32C3F2, buf, 2u);
      }

      self->_signpostLogged = 1;
    }

    [(AWAttentionSampler *)self setLastFaceMetadataValid:metadata->var0];
    [(AWAttentionSampler *)self setLastPitch:metadata->var1];
    [(AWAttentionSampler *)self setLastYaw:metadata->var2];
    [(AWAttentionSampler *)self setLastRoll:metadata->var3];
    [(AWAttentionSampler *)self setLastOrientation:metadata->var4];
    [(AWAttentionSampler *)self setLastDistance:metadata->var5];
    [(AWAttentionSampler *)self setLastMetadataType:metadata->var7];
    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:16];
    [(AWAttentionSampler *)self setLastMotionData:v25];

    for (j = 0; j != 16; ++j)
    {
      *&v26 = metadata->var8[j];
      v28 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      lastMotionData = [(AWAttentionSampler *)self lastMotionData];
      [lastMotionData setObject:v28 atIndexedSubscript:j];
    }

    [(AWAttentionSampler *)self setLastMotionResult:metadata->var9];
    *&v30 = metadata->var10;
    [(AWAttentionSampler *)self setLastFaceDetectionScore:v30];
    [(AWAttentionSampler *)self setLastFaceBounds:metadata->var12.origin.x, metadata->var12.origin.y, metadata->var12.size.width, metadata->var12.size.height];
    [(AWAttentionSampler *)self setLastPersonID:metadata->var11];
    v21 = 0x1EBC52000uLL;
  }

  if (*(&self->super.super.isa + *(v21 + 1884)))
  {
    sampleLogger = [(AWAttentionSampler *)self sampleLogger];
    [sampleLogger sampleSucceeded];
  }

  if (!metadata)
  {
LABEL_68:
    if (!self->_signpostLogged)
    {
      v32 = _AALog();
      v33 = _AALog();
      v34 = os_signpost_id_generate(v33);

      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v32, OS_SIGNPOST_EVENT, v34, "AA: Face detect failed", &unk_1BB32C3F2, buf, 2u);
      }

      self->_signpostLogged = 1;
    }

    [(AWAttentionSampler *)self setLastFaceMetadataValid:0];
    [(AWAttentionSampler *)self setLastPitch:0.0];
    [(AWAttentionSampler *)self setLastYaw:0.0];
    [(AWAttentionSampler *)self setLastRoll:0.0];
    [(AWAttentionSampler *)self setLastOrientation:0];
    [(AWAttentionSampler *)self setLastDistance:0.0];
    [(AWAttentionSampler *)self setLastMetadataType:0];
    [(AWAttentionSampler *)self setLastMotionResult:0];
    [(AWAttentionSampler *)self setLastFaceDetectionScore:0.0];
    for (k = 0; k != 16; ++k)
    {
      LODWORD(v35) = 2143289344;
      v37 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      lastMotionData2 = [(AWAttentionSampler *)self lastMotionData];
      [lastMotionData2 setObject:v37 atIndexedSubscript:k];
    }

    [(AWAttentionSampler *)self setLastPersonID:0];
    [(AWAttentionSampler *)self setLastFaceBounds:0.0, 0.0, 0.0, 0.0];
    if (v5 != 5)
    {
      [*(&self->super.super.isa + *(v21 + 1884)) Timeout];
      if (v40 != 0.0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  operationEndableCallback = [(AWAttentionSampler *)self operationEndableCallback];
  if (operationEndableCallback[2]())
  {

LABEL_54:
    [(AWPearlAttentionSampler *)self finishingFaceDetect:v10];
    goto LABEL_55;
  }

  operationBackend = [*(&self->super.super.isa + *(v21 + 1884)) operationBackend];

  if (operationBackend != 1)
  {
    goto LABEL_54;
  }

  [(AWPearlAttentionSampler *)self setCurrentState:0];
LABEL_55:
  [(AWPearlAttentionSampler *)self setCurrentState:v5];
  stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
  (stateChangedCallback)[2](stateChangedCallback, v10);

  if ([(AWPearlAttentionSampler *)self currentState]!= 2)
  {
    if (-[AWPearlAttentionSampler currentState](self, "currentState") != 3 && -[AWPearlAttentionSampler currentState](self, "currentState") != 4 || (v43 = *(v21 + 1884), [*(&self->super.super.isa + v43) State] != 2) || (objc_msgSend(*(&self->super.super.isa + v43), "Timeout"), v44 == 0.0))
    {
      if ([(AWPearlAttentionSampler *)self currentState]!= 3 || *(&self->super.super.isa + *(v21 + 1884)) || self->_finishingOperation)
      {
        [(AWPearlAttentionSampler *)self setCurrentState:0];
        stateChangedCallback2 = [(AWAttentionSampler *)self stateChangedCallback];
        (stateChangedCallback2)[2](stateChangedCallback2, v10);
      }
    }
  }
}

- (void)updateFaceState:(int)state
{
  v3 = *&state;
  dispatch_assert_queue_V2(self->super._queue);

  [(AWPearlAttentionSampler *)self updateFaceState:v3 withFaceMetadata:0];
}

- (void)shouldSample:(BOOL)sample withDeadline:(unint64_t)deadline withOptions:(id)options
{
  v5 = *&options.var0;
  sampleCopy = sample;
  dispatch_assert_queue_V2(self->super._queue);
  currentOperation = self->_currentOperation;
  if (sampleCopy)
  {
    if (!currentOperation)
    {

      [(AWPearlAttentionSampler *)self triggerFaceDetectWithDeadline:deadline options:*&v5 & 0xFFFFFFLL];
    }
  }

  else if (currentOperation)
  {

    [(AWPearlAttentionSampler *)self cancelFaceDetect:@"!shouldSample"];
  }
}

- (void)cancelFaceDetect:(id)detect
{
  detectCopy = detect;
  dispatch_assert_queue_V2(self->super._queue);
  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    v5 = [(SamplingOperation *)currentOperation cancelActiveOperation:detectCopy];
    v6 = self->_currentOperation;
    self->_currentOperation = 0;

    [(AWPearlAttentionSampler *)self setCurrentState:0];
    [(AWPearlAttentionSampler *)self cancelStalledTimer];
  }
}

- (void)finishingFaceDetect:(id)detect
{
  v26 = *MEMORY[0x1E69E9840];
  detectCopy = detect;
  dispatch_assert_queue_V2(self->super._queue);
  currentOperation = self->_currentOperation;
  if (!currentOperation)
  {
    goto LABEL_24;
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

      v13 = self->_currentOperation;
      v20 = 134218754;
      v21 = v8;
      v22 = 2112;
      *v23 = self;
      *&v23[8] = 2048;
      *&v23[10] = v13;
      *&v23[18] = 2112;
      *&v23[20] = detectCopy;
      v14 = "%13.5f: %@ finishing presence operation %p (%@)";
      v15 = v6;
      v16 = 42;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_22;
    }

    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          v17 = self->_currentOperation;
          v20 = 136316418;
          v21 = *&v9;
          v22 = 1024;
          *v23 = 277;
          *&v23[4] = 2048;
          *&v23[6] = v12;
          *&v23[14] = 2112;
          *&v23[16] = self;
          *&v23[24] = 2048;
          *&v23[26] = v17;
          v24 = 2112;
          v25 = detectCopy;
          v14 = "%30s:%-4d: %13.5f: %@ finishing presence operation %p (%@)";
          v15 = v6;
          v16 = 58;
          goto LABEL_20;
        }
      }
    }
  }

  currentOperation = self->_currentOperation;
LABEL_22:
  objc_storeStrong(&self->_finishingOperation, currentOperation);
  v18 = self->_currentOperation;
  self->_currentOperation = 0;

  if ([(SamplingOperation *)self->_finishingOperation operationBackend]== 2)
  {
    v19 = [(SamplingOperation *)self->_finishingOperation cancelActiveOperation:@"Finish"];
  }

LABEL_24:
}

- (void)faceDetectStalled:(id)stalled
{
  v28 = *MEMORY[0x1E69E9840];
  stalledCopy = stalled;
  dispatch_assert_queue_V2(self->super._queue);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"operation %p currentOperation %p faceDetectStalled", stalledCopy, self->_currentOperation];
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

      *buf = 134218498;
      v23 = v8;
      v24 = 2112;
      *v25 = self;
      *&v25[8] = 2112;
      *&v25[10] = v5;
      v13 = "%13.5f: %@ %@";
      v14 = v6;
      v15 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
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

          *buf = 136316162;
          v23 = *&v9;
          v24 = 1024;
          *v25 = 250;
          *&v25[4] = 2048;
          *&v25[6] = v12;
          *&v25[14] = 2112;
          *&v25[16] = self;
          v26 = 2112;
          v27 = v5;
          v13 = "%30s:%-4d: %13.5f: %@ %@";
          v14 = v6;
          v15 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if (self->_currentOperation == stalledCopy)
  {
    [(AWPearlAttentionSampler *)self updateFaceState:4];
    [(AWPearlAttentionSampler *)self cancelFaceDetect:v5];
    stateChangedCallback = [(AWAttentionSampler *)self stateChangedCallback];
    (stateChangedCallback)[2](stateChangedCallback, v5);
  }

  else
  {
    queue = self->super._queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AWPearlAttentionSampler_faceDetectStalled___block_invoke;
    block[3] = &unk_1E7F37C10;
    v19 = stalledCopy;
    v20 = v5;
    selfCopy = self;
    dispatch_async(queue, block);

    stateChangedCallback = v19;
  }
}

void __45__AWPearlAttentionSampler_faceDetectStalled___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cancelActiveOperation:*(a1 + 40)];
  if (currentLogLevel == 5)
  {
    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = absTimeNS();
      if (v4 == -1)
      {
        v5 = INFINITY;
      }

      else
      {
        v5 = v4 / 1000000000.0;
      }

      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      v17 = 134218498;
      v18 = v5;
      v19 = 2112;
      *v20 = v10;
      *&v20[8] = 2048;
      *&v20[10] = v11;
      v12 = "%13.5f: %@ cancelled stalled presence operation %p";
      v13 = v3;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      return;
    }

    v3 = _AALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v6 = i;
        }

        else if (!*(i - 1))
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

          v15 = *(a1 + 48);
          v16 = *(a1 + 32);
          v17 = 136316162;
          v18 = *&v6;
          v19 = 1024;
          *v20 = 266;
          *&v20[4] = 2048;
          *&v20[6] = v9;
          *&v20[14] = 2112;
          *&v20[16] = v15;
          v21 = 2048;
          v22 = v16;
          v12 = "%30s:%-4d: %13.5f: %@ cancelled stalled presence operation %p";
          v13 = v3;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }
  }
}

- (void)triggerFaceDetectWithDeadline:(unint64_t)deadline options:(id)options
{
  v4 = *&options.var0;
  v47 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._queue);
  createNewSamplingOperation = [(AWPearlAttentionSampler *)self createNewSamplingOperation];
  if (self->_currentOperation)
  {
    __assert_rtn("[AWPearlAttentionSampler triggerFaceDetectWithDeadline:options:]", "PearlAttentionSampler.m", 178, "!_currentOperation");
  }

  v8 = createNewSamplingOperation;
  self->_operationCreateTime = absTimeNS();
  if (deadline)
  {
    v9 = deadline - absTimeNS();
  }

  else
  {
    v9 = 0;
  }

  minimumAttentionSamplerErrorRetryTime = [(AWPearlAttentionSampler *)self minimumAttentionSamplerErrorRetryTime];
  if (minimumAttentionSamplerErrorRetryTime >= absTimeNS())
  {
    if (currentLogLevel >= 3)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v32 = absTimeNS();
        if (v32 == -1)
        {
          v33 = INFINITY;
        }

        else
        {
          v33 = v32 / 1000000000.0;
        }

        lastErrorTime = self->_lastErrorTime;
        if (lastErrorTime == -1)
        {
          v35 = INFINITY;
        }

        else
        {
          v35 = lastErrorTime / 1000000000.0;
        }

        *buf = 134218498;
        v42 = v33;
        v43 = 2112;
        *v44 = self;
        *&v44[8] = 2048;
        *&v44[10] = v35;
        _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, "%13.5f: %@ not creating presence operation because our last error was at %13.5f", buf, 0x20u);
      }
    }
  }

  else
  {
    if (v9 < 1)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9 / 1000000000.0;
    }

    v13 = [v8 createPresenceDetectOperationWithTimeout:*&v4 & 0xFFFFFFLL options:v11];
    if (!v13)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke;
      v40[3] = &unk_1E7F37BE8;
      v40[4] = self;
      [v8 startPresenceDetectOperation:v40];
      self->_signpostLogged = 0;
      v14 = _AALog();
      v15 = _AALog();
      v16 = os_signpost_id_generate(v15);

      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v14, OS_SIGNPOST_EVENT, v16, "AA: Face detect started", &unk_1BB32C3F2, buf, 2u);
      }

      self->_currentOptions.AWAttentionSamplerActivateAttentionDetection = v4 & 1;
      self->_currentOptions.AWAttentionSamplerActivateMotionDetection = BYTE1(v4) & 1;
      [(AWPearlAttentionSampler *)self setCurrentState:2];
      if (currentLogLevel == 5)
      {
        v17 = _AALog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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

          if (deadline == -1)
          {
            v24 = INFINITY;
          }

          else
          {
            v24 = deadline / 1000000000.0;
          }

          if (v9 == -1)
          {
            v25 = INFINITY;
          }

          else
          {
            v25 = v9 / 1000000000.0;
          }

          *buf = 134219010;
          v42 = v19;
          v43 = 2112;
          *v44 = self;
          *&v44[8] = 2048;
          *&v44[10] = v8;
          *&v44[18] = 2048;
          *&v44[20] = v24;
          *&v44[28] = 2048;
          *&v44[30] = v25;
          v26 = "%13.5f: %@ starting presence operation %p with deadline %13.5f, interval %13.5f";
          v27 = v17;
          v28 = 52;
LABEL_46:
          _os_log_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_48:
          sampleLogger = [(AWAttentionSampler *)self sampleLogger];
          [sampleLogger sampleStartedWithDeadline:deadline];

          objc_storeStrong(&self->_currentOperation, v8);
          [(AWPearlAttentionSampler *)self cancelStalledTimer];
          [(AWPearlAttentionSampler *)self startStalledTimerForOperation:v8];
          goto LABEL_49;
        }

        v17 = _AALog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAttentionSampler.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v20 = i;
            }

            else if (!*(i - 1))
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

              if (deadline == -1)
              {
                v29 = INFINITY;
              }

              else
              {
                v29 = deadline / 1000000000.0;
              }

              if (v9 == -1)
              {
                v30 = INFINITY;
              }

              else
              {
                v30 = v9 / 1000000000.0;
              }

              *buf = 136316674;
              v42 = *&v20;
              v43 = 1024;
              *v44 = 223;
              *&v44[4] = 2048;
              *&v44[6] = v23;
              *&v44[14] = 2112;
              *&v44[16] = self;
              *&v44[24] = 2048;
              *&v44[26] = v8;
              *&v44[34] = 2048;
              *&v44[36] = v29;
              v45 = 2048;
              v46 = v30;
              v26 = "%30s:%-4d: %13.5f: %@ starting presence operation %p with deadline %13.5f, interval %13.5f";
              v27 = v17;
              v28 = 68;
              goto LABEL_46;
            }
          }
        }
      }

      goto LABEL_48;
    }

    v36 = v13;
    if (currentLogLevel >= 3)
    {
      v37 = _AALog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = absTimeNS();
        if (v38 == -1)
        {
          v39 = INFINITY;
        }

        else
        {
          v39 = v38 / 1000000000.0;
        }

        *buf = 134218498;
        v42 = v39;
        v43 = 2112;
        *v44 = self;
        *&v44[8] = 2112;
        *&v44[10] = v36;
        _os_log_error_impl(&dword_1BB2EF000, v37, OS_LOG_TYPE_ERROR, "%13.5f: %@ failed to create presence operation: %@", buf, 0x20u);
      }
    }

    [(AWPearlAttentionSampler *)self pearlAttentionSamplerErrorOccurred];
  }

LABEL_49:
}

void __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke_2;
  v7[3] = &unk_1E7F38060;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

id *__65__AWPearlAttentionSampler_triggerFaceDetectWithDeadline_options___block_invoke_2(id *result)
{
  if (result[4])
  {
    v1 = result;
    [result[5] pearlAttentionSamplerErrorOccurred];
    v2 = v1[5];

    return [v2 updateFaceState:4];
  }

  return result;
}

- (id)initForUnitTest:(BOOL)test useAVFoundation:(BOOL)foundation
{
  testCopy = test;
  v34.receiver = self;
  v34.super_class = AWPearlAttentionSampler;
  v6 = [(AWAttentionSampler *)&v34 init];
  v7 = v6;
  if (v6)
  {
    v6->_useAVFoundation = foundation;
    v6->_unitTest = testCopy;
    currentOperation = v6->_currentOperation;
    v6->_currentOperation = 0;

    finishingOperation = v7->_finishingOperation;
    v7->_finishingOperation = 0;

    unitTestOperation = v7->_unitTestOperation;
    v7->_unitTestOperation = 0;

    v7->_signpostLogged = 0;
    v7->_enrollOrMatchOperationUnderway = 0;
    if (testCopy)
    {
      createNewSamplingOperation = [(AWPearlAttentionSampler *)v7 createNewSamplingOperation];
      v12 = v7->_unitTestOperation;
      v7->_unitTestOperation = createNewSamplingOperation;

      v7->_displayState = 1;
      [(AWAttentionSampler *)v7 setUnitTestMode];
      unitTestSampler = [(AWPearlAttentionSampler *)v7 unitTestSampler];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke;
      v32[3] = &unk_1E7F37B98;
      v14 = &v33;
      v15 = v7;
      v33 = v15;
      [unitTestSampler setDisplayCallback:v32];

      unitTestSampler2 = [(AWPearlAttentionSampler *)v15 unitTestSampler];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_3;
      v30[3] = &unk_1E7F37B98;
      v17 = &v31;
      v18 = v15;
      v31 = v18;
      [unitTestSampler2 setSmartCoverCallback:v30];

      unitTestSampler3 = [(AWPearlAttentionSampler *)v18 unitTestSampler];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_5;
      v28[3] = &unk_1E7F37B98;
      v29 = v18;
      [unitTestSampler3 setCarplayStateChangedCallback:v28];
    }

    else
    {
      v7->_carPlayConnected = 0;
      queue = v7->super._queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_7;
      block[3] = &unk_1E7F38038;
      v14 = &v27;
      v21 = v7;
      v27 = v21;
      dispatch_async(queue, block);
      v22 = v7->super._queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_8;
      handler[3] = &unk_1E7F37BC0;
      v17 = &v25;
      v25 = v21;
      notify_register_dispatch("com.apple.BiometricKit.activeOperation", v21 + 68, v22, handler);
    }
  }

  return v7;
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_2;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_4;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_5(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_6;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

uint64_t __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BKSHIDServicesIsSmartCoverClosed() != 0;

  return [v1 setSmartCoverClosed:v2];
}

uint64_t __59__AWPearlAttentionSampler_initForUnitTest_useAVFoundation___block_invoke_8(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (state64 - 1 >= 2)
  {
    if (*(v4 + 276) != 1)
    {
      return result;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  *(v4 + 276) = v5;
  return result;
}

- (AWPearlAttentionSampler)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy)
  {
    selfCopy = [optionsCopy valueForKey:@"useAVFoundation"];

    if (selfCopy)
    {
      selfCopy = [v5 valueForKey:@"unitTest"];

      if (selfCopy)
      {
        v7 = [v5 valueForKey:@"unitTest"];
        bOOLValue = [v7 BOOLValue];

        v9 = [v5 valueForKey:@"useAVFoundation"];
        bOOLValue2 = [v9 BOOLValue];

        self = [(AWPearlAttentionSampler *)self initForUnitTest:bOOLValue useAVFoundation:bOOLValue2];
        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end