@interface SSRSpeakerAnalyzerPSR
- (BOOL)_isSpeakerVectorValid:(id)valid speakerVectorSize:(unint64_t)size fromPsrAudioProcessor:(id)processor;
- (SSRSpeakerAnalyzerPSR)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate;
- (SSRSpeakerAnalyzerPSRDelegate)delegate;
- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
- (id)getVoiceRecognizerResults;
- (id)resetForNewRequest;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioData:(id)data;
- (void)psrAudioProcessor:(id)processor finishedWithFinalSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
- (void)psrAudioProcessor:(id)processor hasSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
@end

@implementation SSRSpeakerAnalyzerPSR

- (SSRSpeakerAnalyzerPSRDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)psrAudioProcessor:(id)processor finishedWithFinalSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v29 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  vectorCopy = vector;
  if ([(SSRSpeakerAnalyzerPSR *)self _isSpeakerVectorValid:vectorCopy speakerVectorSize:size fromPsrAudioProcessor:processorCopy])
  {
    v12 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      numSamplesProecssed = self->_numSamplesProecssed;
      v19 = 136316162;
      v20 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:finishedWithFinalSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v21 = 2114;
      v22 = processorCopy;
      v23 = 2050;
      sizeCopy = size;
      v25 = 2050;
      msCopy = ms;
      v27 = 2050;
      v28 = numSamplesProecssed;
      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s FINISHED processing: psrAudioProcessor:%{public}@ finishedWithFinalSpeakerVector: speakerVectorSize:%{public}lu processedAudioDurationMs: %{public}lu %{public}lu", &v19, 0x34u);
    }

    v14 = [(SSRSpeakerAnalyzerPSR *)self _processSpeakerVector:vectorCopy withSize:size processedAudioDurationMs:ms];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 voiceRecognitionPSRAnalyzerFinishedProcessing:self withVoiceRecognitionInfo:v14];
    }
  }

  else
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:finishedWithFinalSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v21 = 1024;
      LODWORD(v22) = size;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Invalid speaker vector with size %d - Skipping", &v19, 0x12u);
    }
  }
}

- (void)psrAudioProcessor:(id)processor hasSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v26 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  vectorCopy = vector;
  if ([(SSRSpeakerAnalyzerPSR *)self _isSpeakerVectorValid:vectorCopy speakerVectorSize:size fromPsrAudioProcessor:processorCopy])
  {
    v12 = [(SSRSpeakerAnalyzerPSR *)self _processSpeakerVector:vectorCopy withSize:size processedAudioDurationMs:ms];
    v13 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:hasSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v20 = 2114;
      v21 = processorCopy;
      v22 = 2050;
      sizeCopy = size;
      v24 = 2050;
      msCopy = ms;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s processing: psrAudioProcessor:%{public}@ speakerVectorSize:%{public}lu processedAudioDurationMs: %{public}lu", &v18, 0x2Au);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 voiceRecognitionPSRAnalyzer:self hasVoiceRecognitionInfo:v12];
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:hasSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v20 = 1024;
      LODWORD(v21) = size;
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Invalid speaker vector with size %d - Skipping", &v18, 0x12u);
    }
  }
}

- (BOOL)_isSpeakerVectorValid:(id)valid speakerVectorSize:(unint64_t)size fromPsrAudioProcessor:(id)processor
{
  v25 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  processorCopy = processor;
  psrAudioProcessor = self->_psrAudioProcessor;
  if (psrAudioProcessor == processorCopy)
  {
    if (!validCopy)
    {
      v17 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v19 = 136315138;
      v20 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v12 = "%s ERR: psrResult is nil";
      v13 = v17;
      v14 = 12;
      goto LABEL_4;
    }

    if (size)
    {
      v15 = 1;
      goto LABEL_6;
    }

    v18 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v21 = 2050;
      v22 = 0;
      v12 = "%s Invalid speakerVectorSize=%{public}lu";
      v13 = v18;
      v14 = 22;
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v21 = 2112;
      v22 = processorCopy;
      v23 = 2112;
      v24 = psrAudioProcessor;
      v12 = "%s ERR: Reporting psrAudioProcessor(%@) != _psrAudioProcessor(%@)";
      v13 = v11;
      v14 = 32;
LABEL_4:
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
    }
  }

LABEL_5:
  v15 = 0;
LABEL_6:

  return v15;
}

- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v34 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v9 = [(SSRSpeakerRecognitionContext *)self->_context recognitionStyle]== 1 && !self->_triggerPhraseDetectedOnTap;
  msCopy = ms;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_psrScorers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 scoreSpeakerVector:vectorCopy withDimensions:size withThresholdType:v9];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        profileID = [v14 profileID];
        [v8 setObject:v15 forKeyedSubscript:profileID];
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  v31 = @"configPath";
  path = [(NSURL *)self->_configFilePath path];
  v32 = path;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v30[0] = v8;
  v29[0] = @"spIdKnownUserPSRScores";
  v29[1] = @"spIdUnknownUserScore";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v30[1] = v19;
  v29[2] = @"spIdAudioProcessedDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:msCopy];
  v29[3] = @"psrContext";
  v30[2] = v20;
  v30[3] = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  return v21;
}

- (id)getVoiceRecognizerResults
{
  v47 = *MEMORY[0x277D85DE8];
  p_psrScorers = &self->_psrScorers;
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](*p_psrScorers, "count")}];
  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v4 = [(SSRSpeakerRecognitionContext *)self->_context recognitionStyle]== 1 && !self->_triggerPhraseDetectedOnTap;
  getLatestSuperVector = [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor getLatestSuperVector];
  v6 = [getLatestSuperVector length];
  if (v6 > 3)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = self->_psrScorers;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v10 = v6 >> 2;
      v11 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          [v13 scoreSpeakerVector:getLatestSuperVector withDimensions:v10 withThresholdType:v4];
          v14 = [MEMORY[0x277CCABB0] numberWithFloat:?];
          profileID = [v13 profileID];
          [v37 setObject:v14 forKeyedSubscript:profileID];

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "getSATVectorCount")}];
          profileID2 = [v13 profileID];
          [v36 setObject:v16 forKeyedSubscript:profileID2];

          voiceProfilesExpModelFilePaths = self->_voiceProfilesExpModelFilePaths;
          if (voiceProfilesExpModelFilePaths)
          {
            profileID3 = [v13 profileID];
            v20 = [(NSDictionary *)voiceProfilesExpModelFilePaths objectForKeyedSubscript:profileID3];
            v21 = v20 == 0;

            if (!v21)
            {
              v22 = self->_voiceProfilesExpModelFilePaths;
              profileID4 = [v13 profileID];
              v24 = [(NSDictionary *)v22 objectForKeyedSubscript:profileID4];
              [v13 resetScorerWithModelFilePath:v24];

              [v13 scoreSpeakerVector:getLatestSuperVector withDimensions:v10 withThresholdType:v4];
              v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
              profileID5 = [v13 profileID];
              [v34 setObject:v25 forKeyedSubscript:profileID5];
            }
          }

          voiceProfilesModelFilePaths = self->_voiceProfilesModelFilePaths;
          profileID6 = [v13 profileID];
          v29 = [(NSDictionary *)voiceProfilesModelFilePaths objectForKeyedSubscript:profileID6];
          [v13 resetScorerWithModelFilePath:v29];
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v9);
    }

    v44[0] = @"configPath";
    path = [(NSURL *)self->_configFilePath path];
    v44[1] = @"numSpeakerVectors";
    v45[0] = path;
    v45[1] = v36;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

    v42[0] = @"spIdKnownUserPSRScores";
    v42[1] = @"spIdKnownUserPSRExpScores";
    v43[0] = v37;
    v43[1] = v34;
    v42[2] = @"spIdUnknownUserScore";
    v32 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    v42[3] = @"psrContext";
    v43[2] = v32;
    v43[3] = v31;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  }

  else
  {
    logAggregator = [(SSRSpeakerRecognitionContext *)self->_context logAggregator];
    [logAggregator setSpeakerRecognitionPSRProcessingStatus:743];

    v8 = 0;
  }

  return v8;
}

- (id)resetForNewRequest
{
  v15 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor resetForNewRequestSync];
  date2 = [MEMORY[0x277CBEAA8] date];
  v5 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    psrAudioProcessor = self->_psrAudioProcessor;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315650;
    v10 = "[SSRSpeakerAnalyzerPSR resetForNewRequest]";
    v11 = 2114;
    v12 = psrAudioProcessor;
    v13 = 2050;
    v14 = v7 * 1000.0;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Successfully reset psrAnalyzer: %{public}@ in %{public}fms", buf, 0x20u);
  }

  return 0;
}

- (void)endAudio
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRSpeakerAnalyzerPSR endAudio]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Calling endAudio on EARSyncPSRAudioProcessor", &v5, 0xCu);
  }

  [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor endAudio];
  getLatestSuperVector = [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor getLatestSuperVector];
}

- (void)processAudioData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy bytes] && objc_msgSend(v5, "length"))
  {
    [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor addAudioSync:v5];
    self->_numSamplesProecssed += [v5 length] >> 1;
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SSRSpeakerAnalyzerPSR dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %@: dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = SSRSpeakerAnalyzerPSR;
  [(SSRSpeakerAnalyzerPSR *)&v4 dealloc];
}

- (SSRSpeakerAnalyzerPSR)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v42.receiver = self;
  v42.super_class = SSRSpeakerAnalyzerPSR;
  v9 = [(SSRSpeakerAnalyzerPSR *)&v42 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  modelsContext = [contextCopy modelsContext];
  v11 = [SSRUtils stringForSpeakerRecognizerType:1];
  v12 = [modelsContext objectForKeyedSubscript:v11];

  expModelsContext = [contextCopy expModelsContext];
  v14 = [SSRUtils stringForSpeakerRecognizerType:1];
  v15 = [expModelsContext objectForKeyedSubscript:v14];

  if (!v12)
  {
    v39 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SSRSpeakerAnalyzerPSR initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s modelContext is nil! - Bailing out", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_storeWeak(&v9->_delegate, delegateCopy);
  configFilePath = [v12 configFilePath];
  configFilePath = v9->_configFilePath;
  v9->_configFilePath = configFilePath;

  resourceFilePath = [contextCopy resourceFilePath];
  resourceFilePath = v9->_resourceFilePath;
  v9->_resourceFilePath = resourceFilePath;

  voiceProfilesModelFilePaths = [v12 voiceProfilesModelFilePaths];
  voiceProfilesModelFilePaths = v9->_voiceProfilesModelFilePaths;
  v9->_voiceProfilesModelFilePaths = voiceProfilesModelFilePaths;

  voiceProfilesModelFilePaths2 = [v15 voiceProfilesModelFilePaths];
  voiceProfilesExpModelFilePaths = v9->_voiceProfilesExpModelFilePaths;
  v9->_voiceProfilesExpModelFilePaths = voiceProfilesModelFilePaths2;

  objc_storeStrong(&v9->_context, context);
  v24 = +[SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:](SSRSpeakerRecognitionScorer, "createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:", v9->_voiceProfilesModelFilePaths, v9->_configFilePath, v9->_resourceFilePath, [contextCopy recognitionStyle] != 0, 0);
  psrScorers = v9->_psrScorers;
  v9->_psrScorers = v24;

  v26 = v9->_psrScorers;
  if (!v26 || ![(NSArray *)v26 count])
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[SSRSpeakerAnalyzerPSR initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s ERR: Cannot create SAT analyzers", buf, 0xCu);
    }

    logAggregator = [contextCopy logAggregator];
    [logAggregator setSpeakerRecognitionPSRProcessingStatus:106];

LABEL_12:
    goto LABEL_13;
  }

  v41 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.psrq" fixedPriority:*MEMORY[0x277D019B0]];
  v27 = objc_alloc(MEMORY[0x277D071F0]);
  v28 = [(NSArray *)v9->_psrScorers objectAtIndexedSubscript:0];
  psrConfigFilePath = [v28 psrConfigFilePath];
  v30 = [(NSArray *)v9->_psrScorers objectAtIndexedSubscript:0];
  psrConfigRoot = [v30 psrConfigRoot];
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v33 = [v27 initWithConfigFile:psrConfigFilePath configRoot:psrConfigRoot sampleRate:v32 delegate:v9 queue:v41 outputLastRowOnly:1];
  psrAudioProcessor = v9->_psrAudioProcessor;
  v9->_psrAudioProcessor = v33;

  resetForNewRequest = [(SSRSpeakerAnalyzerPSR *)v9 resetForNewRequest];
  LOBYTE(psrConfigRoot) = resetForNewRequest == 0;

  if ((psrConfigRoot & 1) == 0)
  {
LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v36 = v9;
LABEL_14:

  return v36;
}

@end