@interface CSSingleCheckerPhraseDetector
- (CSSingleCheckerPhraseDetector)init;
- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info quasarResult:(id)result;
- (id)_phraseDetectorResultFromQuasarResult:(id)result;
- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision phraseResult:(id)result;
- (id)getAnalyzedResultFromAudioChunk:(id)chunk;
- (id)getAnalyzedResultFromFlushedAudio;
- (id)phraseDetectorInfoFromPhId:(unint64_t)id;
- (void)dealloc;
- (void)reset;
- (void)setConfig:(id)config;
@end

@implementation CSSingleCheckerPhraseDetector

- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision phraseResult:(id)result
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  resultCopy = result;
  v6 = [resultCopy countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(resultCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 decision] == decision)
        {
          v12 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            phId = [v10 phId];
            *buf = 136315650;
            v21 = "[CSSingleCheckerPhraseDetector _resultCopyWithKeywordDetectorDecision:phraseResult:]";
            v22 = 2048;
            decisionCopy = decision;
            v24 = 2048;
            v25 = phId;
            _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Reporting decision (%tu) from (%tu)", buf, 0x20u);
          }

          v11 = [v10 copy];
          goto LABEL_13;
        }
      }

      v7 = [resultCopy countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info quasarResult:(id)result
{
  v39 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  if ([(NSMutableArray *)self->_phraseResult count]<= id)
  {
    v17 = 0;
  }

  else
  {
    phraseConfig = [infoCopy phraseConfig];
    [infoCopy effectiveKeywordThreshold];
    v12 = v11;
    [phraseConfig recognizerScoreScaleFactor];
    v14 = v13;
    if (resultCopy)
    {
      [resultCopy triggerConfidence];
      v16 = v15;
    }

    else
    {
      v16 = -1000.0;
    }

    v18 = _getResultWithPhId_phraseDetectorInfo_quasarResult__heartbeat;
    if (0xEEEEEEEEEEEEEEEFLL * _getResultWithPhId_phraseDetectorInfo_quasarResult__heartbeat <= 0x1111111111111111)
    {
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        v20 = v14;
        v21 = v19;
        isValidResult = [resultCopy isValidResult];
        *&v33[4] = "[CSSingleCheckerPhraseDetector _getResultWithPhId:phraseDetectorInfo:quasarResult:]";
        *&v33[12] = 2048;
        v23 = @"NO";
        *v33 = 136316162;
        *&v33[14] = id;
        *&v33[22] = 2050;
        if (isValidResult)
        {
          v23 = @"YES";
        }

        v34 = v16;
        v35 = 2050;
        v36 = v20;
        v37 = 2112;
        v38 = v23;
        _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_INFO, "%s [(%lu)] : second pass best quasar score = %{public}f, quasar scale factor = %{public}f, quasarResult is valid? %@", v33, 0x34u);

        v18 = _getResultWithPhId_phraseDetectorInfo_quasarResult__heartbeat;
      }
    }

    _getResultWithPhId_phraseDetectorInfo_quasarResult__heartbeat = v18 + 1;
    if ([resultCopy isValidResult])
    {
      v24 = v12;
      v25 = CSLogContextFacilityCoreSpeech;
      v26 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      if (v16 >= v24)
      {
        if (v26)
        {
          *v33 = 136315906;
          *&v33[4] = "[CSSingleCheckerPhraseDetector _getResultWithPhId:phraseDetectorInfo:quasarResult:]";
          *&v33[12] = 2048;
          *&v33[14] = id;
          *&v33[22] = 2050;
          v34 = v16;
          v35 = 2050;
          v36 = v24;
          _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Trigger detected in Quasar,                   recognizerScore = %{public}lf, effective threshold = %{public}f", v33, 0x2Au);
        }

        v27 = 1;
      }

      else
      {
        if (v26)
        {
          *v33 = 136315906;
          *&v33[4] = "[CSSingleCheckerPhraseDetector _getResultWithPhId:phraseDetectorInfo:quasarResult:]";
          *&v33[12] = 2048;
          *&v33[14] = id;
          *&v33[22] = 2050;
          v34 = v16;
          v35 = 2050;
          v36 = v24;
          _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Notify second pass reject               with best quasar score up to: %{public}.3f, effective threshold = %{public}f", v33, 0x2Au);
        }

        v27 = 3;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = [CSSinglePhraseResult alloc];
    *&v29 = v16;
    LODWORD(v30) = -8388608;
    *&v31 = v16;
    v17 = [(CSSinglePhraseResult *)v28 initWithPhId:id keywordDetectorDecision:v27 combinedScore:0 ndapiScore:0 ndapiResult:0 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v29 isSecondChanceCandidate:v30 isRunningQuasar:v31];
  }

  return v17;
}

- (id)_phraseDetectorResultFromQuasarResult:(id)result
{
  v41 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_phraseDetectorInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v32;
    *&v7 = 136315394;
    v26 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([resultCopy count] <= v9)
        {
          v13 = 0;
        }

        else
        {
          v13 = [resultCopy objectAtIndex:v9];
        }

        v14 = [(CSSingleCheckerPhraseDetector *)self _getResultWithPhId:v9 phraseDetectorInfo:v12 quasarResult:v13];
        if (v14 && [(NSMutableArray *)self->_phraseResult count]> v9)
        {
          [(NSMutableArray *)self->_phraseResult setObject:v14 atIndexedSubscript:v9];
        }

        else
        {
          v15 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v37 = "[CSSingleCheckerPhraseDetector _phraseDetectorResultFromQuasarResult:]";
            v38 = 2048;
            v39 = v9;
            _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Received invalid result with %tu", buf, 0x16u);
          }
        }

        ++v9;
      }

      v8 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  v16 = [(CSSingleCheckerPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:1 phraseResult:self->_phraseResult];
  if (v16)
  {
    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_phraseResult;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
LABEL_20:
    v22 = 0;
    while (1)
    {
      if (*v28 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v27 + 1) + 8 * v22);
      if (![(NSMutableArray *)v23 decision])
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:

    v16 = [(CSSingleCheckerPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:3 phraseResult:self->_phraseResult];
    if (v16)
    {
LABEL_17:
      v17 = v16;
      goto LABEL_31;
    }

    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v37 = "[CSSingleCheckerPhraseDetector _phraseDetectorResultFromQuasarResult:]";
      _os_log_fault_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_FAULT, "%s Phrase detector results fall-into unexpected use case, we return the first phrase result", buf, 0xCu);
    }

    v23 = [(NSMutableArray *)self->_phraseResult objectAtIndexedSubscript:0];
    v18 = v23;
  }

  v17 = [(NSMutableArray *)v23 copy];

LABEL_31:

  return v17;
}

- (id)phraseDetectorInfoFromPhId:(unint64_t)id
{
  if ([(NSMutableArray *)self->_phraseDetectorInfos count]<= id)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_phraseDetectorInfos objectAtIndex:id];
  }

  return v5;
}

- (id)getAnalyzedResultFromFlushedAudio
{
  getResultsFromFlushedAudio = [(CSSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
  v4 = [(CSSingleCheckerPhraseDetector *)self _phraseDetectorResultFromQuasarResult:getResultsFromFlushedAudio];

  return v4;
}

- (id)getAnalyzedResultFromAudioChunk:(id)chunk
{
  if (chunk)
  {
    syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
    chunkCopy = chunk;
    v6 = [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar getAnalyzedResultsFromAudioChunk:chunkCopy];
    numSamples = [chunkCopy numSamples];

    self->_processedSampleCount += numSamples;
    v8 = [(CSSingleCheckerPhraseDetector *)self _phraseDetectorResultFromQuasarResult:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setConfig:(id)config
{
  v61 = *MEMORY[0x1E69E9840];
  configCopy = config;
  phraseConfigs = [configCopy phraseConfigs];
  v6 = [phraseConfigs count];

  if (v6)
  {
    [(NSMutableArray *)self->_phraseDetectorInfos removeAllObjects];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    phraseConfigs2 = [configCopy phraseConfigs];
    v8 = [phraseConfigs2 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(phraseConfigs2);
          }

          v12 = [[CSPhraseDetectorInfo alloc] initWithPhraseConfig:*(*(&v52 + 1) + 8 * i)];
          if (v12)
          {
            [(NSMutableArray *)self->_phraseDetectorInfos addObject:v12];
          }
        }

        v9 = [phraseConfigs2 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v9);
    }

    array = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = self->_phraseDetectorInfos;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          phraseConfig = [*(*(&v48 + 1) + 8 * j) phraseConfig];
          recognizerToken = [phraseConfig recognizerToken];
          [array addObject:recognizerToken];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v16);
    }

    v21 = [CSSyncKeywordAnalyzerQuasar alloc];
    configPathRecognizer = [configCopy configPathRecognizer];
    v23 = [(CSSyncKeywordAnalyzerQuasar *)v21 initWithConfigPath:configPathRecognizer triggerTokensArray:array preventDuplicatedReset:0 memoryLock:0];
    syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
    self->_syncKeywordAnalyzerQuasar = v23;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = self->_phraseDetectorInfos;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v44 + 1) + 8 * k);
          phraseConfig2 = [v30 phraseConfig];
          [phraseConfig2 threshold];
          v37 = *&v32;
          if (self->_syncKeywordAnalyzerQuasar)
          {
            [phraseConfig2 recognizerScoreOffset];
            v39 = v38;
            v37 = v37 + v38;
            [phraseConfig2 recognizerScoreScaleFactor];
            LODWORD(v40) = LODWORD(v32);
          }

          else
          {
            v39 = 0.0;
            v40 = 0.0;
          }

          *&v32 = v37;
          LODWORD(v33) = 2139095040;
          LODWORD(v34) = 2139095040;
          *&v35 = v39;
          LODWORD(v36) = 2139095040;
          v41 = [phraseConfig2 copyWithThreshold:v32 secondChanceThreshold:v33 loggingThreshold:v34 ndapiScaleFactor:0.0 recognizerScoreOffset:v35 recognizerScoreScaleFactor:v40 keywordRejectLoggingThreshold:v36];
          [v30 setPhraseConfig:v41];
          *&v42 = v37;
          [v30 setEffectiveKeywordThreshold:v42];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v27);
    }

    [(CSSingleCheckerPhraseDetector *)self reset];
  }

  else
  {
    v43 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v60 = "[CSSingleCheckerPhraseDetector setConfig:]";
      _os_log_error_impl(&dword_1DDA4B000, v43, OS_LOG_TYPE_ERROR, "%s Invalid assets config!", buf, 0xCu);
    }
  }
}

- (void)reset
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSSingleCheckerPhraseDetector reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  [(CSSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar reset];
  [(NSMutableArray *)self->_phraseResult removeAllObjects];
  if ([(NSMutableArray *)self->_phraseDetectorInfos count])
  {
    v4 = 0;
    do
    {
      v5 = [CSSinglePhraseResult alloc];
      LODWORD(v6) = -8388608;
      LODWORD(v7) = -8388608;
      LODWORD(v8) = -998637568;
      v9 = [(CSSinglePhraseResult *)v5 initWithPhId:v4 keywordDetectorDecision:0 combinedScore:0 ndapiScore:0 ndapiResult:0 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v6 isSecondChanceCandidate:v7 isRunningQuasar:v8];
      [(NSMutableArray *)self->_phraseResult addObject:v9];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_phraseDetectorInfos count]);
  }

  self->_processedSampleCount = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSSingleCheckerPhraseDetector dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSPhraseDetector Deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSSingleCheckerPhraseDetector;
  [(CSSingleCheckerPhraseDetector *)&v4 dealloc];
}

- (CSSingleCheckerPhraseDetector)init
{
  v8.receiver = self;
  v8.super_class = CSSingleCheckerPhraseDetector;
  v2 = [(CSSingleCheckerPhraseDetector *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    phraseDetectorInfos = v2->_phraseDetectorInfos;
    v2->_phraseDetectorInfos = array;

    array2 = [MEMORY[0x1E695DF70] array];
    phraseResult = v2->_phraseResult;
    v2->_phraseResult = array2;

    v2->_processedSampleCount = 0;
  }

  return v2;
}

@end