@interface AWScheduler
+ (id)sharedMotionDetectScheduler;
+ (id)sharedScheduler;
+ (id)sharedUnitTestScheduler;
- (AWScheduler)initWithOptions:(id)options;
- (AWSchedulerObserver)observer;
- (BOOL)canActiveOperationBeEnded;
- (BOOL)canRunMotionDetect;
- (BOOL)shouldActivateAttentionDetectForStreaming;
- (BOOL)shouldActivateAttentionDetectionForSampling;
- (BOOL)shouldActivateEyeReliefForStreaming;
- (BOOL)shouldActivateMotionDetectForSampling;
- (id)addStreamingClient:(id)client withIdentifier:(id)identifier;
- (id)cancelFaceDetectStream:(id)stream withIdentifier:(id)identifier;
- (id)description;
- (id)resetInterruptedStreamingClientWithIdentifier:(id)identifier;
- (id)streamFaceDetectEvents;
- (id)streamFaceDetectEventsWithOptions:(id)options;
- (unint64_t)nextSamplingTimeForSamplingInterval:(unint64_t)interval;
- (void)addClient:(id)client;
- (void)armEvents;
- (void)handleNotification:(unint64_t)notification;
- (void)processHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask timestamp:(unint64_t)timestamp senderID:(__IOHIDService *)d displayUUID:(id)iD;
- (void)reevaluate;
- (void)removeInvalidClientsWithConnection:(id)connection;
- (void)removeStreamingClientwithIdentifier:(id)identifier;
- (void)screenStateChanging:(BOOL)changing;
- (void)setClientAsInterrupted:(id)interrupted forKey:(id)key;
- (void)setSmartCoverClosed:(BOOL)closed;
@end

@implementation AWScheduler

- (void)armEvents
{
  v61 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = absTimeNS();
  shouldActivateAttentionDetectionForSampling = [(AWScheduler *)self shouldActivateAttentionDetectionForSampling];
  if (shouldActivateAttentionDetectionForSampling)
  {
    v5 = 0;
  }

  else if ([(AWScheduler *)self shouldActivateMotionDetectForSampling])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  [(AWAttentionSampler *)self->_attentionSampler startDeadlineComputation];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v45 + 1) + 8 * i) updateDeadlinesForTime:v3];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v8);
  }

  [(AWAttentionSampler *)self->_attentionSampler finishDeadlineComputationWithOptions:v5 | shouldActivateAttentionDetectionForSampling];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = self->_clients;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    v15 = -1;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v41 + 1) + 8 * j) nextTimerForTime:{v3, v41}];
        if (v17 < v15)
        {
          v15 = v17;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v13);

    if (v15 != -1)
    {
      v18 = absTimeNS();
      if (v15 >= v18 || currentLogLevel < 7)
      {
        goto LABEL_52;
      }

      v20 = _AALog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v21 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++k)
      {
        if (*(k - 1) == 47)
        {
          v21 = k;
        }

        else if (!*(k - 1))
        {
          v28 = absTimeNS();
          if (v28 == -1)
          {
            v29 = INFINITY;
          }

          else
          {
            v29 = v28 / 1000000000.0;
          }

          *buf = 136316162;
          v50 = v21;
          v51 = 1024;
          v52 = 454;
          v53 = 2048;
          v54 = v29;
          v55 = 2112;
          selfCopy3 = self;
          v57 = 2048;
          v58 = v15 / 1000000000.0;
          _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ next deadline %13.5f IN THE PAST!", buf, 0x30u);
LABEL_51:

LABEL_52:
          v33 = v15 - v18;
          if (v15 < v18)
          {
            v33 = 0;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v33;
          }

          timer = self->_timer;
          v36 = dispatch_time(0, v34);
          dispatch_source_set_timer(timer, v36, 0xFFFFFFFFFFFFFFFFLL, 0);
          if (currentLogLevel >= 7)
          {
            v23 = _AALog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v37 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
              for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++m)
              {
                if (*(m - 1) == 47)
                {
                  v37 = m;
                }

                else if (!*(m - 1))
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

                  *buf = 136316162;
                  v50 = v37;
                  v51 = 1024;
                  v52 = 460;
                  v53 = 2048;
                  v54 = v40;
                  v55 = 2112;
                  selfCopy3 = self;
                  v57 = 2048;
                  v58 = v15 / 1000000000.0;
                  v30 = "%30s:%-4d: %13.5f: %@ scheduled timer for %13.5f";
                  v31 = v23;
                  v32 = 48;
                  goto LABEL_69;
                }
              }
            }

LABEL_70:
          }

          return;
        }
      }
    }
  }

  else
  {
  }

  if (currentLogLevel >= 7)
  {
    v23 = _AALog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    v24 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
    for (n = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++n)
    {
      if (*(n - 1) == 47)
      {
        v24 = n;
      }

      else if (!*(n - 1))
      {
        v26 = absTimeNS();
        if (v26 == -1)
        {
          v27 = INFINITY;
        }

        else
        {
          v27 = v26 / 1000000000.0;
        }

        *buf = 136315906;
        v50 = v24;
        v51 = 1024;
        v52 = 447;
        v53 = 2048;
        v54 = v27;
        v55 = 2112;
        selfCopy3 = self;
        v30 = "%30s:%-4d: %13.5f: %@ no timer to schedule, waiting for next event";
        v31 = v23;
        v32 = 38;
LABEL_69:
        _os_log_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        goto LABEL_70;
      }
    }
  }
}

- (BOOL)shouldActivateAttentionDetectionForSampling
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  clients = self->_clients;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__AWScheduler_shouldActivateAttentionDetectionForSampling__block_invoke;
  v11[3] = &unk_1E7F373B8;
  v11[4] = &v12;
  [(NSMutableArray *)clients enumerateObjectsUsingBlock:v11];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
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

  v8 = *(v13 + 6);
  *buf = 136315906;
  v17 = v4;
  v18 = 1024;
  v19 = 773;
  v20 = 2048;
  v21 = v7;
  v22 = 1024;
  v23 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active AttentionDetect clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v13 + 6) > 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (BOOL)shouldActivateMotionDetectForSampling
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  clients = self->_clients;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__AWScheduler_shouldActivateMotionDetectForSampling__block_invoke;
  v11[3] = &unk_1E7F373B8;
  v11[4] = &v12;
  [(NSMutableArray *)clients enumerateObjectsUsingBlock:v11];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
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

  v8 = *(v13 + 6);
  *buf = 136315906;
  v17 = v4;
  v18 = 1024;
  v19 = 818;
  v20 = 2048;
  v21 = v7;
  v22 = 1024;
  v23 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active motion detect clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v13 + 6) > 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __52__AWScheduler_shouldActivateMotionDetectForSampling__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isStreamingClient] & 1) == 0 && objc_msgSend(v3, "activateMotionDetect") && (objc_msgSend(v3, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __58__AWScheduler_shouldActivateAttentionDetectionForSampling__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isStreamingClient] & 1) == 0 && objc_msgSend(v3, "activateAttentionDetection") && (objc_msgSend(v3, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> (identifier: %@)", v5, self, self->_identifier];

  return v6;
}

- (AWSchedulerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)screenStateChanging:(BOOL)changing
{
  changingCopy = changing;
  [(AWAttentionSampler *)self->_attentionSampler setDisplayState:?];
  attentionStreamer = self->_attentionStreamer;

  [(AWAttentionStreamer *)attentionStreamer setDisplayStateWithMask:128 displayState:changingCopy];
}

- (BOOL)canRunMotionDetect
{
  if ([(AWAttentionSampler *)self->_attentionSampler currentState]== 1 || [(AWScheduler *)self shouldActivateAttentionDetectionForSampling])
  {
    return 0;
  }

  return [(AWScheduler *)self shouldActivateMotionDetectForSampling];
}

- (BOOL)shouldActivateEyeReliefForStreaming
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  streamingClients = self->_streamingClients;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__AWScheduler_shouldActivateEyeReliefForStreaming__block_invoke;
  v11[3] = &unk_1E7F37800;
  v11[4] = &v12;
  [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v11];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
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

  v8 = *(v13 + 6);
  *buf = 136315906;
  v17 = v4;
  v18 = 1024;
  v19 = 804;
  v20 = 2048;
  v21 = v7;
  v22 = 1024;
  v23 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active eyeRelief client", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v13 + 6) > 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __50__AWScheduler_shouldActivateEyeReliefForStreaming__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 activateEyeRelief] && (objc_msgSend(v4, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)shouldActivateAttentionDetectForStreaming
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  streamingClients = self->_streamingClients;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AWScheduler_shouldActivateAttentionDetectForStreaming__block_invoke;
  v11[3] = &unk_1E7F37800;
  v11[4] = &v12;
  [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v11];
  if (currentLogLevel < 7)
  {
    goto LABEL_14;
  }

  v3 = _AALog();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v4 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
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

  v8 = *(v13 + 6);
  *buf = 136315906;
  v17 = v4;
  v18 = 1024;
  v19 = 788;
  v20 = 2048;
  v21 = v7;
  v22 = 1024;
  v23 = v8;
  _os_log_impl(&dword_1BB2EF000, v3, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %d active AD clients", buf, 0x22u);
LABEL_13:

LABEL_14:
  v9 = *(v13 + 6) > 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __56__AWScheduler_shouldActivateAttentionDetectForStreaming__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 activateAttentionDetection] && (objc_msgSend(v4, "invalid") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)setClientAsInterrupted:(id)interrupted forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  keyCopy = key;
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

      identifier = [interruptedCopy identifier];
      *v22 = 134218242;
      *&v22[4] = v10;
      *&v22[12] = 2112;
      *&v22[14] = identifier;
      v16 = "%13.5f: Adding client %@ to the interrupted clients list";
      v17 = v8;
      v18 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, v22, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v11 = i;
        }

        else if (!*(i - 1))
        {
          v13 = absTimeNS();
          if (v13 == -1)
          {
            v14 = INFINITY;
          }

          else
          {
            v14 = v13 / 1000000000.0;
          }

          identifier = [interruptedCopy identifier];
          *v22 = 136315906;
          *&v22[4] = v11;
          *&v22[12] = 1024;
          *&v22[14] = 754;
          *&v22[18] = 2048;
          *&v22[20] = v14;
          *&v22[28] = 2112;
          *&v22[30] = identifier;
          v16 = "%30s:%-4d: %13.5f: Adding client %@ to the interrupted clients list";
          v17 = v8;
          v18 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(NSMutableDictionary *)self->_streamingClients removeObjectForKey:keyCopy, *v22, *&v22[8], *&v22[24], v23];
  [(NSMutableDictionary *)self->_interruptedStreamingClients setObject:interruptedCopy forKey:keyCopy];
  attentionStreamer = self->_attentionStreamer;
  identifier2 = [interruptedCopy identifier];
  [interruptedCopy streamingDuration];
  -[AWAttentionStreamer logStreamComplete:identifier:duration:ERActivated:](attentionStreamer, "logStreamComplete:identifier:duration:ERActivated:", 128, identifier2, v21, [interruptedCopy activateEyeRelief]);

  [interruptedCopy setStreamingDuration:0.0];
}

- (void)handleNotification:(unint64_t)notification
{
  dispatch_assert_queue_V2(self->_queue);
  if (notification == 4 || notification == 1)
  {
    streamingClients = self->_streamingClients;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__AWScheduler_handleNotification___block_invoke;
    v6[3] = &unk_1E7F37390;
    v6[4] = self;
    v6[5] = notification;
    [(NSMutableDictionary *)streamingClients enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __34__AWScheduler_handleNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 invalid] & 1) == 0)
  {
    [v5 notifyStreamingClientOfInterruption:*(a1 + 40)];
    [*(a1 + 32) calculateTimeDelta:objc_msgSend(v5 endTime:"streamingStartTime") timebase:{mach_continuous_time(), *(*(a1 + 32) + 64)}];
    [v5 setStreamingDuration:?];
    [*(a1 + 32) setClientAsInterrupted:v5 forKey:v6];
    [v5 invalidateWithoutQueue];
  }
}

- (id)cancelFaceDetectStream:(id)stream withIdentifier:(id)identifier
{
  v66[1] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (![(AWAttentionStreamer *)self->_attentionStreamer isStreamerRunningWithMask:128])
  {
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

        *v63 = 134217984;
        *&v63[4] = v13;
        v20 = "%13.5f: Not stopping streamer as it isn't running currently";
        v21 = v11;
        v22 = 12;
LABEL_37:
        _os_log_impl(&dword_1BB2EF000, v21, OS_LOG_TYPE_DEFAULT, v20, v63, v22);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_39:
        v28 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A798];
        v65 = *MEMORY[0x1E696A578];
        v66[0] = @" Streamer not running";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:{1, *v63, *&v63[8], *&v63[24]}];
        v31 = [v28 errorWithDomain:v29 code:3 userInfo:v30];

        goto LABEL_91;
      }

      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

            *v63 = 136315650;
            *&v63[4] = v14;
            *&v63[12] = 1024;
            *&v63[14] = 672;
            *&v63[18] = 2048;
            *&v63[20] = v19;
            v20 = "%30s:%-4d: %13.5f: Not stopping streamer as it isn't running currently";
            v21 = v11;
            v22 = 28;
            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_39;
  }

  if ([(NSMutableDictionary *)self->_streamingClients count]> 1)
  {
    goto LABEL_45;
  }

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

      *v63 = 134217984;
      *&v63[4] = v10;
      v25 = "%13.5f: Stopping the streamer as there are no active streaming clients";
      v26 = v8;
      v27 = 12;
LABEL_42:
      _os_log_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_DEFAULT, v25, v63, v27);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_44;
    }

    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v16 = j;
        }

        else if (!*(j - 1))
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

          *v63 = 136315650;
          *&v63[4] = v16;
          *&v63[12] = 1024;
          *&v63[14] = 679;
          *&v63[18] = 2048;
          *&v63[20] = v24;
          v25 = "%30s:%-4d: %13.5f: Stopping the streamer as there are no active streaming clients";
          v26 = v8;
          v27 = 28;
          goto LABEL_42;
        }
      }
    }
  }

LABEL_44:
  v31 = [(AWAttentionStreamer *)self->_attentionStreamer cancelEventStreamWithMask:128, *v63, *&v63[8], *&v63[24]];
  if (v31)
  {
    goto LABEL_91;
  }

LABEL_45:
  -[AWScheduler calculateTimeDelta:endTime:timebase:](self, "calculateTimeDelta:endTime:timebase:", [streamCopy streamingStartTime], mach_continuous_time(), *&self->_timebase);
  [streamCopy setStreamingDuration:?];
  [(AWScheduler *)self setClientAsInterrupted:streamCopy forKey:identifierCopy];
  if (currentLogLevel == 5)
  {
    v32 = _AALog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
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

      v39 = [(NSMutableDictionary *)self->_streamingClients count];
      allValues = [(NSMutableDictionary *)self->_streamingClients allValues];
      *v63 = 134218498;
      *&v63[4] = v34;
      *&v63[12] = 2048;
      *&v63[14] = v39;
      *&v63[22] = 2112;
      *&v63[24] = allValues;
      v41 = "%13.5f: %lu streaming clients: %@";
      v42 = v32;
      v43 = 32;
LABEL_63:
      _os_log_impl(&dword_1BB2EF000, v42, OS_LOG_TYPE_DEFAULT, v41, v63, v43);
    }

LABEL_64:

    goto LABEL_65;
  }

  if (currentLogLevel >= 6)
  {
    v32 = _AALog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v35 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++k)
      {
        if (*(k - 1) == 47)
        {
          v35 = k;
        }

        else if (!*(k - 1))
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

          v44 = [(NSMutableDictionary *)self->_streamingClients count];
          allValues = [(NSMutableDictionary *)self->_streamingClients allValues];
          *v63 = 136316162;
          *&v63[4] = v35;
          *&v63[12] = 1024;
          *&v63[14] = 691;
          *&v63[18] = 2048;
          *&v63[20] = v38;
          *&v63[28] = 2048;
          *&v63[30] = v44;
          *&v63[38] = 2112;
          v64 = allValues;
          v41 = "%30s:%-4d: %13.5f: %lu streaming clients: %@";
          v42 = v32;
          v43 = 48;
          goto LABEL_63;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_65:
  v45 = [(AWAttentionStreamer *)self->_attentionStreamer getStreamerOptionsWithMask:128, *v63, *&v63[8], *&v63[24], *&v63[32], v64];
  shouldActivateAttentionDetectForStreaming = [(AWScheduler *)self shouldActivateAttentionDetectForStreaming];
  shouldActivateEyeReliefForStreaming = [(AWScheduler *)self shouldActivateEyeReliefForStreaming];
  v48 = shouldActivateEyeReliefForStreaming;
  if (shouldActivateAttentionDetectForStreaming != (v45 & 0x100) >> 8 || ((shouldActivateEyeReliefForStreaming ^ v45) & 1) != 0)
  {
    if (currentLogLevel == 5)
    {
      v49 = _AALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = absTimeNS();
        if (v50 == -1)
        {
          v51 = INFINITY;
        }

        else
        {
          v51 = v50 / 1000000000.0;
        }

        *v63 = 134217984;
        *&v63[4] = v51;
        v56 = "%13.5f: Streaming options have changed, cancelling current operation and starting a new one with updated options";
        v57 = v49;
        v58 = 12;
LABEL_85:
        _os_log_impl(&dword_1BB2EF000, v57, OS_LOG_TYPE_DEFAULT, v56, v63, v58);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_87:
        v59 = [(AWAttentionStreamer *)self->_attentionStreamer cancelEventStreamWithMask:128, *v63, *&v63[8], *&v63[24]];
        v60 = 256;
        if (!shouldActivateAttentionDetectForStreaming)
        {
          v60 = 0;
        }

        v61 = [(AWScheduler *)self streamFaceDetectEventsWithOptions:v60 | v48];
        goto LABEL_90;
      }

      v49 = _AALog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v52 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++m)
        {
          if (*(m - 1) == 47)
          {
            v52 = m;
          }

          else if (!*(m - 1))
          {
            v54 = absTimeNS();
            if (v54 == -1)
            {
              v55 = INFINITY;
            }

            else
            {
              v55 = v54 / 1000000000.0;
            }

            *v63 = 136315650;
            *&v63[4] = v52;
            *&v63[12] = 1024;
            *&v63[14] = 704;
            *&v63[18] = 2048;
            *&v63[20] = v55;
            v56 = "%30s:%-4d: %13.5f: Streaming options have changed, cancelling current operation and starting a new one with updated options";
            v57 = v49;
            v58 = 28;
            goto LABEL_85;
          }
        }
      }
    }

    goto LABEL_87;
  }

LABEL_90:
  v31 = 0;
LABEL_91:

  return v31;
}

- (id)streamFaceDetectEventsWithOptions:(id)options
{
  v3 = *&options.var0;
  v34[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke;
  v28[3] = &unk_1E7F37340;
  v28[4] = self;
  v5 = MEMORY[0x1BFB0D030](v28);
  if (MGGetBoolAnswer())
  {
    attentionStreamer = self->_attentionStreamer;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_67;
    v27[3] = &unk_1E7F37368;
    v27[4] = self;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_70;
    v24 = &unk_1E7F37938;
    selfCopy = self;
    v7 = v5;
    v26 = v7;
    v8 = [(AWAttentionStreamer *)attentionStreamer streamEventsWithMask:128 block:v27 options:*&v3 & 0xFFFFFFLL operationStartFailedBlock:&v21];
    if (v8)
    {
      if (currentLogLevel >= 3)
      {
        v9 = _AALog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v19 = absTimeNS();
          if (v19 == -1)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v19 / 1000000000.0;
          }

          *buf = 134218242;
          v30 = v20;
          v31 = 2112;
          v32 = v8;
          _os_log_error_impl(&dword_1BB2EF000, v9, OS_LOG_TYPE_ERROR, "%13.5f: Error %@ when starting streaming operation from AttentionStreamer", buf, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_streamingClients enumerateKeysAndObjectsUsingBlock:v7, v21, v22, v23, v24, selfCopy];
    }

    v10 = v8;
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v11 = _AALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = absTimeNS();
        if (v17 == -1)
        {
          v18 = INFINITY;
        }

        else
        {
          v18 = v17 / 1000000000.0;
        }

        *buf = 134217984;
        v30 = v18;
        _os_log_error_impl(&dword_1BB2EF000, v11, OS_LOG_TYPE_ERROR, "%13.5f: Device doesn't support pearl", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_streamingClients enumerateKeysAndObjectsUsingBlock:v5];
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @" Device doesn't support Pearl";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v15 = [v12 errorWithDomain:v13 code:19 userInfo:v14];

    v10 = v15;
  }

  return v10;
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v6 invalid] & 1) == 0)
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

        v14 = [v6 identifier];
        *v18 = 134218242;
        *&v18[4] = v9;
        *&v18[12] = 2112;
        *&v18[14] = v14;
        v15 = "%13.5f: Removing client %@ from streaming clients list";
        v16 = v7;
        v17 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v18, v17);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [*(*(a1 + 32) + 32) removeObjectForKey:{v5, *v18, *&v18[8], *&v18[24], v19}];
        [v6 invalidateWithoutQueue];
        goto LABEL_23;
      }

      v7 = _AALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

            v14 = [v6 identifier];
            *v18 = 136315906;
            *&v18[4] = v10;
            *&v18[12] = 1024;
            *&v18[14] = 593;
            *&v18[18] = 2048;
            *&v18[20] = v13;
            *&v18[28] = 2112;
            *&v18[30] = v14;
            v15 = "%30s:%-4d: %13.5f: Removing client %@ from streaming clients list";
            v16 = v7;
            v17 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_2;
  v6[3] = &unk_1E7F37340;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_70(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (currentLogLevel >= 3)
    {
      v4 = _AALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = absTimeNS();
        if (v5 == -1)
        {
          v6 = INFINITY;
        }

        else
        {
          v6 = v5 / 1000000000.0;
        }

        v7 = 134218242;
        v8 = v6;
        v9 = 2112;
        v10 = v3;
        _os_log_error_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_ERROR, "%13.5f: Error %@ when starting streaming operation from BioKit", &v7, 0x16u);
      }
    }

    [*(*(a1 + 32) + 32) enumerateKeysAndObjectsUsingBlock:*(a1 + 40)];
  }
}

void __49__AWScheduler_streamFaceDetectEventsWithOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    if ([v5 metadataType] == 2 || objc_msgSend(v5, "metadataType") == 5)
    {
      v6 = _AALog();
      v7 = _AALog();
      v8 = os_signpost_id_generate(v7);

      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BB2EF000, v6, OS_SIGNPOST_EVENT, v8, "AA: Streaming event received", &unk_1BB32C3F2, v10, 2u);
      }
    }
  }

  v9 = v4;
  if (([v9 invalid] & 1) == 0)
  {
    [v9 notifyClientOfStreamingEvent:*(a1 + 32)];
  }
}

- (id)streamFaceDetectEvents
{
  shouldActivateAttentionDetectForStreaming = [(AWScheduler *)self shouldActivateAttentionDetectForStreaming];
  shouldActivateEyeReliefForStreaming = [(AWScheduler *)self shouldActivateEyeReliefForStreaming];
  v5 = 256;
  if (!shouldActivateAttentionDetectForStreaming)
  {
    v5 = 0;
  }

  return [(AWScheduler *)self streamFaceDetectEventsWithOptions:v5 | shouldActivateEyeReliefForStreaming];
}

- (void)removeStreamingClientwithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_streamingClients objectForKey:identifierCopy];
  if (!v5)
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

      *v30 = 134218242;
      *&v30[4] = v8;
      *&v30[12] = 2112;
      *&v30[14] = v5;
      v13 = "%13.5f: Trying to remove streaming client %@";
      v14 = v6;
      v15 = 22;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, v30, v15);
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
      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          *v30 = 136315906;
          *&v30[4] = v9;
          *&v30[12] = 1024;
          *&v30[14] = 551;
          *&v30[18] = 2048;
          *&v30[20] = v12;
          *&v30[28] = 2112;
          *&v30[30] = v5;
          v13 = "%30s:%-4d: %13.5f: Trying to remove streaming client %@";
          v14 = v6;
          v15 = 38;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  v16 = [(AWScheduler *)self cancelFaceDetectStream:v5 withIdentifier:identifierCopy, *v30, *&v30[8], *&v30[24], v31];
  v17 = [(NSMutableDictionary *)self->_streamingClients objectForKey:identifierCopy];

  if (v17)
  {
    [(NSMutableDictionary *)self->_streamingClients removeObjectForKey:identifierCopy];
  }

LABEL_24:
  v18 = [(NSMutableDictionary *)self->_interruptedStreamingClients objectForKey:identifierCopy];
  if (v18)
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

        identifier = [v18 identifier];
        *v30 = 134218242;
        *&v30[4] = v21;
        *&v30[12] = 2112;
        *&v30[14] = identifier;
        v27 = "%13.5f: Removing client %@ from the list of interrupted clients";
        v28 = v19;
        v29 = 22;
LABEL_43:
        _os_log_impl(&dword_1BB2EF000, v28, OS_LOG_TYPE_DEFAULT, v27, v30, v29);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_45:
        [(NSMutableDictionary *)self->_interruptedStreamingClients removeObjectForKey:identifierCopy, *v30, *&v30[8], *&v30[24]];
        goto LABEL_46;
      }

      v19 = _AALog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
        {
          if (*(j - 1) == 47)
          {
            v22 = j;
          }

          else if (!*(j - 1))
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

            identifier = [v18 identifier];
            *v30 = 136315906;
            *&v30[4] = v22;
            *&v30[12] = 1024;
            *&v30[14] = 564;
            *&v30[18] = 2048;
            *&v30[20] = v25;
            *&v30[28] = 2112;
            *&v30[30] = identifier;
            v27 = "%30s:%-4d: %13.5f: Removing client %@ from the list of interrupted clients";
            v28 = v19;
            v29 = 38;
            goto LABEL_43;
          }
        }
      }
    }

    goto LABEL_45;
  }

LABEL_46:
}

- (id)addStreamingClient:(id)client withIdentifier:(id)identifier
{
  v44[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  identifierCopy = identifier;
  if (!clientCopy)
  {
    __assert_rtn("[AWScheduler addStreamingClient:withIdentifier:]", "Scheduler.m", 518, "client");
  }

  v8 = identifierCopy;
  v9 = [(NSMutableDictionary *)self->_streamingClients objectForKey:identifierCopy];

  if (!v9)
  {
    if (currentLogLevel == 5)
    {
      v15 = _AALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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

        *v41 = 134218242;
        *&v41[4] = v17;
        *&v41[12] = 2112;
        *&v41[14] = clientCopy;
        v22 = "%13.5f: Creating new streaming client %@";
        v23 = v15;
        v24 = 22;
LABEL_27:
        _os_log_impl(&dword_1BB2EF000, v23, OS_LOG_TYPE_DEFAULT, v22, v41, v24);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_29:
        [(NSMutableDictionary *)self->_streamingClients setObject:clientCopy forKey:v8, *v41, *&v41[8], *&v41[24]];
        [(AWScheduler *)self addClient:clientCopy];
        [clientCopy setStreamingDuration:0.0];
        [clientCopy setStreamingStartTime:mach_continuous_time()];
        v14 = 0;
        goto LABEL_30;
      }

      v15 = _AALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v18 = i;
          }

          else if (!*(i - 1))
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

            *v41 = 136315906;
            *&v41[4] = v18;
            *&v41[12] = 1024;
            *&v41[14] = 530;
            *&v41[18] = 2048;
            *&v41[20] = v21;
            *&v41[28] = 2112;
            *&v41[30] = clientCopy;
            v22 = "%30s:%-4d: %13.5f: Creating new streaming client %@";
            v23 = v15;
            v24 = 38;
            goto LABEL_27;
          }
        }
      }
    }

    goto LABEL_29;
  }

  if (currentLogLevel >= 3)
  {
    v10 = _AALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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

      *v41 = 134217984;
      *&v41[4] = v26;
      _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: Client already added to the list of streaming clients, don't add it again", v41, 0xCu);
    }
  }

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A798];
  v43 = *MEMORY[0x1E696A578];
  v44[0] = @" Client already active";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v14 = [v11 errorWithDomain:v12 code:37 userInfo:v13];

LABEL_30:
  if (currentLogLevel == 5)
  {
    v27 = _AALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = absTimeNS();
      if (v28 == -1)
      {
        v29 = INFINITY;
      }

      else
      {
        v29 = v28 / 1000000000.0;
      }

      v34 = [(NSMutableDictionary *)self->_streamingClients count];
      allValues = [(NSMutableDictionary *)self->_streamingClients allValues];
      *v41 = 134218498;
      *&v41[4] = v29;
      *&v41[12] = 2048;
      *&v41[14] = v34;
      *&v41[22] = 2112;
      *&v41[24] = allValues;
      v36 = "%13.5f: %lu streaming clients: %@";
      v37 = v27;
      v38 = 32;
LABEL_48:
      _os_log_impl(&dword_1BB2EF000, v37, OS_LOG_TYPE_DEFAULT, v36, v41, v38);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_50;
    }

    v27 = _AALog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v30 = j;
        }

        else if (!*(j - 1))
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

          v39 = [(NSMutableDictionary *)self->_streamingClients count];
          allValues = [(NSMutableDictionary *)self->_streamingClients allValues];
          *v41 = 136316162;
          *&v41[4] = v30;
          *&v41[12] = 1024;
          *&v41[14] = 540;
          *&v41[18] = 2048;
          *&v41[20] = v33;
          *&v41[28] = 2048;
          *&v41[30] = v39;
          *&v41[38] = 2112;
          v42 = allValues;
          v36 = "%30s:%-4d: %13.5f: %lu streaming clients: %@";
          v37 = v27;
          v38 = 48;
          goto LABEL_48;
        }
      }
    }
  }

LABEL_50:

  return v14;
}

- (id)resetInterruptedStreamingClientWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_interruptedStreamingClients objectForKey:identifierCopy];
  if (v5)
  {
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

        identifier = [v5 identifier];
        *v18 = 134218242;
        *&v18[4] = v8;
        *&v18[12] = 2112;
        *&v18[14] = identifier;
        v14 = "%13.5f: Interrupted streaming client %@ restarting";
        v15 = v6;
        v16 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, v18, v16);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        [(NSMutableDictionary *)self->_interruptedStreamingClients removeObjectForKey:identifierCopy, *v18, *&v18[8], *&v18[24], v19];
        [(NSMutableDictionary *)self->_streamingClients setObject:v5 forKey:identifierCopy];
        [v5 setStreamingDuration:0.0];
        [v5 setStreamingStartTime:mach_continuous_time()];
        goto LABEL_23;
      }

      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

            identifier = [v5 identifier];
            *v18 = 136315906;
            *&v18[4] = v9;
            *&v18[12] = 1024;
            *&v18[14] = 497;
            *&v18[18] = 2048;
            *&v18[20] = v12;
            *&v18[28] = 2112;
            *&v18[30] = identifier;
            v14 = "%30s:%-4d: %13.5f: Interrupted streaming client %@ restarting";
            v15 = v6;
            v16 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v5;
}

- (unint64_t)nextSamplingTimeForSamplingInterval:(unint64_t)interval
{
  shouldActivateAttentionDetectionForSampling = [(AWScheduler *)self shouldActivateMotionDetectForSampling]&& ![(AWScheduler *)self shouldActivateAttentionDetectionForSampling];
  attentionSampler = self->_attentionSampler;

  return [(AWAttentionSampler *)attentionSampler nextSampleTimeForSamplingInterval:interval ignoreDisplayState:shouldActivateAttentionDetectionForSampling];
}

- (void)reevaluate
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reevaluateConfig];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setSmartCoverClosed:(BOOL)closed
{
  closedCopy = closed;
  dispatch_assert_queue_V2(self->_queue);
  [(AWAttentionSampler *)self->_attentionSampler setSmartCoverClosed:closedCopy];
  attentionStreamer = self->_attentionStreamer;

  [(AWAttentionStreamer *)attentionStreamer setSmartCoverStateWithMask:128 smartCoverState:closedCopy];
}

- (void)processHIDEvent:(__IOHIDEvent *)event mask:(unint64_t)mask timestamp:(unint64_t)timestamp senderID:(__IOHIDService *)d displayUUID:(id)iD
{
  v23 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_clients;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) notifyHIDEvent:event mask:mask timestamp:timestamp senderID:d displayUUID:{iDCopy, v18}];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [(AWScheduler *)self armEvents];
}

- (void)removeInvalidClientsWithConnection:(id)connection
{
  v31 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableArray *)self->_clients count];
  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = v5;
  v8 = 0;
  *&v6 = 136315906;
  v24 = v6;
  v9 = v5;
  do
  {
    v10 = [(NSMutableArray *)self->_clients objectAtIndex:v8, v24];
    if (([v10 invalid] & 1) != 0 || (objc_msgSend(v10, "connection"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == connectionCopy))
    {
      if (currentLogLevel == 5)
      {
        v12 = _AALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = absTimeNS();
          if (v13 == -1)
          {
            v14 = INFINITY;
          }

          else
          {
            v14 = v13 / 1000000000.0;
          }

          *buf = 134218242;
          v26 = v14;
          v27 = 2112;
          *v28 = v10;
          v19 = v12;
          v20 = "%13.5f: Removing client: %@";
          v21 = 22;
LABEL_23:
          _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_25:
          clientId = [v10 clientId];
          [(AWScheduler *)self removeStreamingClientwithIdentifier:clientId];

          [v10 invalidateWithHandler:0];
          [(NSMutableArray *)self->_clients removeObjectAtIndex:v8--];
          --v9;
          goto LABEL_26;
        }

        v12 = _AALog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v15 = i;
            }

            else if (!*(i - 1))
            {
              v17 = absTimeNS();
              if (v17 == -1)
              {
                v18 = INFINITY;
              }

              else
              {
                v18 = v17 / 1000000000.0;
              }

              *buf = v24;
              v26 = *&v15;
              v27 = 1024;
              *v28 = 350;
              *&v28[4] = 2048;
              *&v28[6] = v18;
              v29 = 2112;
              v30 = v10;
              v19 = v12;
              v20 = "%30s:%-4d: %13.5f: Removing client: %@";
              v21 = 38;
              goto LABEL_23;
            }
          }
        }
      }

      goto LABEL_25;
    }

LABEL_26:

    ++v8;
  }

  while (v8 < v9);
  if (v7 != v9)
  {
    observer = [(AWScheduler *)self observer];
    [observer clientCountChangedFrom:v7 to:v9 forScheduler:self];

    [(AWScheduler *)self armEvents];
  }

LABEL_29:
}

- (void)addClient:(id)client
{
  v31 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  if (!clientCopy)
  {
    __assert_rtn("[AWScheduler addClient:]", "Scheduler.m", 314, "client");
  }

  v5 = [(NSMutableArray *)self->_clients count];
  [(NSMutableArray *)self->_clients addObject:clientCopy];
  observer = [(AWScheduler *)self observer];
  [observer clientCountChangedFrom:v5 to:-[NSMutableArray count](self->_clients forScheduler:{"count"), self}];

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

      v14 = [(NSMutableArray *)self->_clients count];
      *v29 = 134218498;
      *&v29[4] = v9;
      *&v29[12] = 2112;
      *&v29[14] = self;
      *&v29[22] = 2048;
      *&v29[24] = v14;
      v15 = "%13.5f: %@ %lu clients";
      v16 = v7;
      v17 = 32;
LABEL_20:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v29, v17);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_41;
    }

    v7 = _AALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
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

          v18 = [(NSMutableArray *)self->_clients count];
          *v29 = 136316162;
          *&v29[4] = v10;
          *&v29[12] = 1024;
          *&v29[14] = 321;
          *&v29[18] = 2048;
          *&v29[20] = v13;
          *&v29[28] = 2112;
          *&v29[30] = self;
          *&v29[38] = 2048;
          v30 = v18;
          v15 = "%30s:%-4d: %13.5f: %@ %lu clients";
          v16 = v7;
          v17 = 48;
          goto LABEL_20;
        }
      }
    }
  }

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

      *v29 = 134218242;
      *&v29[4] = v21;
      *&v29[12] = 2112;
      *&v29[14] = clientCopy;
      v26 = "%13.5f: New client: %@";
      v27 = v19;
      v28 = 22;
LABEL_39:
      _os_log_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_DEFAULT, v26, v29, v28);
    }

LABEL_40:

    goto LABEL_41;
  }

  if (currentLogLevel >= 6)
  {
    v19 = _AALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v22 = j;
        }

        else if (!*(j - 1))
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

          *v29 = 136315906;
          *&v29[4] = v22;
          *&v29[12] = 1024;
          *&v29[14] = 322;
          *&v29[18] = 2048;
          *&v29[20] = v25;
          *&v29[28] = 2112;
          *&v29[30] = clientCopy;
          v26 = "%30s:%-4d: %13.5f: New client: %@";
          v27 = v19;
          v28 = 38;
          goto LABEL_39;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  [(AWScheduler *)self armEvents:*v29];
}

- (BOOL)canActiveOperationBeEnded
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v10 + 1) + 8 * i) canOperationBeEndedForClient];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (AWScheduler)initWithOptions:(id)options
{
  v78 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v69.receiver = self;
  v69.super_class = AWScheduler;
  v5 = [(AWScheduler *)&v69 init];
  if (v5)
  {
    if (!optionsCopy || ([optionsCopy valueForKey:@"identifier"], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v7) || (objc_msgSend(optionsCopy, "valueForKey:", @"allowFaceDetect"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9) || (objc_msgSend(optionsCopy, "valueForKey:", @"allowHIDEvents"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11) || (objc_msgSend(optionsCopy, "valueForKey:", @"allowMotionDetect"), v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13) || (objc_msgSend(optionsCopy, "valueForKey:", @"initForUnitTest"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
    {
      v58 = 0;
      goto LABEL_37;
    }

    v16 = [optionsCopy valueForKey:@"identifier"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    v18 = [optionsCopy objectForKeyedSubscript:@"allowFaceDetect"];
    v5[73] = [v18 BOOLValue];

    v19 = [optionsCopy objectForKeyedSubscript:@"allowHIDEvents"];
    v5[74] = [v19 BOOLValue];

    v20 = [optionsCopy objectForKeyedSubscript:@"allowMotionDetect"];
    v5[75] = [v20 BOOLValue];

    v21 = [optionsCopy objectForKeyedSubscript:@"initForUnitTest"];
    v5[76] = [v21 BOOLValue];

    v22 = awQueue(1);
    v23 = *(v5 + 1);
    *(v5 + 1) = v22;

    v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v5 + 1));
    v25 = *(v5 + 2);
    *(v5 + 2) = v24;

    v26 = *(v5 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__AWScheduler_initWithOptions___block_invoke;
    handler[3] = &unk_1E7F38038;
    v27 = v5;
    v68 = v27;
    dispatch_source_set_event_handler(v26, handler);
    dispatch_resume(*(v5 + 2));
    array = [MEMORY[0x1E695DF70] array];
    v29 = *(v27 + 3);
    *(v27 + 3) = array;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = *(v27 + 4);
    *(v27 + 4) = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = *(v27 + 5);
    *(v27 + 5) = v32;

    mach_timebase_info(v27 + 8);
    objc_initWeak(&location, v27);
    if ((v5[76] & 1) != 0 || MGGetBoolAnswer())
    {
      v27[72] = 0;
      if (currentLogLevel == 5)
      {
        v34 = _AALog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
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

          v41 = "BiometricKit";
          v42 = *(v5 + 11);
          if (v27[72])
          {
            v41 = "AVFoundation";
          }

          *buf = 134218498;
          v73 = v36;
          v74 = 2080;
          *v75 = v41;
          *&v75[8] = 2112;
          *&v75[10] = v42;
          v43 = "%13.5f: Using %s for Pearl operations for %@";
          v44 = v34;
          v45 = 32;
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (currentLogLevel >= 6)
      {
        v34 = _AALog();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v37 = i;
          }

          else if (!*(i - 1))
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

            v46 = "BiometricKit";
            v47 = *(v5 + 11);
            if (v27[72])
            {
              v46 = "AVFoundation";
            }

            *buf = 136316162;
            v73 = *&v37;
            v74 = 1024;
            *v75 = 179;
            *&v75[4] = 2048;
            *&v75[6] = v40;
            *&v75[14] = 2080;
            *&v75[16] = v46;
            v76 = 2112;
            v77 = v47;
            v43 = "%30s:%-4d: %13.5f: Using %s for Pearl operations for %@";
            v44 = v34;
            v45 = 48;
LABEL_32:
            _os_log_impl(&dword_1BB2EF000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
LABEL_33:

            break;
          }
        }
      }

      v70[0] = @"unitTest";
      v48 = [MEMORY[0x1E696AD98] numberWithBool:v5[76]];
      v71[0] = v48;
      v70[1] = @"useAVFoundation";
      v49 = [MEMORY[0x1E696AD98] numberWithBool:v27[72]];
      v71[1] = v49;
      v70[2] = @"eventMask";
      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:128];
      v71[2] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:3];

      v52 = [[AWAttentionSampler alloc] initWithOptions:v51];
      v53 = *(v27 + 6);
      *(v27 + 6) = v52;

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __31__AWScheduler_initWithOptions___block_invoke_47;
      v64[3] = &unk_1E7F372C8;
      objc_copyWeak(&v65, &location);
      [*(v27 + 6) setStateChangedCallback:v64];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __31__AWScheduler_initWithOptions___block_invoke_49;
      v62[3] = &unk_1E7F372F0;
      objc_copyWeak(&v63, &location);
      [*(v27 + 6) setOperationEndableCallback:v62];
      v54 = [[AWAttentionStreamer alloc] initWithOptions:v51];
      v56 = *(v27 + 7);
      v55 = (v27 + 56);
      *v55 = v54;

      v57 = *v55;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __31__AWScheduler_initWithOptions___block_invoke_2;
      v60[3] = &unk_1E7F37318;
      objc_copyWeak(&v61, &location);
      [(AWAttentionStreamer *)v57 setNotificationHandler:v60 withMask:128];
      objc_destroyWeak(&v61);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&v65);
    }

    objc_destroyWeak(&location);
  }

  v58 = v5;
LABEL_37:

  return v58;
}

uint64_t __31__AWScheduler_initWithOptions___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (currentLogLevel < 7)
  {
    return [*(a1 + 32) armEvents];
  }

  v2 = _AALog();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  v3 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; *(i - 1) == 47; ++i)
  {
    v3 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v5 = absTimeNS();
  if (v5 == -1)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = v5 / 1000000000.0;
  }

  v7 = *(a1 + 32);
  v9 = 136315906;
  v10 = v3;
  v11 = 1024;
  v12 = 120;
  v13 = 2048;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  _os_log_impl(&dword_1BB2EF000, v2, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ timer fired", &v9, 0x26u);
LABEL_13:

  return [*(a1 + 32) armEvents];
}

void __31__AWScheduler_initWithOptions___block_invoke_47(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v16 = 134218498;
      v17 = v6;
      v18 = 2112;
      *v19 = WeakRetained;
      *&v19[8] = 2112;
      *&v19[10] = v3;
      v12 = "%13.5f: %@ attentionSampler state change (%@)";
      v13 = v4;
      v14 = 32;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/Scheduler.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v7 = i;
        }

        else if (!*(i - 1))
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

          WeakRetained = objc_loadWeakRetained((a1 + 32));
          v16 = 136316162;
          v17 = *&v7;
          v18 = 1024;
          *v19 = 192;
          *&v19[4] = 2048;
          *&v19[6] = v10;
          *&v19[14] = 2112;
          *&v19[16] = WeakRetained;
          v20 = 2112;
          v21 = v3;
          v12 = "%30s:%-4d: %13.5f: %@ attentionSampler state change (%@)";
          v13 = v4;
          v14 = 48;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 armEvents];
}

uint64_t __31__AWScheduler_initWithOptions___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained canActiveOperationBeEnded];

  return v2;
}

void __31__AWScheduler_initWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleNotification:a2];
}

+ (id)sharedUnitTestScheduler
{
  if (sharedUnitTestScheduler_onceToken != -1)
  {
    dispatch_once(&sharedUnitTestScheduler_onceToken, &__block_literal_global_25);
  }

  v3 = sharedUnitTestScheduler_unitTestScheduler;

  return v3;
}

void __38__AWScheduler_sharedUnitTestScheduler__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[0] = v0;
  v7[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[1] = v1;
  v7[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[2] = v2;
  v7[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7[4] = @"identifier";
  v8[3] = v3;
  v8[4] = @"Unit test scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedUnitTestScheduler_unitTestScheduler;
  sharedUnitTestScheduler_unitTestScheduler = v5;
}

+ (id)sharedMotionDetectScheduler
{
  if (sharedMotionDetectScheduler_onceToken != -1)
  {
    dispatch_once(&sharedMotionDetectScheduler_onceToken, &__block_literal_global_20);
  }

  v3 = sharedMotionDetectScheduler_motionDetectScheduler;

  return v3;
}

void __42__AWScheduler_sharedMotionDetectScheduler__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v8[0] = v0;
  v7[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v8[1] = v1;
  v7[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v8[2] = v2;
  v7[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7[4] = @"identifier";
  v8[3] = v3;
  v8[4] = @"Motion detect scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedMotionDetectScheduler_motionDetectScheduler;
  sharedMotionDetectScheduler_motionDetectScheduler = v5;
}

+ (id)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    dispatch_once(&sharedScheduler_onceToken, &__block_literal_global);
  }

  v3 = sharedScheduler_scheduler;

  return v3;
}

void __30__AWScheduler_sharedScheduler__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"initForUnitTest";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v8[0] = v0;
  v7[1] = @"allowFaceDetect";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[1] = v1;
  v7[2] = @"allowHIDEvents";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8[2] = v2;
  v7[3] = @"allowMotionDetect";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v7[4] = @"identifier";
  v8[3] = v3;
  v8[4] = @"Face detect scheduler";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  v5 = [[AWScheduler alloc] initWithOptions:v4];
  v6 = sharedScheduler_scheduler;
  sharedScheduler_scheduler = v5;
}

@end