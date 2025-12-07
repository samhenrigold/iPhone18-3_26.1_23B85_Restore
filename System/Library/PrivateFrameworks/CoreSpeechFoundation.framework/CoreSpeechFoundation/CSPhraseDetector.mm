@interface CSPhraseDetector
- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold;
- (CSPhraseDetector)init;
- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized;
- (id)_phraseDetectorResultFromNDAPIResults:(id)results quasarResult:(id)result forceMaximized:(BOOL)maximized;
- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result;
- (id)getAnalyzedResultFromAudioChunk:(id)chunk;
- (id)getAnalyzedResultFromFlushedAudio;
- (id)getLosingPhraseResultsWithDetectedPhId:(unint64_t)id;
- (id)phraseDetectorInfoFromPhId:(unint64_t)id;
- (void)dealloc;
- (void)reset;
- (void)setActiveChannel:(unint64_t)channel;
- (void)setConfig:(id)config;
- (void)setRunAsSecondChance:(BOOL)chance;
@end

@implementation CSPhraseDetector

- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v8 = [resultCopy objectAtIndexedSubscript:id];
  decision = [v8 decision];

  if (decision == decision)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v28 = "[CSPhraseDetector _resultCopyWithKeywordDetectorDecision:bestPhId:phraseResult:]";
      v29 = 2048;
      decisionCopy2 = decision;
      v31 = 2048;
      idCopy = id;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Reporting decision (%tu) from (%tu)", buf, 0x20u);
    }

    v11 = [resultCopy objectAtIndexedSubscript:id];
    v12 = v11;
LABEL_16:
    v17 = [v11 copy];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = resultCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 decision] == decision)
          {
            v18 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              phId = [v11 phId];
              *buf = 136315650;
              v28 = "[CSPhraseDetector _resultCopyWithKeywordDetectorDecision:bestPhId:phraseResult:]";
              v29 = 2048;
              decisionCopy2 = decision;
              v31 = 2048;
              idCopy = phId;
              _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Reporting decision (%tu) from (%tu)", buf, 0x20u);
            }

            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold
{
  if (self->_isSecondChance)
  {
    return 0;
  }

  return score >= chanceThreshold && score < threshold;
}

- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v87 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  quasarResultCopy = quasarResult;
  if ([(NSMutableArray *)self->_phraseResult count]<= id)
  {
    v19 = 0;
    goto LABEL_28;
  }

  idCopy = id;
  v15 = [(NSMutableArray *)self->_phraseResult objectAtIndex:id];
  phraseConfig = [infoCopy phraseConfig];
  if (v15)
  {
    [v15 ndapiScore];
    v18 = v17;
  }

  else
  {
    v18 = -INFINITY;
  }

  hasPendingNearMiss = [infoCopy hasPendingNearMiss];
  [infoCopy effectiveKeywordThreshold];
  v21 = v20;
  [phraseConfig loggingThreshold];
  v23 = v22;
  [phraseConfig ndapiScaleFactor];
  v25 = v24;
  v26 = phraseConfig;
  [phraseConfig recognizerScoreScaleFactor];
  v28 = v27;
  v29 = v15;
  if (quasarResultCopy)
  {
    [quasarResultCopy triggerConfidence];
    v31 = v30;
  }

  else
  {
    v31 = -1000.0;
  }

  v71 = quasarResultCopy;
  [resultCopy bestScore];
  v33 = v32;
  samplesFed = [resultCopy samplesFed];
  v35 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
  if (0xCCCCCCCCCCCCCCCDLL * _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat <= 0x3333333333333333)
  {
    v36 = CSLogContextFacilityCoreSpeech;
    v37 = *&samplesFed;
    v38 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO);
    samplesFed = *&v37;
    if (v38)
    {
      *buf = 136316674;
      v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
      v75 = 2048;
      v76 = idCopy;
      v77 = 2050;
      v78 = v33;
      v79 = 2050;
      v80 = v37;
      v81 = 2050;
      v82 = v31;
      v83 = 2050;
      v84 = v25;
      v85 = 2050;
      v86 = v28;
      _os_log_impl(&dword_1DDA4B000, v36, OS_LOG_TYPE_INFO, "%s [(%lu)] : NDAPI second pass best score = %{public}f with analyzed samples:                   %{public}tu with quasar score = %{public}f, ndapi scale factor = %{public}f, quasar scale factor = %{public}f", buf, 0x48u);
      samplesFed = *&v37;
      v35 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
    }
  }

  v39 = v35 + 1;
  _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat = v35 + 1;
  v40 = v33;
  if (self->_syncKeywordAnalyzerQuasar)
  {
    v40 = (v25 * v33) + v31 * v28;
  }

  v41 = v29;
  if (v18 >= v33 || maximizedCopy)
  {
    if (v40 >= v21)
    {
      v47 = CSLogContextFacilityCoreSpeech;
      v43 = v26;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        *&v49 = COERCE_DOUBLE([resultCopy samplesFed]);
        *buf = 136316162;
        v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v75 = 2048;
        v76 = idCopy;
        v77 = 2050;
        v78 = *&v49;
        v79 = 2050;
        v80 = v40;
        v81 = 2050;
        v82 = v21;
        _os_log_impl(&dword_1DDA4B000, v48, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Trigger detected with %{public}tu analyzed samples in NDAPI,                   combined score = %{public}lf, effective threshold = %{public}f", buf, 0x34u);
      }

      v42 = 1;
      goto LABEL_26;
    }

    v43 = v26;
    if (v40 < v23)
    {
      v44 = hasPendingNearMiss;
      if (maximizedCopy)
      {
        v45 = *&samplesFed;
        v46 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
          v75 = 2048;
          v76 = idCopy;
          v77 = 2050;
          v78 = v45;
          v79 = 2050;
          v80 = v40;
          _os_log_impl(&dword_1DDA4B000, v46, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Notify second pass reject at: %{public}tu                   with best score up to: %{public}.3f", buf, 0x2Au);
        }

        v42 = 3;
        goto LABEL_27;
      }

      goto LABEL_40;
    }

    v44 = hasPendingNearMiss;
    if (maximizedCopy)
    {
LABEL_32:
      v61 = *&samplesFed;
      v62 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v75 = 2048;
        v76 = idCopy;
        v77 = 2050;
        v78 = v61;
        v79 = 2050;
        v80 = v40;
        _os_log_impl(&dword_1DDA4B000, v62, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Detected near miss at %{public}lu samples                       with best score up to: %{public}.3f", buf, 0x2Au);
      }

      v42 = 2;
      goto LABEL_27;
    }

    if (hasPendingNearMiss)
    {
      nearMissDelayTimeout = self->_nearMissDelayTimeout;
      nearMissCandidateDetectedSamples = self->_nearMissCandidateDetectedSamples;
      if (nearMissDelayTimeout + nearMissCandidateDetectedSamples < samplesFed)
      {
        goto LABEL_32;
      }

      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v39, 1) <= 0x1999999999999999uLL)
      {
        v65 = samplesFed;
        v66 = CSLogContextFacilityCoreSpeech;
        v44 = 1;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
          v75 = 2048;
          v76 = idCopy;
          v77 = 2050;
          *&v78 = v65 - nearMissCandidateDetectedSamples + nearMissDelayTimeout;
          _os_log_impl(&dword_1DDA4B000, v66, OS_LOG_TYPE_INFO, "%s [phId = %tu] : Waiting for logging near miss                               until timeout %{public}lu samples", buf, 0x20u);
        }

LABEL_40:
        v42 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      self->_nearMissCandidateDetectedSamples = samplesFed;
      v67 = CSLogContextFacilityCoreSpeech;
      v68 = *&samplesFed;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v69 = self->_nearMissDelayTimeout;
        *buf = 136315906;
        v74 = "[CSPhraseDetector _getResultWithPhId:phraseDetectorInfo:ndapiResult:quasarResult:forceMaximized:]";
        v75 = 2048;
        v76 = idCopy;
        v77 = 2050;
        v78 = v68;
        v79 = 2050;
        v80 = *&v69;
        _os_log_impl(&dword_1DDA4B000, v67, OS_LOG_TYPE_DEFAULT, "%s [phId = %tu] : Detected near miss candidate at %{public}tu,                       let's wait %{public}tu samples to log", buf, 0x2Au);
      }
    }

    v42 = 0;
    v44 = 1;
    goto LABEL_27;
  }

  v42 = 0;
  v43 = v26;
LABEL_26:
  v44 = hasPendingNearMiss;
LABEL_27:
  [infoCopy setHasPendingNearMiss:v44];
  phraseConfig2 = [infoCopy phraseConfig];
  [phraseConfig2 secondChanceThreshold];
  LODWORD(v52) = v51;
  *&v53 = v40;
  *&v54 = v21;
  v55 = [(CSPhraseDetector *)self _isSecondChanceCandidateWithScore:v53 effectiveThreshold:v54 secondChanceThreshold:v52];

  v56 = [CSSinglePhraseResult alloc];
  *&v57 = v31;
  *&v58 = v40;
  *&v59 = v33;
  v19 = [(CSSinglePhraseResult *)v56 initWithPhId:idCopy keywordDetectorDecision:v42 combinedScore:resultCopy ndapiScore:self->_isSecondChance ndapiResult:v55 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v58 isSecondChanceCandidate:v59 isRunningQuasar:v57];

  quasarResultCopy = v71;
LABEL_28:

  return v19;
}

- (id)getLosingPhraseResultsWithDetectedPhId:(unint64_t)id
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_phraseResult;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 phId] != id)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_phraseDetectorResultFromNDAPIResults:(id)results quasarResult:(id)result forceMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v67 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  resultCopy = result;
  v47 = resultsCopy;
  v10 = [resultsCopy count];
  if (v10 >= [(NSMutableArray *)self->_phraseDetectorInfos count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = self->_phraseDetectorInfos;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = 0;
      v17 = *v57;
      *&v14 = 136315394;
      v45 = v14;
      v18 = resultCopy;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          if ([resultCopy count] <= v16)
          {
            v21 = 0;
          }

          else
          {
            v21 = [resultCopy objectAtIndex:v16];
          }

          v22 = [v47 objectAtIndex:v16];
          v23 = [(CSPhraseDetector *)self _getResultWithPhId:v16 phraseDetectorInfo:v20 ndapiResult:v22 quasarResult:v21 forceMaximized:maximizedCopy];

          if (v23 && [(NSMutableArray *)self->_phraseResult count]> v16)
          {
            [(NSMutableArray *)self->_phraseResult setObject:v23 atIndexedSubscript:v16];
          }

          else
          {
            v24 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = v45;
              v63 = "[CSPhraseDetector _phraseDetectorResultFromNDAPIResults:quasarResult:forceMaximized:]";
              v64 = 2048;
              v65 = v16;
              _os_log_error_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_ERROR, "%s Received invalid result with %tu", buf, 0x16u);
            }
          }

          ++v16;

          resultCopy = v18;
        }

        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v15);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = self->_phraseResult;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v26)
    {
      v27 = v26;
      phId = 0;
      v29 = *v53;
      v30 = -INFINITY;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v52 + 1) + 8 * j);
          [v32 ndapiScore];
          if (v33 > v30)
          {
            [v32 ndapiScore];
            v30 = v34;
            phId = [v32 phId];
          }
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v27);
    }

    else
    {
      phId = 0;
    }

    v35 = [(CSPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:1 bestPhId:phId phraseResult:self->_phraseResult];
    if (v35)
    {
      goto LABEL_32;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = self->_phraseResult;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v49;
LABEL_35:
      v40 = 0;
      while (1)
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v48 + 1) + 8 * v40);
        if (![(NSMutableArray *)v41 decision])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v38)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
LABEL_41:

      v35 = [(CSPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:2 bestPhId:phId phraseResult:self->_phraseResult];
      if (v35 || ([(CSPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:3 bestPhId:phId phraseResult:self->_phraseResult], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_32:
        v12 = v35;
        goto LABEL_47;
      }

      v42 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v63 = "[CSPhraseDetector _phraseDetectorResultFromNDAPIResults:quasarResult:forceMaximized:]";
        _os_log_fault_impl(&dword_1DDA4B000, v42, OS_LOG_TYPE_FAULT, "%s Phrase detector results fall-into unexpected use case", buf, 0xCu);
      }

      v41 = [(NSMutableArray *)self->_phraseResult objectAtIndexedSubscript:phId];
      v36 = v41;
    }

    v12 = [(NSMutableArray *)v41 copy];

    goto LABEL_47;
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v44 = v11;
    *buf = 136315394;
    v63 = "[CSPhraseDetector _phraseDetectorResultFromNDAPIResults:quasarResult:forceMaximized:]";
    v64 = 1024;
    LODWORD(v65) = [resultsCopy count];
    _os_log_error_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_ERROR, "%s Unable to process due to number of result mismatch, ndapiResults number = %d", buf, 0x12u);
  }

  v12 = 0;
LABEL_47:

  return v12;
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
  getAnalyzedResults = [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getAnalyzedResults];
  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  if (quasarCheckerResultAtCutOff)
  {
    getResultsFromFlushedAudio = quasarCheckerResultAtCutOff;
  }

  else
  {
    getResultsFromFlushedAudio = [(CSSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
  }

  v6 = getResultsFromFlushedAudio;
  v7 = [(CSPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:getAnalyzedResults quasarResult:getResultsFromFlushedAudio forceMaximized:1];

  return v7;
}

- (id)getAnalyzedResultFromAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  if (!chunkCopy)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getAnalyzedResultsFromAudioChunk:chunkCopy];
  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  if (quasarCheckerResultAtCutOff)
  {
    v7 = quasarCheckerResultAtCutOff;
  }

  else
  {
    syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
    if (self->_processedSampleCount >= self->_quasarCheckerCutOffSamplesCount)
    {
      getResultsFromFlushedAudio = [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
      objc_storeStrong(&self->_quasarCheckerResultAtCutOff, getResultsFromFlushedAudio);
      goto LABEL_8;
    }

    v7 = [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar getAnalyzedResultsFromAudioChunk:chunkCopy];
  }

  getResultsFromFlushedAudio = v7;
LABEL_8:
  self->_processedSampleCount += [chunkCopy numSamples];
  v8 = [(CSPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:v5 quasarResult:getResultsFromFlushedAudio forceMaximized:0];

LABEL_9:

  return v8;
}

- (void)setConfig:(id)config
{
  v96 = *MEMORY[0x1E69E9840];
  configCopy = config;
  phraseConfigs = [configCopy phraseConfigs];
  v6 = [phraseConfigs count];

  if (v6)
  {
    [(NSMutableArray *)self->_phraseDetectorInfos removeAllObjects];
    quasarCheckerResultCutOffCount = [configCopy quasarCheckerResultCutOffCount];
    self->_quasarCheckerCutOffSamplesCount = [quasarCheckerResultCutOffCount unsignedIntegerValue];

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->_quasarCheckerCutOffSamplesCount;
      *buf = 136315394;
      v88 = "[CSPhraseDetector setConfig:]";
      v89 = 2048;
      v90 = v9;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s setting quasar checker model processed sample count cut off: %lu", buf, 0x16u);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    phraseConfigs2 = [configCopy phraseConfigs];
    v11 = [phraseConfigs2 countByEnumeratingWithState:&v83 objects:v95 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v84;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v84 != v13)
          {
            objc_enumerationMutation(phraseConfigs2);
          }

          v15 = [[CSPhraseDetectorInfo alloc] initWithPhraseConfig:*(*(&v83 + 1) + 8 * i)];
          if (v15)
          {
            [(NSMutableArray *)self->_phraseDetectorInfos addObject:v15];
          }
        }

        v12 = [phraseConfigs2 countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v12);
    }

    v16 = [CSKeywordAnalyzerNDAPI alloc];
    configPathNDAPI = [configCopy configPathNDAPI];
    resourcePath = [configCopy resourcePath];
    v19 = [(CSKeywordAnalyzerNDAPI *)v16 initWithConfigPath:configPathNDAPI resourcePath:resourcePath];
    syncKeywordAnalyzerNDAPI = self->_syncKeywordAnalyzerNDAPI;
    self->_syncKeywordAnalyzerNDAPI = v19;

    v74 = configCopy;
    if (self->_syncKeywordAnalyzerNDAPI && +[CSUtils supportPremiumModel](CSUtils, "supportPremiumModel") && [configCopy useRecognizerCombination])
    {
      array = [MEMORY[0x1E695DF70] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v22 = self->_phraseDetectorInfos;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v79 objects:v94 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v80;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v80 != v25)
            {
              objc_enumerationMutation(v22);
            }

            phraseConfig = [*(*(&v79 + 1) + 8 * j) phraseConfig];
            recognizerToken = [phraseConfig recognizerToken];
            [array addObject:recognizerToken];
          }

          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v79 objects:v94 count:16];
        }

        while (v24);
      }

      overwritingVoiceTriggerMLock = +[CSUtils horsemanDeviceType]== 3;
      v30 = +[CSFPreferences sharedPreferences];
      shouldOverwriteVoiceTriggerMLock = [v30 shouldOverwriteVoiceTriggerMLock];

      if (shouldOverwriteVoiceTriggerMLock)
      {
        v32 = +[CSFPreferences sharedPreferences];
        overwritingVoiceTriggerMLock = [v32 overwritingVoiceTriggerMLock];
      }

      v33 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *&v34 = COERCE_DOUBLE(@"disabled");
        if (overwritingVoiceTriggerMLock)
        {
          *&v34 = COERCE_DOUBLE(@"enabled");
        }

        *buf = 136315394;
        v88 = "[CSPhraseDetector setConfig:]";
        v89 = 2112;
        v90 = *&v34;
        _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger memory lock %@", buf, 0x16u);
      }

      v35 = [CSSyncKeywordAnalyzerQuasar alloc];
      configPathRecognizer = [v74 configPathRecognizer];
      if (CSIsHorseman_onceToken != -1)
      {
        dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
      }

      v37 = [(CSSyncKeywordAnalyzerQuasar *)v35 initWithConfigPath:configPathRecognizer triggerTokensArray:array preventDuplicatedReset:CSIsHorseman_isHorseman memoryLock:overwritingVoiceTriggerMLock];
      syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = v37;
    }

    else
    {
      array = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = 0;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v39 = self->_phraseDetectorInfos;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v75 objects:v93 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v76;
      v73 = 136315650;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v76 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v75 + 1) + 8 * k);
          phraseConfig2 = [v44 phraseConfig];
          [phraseConfig2 threshold];
          v47 = v46;
          [phraseConfig2 secondChanceThreshold];
          v49 = v48;
          [phraseConfig2 loggingThreshold];
          v51 = v50;
          [phraseConfig2 ndapiScaleFactor];
          v59 = LODWORD(v52);
          if (!self->_syncKeywordAnalyzerNDAPI)
          {
            v60 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v88 = "[CSPhraseDetector setConfig:]";
              _os_log_impl(&dword_1DDA4B000, v60, OS_LOG_TYPE_DEFAULT, "%s Reset all thresholds to HUGE_VALF since NDAPI is nil", buf, 0xCu);
            }

            v51 = INFINITY;
            v49 = INFINITY;
            v47 = INFINITY;
          }

          if (self->_syncKeywordAnalyzerQuasar)
          {
            [phraseConfig2 recognizerScoreOffset];
            v62 = v61;
            v47 = v47 + v61;
            v49 = v49 + v61;
            [phraseConfig2 recognizerScoreScaleFactor];
            v64 = v63;
            [phraseConfig2 keywordRejectLoggingThreshold];
            v65 = LODWORD(v52);
          }

          else
          {
            v62 = 0.0;
            v65 = 2139095040;
            v64 = 0;
          }

          if (self->_syncKeywordAnalyzerNDAPI)
          {
            if (!self->_syncKeywordAnalyzerQuasar)
            {
              if ([v74 useRecognizerCombination])
              {
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getThreshold];
                v47 = v66;
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getLoggingThreshold];
                v51 = v67;
                [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getRejectLoggingThreshold];
                v65 = v68;
                v69 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v73;
                  v88 = "[CSPhraseDetector setConfig:]";
                  v89 = 2050;
                  v90 = v47;
                  v91 = 2050;
                  v92 = v51;
                  _os_log_impl(&dword_1DDA4B000, v69, OS_LOG_TYPE_DEFAULT, "%s Using threshold from NDAPI since we are not able to use Quasar, threshold = %{public}f, logging threshold = %{public}f", buf, 0x20u);
                }
              }
            }
          }

          *&v52 = v47;
          *&v53 = v49;
          *&v54 = v51;
          LODWORD(v55) = v59;
          *&v56 = v62;
          LODWORD(v57) = v64;
          LODWORD(v58) = v65;
          v70 = [phraseConfig2 copyWithThreshold:v52 secondChanceThreshold:v53 loggingThreshold:v54 ndapiScaleFactor:v55 recognizerScoreOffset:v56 recognizerScoreScaleFactor:v57 keywordRejectLoggingThreshold:v58];
          [v44 setPhraseConfig:v70];
          *&v71 = v47;
          [v44 setEffectiveKeywordThreshold:v71];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v75 objects:v93 count:16];
      }

      while (v41);
    }

    [(CSPhraseDetector *)self reset];
    configCopy = v74;
  }

  else
  {
    v72 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v88 = "[CSPhraseDetector setConfig:]";
      _os_log_error_impl(&dword_1DDA4B000, v72, OS_LOG_TYPE_ERROR, "%s Invalid assets config!", buf, 0xCu);
    }
  }
}

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSPhraseDetector reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI reset];
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

  quasarCheckerResultAtCutOff = self->_quasarCheckerResultAtCutOff;
  self->_quasarCheckerResultAtCutOff = 0;

  self->_processedSampleCount = 0;
}

- (void)setRunAsSecondChance:(BOOL)chance
{
  chanceCopy = chance;
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_phraseDetectorInfos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        phraseConfig = [v9 phraseConfig];
        v11 = phraseConfig;
        if (phraseConfig)
        {
          [phraseConfig secondChanceThreshold];
          v13 = v12;
          [v11 threshold];
          if (chanceCopy)
          {
            *&v14 = v13;
            [v9 setEffectiveKeywordThreshold:v14];
            v15 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v23 = "[CSPhraseDetector setRunAsSecondChance:]";
              v24 = 2050;
              v25 = v13;
              _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Using second chance threshold for voice trigger second pass: %{public}f", buf, 0x16u);
            }
          }

          else
          {
            [v9 setEffectiveKeywordThreshold:?];
          }
        }

        else
        {
          v16 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v23 = "[CSPhraseDetector setRunAsSecondChance:]";
            _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Failed to fetch config", buf, 0xCu);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  self->_isSecondChance = chanceCopy;
}

- (void)setActiveChannel:(unint64_t)channel
{
  [(CSKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI setActiveChannel:?];
  syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;

  [(CSSyncKeywordAnalyzerQuasar *)syncKeywordAnalyzerQuasar setActiveChannel:channel];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSPhraseDetector dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSPhraseDetector Deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSPhraseDetector;
  [(CSPhraseDetector *)&v4 dealloc];
}

- (CSPhraseDetector)init
{
  v10.receiver = self;
  v10.super_class = CSPhraseDetector;
  v2 = [(CSPhraseDetector *)&v10 init];
  if (v2)
  {
    +[CSConfig inputRecordingSampleRate];
    *(v2 + 5) = (v3 * 0.5);
    array = [MEMORY[0x1E695DF70] array];
    v5 = *(v2 + 4);
    *(v2 + 4) = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v7 = *(v2 + 7);
    *(v2 + 7) = array2;

    v8 = *(v2 + 8);
    *(v2 + 8) = 0;

    *(v2 + 72) = xmmword_1DDB1F800;
  }

  return v2;
}

@end