@interface _LTServerSpeakSession
- (BOOL)_hasCachedCompletion;
- (_LTServerSpeakSession)initWithEngine:(id)engine;
- (id)_createTemporaryOutputFileWithURL:(id)l;
- (void)_callCompletionAndClearIfNeeded:(id)needed error:(id)error;
- (void)_playback:(id)_playback context:(id)context completion:(id)completion audioStartHandler:(id)handler;
- (void)cancel;
- (void)speak:(id)speak context:(id)context completion:(id)completion audioStartHandler:(id)handler;
@end

@implementation _LTServerSpeakSession

- (_LTServerSpeakSession)initWithEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = _LTServerSpeakSession;
  v6 = [(_LTServerSpeakSession *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engine, engine);
    v8 = dispatch_queue_create("com.apple.translationd.playback", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    v10 = v7;
  }

  return v7;
}

- (id)_createTemporaryOutputFileWithURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = NSTemporaryDirectory();
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringByAppendingPathComponent:uUIDString];

    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
    v9 = MEMORY[0x277CBEBC0];
    lastPathComponent = [lCopy lastPathComponent];

    v11 = [v9 fileURLWithPath:lastPathComponent relativeToURL:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_playback:(id)_playback context:(id)context completion:(id)completion audioStartHandler:(id)handler
{
  v85 = *MEMORY[0x277D85DE8];
  _playbackCopy = _playback;
  contextCopy = context;
  completionCopy = completion;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  _hasCachedCompletion = [(_LTServerSpeakSession *)self _hasCachedCompletion];
  v15 = _hasCachedCompletion;
  v17 = _LTOSLogTTS(_hasCachedCompletion, v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v18)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Prepping playback for audio data of request", &buf, 2u);
    }

    outputFileURL = [contextCopy outputFileURL];
    v20 = [(_LTServerSpeakSession *)self _createTemporaryOutputFileWithURL:outputFileURL];

    [_playbackCopy writeToURL:v20];
    v82 = 0;
    buf = 0u;
    v81 = 0u;
    if (_playbackCopy)
    {
      objc_msgSend_asbd(_playbackCopy);
      objc_msgSend_asbd(_playbackCopy);
      if (v78[2] == 1819304813)
      {
        packetDescriptions = [_playbackCopy packetDescriptions];
        rawData = [_playbackCopy rawData];
        goto LABEL_29;
      }
    }

    else
    {
      v79 = 0;
      memset(v78, 0, sizeof(v78));
    }

    v67 = contextCopy;
    v68 = v20;
    v65 = handlerCopy;
    rawData2 = [_playbackCopy rawData];
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = 0;
    v77 = 0;
    if ([_playbackCopy packetCount] < 1)
    {
      v26 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      do
      {
        packetDescriptions2 = [_playbackCopy packetDescriptions];
        [packetDescriptions2 getBytes:&v76 range:{v24, 16}];

        v28 = MEMORY[0x277CBEA90];
        bytes = [rawData2 bytes];
        v30 = [v28 dataWithBytes:bytes + v76 length:HIDWORD(v77)];
        [v23 addObject:v30];
        v26 += [v30 length];

        ++v25;
        v24 += 16;
      }

      while ([_playbackCopy packetCount] > v25);
    }

    v31 = objc_alloc_init(MEMORY[0x277CE1AC8]);
    if (_playbackCopy)
    {
      objc_msgSend_asbd(_playbackCopy);
    }

    else
    {
      v84 = 0;
      memset(v83, 0, sizeof(v83));
    }

    v73[0] = _LTAudioFormat48khzPCM;
    v73[1] = *&qword_233005D50;
    v74 = 16;
    v75 = 0;
    v32 = [v31 decodeChunks:v23 from:v83 to:v73 outError:{&v75, 0x100000002, unk_233005D58, _LTAudioFormat48khzPCM}];
    v33 = v75;
    v35 = _LTOSLogTTS(v33, v34);
    v36 = v35;
    if (v33)
    {
      contextCopy = v67;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }

      (completionCopy)[2](completionCopy, v68, v33);
    }

    else
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v37 = v36;
        v38 = [v32 length];
        *v83 = 134218240;
        *&v83[4] = v26;
        *&v83[12] = 2048;
        *&v83[14] = v38;
        _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_INFO, "Converted %ld bytes to %ld bytes", v83, 0x16u);
      }

      buf = v64;
      v81 = v63;
      v82 = 16;
      contextCopy = v67;
    }

    if (v33)
    {
      v20 = v68;
      rawData = v32;
      handlerCopy = v65;
LABEL_40:

      goto LABEL_41;
    }

    packetDescriptions = 0;
    v20 = v68;
    rawData = v32;
    handlerCopy = v65;
LABEL_29:
    v39 = [rawData length];
    v40 = v39 / DWORD2(v81);
    v41 = v40 / *&buf;
    v43 = _LTOSLogTTS(v39, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [_LTServerSpeakSession _playback:v40 context:v43 completion:v41 audioStartHandler:?];
    }

    v44 = [_LTPlaybackService alloc];
    *v83 = buf;
    *&v83[16] = v81;
    v84 = v82;
    v45 = [(_LTPlaybackService *)v44 initWithContext:contextCopy ASBD:v83];
    player = self->_player;
    self->_player = v45;

    v48 = self->_player;
    if (v48)
    {
      start = [(_LTPlaybackService *)v48 start];
      lt_internalTTSCreationError = start;
      if (!start)
      {
        _hasCachedCompletion2 = [(_LTServerSpeakSession *)self _hasCachedCompletion];
        v55 = _hasCachedCompletion2;
        v57 = _LTOSLogTTS(_hasCachedCompletion2, v56);
        v58 = v57;
        if (v55)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
          }

          v59 = [(_LTPlaybackService *)self->_player enqueue:rawData packetCount:0 packetDescriptions:0];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __72___LTServerSpeakSession__playback_context_completion_audioStartHandler___block_invoke;
          block[3] = &unk_2789B79B0;
          v71 = handlerCopy;
          v70 = _playbackCopy;
          v72 = v41;
          dispatch_async(MEMORY[0x277D85CD0], block);
          [(_LTPlaybackService *)self->_player flushAndStop];
          reset = [(_LTPlaybackService *)self->_player reset];
          v62 = _LTOSLogTTS(reset, v61);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *v83 = 0;
            _os_log_impl(&dword_232E53000, v62, OS_LOG_TYPE_INFO, "Finished TTS playback", v83, 2u);
          }

          (completionCopy)[2](completionCopy, v20, 0);
        }

        else
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *v83 = 0;
            _os_log_impl(&dword_232E53000, v58, OS_LOG_TYPE_INFO, "Not playing back audio for server speak session because it was previously cancelled since this request started", v83, 2u);
          }

          completionCopy[2](completionCopy, 0, 0);
        }

        goto LABEL_39;
      }

      v52 = _LTOSLogTTS(start, v50);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }
    }

    else
    {
      v53 = _LTOSLogTTS(0, v47);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [_LTServerSpeakSession _playback:context:completion:audioStartHandler:];
      }

      lt_internalTTSCreationError = [MEMORY[0x277CCA9B8] lt_internalTTSCreationError];
    }

    (completionCopy)[2](completionCopy, v20, lt_internalTTSCreationError);
LABEL_39:

    goto LABEL_40;
  }

  if (v18)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Not playing back audio for server speak session because it was previously cancelled", &buf, 2u);
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_41:
}

- (void)speak:(id)speak context:(id)context completion:(id)completion audioStartHandler:(id)handler
{
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  handlerCopy = handler;
  v14 = self->_queue;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke;
  block[3] = &unk_2789B7A50;
  objc_copyWeak(&v26, &location);
  v21 = speakCopy;
  v22 = contextCopy;
  v23 = v14;
  v24 = completionCopy;
  v25 = handlerCopy;
  v15 = handlerCopy;
  v16 = v14;
  v17 = contextCopy;
  v18 = speakCopy;
  v19 = completionCopy;
  dispatch_async(v16, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = _LTOSLogTTS(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Asked to cancel speak session", v4, 2u);
  }

  [(_LTTranslationEngine *)self->_engine endAudio];
  [(_LTPlaybackService *)self->_player stop];
  [(_LTServerSpeakSession *)self _callCompletionAndClearIfNeeded:0 error:0];
}

- (BOOL)_hasCachedCompletion
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __45___LTServerSpeakSession__hasCachedCompletion__block_invoke;
  v7 = &unk_2789B66E0;
  selfCopy2 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_assert_not_owner(&selfCopy->_lock);
  os_unfair_lock_lock(&selfCopy->_lock);
  v6(v3);

  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

- (void)_callCompletionAndClearIfNeeded:(id)needed error:(id)error
{
  neededCopy = needed;
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __63___LTServerSpeakSession__callCompletionAndClearIfNeeded_error___block_invoke;
  v12 = &unk_2789B7A78;
  selfCopy = self;
  v14 = &v15;
  v8 = v10;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v11(v8);

  os_unfair_lock_unlock(&self->_lock);
  v9 = v16[5];
  if (v9)
  {
    (*(v9 + 16))(v9, neededCopy, errorCopy);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_playback:(double)a3 context:completion:audioStartHandler:.cold.2(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a3;
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Duration: %f. Total number of frames: %ld", &v3, 0x16u);
}

- (void)_playback:context:completion:audioStartHandler:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end