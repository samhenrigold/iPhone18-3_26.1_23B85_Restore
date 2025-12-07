@interface _LTOfflineSpeechSynthesizer
- (_LTOfflineSpeechSynthesizer)initWithCompletion:(id)completion;
- (void)cancel;
- (void)speak:(id)speak withContext:(id)context;
@end

@implementation _LTOfflineSpeechSynthesizer

- (_LTOfflineSpeechSynthesizer)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _LTOfflineSpeechSynthesizer;
  v5 = [(_LTOfflineSpeechSynthesizer *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D613F8]);
    session = v5->_session;
    v5->_session = v6;

    v8 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v8;

    v10 = objc_alloc_init(MEMORY[0x277CE1AC8]);
    audioDecoder = v5->_audioDecoder;
    v5->_audioDecoder = v10;

    v12 = v5;
  }

  return v5;
}

- (void)speak:(id)speak withContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  speakCopy = speak;
  contextCopy = context;
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentAudioData = self->_currentAudioData;
  self->_currentAudioData = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentWordTimingInfo = self->_currentWordTimingInfo;
  self->_currentWordTimingInfo = v11;

  localePair = [contextCopy localePair];
  targetLocale = [localePair targetLocale];
  v15 = _LTLocaleMappedForTTS();

  if ([speakCopy length] <= 0x14)
  {
    v18 = speakCopy;
    v17 = v18;
  }

  else
  {
    v16 = [speakCopy substringToIndex:20];
    v17 = [v16 stringByAppendingString:@"..."];
  }

  v20 = _LTOSLogTTS(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    localeIdentifier = [v15 localeIdentifier];
    *buf = 138740227;
    v43 = v17;
    v44 = 2114;
    v45 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Speaking: %{sensitive}@ language code %{public}@", buf, 0x16u);
  }

  if ([speakCopy length])
  {
    localeIdentifier2 = [v15 localeIdentifier];
    v25 = [_LTDTTSAssetService voiceForLocaleIdentifier:localeIdentifier2];

    if (v25)
    {
      v28 = [objc_alloc(MEMORY[0x277D61468]) initWithText:speakCopy voice:v25];
      outputFileURL = [contextCopy outputFileURL];
      [v28 setOutputPath:outputFileURL];

      [contextCopy ttsPlaybackRate];
      *&v30 = v30;
      [v28 setRate:v30];
      [v28 setPrivacySensitive:1];
      [v28 setDidReportInstrument:&__block_literal_global_22];
      objc_storeStrong(&self->_currentRequest, v28);
      objc_initWeak(buf, self);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9;
      v40[3] = &unk_2789B6F78;
      objc_copyWeak(&v41, buf);
      [(SiriTTSSynthesisRequest *)self->_currentRequest setDidGenerateAudio:v40];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_11;
      v38[3] = &unk_2789B6FA0;
      objc_copyWeak(&v39, buf);
      [(SiriTTSSynthesisRequest *)self->_currentRequest setDidGenerateWordTimings:v38];
      session = self->_session;
      v31 = self->_currentRequest;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2;
      v35[3] = &unk_2789B6FF0;
      objc_copyWeak(&v37, buf);
      v36 = speakCopy;
      [(SiriTTSDaemonSession *)session synthesizeWithRequest:v31 didFinish:v35];

      objc_destroyWeak(&v37);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }

    else
    {
      v34 = _LTOSLogTTS(v26, v27);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineSpeechSynthesizer speak:v34 withContext:v15];
      }
    }
  }

  else
  {
    v33 = _LTOSLogTTS(0, v23);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v33, OS_LOG_TYPE_INFO, "Received zero-length or nil text speak request", buf, 2u);
    }
  }
}

- (void)cancel
{
  v3 = _LTOSLogTTS(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "TTS cancelled", v4, 2u);
  }

  [(SiriTTSDaemonSession *)self->_session cancelWithRequest:self->_currentRequest];
}

- (void)speak:(void *)a1 withContext:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localeIdentifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "No synthesis voice found for %{public}@", &v5, 0xCu);
}

@end