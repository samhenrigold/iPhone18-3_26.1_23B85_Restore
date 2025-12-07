@interface CSKeywordAnalyzerQuasar
- (CSKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokens:(id)tokens useKeywordSpotting:(BOOL)spotting;
- (CSKeywordAnalyzerQuasarScoreDelegate)delegate;
- (double)_getConfidence:(id)confidence;
- (id)_phIdToCtcScoreMap;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioChunk:(id)chunk;
- (void)reset;
- (void)runRecognition;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
@end

@implementation CSKeywordAnalyzerQuasar

- (CSKeywordAnalyzerQuasarScoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_getConfidence:(id)confidence
{
  confidenceCopy = confidence;
  v5 = confidenceCopy;
  v6 = 0.0;
  if (confidenceCopy && self->_triggerTokenList)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0x3FF0000000000000;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CSKeywordAnalyzerQuasar__getConfidence___block_invoke;
    v8[3] = &unk_1E865C6A0;
    v8[4] = self;
    v8[5] = &v9;
    [confidenceCopy enumerateObjectsUsingBlock:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void __42__CSKeywordAnalyzerQuasar__getConfidence___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(*(a1 + 32) + 24) count] > a3)
  {
    v6 = [v5 tokenName];
    v7 = [*(*(a1 + 32) + 24) objectAtIndex:a3];
    v8 = [v6 caseInsensitiveCompare:v7];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * 0.0;
    }
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 tokenName];
    v11 = [v10 UTF8String];
    [v5 confidence];
    v13 = 136315906;
    v14 = "[CSKeywordAnalyzerQuasar _getConfidence:]_block_invoke";
    v15 = 2050;
    v16 = a3;
    v17 = 2080;
    v18 = v11;
    v19 = 2050;
    v20 = v12;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s EAR Token[%{public}lu]: %s (%{public}f)", &v13, 0x2Au);
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CSKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_1E865C970;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __74__CSKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a1;
  if (*(a1 + 32))
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(v23 + 32) description];
      *buf = 136315394;
      v29 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v30 = 2082;
      v31 = [v22 UTF8String];
      _os_log_error_impl(&dword_1DDA4B000, v1, OS_LOG_TYPE_ERROR, "%s ERROR: %{public}s\n", buf, 0x16u);
    }

    a1 = v23;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(*(a1 + 40) + 16);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v3)
  {
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 tokenName];
          [v6 confidence];
          *buf = 136315906;
          v29 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
          v30 = 2112;
          v31 = v8;
          v32 = 2048;
          v33 = v9;
          v34 = 2112;
          v35 = v6;
          _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s CTC: Final-tok: %@(%f):%@", buf, 0x2Au);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v23;
  v11 = *(v23 + 40);
  if (*(v11 + 48) == 1)
  {
    if (*(v23 + 32))
    {
      *(v11 + 64) = 0xC08F400000000000;
      goto LABEL_22;
    }

    v14 = [*(v11 + 16) lastObject];
    [v14 confidence];
    *(*(v23 + 40) + 64) = v15;

    goto LABEL_21;
  }

  if (*(v11 + 24))
  {
    v12 = [*(v11 + 16) count];
    v10 = v23;
    if (v12 >= [*(*(v23 + 40) + 24) count])
    {
      [*(v23 + 40) _getConfidence:*(*(v23 + 40) + 16)];
      *(*(v23 + 40) + 64) = v13;
LABEL_21:
      v10 = v23;
    }
  }

LABEL_22:
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(v10 + 40) + 64);
    *buf = 136315394;
    v29 = "[CSKeywordAnalyzerQuasar speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v30 = 2050;
    v31 = v17;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Final result confidence: %{public}f", buf, 0x16u);
  }

  v18 = +[CSFPreferences sharedPreferences];
  v19 = [v18 isMphVTEnabled];

  if (v19)
  {
    v20 = [*(v23 + 40) _phIdToCtcScoreMap];
  }

  else
  {
    v20 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(v23 + 40) + 80));
  [WeakRetained keywordAnalyzerQuasar:*(v23 + 40) hasResultAvailable:v20 forChannel:*(*(v23 + 40) + 72)];
}

- (id)_phIdToCtcScoreMap
{
  v45 = *MEMORY[0x1E69E9840];
  p_ctcKwdToPhIdMap = &self->_ctcKwdToPhIdMap;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_ctcKwdToPhIdMap, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *p_ctcKwdToPhIdMap;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSDictionary *)self->_ctcKwdToPhIdMap objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        [v4 setObject:&unk_1F5916C80 forKey:v8];
      }

      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = self->_previousUtteranceTokens;
  v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v9)
  {
    v11 = *v30;
    *&v10 = 136315650;
    v26 = v10;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obja);
        }

        v13 = *(*(&v29 + 1) + 8 * j);
        ctcKwdToPhIdMap = self->_ctcKwdToPhIdMap;
        tokenName = [v13 tokenName];
        v16 = [(NSDictionary *)ctcKwdToPhIdMap objectForKeyedSubscript:tokenName];

        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v26;
          v38 = "[CSKeywordAnalyzerQuasar _phIdToCtcScoreMap]";
          v39 = 2114;
          v40 = v16;
          v41 = 2114;
          v42 = v13;
          _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s MpVT: phId=%{public}@, tok=%{public}@", buf, 0x20u);
        }

        v18 = [v4 objectForKey:v16];
        v19 = v18;
        if (!v18 || ([v18 floatValue], v21 = v20, objc_msgSend(v13, "confidence"), v22 > v21))
        {
          v23 = MEMORY[0x1E696AD98];
          [v13 confidence];
          v24 = [v23 numberWithDouble:?];
          [v4 setObject:v24 forKey:v16];
        }
      }

      v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v9);
  }

  return v4;
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results
{
  resultsCopy = results;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke;
  v8[3] = &unk_1E865C970;
  v9 = resultsCopy;
  selfCopy = self;
  v7 = resultsCopy;
  dispatch_async(queue, v8);
}

void __69__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = [*(a1 + 32) firstObject];
  v16 = [v17 tokens];
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 isMphVTEnabled];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v16;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = *(a1 + 40);
        if (!v3)
        {
          goto LABEL_11;
        }

        v10 = *(v9 + 24);
        v11 = [*(*(&v18 + 1) + 8 * i) tokenName];
        LODWORD(v10) = [v10 containsObject:v11];

        v12 = CSLogContextFacilityCoreSpeech;
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v13)
          {
            v14 = [v8 tokenName];
            *buf = 136315394;
            v23 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizeFinalResults:]_block_invoke";
            v24 = 2114;
            v25 = v14;
            _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CTC: Adding tok=%{public}@", buf, 0x16u);
          }

          v9 = *(a1 + 40);
LABEL_11:
          [*(v9 + 16) addObject:v8];
          continue;
        }

        if (v13)
        {
          v15 = [v8 tokenName];
          *buf = 136315394;
          v23 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizeFinalResults:]_block_invoke";
          v24 = 2114;
          v25 = v15;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CTC: Ignoring tok=%{public}@", buf, 0x16u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke;
  v8[3] = &unk_1E865C970;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(queue, v8);
}

void __70__CSKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = [*(a1 + 40) tokens];
    v3 = [v2 count];
    v4 = [*(*(a1 + 32) + 24) count];

    if (v3 >= v4)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) tokens];
      [v5 _getConfidence:v6];
      *(*(a1 + 32) + 64) = v7;

      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 64);
        v11 = 136315394;
        v12 = "[CSKeywordAnalyzerQuasar speechRecognizer:didRecognizePartialResult:]_block_invoke";
        v13 = 2050;
        v14 = v9;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Partial result confidence: %{public}f", &v11, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      [WeakRetained keywordAnalyzerQuasar:*(a1 + 32) hasResultAvailable:0 forChannel:*(*(a1 + 32) + 72)];
    }
  }
}

- (void)processAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13390;
  v18 = __Block_byref_object_dispose__13391;
  v19 = 0;
  if (+[CSConfig inputRecordingIsFloat])
  {
    v5 = [chunkCopy dataForChannel:self->_activeChannel];
    v6 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v5];
    v7 = v15[5];
    v15[5] = v6;
  }

  else
  {
    v8 = [chunkCopy dataForChannel:self->_activeChannel];
    v5 = v15[5];
    v15[5] = v8;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSKeywordAnalyzerQuasar_processAudioChunk___block_invoke;
  block[3] = &unk_1E865CC08;
  v12 = chunkCopy;
  v13 = &v14;
  block[4] = self;
  v10 = chunkCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(&v14, 8);
}

uint64_t __45__CSKeywordAnalyzerQuasar_processAudioChunk___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 48) + 8) + 40) bytes];
  v4 = [*(a1 + 40) numSamples];

  return [v2 _recognizeWavData:v3 length:v4];
}

- (void)endAudio
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSKeywordAnalyzerQuasar endAudio]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CSKeywordAnalyzerQuasar_endAudio__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)runRecognition
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSKeywordAnalyzerQuasar runRecognition]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CSKeywordAnalyzerQuasar_runRecognition__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __41__CSKeywordAnalyzerQuasar_runRecognition__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) runRecognitionWithResultStream:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSKeywordAnalyzerQuasar dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSKeywordAnalyzerQuasar;
  [(CSKeywordAnalyzerQuasar *)&v4 dealloc];
}

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSKeywordAnalyzerQuasar reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CSKeywordAnalyzerQuasar_reset__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __32__CSKeywordAnalyzerQuasar_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = -1000.0;
  if (!*(v1 + 48))
  {
    v2 = 0.0;
  }

  *(v1 + 64) = v2;
  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (CSKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokens:(id)tokens useKeywordSpotting:(BOOL)spotting
{
  v32 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  tokensCopy = tokens;
  v27.receiver = self;
  v27.super_class = CSKeywordAnalyzerQuasar;
  v10 = [(CSKeywordAnalyzerQuasar *)&v27 init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.transcribe.Transcriber", 0);
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    v13 = *(v10 + 1);
    v14 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v13, v14);

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    *(v10 + 8) = 0;
    v17 = [tokensCopy componentsSeparatedByString:@"_"];
    v18 = *(v10 + 3);
    *(v10 + 3) = v17;

    v19 = *(v10 + 3);
    if (v19)
    {
      v20 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]";
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Transcriber trigger token list: %{public}@", buf, 0x16u);
      }
    }

    v21 = *(v10 + 5);
    *(v10 + 5) = 0;

    *(v10 + 48) = spotting;
    v22 = *(v10 + 1);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__CSKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke;
    v24[3] = &unk_1E865C970;
    v25 = pathCopy;
    v26 = v10;
    dispatch_async(v22, v24);
  }

  return v10;
}

void __79__CSKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v14 = 136315394;
    v15 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]_block_invoke";
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Initializing Quasar with config: %{public}@", &v14, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x1E699BA18]) initWithConfiguration:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v10 systemUptime];
  v12 = v11;

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSKeywordAnalyzerQuasar initWithConfigPath:triggerTokens:useKeywordSpotting:]_block_invoke";
    v16 = 2050;
    v17 = (v12 - v4) * 1000.0;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Speech model loading took %{public}.3fms", &v14, 0x16u);
  }
}

@end