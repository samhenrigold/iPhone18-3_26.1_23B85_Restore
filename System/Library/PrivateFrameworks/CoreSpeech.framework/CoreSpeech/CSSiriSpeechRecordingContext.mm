@interface CSSiriSpeechRecordingContext
- (BOOL)_shouldRecordToFile;
- (CSSiriSpeechRecordingContext)initWithSessionUUID:(id)d turnIdentifier:(id)identifier;
- (id)_createRequestLinkInfo:(id)info component:(int)component;
- (id)description;
- (void)_didBecomeCurrent;
- (void)_didResignCurrent;
- (void)_donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:(id)completion;
- (void)_finalizeAudioFileWriterWithCompletion:(id)completion;
- (void)_initializeAudioFileWriterWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)_instrumentSiriCue:(int)cue;
- (void)_removeRecordedAudio;
- (void)acquireRecordedAudioWithHandler:(id)handler;
- (void)appendRecordedAudioBuffer:(id)buffer;
- (void)becomeCurrent;
- (void)beginRecordingAudioWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)dealloc;
- (void)didDetectTwoShotWithAudioActivationInfo:(id)info atTime:(double)time;
- (void)didStopRecordingWithError:(id)error;
- (void)emitRequestLinkEventForMHUUID:(id)d;
- (void)emitRequestLinkEventForRtsSessionId:(id)id;
- (void)endRecordingAudio;
- (void)getAudioRecordRouteAndDeviceIdentificationWithCompletion:(id)completion;
- (void)instrumentSiriCue:(int)cue;
- (void)instrumentSiriCueForAlertType:(int64_t)type;
- (void)relinquishAudioSessionAssertionsWithContext:(id)context;
- (void)relinquishAudioSessionAssertionsWithError:(id)error;
- (void)resignCurrent;
- (void)updateAccessToRecordedAudioForVoiceIdentificationTraining:(BOOL)training forResultCandidateId:(id)id sharedUserId:(id)userId;
- (void)updateAudioRecordContext:(id)context;
- (void)updateAudioRecordDeviceInfo:(id)info;
- (void)updateRecordingInfo:(id)info;
- (void)updateRecordingSettings:(id)settings;
- (void)updateSelectedResultCandidateId:(id)id;
- (void)updateStartSpeechId:(id)id;
- (void)updateVoiceTriggerInfo:(id)info;
- (void)willPrepareAndStartRecordingWithAudioActivationInfo:(id)info;
- (void)willStopRecordingAtHostTime:(unint64_t)time;
@end

@implementation CSSiriSpeechRecordingContext

- (void)becomeCurrent
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[CSSiriSpeechRecordingContext becomeCurrent]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSSiriSpeechRecordingContext_becomeCurrent__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__45__CSSiriSpeechRecordingContext_becomeCurrent__block_invoke(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    return [*(result + 4) _didBecomeCurrent];
  }

  return result;
}

- (void)_didBecomeCurrent
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    v5 = 136315650;
    v6 = "[CSSiriSpeechRecordingContext _didBecomeCurrent]";
    v7 = 2048;
    selfCopy = self;
    v9 = 2112;
    v10 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", &v5, 0x20u);
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = CSSiriSpeechRecordingContext;
  v4 = [(CSSiriSpeechRecordingContext *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ (sessionUUID = %@)", v4, self->_sessionUUID];

  return v5;
}

- (void)_removeRecordedAudio
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_recordedAudioFileURL && (!AFIsInternalInstall() || (_AFPreferencesKeepRecorededAudioFiles() & 1) == 0))
  {
    v3 = MEMORY[0x277CEF0E8];
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      recordedAudioFileURL = self->_recordedAudioFileURL;
      *buf = 136315650;
      v16 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
      v17 = 2048;
      selfCopy3 = self;
      v19 = 2112;
      v20 = recordedAudioFileURL;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s %p Removing recorded audio at %@...", buf, 0x20u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = self->_recordedAudioFileURL;
    v14 = 0;
    v8 = [defaultManager removeItemAtURL:v7 error:&v14];
    v9 = v14;

    v10 = *v3;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_recordedAudioFileURL;
        *buf = 136315906;
        v16 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
        v17 = 2048;
        selfCopy3 = self;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v9;
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s %p Failed to remove recorded audio at %@ (error = %@).", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v11 = self->_recordedAudioFileURL;
      *buf = 136315650;
      v16 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
      v17 = 2048;
      selfCopy3 = self;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s %p Removed recorded audio at %@.", buf, 0x20u);
    }

    v12 = self->_recordedAudioFileURL;
    self->_recordedAudioFileURL = 0;
  }
}

- (void)_donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  recordingAudioGroup = self->_recordingAudioGroup;
  if (recordingAudioGroup)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke;
    v8[3] = &unk_2784C6E98;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_group_notify(recordingAudioGroup, queue, v8);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    if (*(v2 + 32))
    {
      v3 = [*(v2 + 128) containsObject:?];
    }

    else
    {
      v3 = *(v2 + 120);
    }

    v6 = MEMORY[0x277CEF0E8];
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 88);
      v10 = @"DENIED";
      if (v3)
      {
        v10 = @"ALLOWED";
      }

      *buf = 136315906;
      v25 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v26 = 2048;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s %p Access to payload audio at %@ is %@, setting payload recording flag for CoreSpeech.", buf, 0x2Au);
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v3 & 1];
    [v11 setObject:v12 forKey:@"shouldRecordPayload"];

    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *buf = 136315650;
      v25 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v26 = 2048;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s %p Donating recorded audio at %@...", buf, 0x20u);
    }

    v16 = [*(*(a1 + 32) + 88) relativePath];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20 = v18[5];
    v19 = v18[6];
    v21 = v18[7];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_79;
    v22[3] = &unk_2784C6E70;
    v22[4] = v18;
    v23 = v17;
    [CSVoiceIdXPCClient notifyImplicitUtterance:v16 audioDeviceType:v19 audioRecordType:v20 voiceTriggerEventInfo:v21 otherCtxt:v11 completion:v22];
  }

  else
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v26 = 2048;
      v27 = v2;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s %p No recorded audio.", buf, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_2;
  block[3] = &unk_2784C6C68;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  v8 = v4;
  dispatch_async(v7, block);
}

uint64_t __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[5];
      v6 = *(v5 + 88);
      v10 = 136315906;
      v11 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke_2";
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v2;
      _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %p Failed to donate recorded audio at %@ for  VoiceID training (error = %@).", &v10, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = a1[5];
    v8 = *(v7 + 88);
    v10 = 136315650;
    v11 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
    v12 = 2048;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p Donated recorded audio at %@ for  Voice VoiceID training.", &v10, 0x20u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_didResignCurrent
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    *buf = 136315650;
    v8 = "[CSSiriSpeechRecordingContext _didResignCurrent]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", buf, 0x20u);
  }

  mEMORY[0x277D55B08] = [MEMORY[0x277D55B08] sharedMonitor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke;
  v6[3] = &unk_2784C6408;
  v6[4] = self;
  [mEMORY[0x277D55B08] waitForMyriadDecisionForReason:@"Donating recorded audio to CoreSpeech" withCompletion:v6];
}

void __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke_2;
  v4[3] = &unk_2784C6390;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void *__49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke_2(void *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = result[4];
    if (v2[7])
    {
      v3 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = "[CSSiriSpeechRecordingContext _didResignCurrent]_block_invoke_2";
        _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s Myriad won & voice trigger present, donating recorded audio to CoreSpeech.", &v4, 0xCu);
        v2 = v1[4];
      }

      return [v2 _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:0];
    }
  }

  return result;
}

- (id)_createRequestLinkInfo:(id)info component:(int)component
{
  v4 = *&component;
  v5 = MEMORY[0x277D5AC78];
  infoCopy = info;
  v7 = [v5 alloc];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:infoCopy];

  v9 = [v7 initWithNSUUID:v8];
  v10 = objc_alloc_init(MEMORY[0x277D5A9E0]);
  [v10 setUuid:v9];
  [v10 setComponent:v4];

  return v10;
}

- (void)emitRequestLinkEventForRtsSessionId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:self->_sessionUUID component:1];
  uUIDString = [idCopy UUIDString];
  v7 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:uUIDString component:41];

  v8 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v8 setSource:v5];
  [v8 setTarget:v7];
  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
  [mEMORY[0x277D552B8] emitMessage:v8];

  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    uUIDString2 = [idCopy UUIDString];
    sessionUUID = self->_sessionUUID;
    v14 = 136315651;
    v15 = "[CSSiriSpeechRecordingContext emitRequestLinkEventForRtsSessionId:]";
    v16 = 2113;
    v17 = uUIDString2;
    v18 = 2113;
    v19 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s rtsSessionId: %{private}@, requestId: %{private}@", &v14, 0x20u);
  }
}

- (void)emitRequestLinkEventForMHUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  sessionUUID = self->_sessionUUID;
  dCopy = d;
  v6 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:sessionUUID component:1];
  uUIDString = [dCopy UUIDString];

  v8 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:uUIDString component:9];

  v9 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v9 setSource:v6];
  [v9 setTarget:v8];
  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
  [mEMORY[0x277D552B8] emitMessage:v9];

  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CSSiriSpeechRecordingContext emitRequestLinkEventForMHUUID:]";
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }
}

- (void)instrumentSiriCueForAlertType:(int64_t)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CSSiriSpeechRecordingContext_instrumentSiriCueForAlertType___block_invoke;
  v4[3] = &unk_2784C6EC0;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(queue, v4);
}

void __62__CSSiriSpeechRecordingContext_instrumentSiriCueForAlertType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 64);
    if (v2)
    {
      v3 = [v2 objectForKey:*MEMORY[0x277CB8318]];
      if (![v3 count])
      {
        v9 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v11 = 136315138;
          v12 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
          _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s No alert behavior in recordingSettings", &v11, 0xCu);
        }

        goto LABEL_17;
      }

      v4 = [v3 objectForKey:&unk_283667160];
      v5 = v4;
      if (!v4)
      {
        v10 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v11 = 136315138;
          v12 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
          _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s No alert style specified for record starting", &v11, 0xCu);
        }

        goto LABEL_16;
      }

      v6 = [v4 integerValue];
      if (v6 == 2)
      {
        v7 = 1;
      }

      else
      {
        if (v6 != 1)
        {
LABEL_16:

LABEL_17:
          return;
        }

        v7 = 3;
      }

      [*(a1 + 32) _instrumentSiriCue:v7];
      goto LABEL_16;
    }

    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s recordingSettings was nil", &v11, 0xCu);
    }
  }
}

- (void)_instrumentSiriCue:(int)cue
{
  v3 = *&cue;
  v6 = objc_alloc_init(MEMORY[0x277D5AA10]);
  [v6 setSiriCueType:v3];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logInstrumentation:v6 machAbsoluteTime:mach_absolute_time() turnIdentifier:self->_turnIdentifier];
}

- (void)instrumentSiriCue:(int)cue
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__CSSiriSpeechRecordingContext_instrumentSiriCue___block_invoke;
  v4[3] = &unk_2784C5998;
  v4[4] = self;
  cueCopy = cue;
  dispatch_async(queue, v4);
}

- (void)_finalizeAudioFileWriterWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    audioFileWriter = self->_audioFileWriter;
    *buf = 136315650;
    *&buf[4] = "[CSSiriSpeechRecordingContext _finalizeAudioFileWriterWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v16 = audioFileWriter;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (_audioFileWriter = %@)", buf, 0x20u);
  }

  if (self->_audioFileWriter)
  {
    v7 = self->_queue;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = __Block_byref_object_copy__3645;
    v17 = __Block_byref_object_dispose__3646;
    v8 = self->_audioFileWriter;
    v18 = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke;
    v11[3] = &unk_2784C3870;
    v9 = v7;
    v12 = v9;
    v13 = completionCopy;
    v14 = buf;
    [(CSSiriAudioFileWriter *)v8 flushWithCompletion:v11];
    v10 = self->_audioFileWriter;
    self->_audioFileWriter = 0;

    _Block_object_dispose(buf, 8);
  }
}

void __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke_2;
  v13[3] = &unk_2784C3848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v10 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v8, v13);
}

void __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_initializeAudioFileWriterWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v5 = [CSSiriAudioFileWriter alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__CSSiriSpeechRecordingContext__initializeAudioFileWriterWithAudioStreamBasicDescription___block_invoke;
  v8[3] = &unk_2784C3820;
  v8[4] = self;
  v6 = [(CSSiriAudioFileWriter *)v5 initWithType:2 pathGenerator:v8 priority:21];
  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = v6;

  [(CSSiriAudioFileWriter *)self->_audioFileWriter configureWithAudioStreamBasicDescription:description];
}

id __90__CSSiriSpeechRecordingContext__initializeAudioFileWriterWithAudioStreamBasicDescription___block_invoke(uint64_t a1)
{
  v2 = CSSiriSpeechRecordingRecordedAudioDirectoryPath();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *(*(a1 + 32) + 184);
  if (!v5)
  {
    v5 = @"Unknown";
  }

  v6 = [v4 initWithFormat:@"%@.wav", v5];
  v7 = [v2 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)endRecordingAudio
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[CSSiriSpeechRecordingContext endRecordingAudio]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

_BYTE *__49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[161] == 1)
  {
    v4[5] = v1;
    v4[6] = v2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke_2;
    v4[3] = &unk_2784C3710;
    v4[4] = result;
    return [result _finalizeAudioFileWriterWithCompletion:v4];
  }

  return result;
}

void __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CEF0E8];
  if (v6)
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 136315650;
      v17 = "[CSSiriSpeechRecordingContext endRecordingAudio]_block_invoke_2";
      v18 = 2048;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v16, 0x20u);
    }
  }

  v9 = [v5 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  *(v10 + 88) = v9;

  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 88);
    v16 = 136315650;
    v17 = "[CSSiriSpeechRecordingContext endRecordingAudio]_block_invoke";
    v18 = 2048;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s %p (_recordedAudioFileURL = %@)", &v16, 0x20u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 112));
}

- (void)appendRecordedAudioBuffer:(id)buffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CSSiriSpeechRecordingContext_appendRecordedAudioBuffer___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_async(queue, v7);
}

- (void)beginRecordingAudioWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[CSSiriSpeechRecordingContext beginRecordingAudioWithAudioStreamBasicDescription:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v6 = *&description->mBytesPerPacket;
  v9 = *&description->mSampleRate;
  v10 = v6;
  v11 = *&description->mBitsPerChannel;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke;
  v8[3] = &unk_2784C37F8;
  v8[4] = self;
  dispatch_async(queue, v8);
}

void __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 161) = [*(*(a1 + 32) + 40) shouldUseLocalAudioFileWriter];
  if ([*(a1 + 32) _shouldRecordToFile])
  {
    v2 = *(a1 + 32);
    if (v2[161] == 1)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke_2;
      v5[3] = &unk_2784C3710;
      v5[4] = v2;
      [v2 _finalizeAudioFileWriterWithCompletion:v5];
      dispatch_group_enter(*(*(a1 + 32) + 112));
      [*(a1 + 32) _initializeAudioFileWriterWithAudioStreamBasicDescription:a1 + 40];
    }
  }

  else
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 136315394;
      v7 = "[CSSiriSpeechRecordingContext beginRecordingAudioWithAudioStreamBasicDescription:]_block_invoke";
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p, ignore begin recording audio due to active phone call", buf, 0x16u);
    }
  }
}

- (void)relinquishAudioSessionAssertionsWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext relinquishAudioSessionAssertionsWithError:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p error = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithError___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

uint64_t __74__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) relinquishWithError:*(a1 + 40) options:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 relinquishWithError:v2 options:0];
}

- (void)relinquishAudioSessionAssertionsWithContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext relinquishAudioSessionAssertionsWithContext:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithContext___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  dispatch_async(queue, v8);
}

uint64_t __76__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithContext___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) relinquishWithContext:*(a1 + 40) options:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 relinquishWithContext:v2 options:0];
}

- (void)didStopRecordingWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "[CSSiriSpeechRecordingContext didStopRecordingWithError:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p error = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CSSiriSpeechRecordingContext_didStopRecordingWithError___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = errorCopy;
    dispatch_async(queue, v7);
  }
}

- (void)willStopRecordingAtHostTime:(unint64_t)time
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[CSSiriSpeechRecordingContext willStopRecordingAtHostTime:]";
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %p hostTime = %llu", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke;
    v13[3] = &__block_descriptor_40_e38_v16__0___AFAssertionContextMutating__8l;
    v13[4] = time;
    v7 = [MEMORY[0x277CEF180] newWithBuilder:v13];
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "[CSSiriSpeechRecordingContext willStopRecordingAtHostTime:]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2112;
      timeCopy = v7;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke_48;
    block[3] = &unk_2784C6FA8;
    block[4] = self;
    v12 = v7;
    v10 = v7;
    dispatch_async(queue, block);
  }
}

void __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v4)
  {
    v4 = mach_absolute_time();
    v3 = v5;
  }

  [v3 setTimestamp:v4];
  [v5 setReason:@"Stop Recording"];
}

- (void)didDetectTwoShotWithAudioActivationInfo:(id)info atTime:(double)time
{
  v41 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v34 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
    v35 = 2048;
    selfCopy4 = self;
    v37 = 2112;
    v38 = infoCopy;
    v39 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p audioActivationInfo = %@, time = %f", buf, 0x2Au);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    v9 = [infoCopy dateByAddingTimeIntervalSinceActivation:time];
    v10 = v9;
    if (v9)
    {
      date = v9;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v12 = date;

    v13 = [v12 dateByAddingTimeInterval:0.2];

    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      [v13 timeIntervalSinceNow];
      *buf = 136315906;
      v34 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2112;
      v38 = v13;
      v39 = 2048;
      timeCopy = v16;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s %p effectiveDate = %@ (%f)", buf, 0x2Au);
    }

    objc_initWeak(&location, self);
    v17 = AFAudioSessionAssertionGetCurrentAcquisitionService();
    v18 = MEMORY[0x277CEF180];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke;
    v29[3] = &unk_2784C3788;
    v19 = v13;
    v30 = v19;
    selfCopy3 = self;
    v20 = [v18 newWithBuilder:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_2;
    v27[3] = &unk_2784C37B0;
    objc_copyWeak(&v28, &location);
    v21 = [v17 acquireAudioSessionAssertionWithContext:v20 relinquishmentHandler:v27];

    v22 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v34 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_INFO, "%s %p twoShotDetectionAudioSessionAssertion = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_43;
    v25[3] = &unk_2784C6FA8;
    v25[4] = self;
    v26 = v21;
    v24 = v21;
    dispatch_async(queue, v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:@"Two Shot Detection"];
  [v3 setEffectiveDate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 184);
  v6 = @"sessionUUID";
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 setUserInfo:v5];
}

void __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0E8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = 136315650;
      v11 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]_block_invoke_2";
      v12 = 2048;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v10, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 136315650;
    v11 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]_block_invoke";
    v12 = 2048;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p (relinquishmentContext = %@)", &v10, 0x20u);
    goto LABEL_6;
  }
}

- (void)willPrepareAndStartRecordingWithAudioActivationInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
    v29 = 2048;
    selfCopy4 = self;
    v31 = 2112;
    v32 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %p audioActivationInfo = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    audioSessionActivationTargetDate = [infoCopy audioSessionActivationTargetDate];
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      [audioSessionActivationTargetDate timeIntervalSinceNow];
      *buf = 136315906;
      v28 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
      v29 = 2048;
      selfCopy4 = self;
      v31 = 2112;
      v32 = audioSessionActivationTargetDate;
      v33 = 2048;
      v34 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s %p effectiveDate = %@ (%f)", buf, 0x2Au);
    }

    objc_initWeak(&location, self);
    v11 = AFAudioSessionAssertionGetCurrentAcquisitionService();
    v12 = MEMORY[0x277CEF180];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke;
    v23[3] = &unk_2784C3788;
    v13 = audioSessionActivationTargetDate;
    v24 = v13;
    selfCopy3 = self;
    v14 = [v12 newWithBuilder:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_2;
    v21[3] = &unk_2784C37B0;
    objc_copyWeak(&v22, &location);
    v15 = [v11 acquireAudioSessionAssertionWithContext:v14 relinquishmentHandler:v21];

    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v28 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
      v29 = 2048;
      selfCopy4 = self;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s %p startRecordingAudioSessionAssertion = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_37;
    v19[3] = &unk_2784C6FA8;
    v19[4] = self;
    v20 = v15;
    v18 = v15;
    dispatch_async(queue, v19);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:@"Start Recording"];
  [v3 setEffectiveDate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 184);
  v6 = @"sessionUUID";
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 setUserInfo:v5];
}

void __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0E8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = 136315650;
      v11 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]_block_invoke_2";
      v12 = 2048;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v10, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 136315650;
    v11 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]_block_invoke";
    v12 = 2048;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p (relinquishmentContext = %@)", &v10, 0x20u);
    goto LABEL_6;
  }
}

- (void)updateRecordingSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateRecordingSettings:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = settingsCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordingSettings = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CSSiriSpeechRecordingContext_updateRecordingSettings___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_async(queue, v8);
}

- (void)updateRecordingInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateRecordingInfo:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordingInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CSSiriSpeechRecordingContext_updateRecordingInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

- (void)updateVoiceTriggerInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateVoiceTriggerInfo:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (voiceTriggerInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CSSiriSpeechRecordingContext_updateVoiceTriggerInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __55__CSSiriSpeechRecordingContext_updateVoiceTriggerInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (void)updateAudioRecordDeviceInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateAudioRecordDeviceInfo:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (audioRecordDeviceInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CSSiriSpeechRecordingContext_updateAudioRecordDeviceInfo___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __60__CSSiriSpeechRecordingContext_updateAudioRecordDeviceInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (void)updateAudioRecordContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateAudioRecordContext:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (audioRecordContext = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CSSiriSpeechRecordingContext_updateAudioRecordContext___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  dispatch_async(queue, v8);
}

- (void)acquireRecordedAudioWithHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[CSSiriSpeechRecordingContext acquireRecordedAudioWithHandler:]";
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 112);
  v4 = *(v2 + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2;
  v5[3] = &unk_2784C6E98;
  v5[4] = v2;
  v6 = v1;
  dispatch_group_notify(v3, v4, v5);
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldRecordToFile])
  {
    v2 = [*(*(a1 + 32) + 40) shouldUseLocalAudioFileWriter];
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(v3 + 88);
      v5 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        *buf = 136315650;
        *&buf[4] = "[CSSiriSpeechRecordingContext acquireRecordedAudioWithHandler:]_block_invoke_2";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v20 = v4;
        _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordedAudioFileURL = %@)", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v20 = __Block_byref_object_copy__3645;
      v21 = __Block_byref_object_dispose__3646;
      v22 = *(a1 + 32);
      v7 = objc_alloc(MEMORY[0x277CEF380]);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_22;
      v18[3] = &unk_2784C3738;
      v18[4] = buf;
      v8 = [v7 initWithBlock:v18];
      v9 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2_24;
      v16[3] = &unk_2784C6FD0;
      v10 = v8;
      v17 = v10;
      (*(v9 + 16))(v9, v4, v16);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v12 = *(v3 + 168);
      v13 = *(v3 + 184);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_3;
      v14[3] = &unk_2784C3760;
      v14[4] = v3;
      v15 = *(a1 + 40);
      [v12 getAudioFileWithRequestId:v13 completion:v14];
    }
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);

    v11();
  }
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_22(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 containerURLForSecurityApplicationGroupIdentifier:v5];

    v10 = [v9 URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v10 = v6;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3645;
  v18[4] = __Block_byref_object_dispose__3646;
  v19 = *(a1 + 32);
  v11 = objc_alloc(MEMORY[0x277CEF380]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_4;
  v17[3] = &unk_2784C3738;
  v17[4] = v18;
  v12 = [v11 initWithBlock:v17];
  v13 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_5;
  v15[3] = &unk_2784C6FD0;
  v14 = v12;
  v16 = v14;
  (*(v13 + 16))(v13, v10, v15);

  _Block_object_dispose(v18, 8);
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (BOOL)_shouldRecordToFile
{
  if (([(CSAudioRecordContext *)self->_audioRecordContext isRequestDuringActiveCall]& 1) != 0)
  {
    fileLoggingIsEnabled = 0;
  }

  else if (AFIsMac())
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    fileLoggingIsEnabled = [mEMORY[0x277CEF368] fileLoggingIsEnabled];
  }

  else
  {
    fileLoggingIsEnabled = 1;
  }

  return fileLoggingIsEnabled & 1;
}

- (void)getAudioRecordRouteAndDeviceIdentificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__CSSiriSpeechRecordingContext_getAudioRecordRouteAndDeviceIdentificationWithCompletion___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __89__CSSiriSpeechRecordingContext_getAudioRecordRouteAndDeviceIdentificationWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) route];
  v3 = [*(*(a1 + 32) + 48) remoteDeviceUID];
  v4 = v3;
  if (v3)
  {
    [v3 UUIDString];
  }

  else
  {
    [*(*(a1 + 32) + 72) deviceIdentifier];
  }
  v5 = ;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315906;
    v8 = "[CSSiriSpeechRecordingContext getAudioRecordRouteAndDeviceIdentificationWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s route = %@, deviceIdentifier = %@, deviceUID = %@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateAccessToRecordedAudioForVoiceIdentificationTraining:(BOOL)training forResultCandidateId:(id)id sharedUserId:(id)userId
{
  trainingCopy = training;
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  userIdCopy = userId;
  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v20 = "[CSSiriSpeechRecordingContext updateAccessToRecordedAudioForVoiceIdentificationTraining:forResultCandidateId:sharedUserId:]";
    v21 = 2048;
    selfCopy = self;
    v23 = 1024;
    v24 = trainingCopy;
    v25 = 2112;
    v26 = idCopy;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s %p (allows = %d, resultCandidateId = %@)", buf, 0x26u);
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__CSSiriSpeechRecordingContext_updateAccessToRecordedAudioForVoiceIdentificationTraining_forResultCandidateId_sharedUserId___block_invoke;
  v14[3] = &unk_2784C6F80;
  v18 = trainingCopy;
  v15 = idCopy;
  selfCopy2 = self;
  v17 = userIdCopy;
  v12 = userIdCopy;
  v13 = idCopy;
  dispatch_async(queue, v14);
}

void __124__CSSiriSpeechRecordingContext_updateAccessToRecordedAudioForVoiceIdentificationTraining_forResultCandidateId_sharedUserId___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 128);
    if (v2)
    {
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v6 = *(a1 + 40);
        v7 = *(v6 + 128);
        *(v6 + 128) = v5;

        v3 = *(a1 + 40);
      }

      if (!*(v3 + 136))
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = *(a1 + 40);
        v10 = *(v9 + 136);
        *(v9 + 136) = v8;

        v3 = *(a1 + 40);
      }

      [*(v3 + 128) addObject:*(a1 + 32)];
      if (*(a1 + 48))
      {
        v11 = *(*(a1 + 40) + 136);

        [v11 setObject:? forKey:?];
      }
    }

    else
    {
      [v4 removeObject:?];
      v14 = *(a1 + 32);
      v15 = *(*(a1 + 40) + 136);

      [v15 removeObjectForKey:v14];
    }
  }

  else
  {
    *(*(a1 + 40) + 120) = v2;
    v12 = *(a1 + 48);
    v13 = (*(a1 + 40) + 152);

    objc_storeStrong(v13, v12);
  }
}

- (void)updateSelectedResultCandidateId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateSelectedResultCandidateId:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = idCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (selectedResultCandidateId = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CSSiriSpeechRecordingContext_updateSelectedResultCandidateId___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = idCopy;
  v7 = idCopy;
  dispatch_async(queue, v8);
}

void __64__CSSiriSpeechRecordingContext_updateSelectedResultCandidateId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (void)updateStartSpeechId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext updateStartSpeechId:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = idCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (startSpeechId = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CSSiriSpeechRecordingContext_updateStartSpeechId___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = idCopy;
  v7 = idCopy;
  dispatch_async(queue, v8);
}

void __52__CSSiriSpeechRecordingContext_updateStartSpeechId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (void)resignCurrent
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[CSSiriSpeechRecordingContext resignCurrent]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSSiriSpeechRecordingContext_resignCurrent__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__45__CSSiriSpeechRecordingContext_resignCurrent__block_invoke(void *result)
{
  v1 = *(result + 4);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    return [*(result + 4) _didResignCurrent];
  }

  return result;
}

- (CSSiriSpeechRecordingContext)initWithSessionUUID:(id)d turnIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = CSSiriSpeechRecordingContext;
  v8 = [(CSSiriSpeechRecordingContext *)&v23 init];
  if (v8)
  {
    if (!dCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
      dCopy = [v9 UUIDString];
    }

    v10 = [dCopy copy];
    sessionUUID = v8->_sessionUUID;
    v8->_sessionUUID = v10;

    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v13 = v8->_sessionUUID;
      *buf = 136315650;
      v25 = "[CSSiriSpeechRecordingContext initWithSessionUUID:turnIdentifier:]";
      v26 = 2048;
      v27 = v8;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@", buf, 0x20u);
    }

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("com.apple.assistant.request.speech-context", v14);

    queue = v8->_queue;
    v8->_queue = v15;

    v17 = dispatch_group_create();
    recordingAudioGroup = v8->_recordingAudioGroup;
    v8->_recordingAudioGroup = v17;

    objc_storeStrong(&v8->_turnIdentifier, identifier);
    if (AFIsInternalInstall())
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      v8->_wantsRecordedAudioBufferLogs = [mEMORY[0x277CEF368] shouldLogForQA];
    }

    else
    {
      v8->_wantsRecordedAudioBufferLogs = 0;
    }

    v20 = objc_alloc_init(CSSiriAudioMessageRequestClient);
    audioMessageRequestClient = v8->_audioMessageRequestClient;
    v8->_audioMessageRequestClient = v20;

    v8->_shouldUseLocalFileWriter = 1;
  }

  return v8;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext dealloc]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", buf, 0x20u);
  }

  v5 = self->_recordingAudioGroup;
  v6 = v5;
  if (self->_shouldUseLocalFileWriter)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__CSSiriSpeechRecordingContext_dealloc__block_invoke;
    v8[3] = &unk_2784C3710;
    v9 = v5;
    [(CSSiriSpeechRecordingContext *)self _finalizeAudioFileWriterWithCompletion:v8];
  }

  [(CSSiriSpeechRecordingContext *)self _removeRecordedAudio];
  [(CSSiriAudioMessageRequestClient *)self->_audioMessageRequestClient releaseAudioMessageRetainLockFromRequestId:self->_sessionUUID];

  v7.receiver = self;
  v7.super_class = CSSiriSpeechRecordingContext;
  [(CSSiriSpeechRecordingContext *)&v7 dealloc];
}

void __39__CSSiriSpeechRecordingContext_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  [v5 removeItemAtURL:v4 error:0];

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

@end