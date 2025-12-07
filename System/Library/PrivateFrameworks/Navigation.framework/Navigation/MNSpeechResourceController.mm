@interface MNSpeechResourceController
- (BOOL)_createDurationCacheIfNecessary;
- (BOOL)cache:(id)cache withDisclosure:(unint64_t)disclosure andReport:(id *)report;
- (BOOL)speak:(id)speak withDisclosure:(unint64_t)disclosure andReport:(id *)report;
- (BOOL)stopSpeakingAndReport:(id *)report;
- (MNSpeechControllerDelegate)delegate;
- (MNSpeechResourceController)initWithLanguage:(id)language;
- (double)_estimateDurationForUtterance:(id)utterance;
- (double)_volumeFromUserPreference;
- (double)durationOf:(id)of;
- (id)_speechRequestForUtterance:(id)utterance withLanguage:(id)language andVoiceName:(id)name andAudioSessionID:(unsigned int)d andPrivacySensitive:(BOOL)sensitive;
- (id)_synthesisRequestForUtterance:(id)utterance withLanguage:(id)language andVoiceName:(id)name andPrivacySensitive:(BOOL)sensitive;
- (void)_addDurationToCache:(double)cache forUtterance:(id)utterance;
- (void)_audioSessionInterruption:(id)interruption;
- (void)_cachingTimeoutOccurred;
- (void)_cancelTimer;
- (void)_createTimerForUtterance:(id)utterance andIsCaching:(BOOL)caching;
- (void)_markVoiceForDownloadingWithLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender;
- (void)_mediaSessionServicesWereReset:(id)reset;
- (void)_prepareSynthesizerWithLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender andAudioSessionID:(unsigned int)d;
- (void)_registerForObservation;
- (void)_speakingTimeoutOccurred:(double)occurred;
- (void)_updateEstimatorWithDuration:(double)duration andUtterance:(id)utterance;
- (void)_voiceChanged;
- (void)_warmUpTTSForLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender andAudioSessionID:(unsigned int)d;
- (void)dealloc;
- (void)didFinishSpeakingRequest:(id)request metrics:(id)metrics withError:(id)error;
- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)didStartSpeakingRequest:(id)request;
@end

@implementation MNSpeechResourceController

- (MNSpeechControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_mediaSessionServicesWereReset:(id)reset
{
  v8 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698D710] = [MEMORY[0x1E698D710] sharedInstance];
  self->_audioSessionID = [mEMORY[0x1E698D710] opaqueSessionID];

  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    audioSessionID = self->_audioSessionID;
    v7[0] = 67109120;
    v7[1] = audioSessionID;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓢ Media services were reset. New session id: %d", v7, 8u);
  }
}

- (void)_audioSessionInterruption:(id)interruption
{
  v24 = *MEMORY[0x1E69E9840];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E698D588]];
  integerValue = [v5 integerValue];

  if (integerValue == 1 && [(MNSpeechResourceController *)self speaking])
  {
    v7 = GetAudioLogForMNSpeechResourceControllerCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    v9 = MEMORY[0x1E698D570];
    if (v8)
    {
      v10 = [userInfo objectForKey:*MEMORY[0x1E698D570]];
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓢ Media services were interrupted - %@", buf, 0xCu);
    }

    v11 = self->_utterance;
    [(MNSpeechResourceController *)self stopSpeakingAndReport:0];
    delegate = [(MNSpeechResourceController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"MNAudioSystemError";
      v16 = [userInfo objectForKey:{*v9, *MEMORY[0x1E696AA08]}];
      v21 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [v14 errorWithDomain:@"MNAudioSystemError" code:0 userInfo:v17];

      delegate2 = [(MNSpeechResourceController *)self delegate];
      [delegate2 speechResourceController:self wasInterruptedWhileSpeakingUtterance:v11 withError:v18];
    }
  }
}

- (void)_updateEstimatorWithDuration:(double)duration andUtterance:(id)utterance
{
  v23 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v7 = utteranceCopy;
  v8 = duration >= 1.0 && duration <= 60.0;
  if (v8 && [utteranceCopy length])
  {
    _navigation_stripTagsFromSpokenString = [v7 _navigation_stripTagsFromSpokenString];
    v10 = [_navigation_stripTagsFromSpokenString length];

    v11 = self->_charactersSpokenCount + v10;
    self->_charactersSpokenCount = v11;
    v12 = self->_charactersSpokenDuration + duration;
    self->_charactersSpokenDuration = v12;
    if (v11 < 0x2711)
    {
      v13 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        charactersSpokenCount = self->_charactersSpokenCount;
        charactersSpokenDuration = self->_charactersSpokenDuration;
        v19 = 134218240;
        v20 = charactersSpokenCount;
        v21 = 2048;
        v22 = charactersSpokenDuration;
        v16 = "ⓢ Updated estimator: chars spoken %lu : duration %f";
        goto LABEL_12;
      }
    }

    else
    {
      self->_charactersSpokenCount = v11 >> 1;
      self->_charactersSpokenDuration = v12 * 0.5;
      v13 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = self->_charactersSpokenCount;
        v15 = self->_charactersSpokenDuration;
        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v15;
        v16 = "ⓢ Updated estimator (clamped): chars spoken %lu : duration %f";
LABEL_12:
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEBUG, v16, &v19, 0x16u);
      }
    }
  }
}

- (void)didFinishSpeakingRequest:(id)request metrics:(id)metrics withError:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  [(MNSpeechResourceController *)self _cancelTimer];
  self->_currentlySpeaking = 0;
  utterance = self->_utterance;
  self->_utterance = 0;

  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  if (!errorCopy)
  {
    [metricsCopy audioDuration];
    v19 = v18;
    text = [requestCopy text];
    v21 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v35 = requestCopy;
      v36 = 2048;
      v37 = v19;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Finished speech request (%p) in %0.1fs seconds.", buf, 0x16u);
    }

    [(MNSpeechResourceController *)self _addDurationToCache:text forUtterance:v19];
    [(MNSpeechResourceController *)self _updateEstimatorWithDuration:text andUtterance:v19];
    delegate = [(MNSpeechResourceController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

    delegate2 = [(MNSpeechResourceController *)self delegate];
    [delegate2 speechResourceController:self didFinishSpeakingUtterance:text withDuration:v19];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  code = [errorCopy code];
  v13 = GetAudioLogForMNSpeechResourceControllerCategory();
  v14 = v13;
  if (code == 1)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 134218242;
    v35 = requestCopy;
    v36 = 2112;
    v37 = *&errorCopy;
    v15 = "Cancelled speech request (%p): %@.";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 134218242;
    v35 = requestCopy;
    v36 = 2112;
    v37 = *&errorCopy;
    v15 = "Finished speech request (%p) with error: %@.";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1D311E000, v16, v17, v15, buf, 0x16u);
LABEL_12:

  delegate3 = [(MNSpeechResourceController *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    if ([errorCopy code] == 1)
    {
      v27 = 3608;
    }

    else
    {
      v27 = 3607;
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = @"MNAudioSystemError";
    v32 = *MEMORY[0x1E696AA08];
    v33 = errorCopy;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    text = [v28 errorWithDomain:@"MNAudioSystemError" code:v27 userInfo:v30];

    delegate2 = [(MNSpeechResourceController *)self delegate];
    text2 = [requestCopy text];
    [delegate2 speechResourceController:self didFailWhileSpeakingUtterance:text2 withError:text];

    goto LABEL_17;
  }

LABEL_19:
}

- (void)didStartSpeakingRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    session = self->_session;
    v11 = 136315650;
    v12 = "[MNSpeechResourceController didStartSpeakingRequest:]";
    v13 = 2112;
    v14 = session;
    v15 = 2112;
    v16 = requestCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s : %@ : %@", &v11, 0x20u);
  }

  delegate = [(MNSpeechResourceController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MNSpeechResourceController *)self delegate];
    text = [requestCopy text];
    [delegate2 speechResourceController:self willStartSpeakingUtterance:text];
  }
}

- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    session = self->_session;
    *buf = 136316162;
    v30 = "[MNSpeechResourceController didFinishSynthesisRequest:withInstrumentMetrics:error:]";
    v31 = 2112;
    v32 = session;
    v33 = 2112;
    v34 = requestCopy;
    v35 = 2112;
    v36 = metricsCopy;
    v37 = 2112;
    v38 = errorCopy;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "%s : %@ : %@ : %@ : %@", buf, 0x34u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [metricsCopy audioDuration];
  v14 = v13;
  text = [requestCopy text];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  if (errorCopy)
  {
    v16 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = requestCopy;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "⒮    Error while processing synthesis request : %@ - %@", buf, 0x16u);
    }

    delegate = [(MNSpeechResourceController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      if ([errorCopy code] == 1)
      {
        v19 = 3604;
      }

      else
      {
        v19 = 3603;
      }

      v20 = MEMORY[0x1E696ABC0];
      v21 = @"MNAudioSystemError";
      v27 = *MEMORY[0x1E696AA08];
      v28 = errorCopy;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      delegate4 = [v20 errorWithDomain:@"MNAudioSystemError" code:v19 userInfo:v22];

      delegate2 = [(MNSpeechResourceController *)self delegate];
      [delegate2 speechResourceController:self didFailWhileCachingUtterance:text withError:delegate4];

      goto LABEL_13;
    }
  }

  else
  {
    [(MNSpeechResourceController *)self _addDurationToCache:text forUtterance:v14];
    [(MNSpeechResourceController *)self _updateEstimatorWithDuration:text andUtterance:v14];
    delegate3 = [(MNSpeechResourceController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate4 = [(MNSpeechResourceController *)self delegate];
      [delegate4 speechResourceController:self didCacheUtterance:text withDuration:v14];
LABEL_13:
    }
  }
}

- (void)_speakingTimeoutOccurred:(double)occurred
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = 134217984;
    occurredCopy = occurred;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "⒮ Synthesizer could not speak within specified time (%.3f) or nothing was spoken", &v12, 0xCu);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  delegate = [(MNSpeechResourceController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = @"MNAudioSystemError";
    v10 = [v8 errorWithDomain:@"MNAudioSystemError" code:3609 userInfo:0];

    delegate2 = [(MNSpeechResourceController *)self delegate];
    [delegate2 speechResourceController:self didTimeoutWhileSpeakingUtterance:self->_utterance withError:v10];
  }
}

- (void)_cachingTimeoutOccurred
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "⒮ Synthesizer could not cache within specified time", v10, 2u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
  delegate = [(MNSpeechResourceController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = @"MNAudioSystemError";
    v8 = [v6 errorWithDomain:@"MNAudioSystemError" code:3605 userInfo:0];

    delegate2 = [(MNSpeechResourceController *)self delegate];
    [delegate2 speechResourceController:self didTimeoutWhileSpeakingUtterance:self->_utterance withError:v8];
  }
}

- (void)_cancelTimer
{
  if (self->_timer)
  {
    v3 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓢ Stopping timer", v5, 2u);
    }

    [(MNDispatchTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_createTimerForUtterance:(id)utterance andIsCaching:(BOOL)caching
{
  v20 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  [(MNSpeechResourceController *)self durationOf:utteranceCopy];
  v8 = fmax(v7 * 1.5, v7 + 2.0);
  v9 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = v8;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "ⓢ Creating timer with timeout: %f", buf, 0xCu);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  objc_initWeak(buf, self);
  v10 = [MNDispatchTimer alloc];
  v11 = MNNavigationQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__MNSpeechResourceController__createTimerForUtterance_andIsCaching___block_invoke;
  v15[3] = &unk_1E842FB60;
  cachingCopy = caching;
  objc_copyWeak(v16, buf);
  v16[1] = *&v8;
  v12 = [(MNDispatchTimer *)v10 initWithTime:v11 queue:v15 handler:v8];
  timer = self->_timer;
  p_timer = &self->_timer;
  *p_timer = v12;

  [*p_timer activate];
  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

void __68__MNSpeechResourceController__createTimerForUtterance_andIsCaching___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v2 == 1)
  {
    [WeakRetained _cachingTimeoutOccurred];
  }

  else
  {
    [WeakRetained _speakingTimeoutOccurred:*(a1 + 40)];
  }
}

- (double)_estimateDurationForUtterance:(id)utterance
{
  _navigation_stripTagsFromSpokenString = [utterance _navigation_stripTagsFromSpokenString];
  v5 = _navigation_stripTagsFromSpokenString;
  charactersSpokenCount = self->_charactersSpokenCount;
  if (charactersSpokenCount < 0x33)
  {
    if ([_navigation_stripTagsFromSpokenString _navigation_isCJK])
    {
      v7 = 0.2;
    }

    else
    {
      v7 = 0.07;
    }
  }

  else
  {
    v7 = fmax(fmin(self->_charactersSpokenDuration / charactersSpokenCount, 0.4), 0.04);
  }

  v8 = v7 * [v5 length];

  return v8;
}

- (void)_addDurationToCache:(double)cache forUtterance:(id)utterance
{
  durations = self->_durations;
  v6 = MEMORY[0x1E696AD98];
  utteranceCopy = utterance;
  v8 = [v6 numberWithDouble:cache];
  [(NSCache *)durations setObject:v8 forKey:utteranceCopy];
}

- (BOOL)_createDurationCacheIfNecessary
{
  durations = self->_durations;
  if (!durations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_durations;
    self->_durations = v4;
  }

  return durations == 0;
}

- (double)_volumeFromUserPreference
{
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    GEOConfigGetInteger();
  }

  GEOConfigGetDouble();
  return result;
}

- (id)_speechRequestForUtterance:(id)utterance withLanguage:(id)language andVoiceName:(id)name andAudioSessionID:(unsigned int)d andPrivacySensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v8 = *&d;
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  languageCopy = language;
  utteranceCopy = utterance;
  if (GEOConfigGetBOOL())
  {
    v15 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138477827;
      v21 = @"ⓢ Debug Panel has the Disable Server TTS switch ON";
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "%{private}@", &v20, 0xCu);
    }

    sensitiveCopy = 1;
  }

  v16 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:languageCopy name:nameCopy];

  v17 = [objc_alloc(MEMORY[0x1E69D3308]) initWithText:utteranceCopy voice:v16];
  [v17 setAudioSessionId:v8];
  [v17 setPrivacySensitive:sensitiveCopy];
  [(MNSpeechResourceController *)self _volumeFromUserPreference];
  *&v18 = v18;
  [v17 setPlaybackVolume:v18];

  return v17;
}

- (id)_synthesisRequestForUtterance:(id)utterance withLanguage:(id)language andVoiceName:(id)name andPrivacySensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  languageCopy = language;
  utteranceCopy = utterance;
  if (GEOConfigGetBOOL())
  {
    v12 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138477827;
      v17 = @"ⓢ Debug Panel has the Disable Server TTS switch ON";
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "%{private}@", &v16, 0xCu);
    }

    sensitiveCopy = 1;
  }

  v13 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:languageCopy name:nameCopy];

  v14 = [objc_alloc(MEMORY[0x1E69D3310]) initWithText:utteranceCopy voice:v13];
  [v14 setPrivacySensitive:sensitiveCopy];

  return v14;
}

- (BOOL)stopSpeakingAndReport:(id *)report
{
  [(MNSpeechResourceController *)self _cancelTimer];
  if ([(MNSpeechResourceController *)self speaking])
  {
    [(SiriTTSDaemonSession *)self->_session setKeepActive:0];
    if (self->_onGoingRequest)
    {
      v4 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Ⓢ Attempting to immediately stop current speech", buf, 2u);
      }

      [(SiriTTSDaemonSession *)self->_session cancelWithRequest:self->_onGoingRequest];
    }

    else
    {
      self->_currentlySpeaking = 0;
      utterance = self->_utterance;
      self->_utterance = 0;

      v6 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "Ⓢ No speech currently in progress", v10, 2u);
      }
    }

    v7 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Ⓢ    Stop speaking request was successful", v9, 2u);
    }
  }

  return 1;
}

- (BOOL)speak:(id)speak withDisclosure:(unint64_t)disclosure andReport:(id *)report
{
  v51 = *MEMORY[0x1E69E9840];
  speakCopy = speak;
  v10 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    cachedVoiceLanguage = self->_cachedVoiceLanguage;
    cachedVoiceName = self->_cachedVoiceName;
    cachedVoiceGender = self->_cachedVoiceGender;
    *buf = 138413570;
    *&buf[4] = cachedVoiceLanguage;
    *&buf[12] = 2112;
    *&buf[14] = cachedVoiceName;
    *&buf[22] = 1024;
    LODWORD(v47) = cachedVoiceGender;
    WORD2(v47) = 2080;
    *(&v47 + 6) = "[MNSpeechResourceController speak:withDisclosure:andReport:]";
    HIWORD(v47) = 2112;
    v48 = speakCopy;
    v49 = 2048;
    disclosureCopy = disclosure;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "Speak with language %@, name %@, gender %d\nⓢ %s : %@ : %lu", buf, 0x3Au);
  }

  if (!GEOConfigGetBOOL())
  {
    if ([speakCopy length])
    {
      if (disclosure < 2)
      {
        [(MNSpeechResourceController *)self stopSpeakingAndReport:0];
        [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
        delegate4 = [(MNSpeechResourceController *)self _speechRequestForUtterance:speakCopy withLanguage:self->_cachedVoiceLanguage andVoiceName:self->_cachedVoiceName andAudioSessionID:self->_audioSessionID andPrivacySensitive:disclosure == 0];
        v30 = GetAudioLogForMNSpeechResourceControllerCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          *&buf[4] = delegate4;
          *&buf[12] = 2113;
          *&buf[14] = speakCopy;
          _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Sending speech request (%p): %{private}@", buf, 0x16u);
        }

        objc_initWeak(&location, self);
        objc_initWeak(&from, delegate4);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke;
        v39[3] = &unk_1E842FAC8;
        objc_copyWeak(&v40, &location);
        objc_copyWeak(&v41, &from);
        [(__CFString *)delegate4 setDidStartSpeaking:v39];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&v47 = __Block_byref_object_copy__14191;
        *(&v47 + 1) = __Block_byref_object_dispose__14192;
        v48 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_2;
        v38[3] = &unk_1E842FA68;
        v38[4] = buf;
        [(__CFString *)delegate4 setDidReportInstrument:v38];
        self->_currentlySpeaking = 1;
        session = self->_session;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_3;
        v35[3] = &unk_1E842FA90;
        objc_copyWeak(&v36, &location);
        objc_copyWeak(&v37, &from);
        v35[4] = buf;
        [(SiriTTSDaemonSession *)session speakWithSpeechRequest:delegate4 didFinish:v35];
        v32 = GetAudioLogForMNSpeechResourceControllerCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_INFO, "Ⓢ    Speech request submitted", v34, 2u);
        }

        objc_storeStrong(&self->_onGoingRequest, delegate4);
        objc_storeStrong(&self->_utterance, speak);
        [(MNSpeechResourceController *)self _createTimerForUtterance:speakCopy andIsCaching:0];
        objc_destroyWeak(&v37);
        objc_destroyWeak(&v36);
        _Block_object_dispose(buf, 8);

        objc_destroyWeak(&v41);
        objc_destroyWeak(&v40);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
        goto LABEL_27;
      }

      v21 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = disclosure;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "⒮ Invalid disclosure level: %lu", buf, 0xCu);
      }

      if (report)
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = @"MNAudioSystemError";
        v44 = @"InvalidDisclosure";
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:disclosure];
        v45 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *report = [v22 errorWithDomain:@"MNAudioSystemError" code:3601 userInfo:v25];

        v26 = 0;
LABEL_21:
        delegate4 = @"MNAudioSystemError";
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v27 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_ERROR, "⒮ Invalid utterance", buf, 2u);
      }

      if (report)
      {
        v28 = MEMORY[0x1E696ABC0];
        v29 = @"MNAudioSystemError";
        [v28 errorWithDomain:@"MNAudioSystemError" code:3600 userInfo:0];
        *report = v26 = 0;
        goto LABEL_21;
      }
    }

    v26 = 0;
    goto LABEL_29;
  }

  v14 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *&buf[4] = @"ⓢ Debug Panel has the Mute Voice switch ON";
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "%{private}@", buf, 0xCu);
  }

  delegate = [(MNSpeechResourceController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(MNSpeechResourceController *)self delegate];
    [delegate2 speechResourceController:self willStartSpeakingUtterance:speakCopy];
  }

  delegate3 = [(MNSpeechResourceController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate4 = [(MNSpeechResourceController *)self delegate];
    [(__CFString *)delegate4 speechResourceController:self didFinishSpeakingUtterance:speakCopy withDuration:2.0];
LABEL_27:
    v26 = 1;
    goto LABEL_28;
  }

  v26 = 1;
LABEL_29:

  return v26;
}

void __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakingRequest:v2];
}

void __61__MNSpeechResourceController_speak_withDisclosure_andReport___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSpeakingRequest:v4 metrics:*(*(*(a1 + 32) + 8) + 40) withError:v3];
}

- (double)durationOf:(id)of
{
  v16 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  if ([ofCopy length])
  {
    if (![(MNSpeechResourceController *)self _createDurationCacheIfNecessary])
    {
      v5 = [(NSCache *)self->_durations objectForKey:ofCopy];
      v6 = v5;
      if (v5)
      {
        [v5 doubleValue];
        if (v7 > 0.0)
        {
          v9 = v7;
          v10 = GetAudioLogForMNSpeechResourceControllerCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v12 = 134218243;
            v13 = v9;
            v14 = 2113;
            v15 = ofCopy;
            _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_INFO, "ⓢ Duration is using a cached value of %f for '%{private}@'", &v12, 0x16u);
          }

          goto LABEL_12;
        }
      }
    }

    [(MNSpeechResourceController *)self _estimateDurationForUtterance:ofCopy];
    v9 = v8;
    [(MNSpeechResourceController *)self _addDurationToCache:ofCopy forUtterance:?];
    v6 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 134218243;
      v13 = v9;
      v14 = 2113;
      v15 = ofCopy;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "ⓢ Duration is using an estimated value of %f for '%{private}@'", &v12, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = 0.0;
LABEL_13:

  return v9;
}

- (BOOL)cache:(id)cache withDisclosure:(unint64_t)disclosure andReport:(id *)report
{
  v38[1] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v10 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[MNSpeechResourceController cache:withDisclosure:andReport:]";
    *&buf[12] = 2112;
    *&buf[14] = cacheCopy;
    *&buf[22] = 2048;
    disclosureCopy = disclosure;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "%s : %@ : %lu", buf, 0x20u);
  }

  if (![cacheCopy length])
  {
    v17 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "⒮ Invalid utterance", buf, 2u);
    }

    if (report)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = @"MNAudioSystemError";
      [v18 errorWithDomain:@"MNAudioSystemError" code:3600 userInfo:0];
      *report = v16 = 0;
      goto LABEL_13;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  if (disclosure < 2)
  {
    [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
    v21 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      *&buf[4] = cacheCopy;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_INFO, "Ⓢ Attempting to start caching '%{private}@'", buf, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:self->_cachedVoiceLanguage name:self->_cachedVoiceName];
    v22 = [objc_alloc(MEMORY[0x1E69D3310]) initWithText:cacheCopy voice:v20];
    [v22 setPrivacySensitive:disclosure == 0];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v22);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    disclosureCopy = __Block_byref_object_copy__14191;
    v35 = __Block_byref_object_dispose__14192;
    v36 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke;
    v30[3] = &unk_1E842FA68;
    v30[4] = buf;
    [v22 setDidReportInstrument:v30];
    session = self->_session;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke_2;
    v27[3] = &unk_1E842FA90;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    v27[4] = buf;
    [(SiriTTSDaemonSession *)session synthesizeWithRequest:v22 didFinish:v27];
    v24 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_INFO, "Ⓢ    Synthesis request submitted", v26, 2u);
    }

    objc_storeStrong(&self->_utterance, cache);
    [(MNSpeechResourceController *)self _createTimerForUtterance:cacheCopy andIsCaching:1];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    v16 = 1;
    goto LABEL_19;
  }

  v11 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = disclosure;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "⒮ Invalid disclosure level: %lu", buf, 0xCu);
  }

  if (!report)
  {
    goto LABEL_20;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = @"MNAudioSystemError";
  v37 = @"InvalidDisclosure";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:disclosure];
  v38[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  *report = [v12 errorWithDomain:@"MNAudioSystemError" code:3601 userInfo:v15];

  v16 = 0;
LABEL_13:
  v20 = @"MNAudioSystemError";
LABEL_19:

LABEL_21:
  return v16;
}

void __61__MNSpeechResourceController_cache_withDisclosure_andReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:v4 withInstrumentMetrics:*(*(*(a1 + 32) + 8) + 40) error:v3];
}

- (void)dealloc
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓢ Deallocating", buf, 2u);
  }

  [(MNSpeechResourceController *)self _cancelTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698D090] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698D558] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698D5C0] object:0];

  v5.receiver = self;
  v5.super_class = MNSpeechResourceController;
  [(MNSpeechResourceController *)&v5 dealloc];
}

- (void)_registerForObservation
{
  v3 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "Registering for observation", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__audioSessionInterruption_ name:*MEMORY[0x1E698D558] object:0];
  [defaultCenter addObserver:self selector:sel__mediaSessionServicesWereReset_ name:*MEMORY[0x1E698D5C0] object:0];
  [defaultCenter addObserver:self selector:sel__voiceChanged name:*MEMORY[0x1E698D090] object:0];
}

- (void)_voiceChanged
{
  v21 = *MEMORY[0x1E69E9840];
  outputVoice = [MEMORY[0x1E698D0F8] outputVoice];
  v4 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    languageCode = [outputVoice languageCode];
    name = [outputVoice name];
    v15 = 138412802;
    v16 = languageCode;
    v17 = 2112;
    v18 = name;
    v19 = 1024;
    gender = [outputVoice gender];
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Output voice changed to language %@, name %@, gender %d", &v15, 0x1Cu);
  }

  cachedVoiceLanguage = self->_cachedVoiceLanguage;
  languageCode2 = [outputVoice languageCode];
  if ([(NSString *)cachedVoiceLanguage isEqualToString:languageCode2])
  {
    cachedVoiceName = self->_cachedVoiceName;
    name2 = [outputVoice name];
    if ([(NSString *)cachedVoiceName isEqualToString:name2])
    {
      cachedVoiceGender = self->_cachedVoiceGender;
      gender2 = [outputVoice gender];

      if (cachedVoiceGender == gender2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  languageCode3 = [outputVoice languageCode];
  name3 = [outputVoice name];
  -[MNSpeechResourceController _prepareSynthesizerWithLanguage:andVoiceName:andGender:andAudioSessionID:](self, "_prepareSynthesizerWithLanguage:andVoiceName:andGender:andAudioSessionID:", languageCode3, name3, [outputVoice gender], self->_audioSessionID);

LABEL_10:
}

- (void)_markVoiceForDownloadingWithLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender
{
  v22 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  nameCopy = name;
  v9 = +[MNUserOptionsEngine sharedInstance];
  currentVoiceLanguage = [v9 currentVoiceLanguage];
  v11 = [currentVoiceLanguage isEqualToString:languageCopy];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69D3320]) initWithLanguage:languageCopy name:nameCopy];
    v13 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓢ Marking voice asset to auto-download %@", buf, 0xCu);
    }

    session = self->_session;
    v19 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__MNSpeechResourceController__markVoiceForDownloadingWithLanguage_andVoiceName_andGender___block_invoke;
    v17[3] = &unk_1E842FA40;
    v18 = v12;
    v16 = v12;
    [(SiriTTSDaemonSession *)session subscribeWithVoices:v15 reply:v17];
  }
}

void __90__MNSpeechResourceController__markVoiceForDownloadingWithLanguage_andVoiceName_andGender___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "⒮    Error marking voice asset to auto-download %@", &v5, 0xCu);
    }
  }
}

- (void)_warmUpTTSForLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender andAudioSessionID:(unsigned int)d
{
  v7 = [(MNSpeechResourceController *)self _synthesisRequestForUtterance:@"prewarm kick" withLanguage:language andVoiceName:name andPrivacySensitive:0];
  v8 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "Ⓢ Attempting to prewarm SiriTTSDaemonSession", buf, 2u);
  }

  [(SiriTTSDaemonSession *)self->_session setKeepActive:1];
  session = self->_session;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__MNSpeechResourceController__warmUpTTSForLanguage_andVoiceName_andGender_andAudioSessionID___block_invoke;
  v11[3] = &unk_1E842FA18;
  v12 = v7;
  selfCopy = self;
  v10 = v7;
  [(SiriTTSDaemonSession *)session prewarmWithRequest:v10 didFinish:v11];
}

void __93__MNSpeechResourceController__warmUpTTSForLanguage_andVoiceName_andGender_andAudioSessionID___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GetAudioLogForMNSpeechResourceControllerCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "⒮    Error submitting prewarm request (this is a problem in SiriTTSDaemonSession): %@ - %@", &v8, 0x16u);
    }

    [*(*(a1 + 40) + 8) setKeepActive:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "Ⓢ    Prewarm request succeeded: %@", &v8, 0xCu);
    }
  }
}

- (void)_prepareSynthesizerWithLanguage:(id)language andVoiceName:(id)name andGender:(int64_t)gender andAudioSessionID:(unsigned int)d
{
  v6 = *&d;
  v23 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  nameCopy = name;
  objc_storeStrong(&self->_cachedVoiceLanguage, language);
  objc_storeStrong(&self->_cachedVoiceName, name);
  self->_cachedVoiceGender = gender;
  v13 = GetAudioLogForMNSpeechResourceControllerCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    cachedVoiceLanguage = self->_cachedVoiceLanguage;
    cachedVoiceName = self->_cachedVoiceName;
    cachedVoiceGender = self->_cachedVoiceGender;
    v17 = 138412802;
    v18 = cachedVoiceLanguage;
    v19 = 2112;
    v20 = cachedVoiceName;
    v21 = 1024;
    v22 = cachedVoiceGender;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓢ Caching language %@, name %@, and gender %d", &v17, 0x1Cu);
  }

  [(MNSpeechResourceController *)self _warmUpTTSForLanguage:self->_cachedVoiceLanguage andVoiceName:self->_cachedVoiceName andGender:self->_cachedVoiceGender andAudioSessionID:v6];
  [(MNSpeechResourceController *)self _markVoiceForDownloadingWithLanguage:self->_cachedVoiceLanguage andVoiceName:self->_cachedVoiceName andGender:self->_cachedVoiceGender];
}

- (MNSpeechResourceController)initWithLanguage:(id)language
{
  v28 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (![languageCopy length])
  {
    mEMORY[0x1E698D178] = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(mEMORY[0x1E698D178], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, mEMORY[0x1E698D178], OS_LOG_TYPE_ERROR, "⒮ Invalid language", buf, 2u);
    }

    selfCopy = 0;
    goto LABEL_17;
  }

  v23.receiver = self;
  v23.super_class = MNSpeechResourceController;
  v5 = [(MNSpeechResourceController *)&v23 init];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E69D32E8]);
    session = v6->_session;
    v6->_session = v7;

    mEMORY[0x1E698D710] = [MEMORY[0x1E698D710] sharedInstance];
    v6->_audioSessionID = [mEMORY[0x1E698D710] opaqueSessionID];

    mEMORY[0x1E698D178] = [MEMORY[0x1E698D178] sharedInstance];
    v11 = [mEMORY[0x1E698D178] getBaseLocale:languageCopy];
    outputVoice = [MEMORY[0x1E698D0F8] outputVoice];
    v13 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v25 = outputVoice;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "AssistantServices voice info: %@", buf, 0xCu);
    }

    languageCode = [outputVoice languageCode];
    v15 = [mEMORY[0x1E698D178] getBaseLocale:languageCode];

    if ([v11 isEqualToString:v15])
    {
      name = [outputVoice name];
    }

    else
    {
      v18 = GetAudioLogForMNSpeechResourceControllerCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v25 = v11;
        *&v25[8] = 2112;
        *&v25[10] = outputVoice;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Desired language %@ does not match language in AssistantServices voiceInfo: %@", buf, 0x16u);
      }

      name = 0;
    }

    gender = [outputVoice gender];
    v20 = GetAudioLogForMNSpeechResourceControllerCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      audioSessionID = v6->_audioSessionID;
      *buf = 67109890;
      *v25 = audioSessionID;
      *&v25[4] = 2112;
      *&v25[6] = languageCopy;
      *&v25[14] = 2112;
      *&v25[16] = name;
      v26 = 1024;
      v27 = gender;
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "MNSpeechResourceController init: AVAudioSession id: %d | Language: %@ | Name: '%@' | Gender: %d", buf, 0x22u);
    }

    [(MNSpeechResourceController *)v6 _prepareSynthesizerWithLanguage:languageCopy andVoiceName:name andGender:gender andAudioSessionID:v6->_audioSessionID];
    [(MNSpeechResourceController *)v6 _registerForObservation];
    self = v6;

    selfCopy = self;
LABEL_17:

    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

@end