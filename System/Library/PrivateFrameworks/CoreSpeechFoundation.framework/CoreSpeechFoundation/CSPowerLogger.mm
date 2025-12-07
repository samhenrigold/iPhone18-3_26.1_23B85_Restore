@interface CSPowerLogger
+ (id)sharedPowerLogger;
- (CSPowerLogger)init;
- (void)_borealisPowerlog:(id)powerlog;
- (void)_configPowerlog:(id)powerlog;
- (void)_emitSelfTriggerSuppressionToBiomeWithStsDuration:(double)duration;
- (void)_updateConfigToPreferencesWithLanguage:(id)language withModelVersion:(id)version;
- (void)powerLogSecondPassWithResult:(unint64_t)result withSecondPassScore:(float)score withPhId:(unint64_t)id;
- (void)powerLogSelfTriggerSuppressionDetectedWithSpeakerType:(unint64_t)type withAudioSource:(unint64_t)source atTime:(double)time isPhoneCall:(BOOL)call;
- (void)powerLogSelfTriggerSuppressionStartWithSpeakerType:(unint64_t)type withAudioSource:(unint64_t)source atTime:(double)time isPhoneCall:(BOOL)call;
- (void)powerLogSelfTriggerSuppressionStopAtTime:(double)time;
- (void)powerLogSiriConfigWithVoiceTriggerEnabled:(BOOL)enabled withLanguage:(id)language withModelVersion:(id)version;
- (void)powerWithNumFalseWakeup:(unint64_t)wakeup withDuration:(double)duration withPhraseDict:(id)dict;
@end

@implementation CSPowerLogger

+ (id)sharedPowerLogger
{
  if (sharedPowerLogger_onceToken != -1)
  {
    dispatch_once(&sharedPowerLogger_onceToken, &__block_literal_global_14428);
  }

  v3 = sharedPowerLogger_sharedLogger;

  return v3;
}

- (void)_emitSelfTriggerSuppressionToBiomeWithStsDuration:(double)duration
{
  v29 = *MEMORY[0x1E69E9840];
  selfTriggerSuppressionPlaybackRoute = self->_selfTriggerSuppressionPlaybackRoute;
  selfTriggerSuppressionAudioSource = self->_selfTriggerSuppressionAudioSource;
  if (selfTriggerSuppressionAudioSource)
  {
    v7 = 2 * (selfTriggerSuppressionAudioSource == 1);
  }

  else
  {
    v7 = 1;
  }

  v8 = selfTriggerSuppressionPlaybackRoute != 2 && selfTriggerSuppressionPlaybackRoute == 1;
  v9 = selfTriggerSuppressionPlaybackRoute == 2;
  v10 = objc_alloc(MEMORY[0x1E698EF48]);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numSelfTriggersInInterval];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v15 = [v10 initWithNumSelfTriggersDetectedDuringEvent:v11 durationOfSelfTriggerEventInSec:v12 audioSource:v7 isBluetoothSpeakerActive:v13 isBuiltInSpeakerActive:v14];

  v16 = BiomeLibrary();
  siri = [v16 Siri];
  selfTriggerSuppression = [siri SelfTriggerSuppression];

  source = [selfTriggerSuppression source];
  date = [MEMORY[0x1E695DF00] date];
  [source sendEvent:v15];
  date2 = [MEMORY[0x1E695DF00] date];
  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    [date2 timeIntervalSinceDate:date];
    v25 = 136315394;
    v26 = "[CSPowerLogger _emitSelfTriggerSuppressionToBiomeWithStsDuration:]";
    v27 = 2050;
    v28 = v24;
    _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s BMSource sentEvent elapsed time = %{public}lf", &v25, 0x16u);
  }
}

- (void)_updateConfigToPreferencesWithLanguage:(id)language withModelVersion:(id)version
{
  versionCopy = version;
  languageCopy = language;
  v7 = +[CSFPreferences sharedPreferences];
  [v7 setPowerLoggingCurrentLanguage:languageCopy];

  v8 = +[CSFPreferences sharedPreferences];
  [v8 setPowerLoggingCurrentAssetConfigVersion:versionCopy];
}

- (void)_configPowerlog:(id)powerlog
{
  v9 = *MEMORY[0x1E69E9840];
  powerlogCopy = powerlog;
  if (PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[CSPowerLogger _configPowerlog:]";
      v7 = 2114;
      v8 = powerlogCopy;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s PowerLog : SiriConfig %{public}@", &v5, 0x16u);
    }
  }
}

- (void)_borealisPowerlog:(id)powerlog
{
  v9 = *MEMORY[0x1E69E9840];
  powerlogCopy = powerlog;
  if (PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[CSPowerLogger _borealisPowerlog:]";
      v7 = 2114;
      v8 = powerlogCopy;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s PowerLog : Borealis %{public}@", &v5, 0x16u);
    }
  }
}

- (void)powerLogSelfTriggerSuppressionStopAtTime:(double)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CSPowerLogger_powerLogSelfTriggerSuppressionStopAtTime___block_invoke;
  v4[3] = &unk_1E865CC58;
  *&v4[5] = time;
  v4[4] = self;
  dispatch_async(queue, v4);
}

double *__58__CSPowerLogger_powerLogSelfTriggerSuppressionStopAtTime___block_invoke(double *result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = result[5];
  v2 = *(result + 4);
  v3 = *(v2 + 32);
  if (v1 >= v3)
  {
    v4 = result;
    v5 = v1 - v3;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      v9 = *(v2 + 8);
      *buf = 136316162;
      v20 = "[CSPowerLogger powerLogSelfTriggerSuppressionStopAtTime:]_block_invoke";
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v5;
      v27 = 1024;
      v28 = v9;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_INFO, "%s PowerLog : SelfTriggerSuppressionEvent for playBackRoute: %lu, audioSource: %lu, duration: %f, _selfTriggerSuppressionIsPhoneCallConnected: %d", buf, 0x30u);
      v2 = *(v4 + 4);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(v2 + 16), @"AudioPlaybackRouteType"}];
    v18[0] = v10;
    v17[1] = @"AudioSourceType";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(v4 + 4) + 24)];
    v18[1] = v11;
    v17[2] = @"StartTime";
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(v4 + 4) + 32)];
    v18[2] = v12;
    v17[3] = @"StopTime";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v4[5]];
    v18[3] = v13;
    v17[4] = @"DurationSec";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v18[4] = v14;
    v17[5] = @"NumSelfTriggersInInterval";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(v4 + 4) + 40)];
    v18[5] = v15;
    v17[6] = @"PhoneCallConnected";
    v16 = [MEMORY[0x1E696AD98] numberWithBool:*(*(v4 + 4) + 8)];
    v18[6] = v16;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
    PLLogRegisteredEvent();

    result = [*(v4 + 4) _emitSelfTriggerSuppressionToBiomeWithStsDuration:v5];
    *(*(v4 + 4) + 40) = 0;
    *(*(v4 + 4) + 32) = 0x7FEFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)powerLogSelfTriggerSuppressionStartWithSpeakerType:(unint64_t)type withAudioSource:(unint64_t)source atTime:(double)time isPhoneCall:(BOOL)call
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__CSPowerLogger_powerLogSelfTriggerSuppressionStartWithSpeakerType_withAudioSource_atTime_isPhoneCall___block_invoke;
  block[3] = &unk_1E865C8A8;
  block[4] = self;
  block[5] = type;
  block[6] = source;
  *&block[7] = time;
  callCopy = call;
  dispatch_async(queue, block);
}

double __103__CSPowerLogger_powerLogSelfTriggerSuppressionStartWithSpeakerType_withAudioSource_atTime_isPhoneCall___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40);
  *(*(a1 + 32) + 24) = *(a1 + 48);
  result = *(a1 + 56);
  *(*(a1 + 32) + 32) = result;
  *(*(a1 + 32) + 8) = *(a1 + 64);
  *(*(a1 + 32) + 40) = 0;
  return result;
}

- (void)powerLogSelfTriggerSuppressionDetectedWithSpeakerType:(unint64_t)type withAudioSource:(unint64_t)source atTime:(double)time isPhoneCall:(BOOL)call
{
  callCopy = call;
  v22 = *MEMORY[0x1E69E9840];
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[CSPowerLogger powerLogSelfTriggerSuppressionDetectedWithSpeakerType:withAudioSource:atTime:isPhoneCall:]";
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_INFO, "%s PowerLog : SelfTriggerSuppressionDetected", buf, 0xCu);
  }

  v18[0] = @"AudioPlaybackRouteType";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v19[0] = v12;
  v18[1] = @"AudioSourceType";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  v19[1] = v13;
  v18[2] = @"DetectedTime";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v19[2] = v14;
  v18[3] = @"PhoneCallConnected";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:callCopy];
  v19[3] = v15;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  PLLogRegisteredEvent();

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__CSPowerLogger_powerLogSelfTriggerSuppressionDetectedWithSpeakerType_withAudioSource_atTime_isPhoneCall___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)powerLogSecondPassWithResult:(unint64_t)result withSecondPassScore:(float)score withPhId:(unint64_t)id
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"secondPassState";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:result];
  v12[0] = v7;
  v11[1] = @"secondPassScore";
  *&v8 = score;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v12[1] = v9;
  v11[2] = @"phID";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:id];
  v12[2] = v10;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  PLLogRegisteredEvent();
}

- (void)powerLogSiriConfigWithVoiceTriggerEnabled:(BOOL)enabled withLanguage:(id)language withModelVersion:(id)version
{
  enabledCopy = enabled;
  languageCopy = language;
  versionCopy = version;
  [(CSPowerLogger *)self _updateConfigToPreferencesWithLanguage:languageCopy withModelVersion:versionCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [dictionary setObject:v10 forKey:@"HeySiriEnabled"];

  if (languageCopy)
  {
    [dictionary setObject:languageCopy forKey:@"Language"];
  }

  if (versionCopy)
  {
    [dictionary setObject:versionCopy forKey:@"ModelVersion"];
  }

  [(CSPowerLogger *)self _configPowerlog:dictionary];
}

- (void)powerWithNumFalseWakeup:(unint64_t)wakeup withDuration:(double)duration withPhraseDict:(id)dict
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"numFalseWakeUp";
  v7 = MEMORY[0x1E696AD98];
  dictCopy = dict;
  v9 = [v7 numberWithUnsignedLongLong:wakeup];
  v12[0] = v9;
  v11[1] = @"secondsSinceLastReport";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v11[2] = @"phraseDict";
  v12[1] = v10;
  v12[2] = dictCopy;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  PLLogRegisteredEvent();
}

- (CSPowerLogger)init
{
  v6.receiver = self;
  v6.super_class = CSPowerLogger;
  v2 = [(CSPowerLogger *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSPowerLogger queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_selfTriggerSuppressionStartTime = 1.79769313e308;
    v2->_numSelfTriggersInInterval = 0;
    v2->_ppsStreamVTWake = PPSCreateTelemetryIdentifier();
    v2->_ppsStreamVTConfig = PPSCreateTelemetryIdentifier();
  }

  return v2;
}

uint64_t __34__CSPowerLogger_sharedPowerLogger__block_invoke()
{
  v0 = objc_alloc_init(CSPowerLogger);
  v1 = sharedPowerLogger_sharedLogger;
  sharedPowerLogger_sharedLogger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end