@interface CSVoiceTriggerStatAggregator
+ (id)sharedAggregator;
- (CSVoiceTriggerStatAggregator)init;
- (void)logFalseWakeUp:(BOOL)up withPhrase:(id)phrase;
- (void)logSecondPassResult:(int)result eventInfo:(id)info triggerAPWakeUp:(BOOL)up;
- (void)logTimeBasedTriggerLengthSampleCountStatistics:(unint64_t)statistics withAOPVTTriggerLengthSampleCount:(unint64_t)count;
@end

@implementation CSVoiceTriggerStatAggregator

+ (id)sharedAggregator
{
  if (sharedAggregator_onceToken != -1)
  {
    dispatch_once(&sharedAggregator_onceToken, &__block_literal_global_9140);
  }

  v3 = sharedAggregator_sharedAggregator;

  return v3;
}

id __67__CSVoiceTriggerStatAggregator_reportDigitalZerosWithAudioZeroRun___block_invoke(uint64_t a1, double a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"duration";
  LODWORD(a2) = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)logTimeBasedTriggerLengthSampleCountStatistics:(unint64_t)statistics withAOPVTTriggerLengthSampleCount:(unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = statistics - count;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v9 = "[CSVoiceTriggerStatAggregator logTimeBasedTriggerLengthSampleCountStatistics:withAOPVTTriggerLengthSampleCount:]";
    v10 = 2048;
    statisticsCopy = statistics;
    v12 = 2048;
    countCopy = count;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Sending event with time based triggerLengthSampleCount %llu, AOPVT triggerLengthSampleCount %llu, and delta of %lld samples", buf, 0x2Au);
  }

  AnalyticsSendEventLazy();
}

id __113__CSVoiceTriggerStatAggregator_logTimeBasedTriggerLengthSampleCountStatistics_withAOPVTTriggerLengthSampleCount___block_invoke(void *a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"newTriggerLengthSampleCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[4]];
  v8[0] = v2;
  v7[1] = @"oldTriggerLengthSampleCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[5]];
  v8[1] = v3;
  v7[2] = @"sampleCountDelta";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)logFalseWakeUp:(BOOL)up withPhrase:(id)phrase
{
  upCopy = up;
  v32 = *MEMORY[0x1E69E9840];
  phraseCopy = phrase;
  if (upCopy)
  {
    ++self->_numFalseWakeUp;
    v7 = [(NSMutableDictionary *)self->_falseWakePhraseDictionary objectForKey:phraseCopy];

    falseWakePhraseDictionary = self->_falseWakePhraseDictionary;
    if (v7)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:1];
      v10 = falseWakePhraseDictionary;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_falseWakePhraseDictionary objectForKeyedSubscript:phraseCopy];
      intValue = [v11 intValue];

      v13 = self->_falseWakePhraseDictionary;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:(intValue + 1)];
      v10 = v13;
    }

    [(NSMutableDictionary *)v10 setObject:v9 forKey:phraseCopy];

    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      numFalseWakeUp = self->_numFalseWakeUp;
      v28 = 136315394;
      v29 = "[CSVoiceTriggerStatAggregator logFalseWakeUp:withPhrase:]";
      v30 = 2050;
      *v31 = numFalseWakeUp;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s ::: incrementing false wakeup to %{public}llu", &v28, 0x16u);
    }
  }

  +[CSUtils systemUpTime];
  v17 = v16;
  lastAggTimeFalseWakeUp = self->_lastAggTimeFalseWakeUp;
  if (lastAggTimeFalseWakeUp)
  {
    v19 = self->_numFalseWakeUp;
    if (v19)
    {
      v20 = v16 - lastAggTimeFalseWakeUp;
      if (v20 <= 0.0)
      {
        v26 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_falseWakePhraseDictionary;
          v28 = 136315906;
          v29 = "[CSVoiceTriggerStatAggregator logFalseWakeUp:withPhrase:]";
          v30 = 2050;
          *v31 = v19;
          *&v31[8] = 2050;
          *&v31[10] = v20;
          *&v31[18] = 2114;
          *&v31[20] = v27;
          _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s ::: accumulated false wakeup count is %{public}llu so far, not reporting yet because it has been only %{public}.2f seconds since last report with current phrases %{public}@", &v28, 0x2Au);
        }
      }

      else
      {
        v21 = +[CSPowerLogger sharedPowerLogger];
        [v21 powerWithNumFalseWakeup:self->_numFalseWakeUp withDuration:self->_falseWakePhraseDictionary withPhraseDict:v20];

        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_numFalseWakeUp;
          v28 = 136315906;
          v29 = "[CSVoiceTriggerStatAggregator logFalseWakeUp:withPhrase:]";
          v30 = 1026;
          *v31 = v23;
          *&v31[4] = 2050;
          *&v31[6] = v20;
          *&v31[14] = 2114;
          *&v31[16] = phraseCopy;
          _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s PowerLog : HeySiriFalseTrigger numFalseWakeUp:%{public}d, secondsSinceLastReport:%{public}lf, phrase:%{public}@", &v28, 0x26u);
        }

        self->_numFalseWakeUp = 0;
        self->_lastAggTimeFalseWakeUp = v17;
        v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v25 = self->_falseWakePhraseDictionary;
        self->_falseWakePhraseDictionary = v24;
      }
    }
  }

  else
  {
    self->_lastAggTimeFalseWakeUp = v16;
  }
}

- (void)logSecondPassResult:(int)result eventInfo:(id)info triggerAPWakeUp:(BOOL)up
{
  infoCopy = info;
  v5 = infoCopy;
  AnalyticsSendEventLazy();
}

id __78__CSVoiceTriggerStatAggregator_logSecondPassResult_eventInfo_triggerAPWakeUp___block_invoke(uint64_t a1)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *"";
  if (!v2)
  {
    v7 = @"unknown";
    v6 = @"unknown";
LABEL_10:
    v10 = @"unknown";
    goto LABEL_11;
  }

  v4 = [v2 objectForKeyedSubscript:@"languageCode"];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"languageCode"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = @"unknown";
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v7 = @"unknown";
    goto LABEL_10;
  }

  v9 = [v8 objectForKeyedSubscript:@"configVersion"];

  if (v9)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"configVersion"];
  }

  else
  {
    v7 = @"unknown";
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = [v17 objectForKeyedSubscript:@"firstPassTriggerSource"];

    if (v18)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:@"firstPassTriggerSource"];
    }

    else
    {
      v10 = @"unknown";
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = [v19 objectForKeyedSubscript:@"triggerScore"];

      if (v20)
      {
        v21 = [*(a1 + 32) objectForKeyedSubscript:@"triggerScore"];
        [v21 floatValue];
        v3 = v22;
      }
    }
  }

  else
  {
    v10 = @"unknown";
  }

LABEL_11:
  v23[0] = @"result";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v24[0] = v11;
  v24[1] = v6;
  v23[1] = @"languageCode";
  v23[2] = @"modelVersion";
  v24[2] = v7;
  v24[3] = v10;
  v23[3] = @"firstPassSource";
  v23[4] = @"triggerScore";
  LODWORD(v12) = v3;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v24[4] = v13;
  v23[5] = @"triggerAPWakeup";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 44)];
  v24[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  return v15;
}

id __68__CSVoiceTriggerStatAggregator_logAOPFirstPassTriggerWakeupLatency___block_invoke(uint64_t a1, double a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"latency";
  LODWORD(a2) = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v6[1] = @"device";
  v7[0] = v2;
  v3 = +[CSUtils deviceProductType];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (CSVoiceTriggerStatAggregator)init
{
  v7.receiver = self;
  v7.super_class = CSVoiceTriggerStatAggregator;
  v2 = [(CSVoiceTriggerStatAggregator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_numFalseWakeUp = 0;
    v2->_lastAggTimeFalseWakeUp = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    falseWakePhraseDictionary = v3->_falseWakePhraseDictionary;
    v3->_falseWakePhraseDictionary = v4;
  }

  return v3;
}

uint64_t __48__CSVoiceTriggerStatAggregator_sharedAggregator__block_invoke()
{
  v0 = objc_alloc_init(CSVoiceTriggerStatAggregator);
  v1 = sharedAggregator_sharedAggregator;
  sharedAggregator_sharedAggregator = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end