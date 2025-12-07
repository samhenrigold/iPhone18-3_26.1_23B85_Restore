@interface CSExclaveRecordClient
+ (id)sharedClient;
- (BOOL)_verifySetupComplete;
- (BOOL)configAOPVoiceTrigger;
- (BOOL)fetchAndStoreAudioBuffer;
- (BOOL)initializeSecondPass;
- (BOOL)prepare;
- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type;
- (CSExclaveAudioProvidingDelegate)delegate;
- (CSExclaveRecordClient)init;
- (unint64_t)currentSensorStatus;
- (unint64_t)startSensor;
- (unint64_t)stopSensor;
- (void)_setup;
- (void)adBlockerMatchingInProgress:(id)progress;
- (void)adBlockerReset;
- (void)deinitializeSecondPass;
- (void)fetchAOPVoiceTriggerResult:(id)result;
- (void)processBargeInVoiceTriggerWithResult:(id)result;
- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result;
- (void)requestHistoricalAudioBufferFor:(unint64_t)for startSample:(unint64_t)sample numSamples:(unint64_t)samples hostTime:(unint64_t)time;
- (void)reset;
- (void)resetFirstPassVoiceTrigger;
- (void)setAdBlockerAsset:(id)asset;
- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)startAdBlockerMatching;
- (void)startBargeInVoiceTrigger;
- (void)startSecondPassVoiceTriggerWithFirstPassSource:(unint64_t)source enablePHS:(BOOL)s supportMultiPhrase:(BOOL)phrase activeChannel:(unsigned int)channel;
- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion;
- (void)stopAdBlockerMatching;
- (void)stopBargeInVoiceTrigger;
- (void)stopSecondPassVoiceTrigger;
- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)stopSecureMobileAssetLoaderService:(id)service;
@end

@implementation CSExclaveRecordClient

- (CSExclaveAudioProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy reset];
}

- (void)adBlockerMatchingInProgress:(id)progress
{
  progressCopy = progress;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy adBlockerMatchingInProgress:progressCopy];
}

- (void)adBlockerReset
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy adBlockerReset];
}

- (void)startAdBlockerMatching
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy startAdBlockerMatching];
}

- (void)stopAdBlockerMatching
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy stopAdBlockerMatching];
}

- (void)setAdBlockerAsset:(id)asset
{
  assetCopy = asset;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy setAdBlockerAsset:assetCopy];
}

- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service
{
  serviceCopy = service;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy stopSecureAdBlockerMobileAssetLoaderService:serviceCopy];
}

- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service
{
  serviceCopy = service;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy startSecureAdBlockerMobileAssetLoaderService:serviceCopy];
}

- (void)stopSecureMobileAssetLoaderService:(id)service
{
  serviceCopy = service;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy stopSecureMobileAssetLoaderService:serviceCopy];
}

- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy startSecureMobileAssetLoaderService:serviceCopy completion:completionCopy];
}

- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion
{
  aCopy = a;
  localeCopy = locale;
  completionCopy = completion;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy setAssetForLocale:localeCopy isOTA:aCopy completion:completionCopy];
}

- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type
{
  profileCopy = profile;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  LOBYTE(type) = [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy setSpeakerProfile:profileCopy numEmbeddings:embeddings dimension:dimension speakerRecognizerType:type];

  return type;
}

- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result
{
  audioCopy = audio;
  resultCopy = result;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy processSecondPassVoiceTriggerWithShouldFlushAudio:audioCopy result:resultCopy];
}

- (void)stopSecondPassVoiceTrigger
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy stopSecondPassVoiceTrigger];
}

- (void)startSecondPassVoiceTriggerWithFirstPassSource:(unint64_t)source enablePHS:(BOOL)s supportMultiPhrase:(BOOL)phrase activeChannel:(unsigned int)channel
{
  v6 = *&channel;
  phraseCopy = phrase;
  sCopy = s;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  if (source - 11 > 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1DDB1F9E0[source - 11];
  }

  v12 = 256;
  if (!phraseCopy)
  {
    v12 = 0;
  }

  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy startSecondPassVoiceTriggerWithStartOption:v11, v12 | sCopy | (v6 << 32)];
}

- (void)deinitializeSecondPass
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy deinitializeSecondPass];
}

- (BOOL)initializeSecondPass
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  return [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy initializeSecondPass];
}

- (void)resetFirstPassVoiceTrigger
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy resetFirstPassVoiceTrigger];
}

- (void)processBargeInVoiceTriggerWithResult:(id)result
{
  resultCopy = result;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy processBargeInVoiceTriggerWithResult:resultCopy];
}

- (void)stopBargeInVoiceTrigger
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy stopBargeInVoiceTrigger];
}

- (void)startBargeInVoiceTrigger
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy startBargeInVoiceTrigger];
}

- (void)fetchAOPVoiceTriggerResult:(id)result
{
  v8 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSExclaveRecordClient fetchAOPVoiceTriggerResult:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy fetchAOPVoiceTriggerResult:resultCopy];
}

- (BOOL)configAOPVoiceTrigger
{
  v9 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSExclaveRecordClient configAOPVoiceTrigger]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  configAOPVoiceTrigger = [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy configAOPVoiceTrigger];
  if ((configAOPVoiceTrigger & 1) == 0)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSExclaveRecordClient configAOPVoiceTrigger]";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to config AOP VoiceTrigger", &v7, 0xCu);
    }
  }

  return configAOPVoiceTrigger;
}

- (void)requestHistoricalAudioBufferFor:(unint64_t)for startSample:(unint64_t)sample numSamples:(unint64_t)samples hostTime:(unint64_t)time
{
  v23 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioCallbackLogHeartbeat = self->_audioCallbackLogHeartbeat;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * audioCallbackLogHeartbeat, 1) <= 0x1999999999999999uLL)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = "[CSExclaveRecordClient requestHistoricalAudioBufferFor:startSample:numSamples:hostTime:]";
      v17 = 2048;
      v18 = audioCallbackLogHeartbeat;
      v19 = 2048;
      sampleCopy = sample;
      v21 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s heartbeat = %llu. startSampleCount: %llu. hostTime: %llu", buf, 0x2Au);
      audioCallbackLogHeartbeat = self->_audioCallbackLogHeartbeat;
    }
  }

  self->_audioCallbackLogHeartbeat = audioCallbackLogHeartbeat + 1;
  audioProvidingProxy = self->_audioProvidingProxy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__CSExclaveRecordClient_requestHistoricalAudioBufferFor_startSample_numSamples_hostTime___block_invoke;
  v14[3] = &unk_1E865AB50;
  v14[4] = self;
  v14[5] = samples;
  v14[6] = for;
  v14[7] = time;
  [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy requestHistoricalAudioBufferWithStartSample:sample completion:v14];
}

void __89__CSExclaveRecordClient_requestHistoricalAudioBufferFor_startSample_numSamples_hostTime___block_invoke(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a1 + 40);
    [*(a1 + 32) exclaveIndicatorController];
    v14 = v6 = (2 * v5 * a3);
    v7 = [v14 copyBufferWithSize:v6];

    if (v7)
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
      v8 = v15;
      if (+[CSConfig inputRecordingIsFloat])
      {
        v9 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:?];

        v8 = v9;
      }

      v10 = [*(a1 + 32) delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [*(a1 + 32) delegate];
        [v12 exclaveRecordClientAudioBuffer:*(a1 + 32) audioStreamHandleId:*(a1 + 48) audioBuffer:v8 hostTime:*(a1 + 56)];
      }
    }
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSExclaveRecordClient requestHistoricalAudioBufferFor:startSample:numSamples:hostTime:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed!!!", buf, 0xCu);
    }
  }
}

- (BOOL)fetchAndStoreAudioBuffer
{
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  audioProvidingProxy = self->_audioProvidingProxy;

  return [(CSSecureSiriAudioProvidingProxy *)audioProvidingProxy fetchAndStoreAudioBuffer];
}

- (unint64_t)currentSensorStatus
{
  v11 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  exclaveIndicatorController = [(CSExclaveRecordClient *)self exclaveIndicatorController];
  fetchCurrentSensorStatus = [exclaveIndicatorController fetchCurrentSensorStatus];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSExclaveRecordClient currentSensorStatus]";
    v9 = 2048;
    v10 = fetchCurrentSensorStatus;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s fetch current status: %lu", &v7, 0x16u);
  }

  return fetchCurrentSensorStatus;
}

- (unint64_t)stopSensor
{
  v11 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  exclaveIndicatorController = [(CSExclaveRecordClient *)self exclaveIndicatorController];
  sensorStop = [exclaveIndicatorController sensorStop];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSExclaveRecordClient stopSensor]";
    v9 = 2048;
    v10 = sensorStop;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s stop sensor with status: %lu", &v7, 0x16u);
  }

  return sensorStop;
}

- (unint64_t)startSensor
{
  v11 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  exclaveIndicatorController = [(CSExclaveRecordClient *)self exclaveIndicatorController];
  sensorStart = [exclaveIndicatorController sensorStart];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSExclaveRecordClient startSensor]";
    v9 = 2048;
    v10 = sensorStart;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start sensor with status: %lu", &v7, 0x16u);
  }

  self->_audioCallbackLogHeartbeat = 0;
  return sensorStart;
}

- (BOOL)prepare
{
  v7 = *MEMORY[0x1E69E9840];
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSExclaveRecordClient prepare]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Prepare CSExclaveRecordClient", &v5, 0xCu);
  }

  return [(CSSecureSiriAudioProvidingProxy *)self->_audioProvidingProxy prepare];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  [(CSExclaveRecordClient *)self _verifySetupComplete];
  objc_storeWeak(&self->_delegate, obj);
}

- (BOOL)_verifySetupComplete
{
  if (self->_isSetupComplete)
  {
    return 1;
  }

  else
  {
    dispatch_semaphore_wait(self->_setupSem, 0xFFFFFFFFFFFFFFFFLL);
    setupSem = self->_setupSem;
    isSetupComplete = self->_isSetupComplete;
    dispatch_semaphore_signal(setupSem);
  }

  return isSetupComplete;
}

- (void)_setup
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x1E69991D8]);
  audioProvidingProxy = self->_audioProvidingProxy;
  self->_audioProvidingProxy = v3;

  v5 = objc_alloc_init(CSExclaveIndicatorController);
  exclaveIndicatorController = self->_exclaveIndicatorController;
  self->_exclaveIndicatorController = v5;

  self->_audioCallbackLogHeartbeat = 0;
  self->_isSetupComplete = 1;
  setupSem = self->_setupSem;

  dispatch_semaphore_signal(setupSem);
}

- (CSExclaveRecordClient)init
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CSExclaveRecordClient;
  v2 = [(CSExclaveRecordClient *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSExclaveRecordClient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    setupSem = v2->_setupSem;
    v2->_setupSem = v5;

    v7 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__CSExclaveRecordClient_init__block_invoke;
    block[3] = &unk_1E865CB68;
    v11 = v2;
    dispatch_async(v7, block);
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSExclaveRecordClient init]";
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating CSExclaveRecordClient", buf, 0xCu);
  }

  return v2;
}

+ (id)sharedClient
{
  if (+[CSExclaveRecordClient sharedClient]::onceToken != -1)
  {
    dispatch_once(&+[CSExclaveRecordClient sharedClient]::onceToken, &__block_literal_global_3729);
  }

  v3 = +[CSExclaveRecordClient sharedClient]::sharedClient;

  return v3;
}

uint64_t __37__CSExclaveRecordClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(CSExclaveRecordClient);
  v1 = +[CSExclaveRecordClient sharedClient]::sharedClient;
  +[CSExclaveRecordClient sharedClient]::sharedClient = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end