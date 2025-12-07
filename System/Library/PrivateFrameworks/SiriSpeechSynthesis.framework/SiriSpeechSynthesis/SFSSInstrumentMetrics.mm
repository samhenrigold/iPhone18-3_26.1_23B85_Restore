@interface SFSSInstrumentMetrics
- (double)clockFactor;
- (double)playbackDuration;
- (double)speakLatency;
- (double)synthesisLatency;
- (id)description;
- (id)dictionaryMetrics;
@end

@implementation SFSSInstrumentMetrics

- (id)dictionaryMetrics
{
  v38 = *MEMORY[0x277D85DE8];
  v18 = @"text";
  v19 = @"voice_asset_key";
  resourceAssetKey = &stru_2879AE8E0;
  v16 = vdupq_n_s64(&stru_2879AE8E0);
  v28 = vbslq_s8(vceqzq_s64(*&self->_text), v16, *&self->_text);
  if (self->_resourceAssetKey)
  {
    resourceAssetKey = self->_resourceAssetKey;
  }

  v29 = resourceAssetKey;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isSpeechRequest, *&v16, v18, v19, @"resource_asset_key", @"is_speech_request"}];
  v30 = v4;
  v20 = @"error_code";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_errorCode];
  v31 = v5;
  v21 = @"source_of_tts";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sourceOfTTS];
  v32 = v6;
  v22 = @"speak_latency";
  v7 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self speakLatency];
  v8 = [v7 numberWithDouble:?];
  v33 = v8;
  v23 = @"synthesis_latency";
  v9 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self synthesisLatency];
  v10 = [v9 numberWithDouble:?];
  v34 = v10;
  v24 = @"playback_duration";
  v11 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self playbackDuration];
  v12 = [v11 numberWithDouble:?];
  v35 = v12;
  v25 = @"audio_duration";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_audioDuration];
  v36 = v13;
  v26 = @"audio_output_route";
  v27 = @"client_bundle_identifier";
  v37 = vbslq_s8(vceqzq_s64(*&self->_audioOutputRoute), v17, *&self->_audioOutputRoute);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v18 count:12];

  return v14;
}

- (double)playbackDuration
{
  speakEndTimestamp = self->_speakEndTimestamp;
  if (!speakEndTimestamp)
  {
    return 0.0;
  }

  v3 = (speakEndTimestamp - self->_speakBeginTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (double)speakLatency
{
  speakBeginTimestamp = self->_speakBeginTimestamp;
  if (!speakBeginTimestamp)
  {
    return 0.0;
  }

  v3 = (speakBeginTimestamp - self->_requestCreatedTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (double)synthesisLatency
{
  synthesisEndTimestamp = self->_synthesisEndTimestamp;
  if (!synthesisEndTimestamp)
  {
    return 0.0;
  }

  v3 = (synthesisEndTimestamp - self->_synthesisBeginTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (id)description
{
  dictionaryMetrics = [(SFSSInstrumentMetrics *)self dictionaryMetrics];
  v3 = [dictionaryMetrics description];

  return v3;
}

- (double)clockFactor
{
  if (clockFactor_onceToken != -1)
  {
    dispatch_once(&clockFactor_onceToken, &__block_literal_global_105);
  }

  return *&clockFactor_clockToSeconds;
}

double __36__SFSSInstrumentMetrics_clockFactor__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  clockFactor_clockToSeconds = *&result;
  return result;
}

@end