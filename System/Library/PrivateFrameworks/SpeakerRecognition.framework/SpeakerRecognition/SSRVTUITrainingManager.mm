@interface SSRVTUITrainingManager
+ (SSRVTUITrainingManager)trainingManagerWithLocaleID:(id)d withAppDomain:(id)domain withSiriSharedUserId:(id)id;
+ (id)sharedtrainingSessionQueue;
- (BOOL)CSVTUITrainingSession:(id)session hasTrainUtterance:(id)utterance languageCode:(id)code payload:(BOOL)payload;
- (BOOL)_createAudioAnalyzer;
- (BOOL)_otaAssetsAvailable;
- (BOOL)_setupAudioSession;
- (BOOL)_shouldShowHeadsetDisconnectionMessage;
- (BOOL)_startAudioSession;
- (BOOL)_stopAudioSession;
- (BOOL)cancelTrainingForID:(int64_t)d;
- (BOOL)createKeywordDetector;
- (SSRVTUITrainingManager)initWithLocaleIdentifier:(id)identifier withAppDomain:(id)domain withSiriSharedUserId:(id)id withAudioProviderSelector:(id)selector shouldTrainViaXPC:(BOOL)c;
- (SSRVTUITrainingManagerDelegate)delegate;
- (SSRVoiceProfile)voiceProfile;
- (id)_fetchPreInstalledSecureAsset;
- (id)_getAudioToneFileName:(int)name;
- (id)_secureAssetWithAssetResourcePathURL:(id)l assetFileName:(id)name;
- (id)cleanupWithCompletion:(id)completion;
- (id)updateTrainingManagerForDevice:(unint64_t)device trainingDeviceUUIDList:(id)list;
- (int64_t)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r completion:(id)completion;
- (int64_t)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result;
- (unint64_t)_audioSource;
- (unint64_t)_validateRecordingStartHostTime:(unint64_t)time;
- (unint64_t)audioSource;
- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)available;
- (void)CSVTUITrainingSessionRMSAvailable:(float)available;
- (void)CSVTUITrainingSessionStopListen;
- (void)_createAudioSessionRecorderWithAudioProviderSelector:(id)selector;
- (void)_destroyAudioSession;
- (void)_fetchCurrentAsset;
- (void)_logSessionSummary;
- (void)_playSoundsEffect:(int)effect;
- (void)_resetAudioAnalyzer;
- (void)_updateAttemptForPageNumber:(unint64_t)number;
- (void)audioSessionDidStartRecording:(BOOL)recording error:(id)error;
- (void)audioSessionDidStopRecording:(int64_t)recording;
- (void)audioSessionErrorDidOccur:(id)occur;
- (void)audioSessionRecordBufferAvailable:(id)available;
- (void)audioSessionUnsupportedAudioRoute;
- (void)closeSessionBeforeStartWithStatus:(int)status successfully:(BOOL)successfully completionWithResult:(id)result;
- (void)closeSessionBeforeStartWithStatus:(int)status successfully:(BOOL)successfully withCompletion:(id)completion;
- (void)createSpeechRecognizer;
- (void)destroySpeakerTrainer;
- (void)didDetectForceEndPoint;
- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time;
- (void)endpointer:(id)endpointer didDetectStartpointAtTime:(double)time;
- (void)getAudioSessionID:(id)d;
- (void)playSoundEffectWithAudioTone:(int)tone;
- (void)playSoundsEffect:(int64_t)effect;
- (void)prepareWithCompletion:(id)completion;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setRecordingStartHostTime:(unint64_t)time;
- (void)setSuspendAudio:(BOOL)audio;
- (void)startRMS;
- (void)stopRMS;
@end

@implementation SSRVTUITrainingManager

- (SSRVTUITrainingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)CSVTUIRemoteTrainingSessionRMSAvailable:(float)available
{
  if (self->_shouldTrainViaXPC)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v10 = objc_loadWeakRetained(&self->_delegate);
        *&v9 = available;
        [v10 VTUITrainingManagerFeedLevel:v9];
      }
    }
  }
}

- (void)didDetectForceEndPoint
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SSRVTUITrainingManager_didDetectForceEndPoint__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__SSRVTUITrainingManager_didDetectForceEndPoint__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 didDetectEndOfSpeech:2];
    }
  }
}

- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SSRVTUITrainingManager_endpointer_didDetectHardEndpointAtTime___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __65__SSRVTUITrainingManager_endpointer_didDetectHardEndpointAtTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v4 didDetectEndOfSpeech:1];
    }

    v2 = *(a1 + 32);
  }

  return [v2 _resetAudioAnalyzer];
}

- (void)endpointer:(id)endpointer didDetectStartpointAtTime:(double)time
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRVTUITrainingManager_endpointer_didDetectStartpointAtTime___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__SSRVTUITrainingManager_endpointer_didDetectStartpointAtTime___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 didDetectBeginOfSpeech];
    }
  }
}

- (void)audioSessionUnsupportedAudioRoute
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRVTUITrainingManager_audioSessionUnsupportedAudioRoute__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SSRVTUITrainingManager_audioSessionUnsupportedAudioRoute__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v2 audioSessionUnsupportedAudioRoute];
    }
  }
}

- (void)audioSessionErrorDidOccur:(id)occur
{
  occurCopy = occur;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SSRVTUITrainingManager_audioSessionErrorDidOccur___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = occurCopy;
  v6 = occurCopy;
  dispatch_async(queue, v7);
}

void __52__SSRVTUITrainingManager_audioSessionErrorDidOccur___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionErrorDidOccur:*(a1 + 40)];
    }
  }
}

- (void)audioSessionRecordBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SSRVTUITrainingManager_audioSessionRecordBufferAvailable___block_invoke;
  v7[3] = &unk_278579350;
  v8 = availableCopy;
  selfCopy = self;
  v6 = availableCopy;
  dispatch_async(queue, v7);
}

void __60__SSRVTUITrainingManager_audioSessionRecordBufferAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  v4 = *(a1 + 40);
  v5 = v4[19];
  v6 = v2 / v3;
  if (v5)
  {
    [v5 getZeroStatisticsFromBuffer:*(a1 + 32) entireSamples:v6];
    v4 = *(a1 + 40);
  }

  if (v4[5])
  {
    v7 = objc_alloc(MEMORY[0x277D01600]);
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
    LOBYTE(v12) = [MEMORY[0x277D016E0] inputRecordingIsFloat];
    v10 = [v7 initWithData:v8 numChannels:1 numSamples:v6 sampleByteDepth:v9 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v12];
    [*(*(a1 + 40) + 40) processAudioSamplesAsynchronously:v10];
    [*(*(a1 + 40) + 232) addSamples:objc_msgSend(*(a1 + 32) numSamples:{"bytes"), v6}];

    v4 = *(a1 + 40);
  }

  v11 = v4[8];
  if (v11)
  {
    v13 = v11;
    if (objc_opt_respondsToSelector())
    {
      [v13 audioSessionRecordBufferAvailable:*(a1 + 32)];
    }
  }
}

- (void)audioSessionDidStopRecording:(int64_t)recording
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SSRVTUITrainingManager_audioSessionDidStopRecording___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = recording;
  dispatch_async(queue, v4);
}

void __55__SSRVTUITrainingManager_audioSessionDidStopRecording___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionDidStopRecording:*(a1 + 40)];
    }
  }

  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVTUITrainingManager audioSessionDidStopRecording:]_block_invoke";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s audioSessionDidStopRecording", &v5, 0xCu);
  }
}

- (void)audioSessionDidStartRecording:(BOOL)recording error:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRVTUITrainingManager_audioSessionDidStartRecording_error___block_invoke;
  block[3] = &unk_278578210;
  recordingCopy = recording;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(queue, block);
}

void __62__SSRVTUITrainingManager_audioSessionDidStartRecording_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 audioSessionDidStartRecording:*(a1 + 48) error:*(a1 + 40)];
    }
  }
}

- (BOOL)CSVTUITrainingSession:(id)session hasTrainUtterance:(id)utterance languageCode:(id)code payload:(BOOL)payload
{
  v19 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  v8 = +[SSRVoiceProfileComposer sharedTrainer];
  profile = self->_profile;
  currentAsset = self->_currentAsset;
  v16 = 0;
  v11 = [v8 addUtterance:utteranceCopy toProfile:profile withAsset:currentAsset error:&v16];

  v12 = v16;
  if ((v11 & 1) == 0)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[SSRVTUITrainingManager CSVTUITrainingSession:hasTrainUtterance:languageCode:payload:]";
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed to save explicit utterance", buf, 0xCu);
    }
  }

  if (CSIsInternalBuild())
  {
    v15 = v12;
    AnalyticsSendEventLazy();
  }

  return v11;
}

id __87__SSRVTUITrainingManager_CSVTUITrainingSession_hasTrainUtterance_languageCode_payload___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"utteranceAdditionErrorCode";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)CSVTUITrainingSessionStopListen
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SSRVTUITrainingManager CSVTUITrainingSessionStopListen]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop Listening", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 VTUITrainingManagerStopListening];
    }
  }

  if (self->_shouldUseRecordingStartHostTime)
  {
    [(SSRVTUITrainingManager *)self _stopAudioSession];
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[SSRVTUITrainingManager CSVTUITrainingSessionStopListen]";
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Stopping audio session", &v11, 0xCu);
    }
  }
}

- (void)CSVTUITrainingSessionRMSAvailable:(float)available
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      *&v9 = available;
      [v10 VTUITrainingManagerFeedLevel:v9];
    }
  }
}

- (void)stopRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SSRVTUITrainingManager_stopRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__33__SSRVTUITrainingManager_stopRMS__block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 160) == 1)
  {
    return [*(v1 + 168) stopRMS];
  }

  *(v1 + 8) = 0;
  return result;
}

- (void)startRMS
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SSRVTUITrainingManager_startRMS__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__34__SSRVTUITrainingManager_startRMS__block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 160) == 1)
  {
    return [*(v1 + 168) startRMS];
  }

  *(v1 + 8) = 1;
  return result;
}

- (void)setSuspendAudio:(BOOL)audio
{
  audioCopy = audio;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SSRVTUITrainingManager setSuspendAudio:]";
    v11 = 1026;
    v12 = audioCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Setting suspendAudio:[%{public}d]", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SSRVTUITrainingManager_setSuspendAudio___block_invoke;
  v7[3] = &unk_278579460;
  v7[4] = self;
  v8 = audioCopy;
  dispatch_async(queue, v7);
}

void *__42__SSRVTUITrainingManager_setSuspendAudio___block_invoke(void *result)
{
  v1 = result;
  v7 = *MEMORY[0x277D85DE8];
  v2 = result[4];
  if (*(v2 + 80) == 1)
  {
    if ((result[5] & 1) == 0)
    {
      v3 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "[SSRVTUITrainingManager setSuspendAudio:]_block_invoke";
        _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Resume training", &v5, 0xCu);
        v2 = v1[4];
      }

      result = [*(v2 + 64) resumeTraining];
    }
  }

  else if (*(result + 40))
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SSRVTUITrainingManager setSuspendAudio:]_block_invoke";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Suspend training", &v5, 0xCu);
      v2 = v1[4];
    }

    result = [*(v2 + 64) suspendTraining];
  }

  *(v1[4] + 80) = *(v1 + 40);
  return result;
}

- (unint64_t)_validateRecordingStartHostTime:(unint64_t)time
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = mach_absolute_time();
  if (v4 >= time)
  {
    [MEMORY[0x277D01798] hostTimeToSeconds:v4 - time];
    v7 = v6;
    if (v6 > 4.0)
    {
      v8 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[SSRVTUITrainingManager _validateRecordingStartHostTime:]";
        v13 = 2048;
        v14 = v7;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s Asked to record %f secs in past, capping it", &v11, 0x16u);
      }

      LODWORD(v9) = 4.0;
      return v4 - [MEMORY[0x277D01798] secondsToHostTime:v9];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[SSRVTUITrainingManager _validateRecordingStartHostTime:]";
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s Asked to record in the future, using currentTime", &v11, 0xCu);
    }

    return v4;
  }

  return time;
}

- (void)setRecordingStartHostTime:(unint64_t)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SSRVTUITrainingManager_setRecordingStartHostTime___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = time;
  dispatch_async(queue, v4);
}

void __52__SSRVTUITrainingManager_setRecordingStartHostTime___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v4 = *(a1 + 40);

    [v3 setRecordingStartHostTime:v4];
  }

  else
  {
    v5 = [v2 _validateRecordingStartHostTime:*(a1 + 40)];
    *(*(a1 + 32) + 216) = 1;
    *(*(a1 + 32) + 208) = v5;
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 136315650;
      v9 = "[SSRVTUITrainingManager setRecordingStartHostTime:]_block_invoke";
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Setting recording host time to %llu, requested host time %llu", &v8, 0x20u);
    }
  }
}

- (void)getAudioSessionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SSRVTUITrainingManager_getAudioSessionID___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

uint64_t __44__SSRVTUITrainingManager_getAudioSessionID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v4 = *(a1 + 40);

    return [v3 getAudioSessionID:v4];
  }

  else
  {
    v6 = [*(v2 + 32) getAudioSessionID];
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SSRVTUITrainingManager getAudioSessionID:]_block_invoke";
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Fetching audioSessionID: %lu", &v8, 0x16u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)_startAudioSession
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SSRVTUITrainingManager _startAudioSession]";
    v10 = 2082;
    v11 = "[SSRVTUITrainingManager _startAudioSession]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v8, 0x16u);
  }

  audioSession = self->_audioSession;
  if (audioSession)
  {
    if (([(CSVTUIAudioSession *)audioSession isRecording]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (self->_shouldUseRecordingStartHostTime)
    {
      [(CSVTUIAudioSession *)self->_audioSession setAudioRecordingHostTime:self->_audioStartRecordingHostTime];
    }

    if (([(CSVTUIAudioSession *)self->_audioSession startRecording]& 1) != 0)
    {
LABEL_8:
      LOBYTE(audioSession) = 1;
    }

    else
    {
      v6 = *v3;
      LODWORD(audioSession) = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
      if (audioSession)
      {
        v8 = 136315138;
        v9 = "[SSRVTUITrainingManager _startAudioSession]";
        _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s AudioSession StartRecording Failed", &v8, 0xCu);
        LOBYTE(audioSession) = 0;
      }
    }
  }

  return audioSession;
}

- (BOOL)_shouldShowHeadsetDisconnectionMessage
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SSRVTUITrainingManager _shouldShowHeadsetDisconnectionMessage]";
    v8 = 2082;
    v9 = "[SSRVTUITrainingManager _shouldShowHeadsetDisconnectionMessage]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v6, 0x16u);
  }

  audioSession = self->_audioSession;
  if (audioSession)
  {
    LOBYTE(audioSession) = [(CSVTUIAudioSession *)audioSession hasCorrectAudioRoute]^ 1;
  }

  return audioSession;
}

- (void)_resetAudioAnalyzer
{
  audioAnalyzer = self->_audioAnalyzer;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  [(CSVTUIEndpointAnalyzer *)audioAnalyzer resetForNewRequestWithSampleRate:v4];
  [(CSVTUIEndpointAnalyzer *)self->_audioAnalyzer setStartWaitTime:5.0];
  v5 = self->_audioAnalyzer;

  [(CSVTUIEndpointAnalyzer *)v5 setEndWaitTime:0.77];
}

- (BOOL)_createAudioAnalyzer
{
  if (self->_audioSession)
  {
    v3 = objc_alloc_init(CSVTUIEndpointAnalyzer);
    audioAnalyzer = self->_audioAnalyzer;
    self->_audioAnalyzer = v3;

    v5 = self->_audioAnalyzer;
    if (v5)
    {
      [(CSVTUIEndpointAnalyzer *)v5 setDelegate:self];
      [(SSRVTUITrainingManager *)self _resetAudioAnalyzer];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_setupAudioSession
{
  [(CSVTUIAudioSession *)self->_audioSession setDelegate:self];
  audioSession = self->_audioSession;

  return [(CSVTUIAudioSession *)audioSession prepareRecord];
}

- (unint64_t)_audioSource
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    return [(CSVTUIAudioSession *)audioSession audioSource];
  }

  else
  {
    return 6;
  }
}

- (unint64_t)audioSource
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 6;
  queue = self->_queue;
  if (self->_shouldTrainViaXPC)
  {
    v3 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke;
    v7[3] = &unk_2785797D0;
    v7[4] = self;
    v7[5] = &v8;
  }

  else
  {
    v3 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke_3;
    v6[3] = &unk_2785797D0;
    v6[4] = self;
    v6[5] = &v8;
  }

  dispatch_sync(queue, v3);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __37__SSRVTUITrainingManager_audioSource__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SSRVTUITrainingManager_audioSource__block_invoke_2;
  v3[3] = &unk_2785781C0;
  v3[4] = *(a1 + 40);
  return [v1 audioSourceWithCompletion:v3];
}

void *__37__SSRVTUITrainingManager_audioSource__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _audioSource];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)closeSessionBeforeStartWithStatus:(int)status successfully:(BOOL)successfully completionWithResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SSRVTUITrainingManager closeSessionBeforeStartWithStatus:successfully:completionWithResult:]";
    v18 = 1026;
    statusCopy = status;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Called with status : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke;
  v12[3] = &unk_278578198;
  statusCopy2 = status;
  v13 = resultCopy;
  successfullyCopy = successfully;
  v11 = resultCopy;
  dispatch_async(queue, v12);
}

void __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke_2;
  v2[3] = &unk_278578198;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5 = *(a1 + 44);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __94__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_completionWithResult___block_invoke_2(uint64_t a1)
{
  [[CSVTUITrainingResult alloc] initWithSessionId:0 sessionStatus:*(a1 + 40) audioStatus:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)closeSessionBeforeStartWithStatus:(int)status successfully:(BOOL)successfully withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SSRVTUITrainingManager closeSessionBeforeStartWithStatus:successfully:withCompletion:]";
    v18 = 1026;
    statusCopy = status;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Called with status : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke;
  v12[3] = &unk_278578198;
  v13 = completionCopy;
  statusCopy2 = status;
  successfullyCopy = successfully;
  v11 = completionCopy;
  dispatch_async(queue, v12);
}

void __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke_2;
  v2[3] = &unk_278578198;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __88__SSRVTUITrainingManager_closeSessionBeforeStartWithStatus_successfully_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40), *(a1 + 44), 0);
  }

  return result;
}

- (BOOL)cancelTrainingForID:(int64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SSRVTUITrainingManager cancelTrainingForID:]";
    v13 = 2082;
    v14 = "[SSRVTUITrainingManager cancelTrainingForID:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}s Canceling Training", buf, 0x16u);
  }

  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke;
    v10[3] = &unk_278578170;
    v10[4] = self;
    v10[5] = d;
    v7 = v10;
  }

  else
  {
    [(CSVTUITrainingSession *)self->_currentTrainingSession closeSessionWithStatus:6 successfully:0];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke_2;
    block[3] = &unk_2785797A8;
    block[4] = self;
    v7 = block;
  }

  dispatch_async(queue, v7);
  return 1;
}

uint64_t __46__SSRVTUITrainingManager_cancelTrainingForID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _stopAudioSession];
  v2 = *(*(a1 + 32) + 232);

  return [v2 endAudio];
}

- (void)playSoundEffectWithAudioTone:(int)tone
{
  shouldTrainViaXPC = self->_shouldTrainViaXPC;
  queue = self->_queue;
  if (shouldTrainViaXPC)
  {
    v6 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v7 = __55__SSRVTUITrainingManager_playSoundEffectWithAudioTone___block_invoke;
  }

  else
  {
    v6 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v7 = __55__SSRVTUITrainingManager_playSoundEffectWithAudioTone___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_278579190;
  v6[4] = self;
  *(v6 + 10) = tone;
  dispatch_async(queue, v6);
}

- (void)playSoundsEffect:(int64_t)effect
{
  v7 = *MEMORY[0x277D85DE8];
  if (effect >= 6)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[SSRVTUITrainingManager playSoundsEffect:]";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Failed to find the audio tone", &v5, 0xCu);
    }
  }

  else
  {
    v3 = dword_225EA9E58[effect];

    [(SSRVTUITrainingManager *)self playSoundEffectWithAudioTone:v3];
  }
}

- (void)_playSoundsEffect:(int)effect
{
  v3 = *&effect;
  v30 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [(SSRVTUITrainingManager *)self _getAudioToneFileName:v3];
  if (v6)
  {
    v7 = [v5 URLForResource:v6 withExtension:@"caf"];
    v8 = MEMORY[0x277D015D8];
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      path = [v7 path];
      *buf = 136315394;
      v27 = "[SSRVTUITrainingManager _playSoundsEffect:]";
      v28 = 2112;
      v29 = path;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Request Play SoundFileURL = %@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [v7 path];
    v14 = [defaultManager fileExistsAtPath:path2];

    if (v14)
    {
      v25 = 0;
      v15 = [objc_alloc(MEMORY[0x277CB83D8]) initWithContentsOfURL:v7 error:&v25];
      v16 = v25;
      audioPlayer = self->_audioPlayer;
      self->_audioPlayer = v15;

      v18 = self->_audioPlayer;
      if (v18)
      {
        if (![(AVAudioPlayer *)v18 play])
        {
          v19 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v27 = "[SSRVTUITrainingManager _playSoundsEffect:]";
            _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Failed to play sounds file", buf, 0xCu);
          }
        }
      }

      else
      {
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v23 = v22;
          localizedDescription = [v16 localizedDescription];
          *buf = 136315394;
          v27 = "[SSRVTUITrainingManager _playSoundsEffect:]";
          v28 = 2112;
          v29 = localizedDescription;
          _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s Failed to create audio player : %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v21 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "[SSRVTUITrainingManager _playSoundsEffect:]";
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s Unable to find playback resource file", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[SSRVTUITrainingManager _playSoundsEffect:]";
      _os_log_debug_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEBUG, "%s Resource file name is nil", buf, 0xCu);
    }
  }
}

- (id)_getAudioToneFileName:(int)name
{
  if (CSIsIOS())
  {
    if (name > 6)
    {
      return 0;
    }

    return off_278578230[name];
  }

  v5 = CSIsOSX();
  result = 0;
  if (v5 && name < 7)
  {
    return off_278578230[name];
  }

  return result;
}

- (void)_logSessionSummary
{
  mEMORY[0x277D01908] = [MEMORY[0x277D01908] sharedLogger];
  [mEMORY[0x277D01908] logSiriSetupEnrollmentSessionSummaryWithSiriSetupID:self->_mhUUID lastOpenedPage:LODWORD(self->_lastAttemptedUtterance) completedPage:(LODWORD(self->_lastAttemptedUtterance) - 1) pageAttemptsMap:self->_pageAttemptMap];
}

- (void)_updateAttemptForPageNumber:(unint64_t)number
{
  pageAttemptMap = self->_pageAttemptMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)pageAttemptMap objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = self->_pageAttemptMap;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
    v14 = [v8 numberWithInteger:{objc_msgSend(v11, "integerValue") + 1}];
  }

  else
  {
    v14 = &unk_283933900;
  }

  v12 = self->_pageAttemptMap;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
  [(NSMutableDictionary *)v12 setObject:v14 forKey:v13];
}

- (int64_t)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result
{
  rCopy = r;
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  v12 = MEMORY[0x277D01970];
  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]";
    v33 = 2050;
    utteranceCopy = utterance;
    v35 = 1026;
    v36 = rCopy;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s BEGIN num:%{public}ld use:%{public}d", buf, 0x1Cu);
  }

  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke;
    block[3] = &unk_278578120;
    block[4] = self;
    utteranceCopy2 = utterance;
    v30 = rCopy;
    v27 = dCopy;
    v28 = resultCopy;
    dispatch_async(queue, block);

    v15 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_4;
    v20[3] = &unk_278578148;
    v20[4] = self;
    objc_copyWeak(v23, &location);
    v21 = dCopy;
    v16 = resultCopy;
    v24 = rCopy;
    v22 = v16;
    v23[1] = utterance;
    dispatch_async(MEMORY[0x277D85CD0], v20);
    v17 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionNumber = self->_sessionNumber;
      *buf = 136315394;
      v32 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]";
      v33 = 2050;
      utteranceCopy = sessionNumber;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s _sessionNumber [%{public}ld]", buf, 0x16u);
    }

    v15 = self->_sessionNumber;

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 168);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_2;
  v5[3] = &unk_2785780D0;
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 trainUtteranceViaXPC:v4 shouldUseASR:v3 mhUUID:v1 completionWithResult:v5];
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_5;
  v7[3] = &unk_278578148;
  objc_copyWeak(v11, (a1 + 56));
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v5 = *(a1 + 48);
  v12 = *(a1 + 72);
  v6 = *(a1 + 64);
  v10 = v5;
  v11[1] = v6;
  dispatch_async(v2, v7);

  objc_destroyWeak(v11);
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_5(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D01970];
  if (v3)
  {
    objc_storeStrong((*(a1 + 40) + 144), v3);
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v43 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke_5";
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s CoreSpeech received the UUID from UI: %@", buf, 0x16u);
    }
  }

  if (!*(*(a1 + 40) + 48))
  {
    [WeakRetained createKeywordDetector];
  }

  if (([WeakRetained _setupAudioSession] & 1) == 0)
  {
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s AudioSession setup failed", buf, 0xCu);
    }

    [*(a1 + 40) _createAudioSessionRecorderWithAudioProviderSelector:*(*(a1 + 40) + 200)];
    goto LABEL_16;
  }

  if (!*(*(a1 + 40) + 40))
  {
    [WeakRetained _createAudioAnalyzer];
  }

  if ([WeakRetained _shouldShowHeadsetDisconnectionMessage])
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Has wrong audio routing, ask user to unplug headset", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 4;
    goto LABEL_17;
  }

  if (([WeakRetained _startAudioSession] & 1) == 0)
  {
    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Start Audio Session failed", buf, 0xCu);
    }

LABEL_16:
    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 5;
LABEL_17:
    [v9 closeSessionBeforeStartWithStatus:v10 successfully:0 completionWithResult:v8];
    goto LABEL_18;
  }

  v12 = MEMORY[0x277D01620];
  objc_msgSend_utteranceFileASBD(MEMORY[0x277D01748]);
  objc_msgSend_utteranceFileASBD(MEMORY[0x277D01748]);
  v13 = [v12 createAudioFileWriterForPHSTrainingWithInputFormat:buf outputFormat:v41];
  v14 = *(a1 + 40);
  v15 = *(v14 + 232);
  *(v14 + 232) = v13;

  if (*(a1 + 72) == 1)
  {
    [WeakRetained createSpeechRecognizer];
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = *(v17 + 104);
    *(v17 + 104) = 0;
  }

  v19 = *(*(a1 + 40) + 152);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  [v19 resetWithSampleRate:?];
  v20 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[SSRVTUITrainingManager trainUtterance:shouldUseASR:mhUUID:completionWithResult:]_block_invoke";
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Resetting zero counter", buf, 0xCu);
  }

  v21 = *(a1 + 64);
  *(*(a1 + 40) + 192) = v21;
  if (v21 >= 1)
  {
    v22 = off_278577350;
  }

  else
  {
    v22 = off_278577348;
  }

  v23 = objc_alloc(*v22);
  v39 = *(a1 + 64);
  v40 = v23;
  v24 = *(a1 + 40);
  v25 = v24[9];
  v26 = v24[2];
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[6];
  v30 = v24[13];
  v31 = +[SSRVTUITrainingManager sharedtrainingSessionQueue];
  v32 = [v40 initWithUtteranceId:v39 sessionNumber:v25 Locale:v26 vtAssetConfigVersion:v27 audioSession:v28 keywordDetector:v29 speechRecognizer:v30 speechRecognitionRequest:0 sessionDelegate:v24 sessionDispatchQueue:v31 mhUUID:*(*(a1 + 40) + 144) zeroCounter:*(*(a1 + 40) + 152) completionWithResult:*(a1 + 48)];
  v33 = *(a1 + 40);
  v34 = *(v33 + 64);
  *(v33 + 64) = v32;

  v35 = *(a1 + 40);
  if (!*(v35 + 64))
  {
    v8 = *(a1 + 48);
    v9 = WeakRetained;
    v10 = 3;
    goto LABEL_17;
  }

  [*(v35 + 56) addObject:?];
  [*(*(a1 + 40) + 64) startTraining];
  v36 = *(a1 + 40);
  if (*(v36 + 80) == 1)
  {
    [*(v36 + 64) suspendTraining];
    v36 = *(a1 + 40);
  }

  [v36 _updateAttemptForPageNumber:*(a1 + 64)];
  v37 = kCSVTUITrainingManagerSessionNo++;
  *(*(a1 + 40) + 72) = kCSVTUITrainingManagerSessionNo;
  v38 = *(a1 + 40);
  if (!*(v38 + 72))
  {
    kCSVTUITrainingManagerSessionNo = v37 + 2;
    *(v38 + 72) = v37 + 2;
  }

LABEL_18:
}

void __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_2(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__SSRVTUITrainingManager_trainUtterance_shouldUseASR_mhUUID_completionWithResult___block_invoke_3;
    v9[3] = &unk_2785780F8;
    v11 = v8;
    v13 = a3;
    v10 = v7;
    v12 = a4;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (int64_t)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r completion:(id)completion
{
  rCopy = r;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SSRVTUITrainingManager_trainUtterance_shouldUseASR_completion___block_invoke;
  v12[3] = &unk_2785780D0;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(SSRVTUITrainingManager *)self trainUtterance:utterance shouldUseASR:rCopy mhUUID:0 completionWithResult:v12];

  return v10;
}

uint64_t __65__SSRVTUITrainingManager_trainUtterance_shouldUseASR_completion___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    v7 = a2;
    v8 = [v7 sessionId];
    v9 = [v7 sessionStatus];

    v10 = *(v4 + 16);

    return v10(v4, v8, v9, a3, a4);
  }

  return result;
}

- (void)destroySpeakerTrainer
{
  keywordDetector = self->_keywordDetector;
  self->_keywordDetector = 0;

  currentAsset = self->_currentAsset;
  self->_currentAsset = 0;
}

- (id)cleanupWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[SSRVTUITrainingManager cleanupWithCompletion:]";
    v30 = 2082;
    v31 = "[SSRVTUITrainingManager cleanupWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}s Called", buf, 0x16u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke;
  v26[3] = &unk_2785795F0;
  v6 = completionCopy;
  v27 = v6;
  v7 = MEMORY[0x22AA71400](v26);
  if (self->_shouldTrainViaXPC)
  {
    objc_initWeak(buf, self->_trainingServiceClient);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_26;
    block[3] = &unk_278578B98;
    block[4] = self;
    v24 = v7;
    objc_copyWeak(&v25, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v25);

    objc_destroyWeak(buf);
  }

  else
  {
    v9 = +[SSRAssetManager sharedManager];
    [v9 releaseAssetsLocksIfNecessary];

    currentAsset = self->_currentAsset;
    self->_currentAsset = 0;

    v11 = self->_queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_3;
    v22[3] = &unk_2785797A8;
    v22[4] = self;
    dispatch_async(v11, v22);
    v12 = CSIsOSX();
    v13 = self->_queue;
    if (v12)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_4;
      v21[3] = &unk_2785797A8;
      v21[4] = self;
      dispatch_async(v13, v21);
      dispatch_sync(self->_queue, &__block_literal_global_30);
      [(CSDispatchGroup *)self->_didStopWaitingGroup waitWithTimeout:dispatch_time(0, 2000000000)];
      v14 = self->_queue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_31;
      v19[3] = &unk_278579618;
      v19[4] = self;
      v20 = v7;
      dispatch_async(v14, v19);
      v15 = v20;
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_32;
      v17[3] = &unk_278579618;
      v17[4] = self;
      v18 = v7;
      dispatch_async(v13, v17);
      v15 = v18;
    }
  }

  return 0;
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2;
    block[3] = &unk_2785795F0;
    v3 = v1;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_26(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2_27;
  v3[3] = &unk_2785780A8;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  [v2 cleanupViaXPCWithCompletion:v3];
  objc_destroyWeak(&v5);
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_4";
    v6 = 2082;
    v7 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_4";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s %{public}s async called", &v4, 0x16u);
  }

  [*(*(a1 + 32) + 136) enter];
  if (([*(a1 + 32) _stopAudioSession] & 1) == 0)
  {
    [*(*(a1 + 32) + 136) leave];
  }

  return [*(a1 + 32) destroySpeakerTrainer];
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_31(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Done waiting for didStop", &v4, 0xCu);
  }

  [*(a1 + 32) _destroyAudioSession];
  [*(*(a1 + 32) + 232) endAudio];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_32(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    v6 = 2082;
    v7 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s %{public}s async called", &v4, 0x16u);
  }

  [*(a1 + 32) _stopAudioSession];
  [*(a1 + 32) destroySpeakerTrainer];
  [*(a1 + 32) _destroyAudioSession];
  [*(*(a1 + 32) + 232) endAudio];
  return (*(*(a1 + 40) + 16))();
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_28()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v0, OS_LOG_TYPE_DEFAULT, "%s Waiting for didStop", &v1, 0xCu);
  }
}

void __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2_27(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

uint64_t __48__SSRVTUITrainingManager_cleanupWithCompletion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SSRVTUITrainingManager cleanupWithCompletion:]_block_invoke_2";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Called before completion called", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)_fetchPreInstalledSecureAsset
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D018F8] isExclaveHardware])
  {
    v3 = objc_alloc(MEMORY[0x277D01F50]);
    v4 = [MEMORY[0x277D01F48] getBundle:0];
    v5 = [v3 init:v4];

    v6 = [v5 resourcePathURL:self->_locale];
    v7 = [MEMORY[0x277D01F48] getAssetFileName:0];
    v8 = MEMORY[0x277D01970];
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315907;
      v15 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      v20 = 2113;
      v21 = v6;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s preInstalledBundle:%@ config file name:%@ at path: %{private}@", &v14, 0x2Au);
      v9 = *v8;
    }

    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315651;
        v15 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
        v16 = 2112;
        v17 = v7;
        v18 = 2113;
        v19 = v6;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s Skipping operation to fetch VoiceTrigger secure asset with config file name:%@ at path: %{private}@", &v14, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315651;
        v15 = "[SSRVTUITrainingManager _fetchPreInstalledSecureAsset]";
        v16 = 2112;
        v17 = v7;
        v18 = 2113;
        v19 = v6;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Fetching VoiceTrigger secure asset with config file name:%@ at path: %{private}@", &v14, 0x20u);
      }

      v11 = [(SSRVTUITrainingManager *)self _secureAssetWithAssetResourcePathURL:v6 assetFileName:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_secureAssetWithAssetResourcePathURL:(id)l assetFileName:(id)name
{
  v4 = 0;
  if (l && name)
  {
    v6 = MEMORY[0x277D01F40];
    nameCopy = name;
    lCopy = l;
    v4 = [[v6 alloc] initWithResourcePath:lCopy assetFileName:nameCopy assetVersion:0 assetHash:0];
  }

  return v4;
}

- (BOOL)_otaAssetsAvailable
{
  v3 = objc_alloc_init(SSRUafAssetProvider);
  v4 = [(SSRUafAssetProvider *)v3 installedAssetOfType:0 forLanguageCode:self->_locale];
  v5 = [v4 assetVariant] == 2 && objc_msgSend(v4, "assetProvider") == 2;

  return v5;
}

- (void)_destroyAudioSession
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)audioSession releaseAudioSession];
  }
}

- (BOOL)_stopAudioSession
{
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)self->_audioSession stopRecording];
  }

  return audioSession != 0;
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke;
  v11[3] = &unk_278578080;
  v12 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x22AA71400](v11);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_3;
  block[3] = &unk_278579618;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_2;
    v4[3] = &unk_278578058;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 1)
  {
    v3 = *(v2 + 168);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__SSRVTUITrainingManager_prepareWithCompletion___block_invoke_4;
    v5[3] = &unk_278578080;
    v6 = *(a1 + 40);
    [v3 prepareWithCompletion:v5];
  }

  else
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "[SSRVTUITrainingManager prepareWithCompletion:]_block_invoke_3";
      v9 = 2080;
      v10 = "[SSRVTUITrainingManager prepareWithCompletion:]_block_invoke_3";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s %s async called", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(v2 + 32) prepareRecord];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)createSpeechRecognizer
{
  speechRecognizer = self->_speechRecognizer;
  if (speechRecognizer)
  {
    self->_speechRecognizer = 0;
  }

  v4 = objc_alloc(MEMORY[0x277CDCEF8]);
  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:self->_locale];
  v5 = [v4 initWithLocale:v7];
  v6 = self->_speechRecognizer;
  self->_speechRecognizer = v5;
}

- (BOOL)createKeywordDetector
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_locale)
  {
    currentAsset = self->_currentAsset;
    if (!currentAsset)
    {
      [(SSRVTUITrainingManager *)self _fetchCurrentAsset];
      currentAsset = self->_currentAsset;
    }

    v4 = [MEMORY[0x277D01958] decodeConfigFrom:currentAsset forFirstPassSource:0];
    if ([v4 useRecognizerCombination] && +[SSRUtils isMphVTUIKeywordDetectorSupportedPlatform](SSRUtils, "isMphVTUIKeywordDetectorSupportedPlatform"))
    {
      if ([MEMORY[0x277D018F8] supportsMphForLanguageCode:self->_locale])
      {
        v5 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
        multiPhraseSelected = [(CSVoiceTriggerUserSelectedPhrase *)v5 multiPhraseSelected];
      }

      else
      {
        multiPhraseSelected = 0;
      }

      v7 = [[CSVTUITwoPassKeywordDetector alloc] initWithAsset:self->_currentAsset supportMph:multiPhraseSelected];
    }

    else
    {
      v7 = [[CSVTUIKeywordDetector alloc] initWithAsset:self->_currentAsset];
    }

    keywordDetector = self->_keywordDetector;
    self->_keywordDetector = &v7->super;

    v11 = self->_keywordDetector;
    v9 = v11 != 0;
    if (!v11)
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[SSRVTUITrainingManager createKeywordDetector]";
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Creation of Keyword Detector failed.", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[SSRVTUITrainingManager createKeywordDetector]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s No locale set when creating phrase spotter.", &v14, 0xCu);
    }

    return 0;
  }

  return v9;
}

- (void)setLocaleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (self->_shouldTrainViaXPC)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SSRVTUITrainingManager_setLocaleIdentifier___block_invoke;
    v13[3] = &unk_278579350;
    v13[4] = self;
    v14 = identifierCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    objc_storeStrong(&self->_locale, identifier);
    [(SSRVTUITrainingManager *)self _fetchCurrentAsset];
    if (self->_keywordDetector)
    {
      [(SSRVTUITrainingManager *)self createKeywordDetector];
    }

    currentAsset = self->_currentAsset;
    if (currentAsset)
    {
      configVersion = [(CSAsset *)currentAsset configVersion];
      vtAssetConfigVersion = self->_vtAssetConfigVersion;
      self->_vtAssetConfigVersion = configVersion;
    }

    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      locale = self->_locale;
      *buf = 136315394;
      v16 = "[SSRVTUITrainingManager setLocaleIdentifier:]";
      v17 = 2114;
      v18 = locale;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Locale: [%{public}@]", buf, 0x16u);
    }
  }
}

- (void)_fetchCurrentAsset
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[SSRAssetManager sharedManager];
  v4 = [v3 installedAssetOfType:0 forLanguage:self->_locale];
  currentAsset = self->_currentAsset;
  self->_currentAsset = v4;

  v6 = MEMORY[0x277D01970];
  if (!self->_currentAsset)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SSRVTUITrainingManager _fetchCurrentAsset]";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cannot find voicetrigger asset from asset manager, let's fallback to asset in the framework", &v12, 0xCu);
    }

    defaultFallBackAssetForVoiceTrigger = [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
    v9 = self->_currentAsset;
    self->_currentAsset = defaultFallBackAssetForVoiceTrigger;
  }

  v10 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_currentAsset;
    v12 = 136315394;
    v13 = "[SSRVTUITrainingManager _fetchCurrentAsset]";
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerAsset found: %{public}@", &v12, 0x16u);
  }
}

- (id)updateTrainingManagerForDevice:(unint64_t)device trainingDeviceUUIDList:(id)list
{
  v14 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
  {
    v8 = 136315651;
    v9 = "[SSRVTUITrainingManager updateTrainingManagerForDevice:trainingDeviceUUIDList:]";
    v10 = 2048;
    deviceCopy = device;
    v12 = 2113;
    v13 = listCopy;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_INFO, "%s Remote device type: %zu, Remote device UUID list: %{private}@", &v8, 0x20u);
  }

  return 0;
}

- (void)_createAudioSessionRecorderWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  audioSession = self->_audioSession;
  if (audioSession)
  {
    [(CSVTUIAudioSession *)audioSession setDelegate:0];
    [(CSVTUIAudioSession *)self->_audioSession releaseAudioSession];
    v5 = self->_audioSession;
  }

  else
  {
    v5 = 0;
  }

  self->_audioSession = 0;

  v6 = [[CSVTUIAudioSessionRecorder alloc] initWithAudioProviderSelector:selectorCopy];
  v7 = self->_audioSession;
  self->_audioSession = v6;

  [(CSVTUIAudioSession *)self->_audioSession setDelegate:self];
}

- (SSRVTUITrainingManager)initWithLocaleIdentifier:(id)identifier withAppDomain:(id)domain withSiriSharedUserId:(id)id withAudioProviderSelector:(id)selector shouldTrainViaXPC:(BOOL)c
{
  cCopy = c;
  identifierCopy = identifier;
  domainCopy = domain;
  idCopy = id;
  selectorCopy = selector;
  v35.receiver = self;
  v35.super_class = SSRVTUITrainingManager;
  v16 = [(SSRVTUITrainingManager *)&v35 init];
  if (v16)
  {
    SSRLogInitIfNeeded();
    v17 = dispatch_queue_create("com.apple.VoiceTriggerUI.TrainingManager", 0);
    queue = v16->_queue;
    v16->_queue = v17;

    v16->_shouldTrainViaXPC = cCopy;
    if (cCopy)
    {
      v19 = [[SSRVTUITrainingServiceClient alloc] initWithDelegate:v16];
      trainingServiceClient = v16->_trainingServiceClient;
      v16->_trainingServiceClient = v19;

      [(SSRVTUITrainingServiceClient *)v16->_trainingServiceClient setupWithLocaleID:identifierCopy appDomain:domainCopy siriSharedUserId:idCopy];
      v16->_shouldUseRecordingStartHostTime = 0;
    }

    else
    {
      objc_storeStrong(&v16->_audioProviderSelector, selector);
      [(SSRVTUITrainingManager *)v16 setLocaleIdentifier:identifierCopy];
      [(SSRVTUITrainingManager *)v16 _createAudioSessionRecorderWithAudioProviderSelector:v16->_audioProviderSelector];
      v16->_suspendAudio = 0;
      keywordDetector = v16->_keywordDetector;
      v16->_keywordDetector = 0;

      cleanupCompletion = v16->_cleanupCompletion;
      v16->_cleanupCompletion = 0;

      v23 = objc_alloc_init(MEMORY[0x277D01710]);
      didStopWaitingGroup = v16->_didStopWaitingGroup;
      v16->_didStopWaitingGroup = v23;

      v25 = objc_alloc(MEMORY[0x277D016C0]);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      v28 = [v25 initWithToken:v27 sampleRate:1 numChannels:?];
      audioZeroCounter = v16->_audioZeroCounter;
      v16->_audioZeroCounter = v28;

      v30 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:identifierCopy withAppDomain:domainCopy];
      profile = v16->_profile;
      v16->_profile = v30;

      if (idCopy)
      {
        [(SSRVoiceProfile *)v16->_profile setSharedSiriProfileId:idCopy];
      }
    }

    v16->_lastAttemptedUtterance = -1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pageAttemptMap = v16->_pageAttemptMap;
    v16->_pageAttemptMap = dictionary;
  }

  return v16;
}

- (SSRVoiceProfile)voiceProfile
{
  if (self->_shouldTrainViaXPC)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2041;
    v10 = __Block_byref_object_dispose__2042;
    v11 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__SSRVTUITrainingManager_voiceProfile__block_invoke;
    v5[3] = &unk_2785797D0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = self->_profile;
  }

  return v3;
}

uint64_t __38__SSRVTUITrainingManager_voiceProfile__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__SSRVTUITrainingManager_voiceProfile__block_invoke_2;
  v3[3] = &unk_278578030;
  v3[4] = *(a1 + 40);
  return [v1 voiceProfileWithCompletion:v3];
}

+ (id)sharedtrainingSessionQueue
{
  if (sharedtrainingSessionQueue_onceToken != -1)
  {
    dispatch_once(&sharedtrainingSessionQueue_onceToken, &__block_literal_global_2049);
  }

  v3 = sharedtrainingSessionQueue_sharedQueue;

  return v3;
}

uint64_t __52__SSRVTUITrainingManager_sharedtrainingSessionQueue__block_invoke()
{
  sharedtrainingSessionQueue_sharedQueue = dispatch_queue_create("com.apple.VoiceTriggerUI.TrainingSessionQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (SSRVTUITrainingManager)trainingManagerWithLocaleID:(id)d withAppDomain:(id)domain withSiriSharedUserId:(id)id
{
  idCopy = id;
  domainCopy = domain;
  dCopy = d;
  SSRLogInitIfNeeded();
  v10 = -[SSRVTUITrainingManager initWithLocaleIdentifier:withAppDomain:withSiriSharedUserId:withAudioProviderSelector:shouldTrainViaXPC:]([SSRVTUITrainingManager alloc], "initWithLocaleIdentifier:withAppDomain:withSiriSharedUserId:withAudioProviderSelector:shouldTrainViaXPC:", dCopy, domainCopy, idCopy, 0, [MEMORY[0x277D018F8] isExclaveHardware]);

  return v10;
}

@end