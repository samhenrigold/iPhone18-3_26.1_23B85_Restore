@interface CSSyncKeywordAnalyzerQuasar
+ (id)_phToPhIdMapFromTriggerTokensArray:(id)array;
+ (void)dumpEARSpeechRecognitionResults:(id)results;
- (CSSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokensArray:(id)array preventDuplicatedReset:(BOOL)reset memoryLock:(BOOL)lock;
- (id)_getAnalyzedResults:(id)results;
- (id)getAnalyzedResultsFromAudioChunk:(id)chunk;
- (id)getResultsFromFlushedAudio;
- (void)reset;
@end

@implementation CSSyncKeywordAnalyzerQuasar

- (id)_getAnalyzedResults:(id)results
{
  v47 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  if (self->_numPhrases)
  {
    v5 = 0;
    do
    {
      initWithDefaultConfidence = [[CSSyncKeywordAnalyzerQuasarResult alloc] initWithDefaultConfidence];
      [array addObject:initWithDefaultConfidence];

      ++v5;
    }

    while (v5 < self->_numPhrases);
  }

  selfCopy = self;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        tokens = [*(*(&v36 + 1) + 8 * i) tokens];
        lastObject = [tokens lastObject];

        if (!lastObject || ([lastObject tokenName], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
        {
          v28 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 136315394;
          v41 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v42 = 2114;
          v43 = lastObject;
          v29 = v28;
          v30 = "%s Invalid token : %{public}@";
          v31 = 22;
LABEL_22:
          _os_log_error_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
          goto LABEL_23;
        }

        phToPhIdMap = selfCopy->_phToPhIdMap;
        tokenName = [lastObject tokenName];
        v17 = [(NSDictionary *)phToPhIdMap objectForKeyedSubscript:tokenName];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v42 = 2048;
          v43 = unsignedIntegerValue;
          v44 = 2114;
          v45 = lastObject;
          _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s %tu, token = %{public}@", buf, 0x20u);
        }

        if (unsignedIntegerValue >= [array count])
        {
          v32 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 136315394;
          v41 = "[CSSyncKeywordAnalyzerQuasar _getAnalyzedResults:]";
          v42 = 1024;
          LODWORD(v43) = unsignedIntegerValue;
          v29 = v32;
          v30 = "%s Unable to handle: %d";
          v31 = 18;
          goto LABEL_22;
        }

        v20 = [array objectAtIndex:unsignedIntegerValue];
        [v20 triggerConfidence];
        v22 = v21;

        [lastObject confidence];
        v24 = v23;
        v25 = [array objectAtIndexedSubscript:unsignedIntegerValue];
        v26 = v25;
        if (v24 >= v22)
        {
          v27 = v24;
        }

        else
        {
          v27 = v22;
        }

        [v25 setTriggerConfidence:v27];

LABEL_23:
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)getAnalyzedResultsFromAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  self->_requireReset = 1;
  v5 = [chunkCopy dataForChannel:self->_activeChannel];
  numSamples = [chunkCopy numSamples];
  isFloat = [chunkCopy isFloat];
  syncRecognizer = self->_syncRecognizer;
  if (isFloat)
  {
    [(_EARSyncSpeechRecognizer *)syncRecognizer resultsWithAddedFloatAudio:v5 numberOfSamples:numSamples taskName:&stru_1F58FE330];
  }

  else
  {
    [(_EARSyncSpeechRecognizer *)syncRecognizer resultsWithAddedAudio:v5 numberOfSamples:numSamples taskName:&stru_1F58FE330];
  }
  v9 = ;
  v10 = [(CSSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v9];

  return v10;
}

- (id)getResultsFromFlushedAudio
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[CSSyncKeywordAnalyzerQuasar getResultsFromFlushedAudio]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  kdebug_trace();
  v4 = mach_absolute_time();
  v5 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
  v6 = CSLogContextFacilityCoreSpeech;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v16 = 134349570;
    v17 = v4;
    v18 = 2080;
    v19 = COERCE_DOUBLE("SiriX");
    v20 = 2080;
    v21 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SecondPassInferenceLatency", "%{public, signpost.description:begin_time}llu, %s %s", &v16, 0x20u);
  }

  resultsWithEndedAudio = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithEndedAudio];
  v9 = [(CSSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:resultsWithEndedAudio];

  v10 = mach_absolute_time();
  v11 = CSLogContextFacilityCoreSpeech;
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v16 = 134349570;
    v17 = v10;
    v18 = 2080;
    v19 = COERCE_DOUBLE("SiriX");
    v20 = 2080;
    v21 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v12, OS_SIGNPOST_INTERVAL_END, v5, "SecondPassInferenceLatency", "%{public, signpost.description:end_time}llu, %s %s", &v16, 0x20u);
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [CSFTimeUtils hostTimeToSeconds:v10 - v4];
    v16 = 136315394;
    v17 = "[CSSyncKeywordAnalyzerQuasar getResultsFromFlushedAudio]";
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Secondpass model inference took: %.3f seconds", &v16, 0x16u);
  }

  return v9;
}

- (void)reset
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSSyncKeywordAnalyzerQuasar reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (self->_requireReset)
  {
    syncRecognizer = self->_syncRecognizer;
    +[CSConfig inputRecordingSampleRate];
    LODWORD(v7) = 120;
    LOBYTE(v6) = 0;
    [(_EARSyncSpeechRecognizer *)syncRecognizer resetWithSamplingRate:v5 language:&stru_1F58FE330 taskType:@"Dictation" userId:&stru_1F58FE330 sessionId:&stru_1F58FE330 deviceId:&stru_1F58FE330 farField:v6 audioSource:&stru_1F58FE330 maxAudioBufferSizeSeconds:v7];
    if (self->_preventDuplicatedReset)
    {
      self->_requireReset = 0;
    }
  }
}

- (CSSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokensArray:(id)array preventDuplicatedReset:(BOOL)reset memoryLock:(BOOL)lock
{
  lockCopy = lock;
  v32 = *MEMORY[0x1E69E9840];
  v10 = COERCE_DOUBLE(path);
  arrayCopy = array;
  v27.receiver = self;
  v27.super_class = CSSyncKeywordAnalyzerQuasar;
  v12 = [(CSSyncKeywordAnalyzerQuasar *)&v27 init];
  if (v12)
  {
    v13 = [CSSyncKeywordAnalyzerQuasar _phToPhIdMapFromTriggerTokensArray:arrayCopy];
    phToPhIdMap = v12->_phToPhIdMap;
    v12->_phToPhIdMap = v13;

    v12->_numPhrases = [arrayCopy count];
    v12->_preventDuplicatedReset = reset;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v17 = v16;

    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[CSSyncKeywordAnalyzerQuasar initWithConfigPath:triggerTokensArray:preventDuplicatedReset:memoryLock:]";
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Initializing Quasar with config: %{public}@", buf, 0x16u);
    }

    v19 = [objc_alloc(MEMORY[0x1E699BA20]) initWithConfiguration:*&v10 memoryLock:lockCopy];
    syncRecognizer = v12->_syncRecognizer;
    v12->_syncRecognizer = v19;

    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo2 systemUptime];
    v23 = v22;

    v12->_requireReset = 1;
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[CSSyncKeywordAnalyzerQuasar initWithConfigPath:triggerTokensArray:preventDuplicatedReset:memoryLock:]";
      v30 = 2050;
      v31 = (v23 - v17) * 1000.0;
      _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s Speech model loading took %{public}.3fms", buf, 0x16u);
    }
  }

  v25 = v12;

  return v25;
}

+ (void)dumpEARSpeechRecognitionResults:(id)results
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = results;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v3)
  {
    v14 = 0;
    v15 = *v23;
    do
    {
      v4 = 0;
      v16 = v3;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * v4);
        v6 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v28 = "+[CSSyncKeywordAnalyzerQuasar dumpEARSpeechRecognitionResults:]";
          v29 = 2048;
          v30 = v14;
          _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Res-%lu: ", buf, 0x16u);
          ++v14;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        tokens = [v5 tokens];
        v8 = [tokens countByEnumeratingWithState:&v18 objects:v26 count:16];
        v17 = v4;
        if (v8)
        {
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(tokens);
              }

              v11 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                v12 = *(*(&v18 + 1) + 8 * i);
                *buf = 136315394;
                v28 = "+[CSSyncKeywordAnalyzerQuasar dumpEARSpeechRecognitionResults:]";
                v29 = 2112;
                v30 = v12;
                _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s tok=%@", buf, 0x16u);
              }
            }

            v8 = [tokens countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        v4 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v3 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v3);
  }
}

+ (id)_phToPhIdMapFromTriggerTokensArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i < [arrayCopy count]; ++i)
  {
    v6 = [arrayCopy objectAtIndexedSubscript:i];
    v7 = [v6 componentsSeparatedByString:@"_"];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * j);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
          [dictionary setObject:v13 forKey:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return dictionary;
}

@end