@interface AudioRemixSessionManager
- (AudioRemixSessionManager)initWithNodeMetadataOutput:(id)output;
- (int)_handleSessionCreated:(id)created;
- (int)_handleSubscriberCompletedFromCancellation:(BOOL)cancellation;
- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)s andEndingPTS:(id *)tS;
- (int)startNewSessionBlocking;
- (void)abortSessionIfNeeded;
- (void)dealloc;
- (void)submitAudioBuffer:(id)buffer;
@end

@implementation AudioRemixSessionManager

- (AudioRemixSessionManager)initWithNodeMetadataOutput:(id)output
{
  v7.receiver = self;
  v7.super_class = AudioRemixSessionManager;
  v4 = [(AudioRemixSessionManager *)&v7 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_workQueue = dispatch_queue_create("com.apple.cameracapture.audioremixanalysis.application", v5);
    v4->_subscriber = 0;
    v4->_session = 0;
    v4->_nodeMetadataOutput = output;
    v4->_sampleRate = 0.0;
    v4->_channelCount = 0;
  }

  return v4;
}

- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)s andEndingPTS:(id *)tS
{
  subscriber = self->_subscriber;
  if (subscriber)
  {
    v11 = *s;
    v10 = *tS;
    return [(AudioRemixSubscriber *)subscriber finishAndGetResultsBlockingWithStartingPTS:&v11 andEndingPTS:&v10];
  }

  else
  {
    [(AudioRemixSessionManager *)&v11 finishAndGetResultsBlockingWithStartingPTS:a2 andEndingPTS:s, tS, v4, v5, v6, v7];
    return v11.var0;
  }
}

- (void)dealloc
{
  [(AudioRemixSessionManager *)self abortSessionIfNeeded];
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
    self->_workQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = AudioRemixSessionManager;
  [(AudioRemixSessionManager *)&v4 dealloc];
}

- (int)startNewSessionBlocking
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  [(AudioRemixSessionManager *)self abortSessionIfNeeded];
  v4 = [objc_alloc(getSNMovieRemixRequestClass()) initWithInputAudioSampleRate:self->_sampleRate inputAudioChannelCount:self->_channelCount];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke;
  v16 = &unk_1E7990760;
  objc_copyWeak(&v19, &location);
  v17 = &v27;
  v18 = &v21;
  [getSNMovieRemixClass() runRequest:v4 completionHandler:&v13];
  v5 = v22[5];
  v6 = dispatch_time(0, 2000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  dispatch_release(v22[5]);
  v22[5] = 0;
  if (v7)
  {
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x2F8, v2, v8, v9, v13, v14, v15, v16, v17, v18);
    *(v28 + 6) = v12;
  }

  v10 = *(v28 + 6);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v10;
}

intptr_t __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  Weak = objc_loadWeak((a1 + 48));
  if (a3)
  {
    v23 = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = qword_1EB58E578;
    v17 = [a3 code];
    *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x2DD, v3, v18, v19, v21);
  }

  else if (Weak)
  {
    if (a2)
    {
      *(*(*(a1 + 32) + 8) + 24) = [Weak _handleSessionCreated:a2];
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_1();
      }
    }

    else
    {
      __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_2(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_3(a1, v8, v9, v10, v11, v12, v13, v14);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)abortSessionIfNeeded
{
  session = self->_session;
  if (session)
  {
    subscriber = self->_subscriber;
    if (subscriber)
    {

      self->_subscriber = 0;
      session = self->_session;
    }

    [(SNMovieRemixSession *)session finishWithError:0];

    self->_session = 0;
  }
}

- (int)_handleSubscriberCompletedFromCancellation:(BOOL)cancellation
{
  if (!cancellation)
  {
    return 0;
  }

  v12 = v8;
  v13 = v9;
  [(AudioRemixSessionManager *)&v11 _handleSubscriberCompletedFromCancellation:a2, cancellation, v3, v4, v5, v6, v7];
  return v11;
}

- (int)_handleSessionCreated:(id)created
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    v9 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v3, v10, block, v12, v13, v14, selfCopy);
  }

  workQueue = self->_workQueue;
  block = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__AudioRemixSessionManager__handleSessionCreated___block_invoke;
  v14 = &unk_1E79907B0;
  createdCopy = created;
  v17 = &v18;
  selfCopy = self;
  dispatch_sync(workQueue, &block);
  v7 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __50__AudioRemixSessionManager__handleSessionCreated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 24))
  {
    __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    *(v9 + 24) = *(a1 + 40);
    v10 = *(*(a1 + 32) + 24);
    if (v10)
    {
      v11 = v10;
      objc_initWeak(&location, *(a1 + 32));
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2;
      v12[3] = &unk_1E7990788;
      v12[4] = *(a1 + 48);
      objc_copyWeak(&v13, &location);
      [*(*(a1 + 32) + 24) setInFrameMixMode:*(*(a1 + 32) + 40)];
      *(*(a1 + 32) + 16) = [[AudioRemixSubscriber alloc] initWithSession:*(*(a1 + 32) + 24) andNodeMetadataOutput:*(*(a1 + 32) + 32) usePIPAIngestSignalingDomain:*(*(a1 + 32) + 40) completionHandler:v12];
      [*(*(a1 + 32) + 16) activate];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

uint64_t __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (a3)
  {
    return __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    *(*(*(a1 + 32) + 8) + 24) = [Weak _handleSubscriberCompletedFromCancellation:a2];
    result = *(*(*(a1 + 32) + 8) + 24);
    if (result)
    {
      return __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2_cold_2();
    }
  }

  else
  {
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x344, v8, v12, v13, v15);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

- (void)submitAudioBuffer:(id)buffer
{
  if (buffer)
  {
    [(SNMovieRemixSession *)self->_session yieldBuffer:?];
  }
}

- (uint64_t)finishAndGetResultsBlockingWithStartingPTS:(uint64_t)a3 andEndingPTS:(uint64_t)a4 .cold.1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x29C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_handleSubscriberCompletedFromCancellation:(uint64_t)a3 .cold.1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x31E, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

@end