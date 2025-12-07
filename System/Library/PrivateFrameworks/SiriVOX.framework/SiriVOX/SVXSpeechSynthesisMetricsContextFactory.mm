@interface SVXSpeechSynthesisMetricsContextFactory
- (double)timeSecondScale;
- (id)creationContextFromInstrumentMetrics:(id)metrics;
@end

@implementation SVXSpeechSynthesisMetricsContextFactory

- (double)timeSecondScale
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return v2 / v3 / 1000000000.0;
}

- (id)creationContextFromInstrumentMetrics:(id)metrics
{
  v43[15] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  sourceOfTTS = [metricsCopy sourceOfTTS];
  v6 = sourceOfTTS;
  v8 = sourceOfTTS == 3 || sourceOfTTS == 5;
  [(SVXSpeechSynthesisMetricsContextFactory *)self timeSecondScale];
  v10 = v9;
  synthesisEndTime = [metricsCopy synthesisEndTime];
  v12 = v10 * (synthesisEndTime - [metricsCopy synthesisBeginTime]);
  speechBeginTime = [metricsCopy speechBeginTime];
  v14 = v10 * (speechBeginTime - [metricsCopy requestCreatedTime]);
  v42[0] = @"character_count";
  v15 = MEMORY[0x277CCABB0];
  utterance = [metricsCopy utterance];
  v40 = [v15 numberWithUnsignedInteger:{objc_msgSend(utterance, "length")}];
  v43[0] = v40;
  v42[1] = @"voice_asset_key";
  voice = [metricsCopy voice];
  assetKey = [voice assetKey];
  v17 = assetKey;
  v18 = &stru_287A1C130;
  if (assetKey)
  {
    v18 = assetKey;
  }

  v43[1] = v18;
  v42[2] = @"is_warm_start";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricsCopy, "isWarmStart")}];
  v43[2] = v38;
  v42[3] = @"is_cache_hit_from_disk";
  v37 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 8];
  v43[3] = v37;
  v42[4] = @"is_server_tts";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v43[4] = v36;
  v42[5] = @"tts_synthesis_latency";
  *&v19 = v12;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v43[5] = v20;
  v42[6] = @"tts_total_latency";
  *&v21 = v14;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v43[6] = v22;
  v42[7] = @"audio_queue_latency";
  v23 = MEMORY[0x277CCABB0];
  [metricsCopy audioStartLatency];
  v24 = [v23 numberWithDouble:?];
  v43[7] = v24;
  v42[8] = @"synthesis_to_speech_time";
  v25 = MEMORY[0x277CCABB0];
  [metricsCopy eagerRequestGapInterval];
  v26 = [v25 numberWithDouble:?];
  v43[8] = v26;
  v43[9] = &unk_287A342E8;
  v42[9] = @"wait_for_synthesis_to_finish_time";
  v42[10] = @"audio_duration";
  v27 = MEMORY[0x277CCABB0];
  [metricsCopy audioDuration];
  v28 = [v27 numberWithDouble:?];
  v43[10] = v28;
  v42[11] = @"is_speech_request";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricsCopy, "isAudibleRequest")}];
  v43[11] = v29;
  v43[12] = MEMORY[0x277CBEC28];
  v42[12] = @"is_cache_hit_from_memory";
  v42[13] = @"synthesis_to_speech_time_gap";
  v43[13] = &unk_287A342E8;
  v42[14] = @"audio_start_timestamp_diffs";
  v30 = MEMORY[0x277CCABB0];
  [metricsCopy audioStartLatency];
  v32 = v31;

  v33 = [v30 numberWithDouble:v32 / v10];
  v43[14] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:15];

  return v34;
}

@end