@interface SSRVoiceProfileRetrainerPSR
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)files;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerPSR)initWithVoiceRetrainingContext:(id)context;
- (id)_composeSpeakerConfusionWithScores:(id)scores forProfiles:(id)profiles;
- (id)_logSpeakerConfusion:(id)confusion forProfileArray:(id)array withPrependString:(id)string;
- (id)_processAudioFile:(id)file withPSRProcessor:(id)processor;
- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size withScorers:(id)scorers processedAudioDurationMs:(unint64_t)ms;
- (id)_psrProcessorResetSync:(id)sync;
- (id)purgeConfusionInformationWithPolicy:(id)policy;
- (void)_emitVoiceProfileOnboardedSelfLogWithExplicitScores:(id)scores withProfilePitch:(float)pitch;
- (void)_logSpeakerConfusionWithExplicitScores:(id)scores withImplicitScores:(id)implicitScores withPurgeUtterances:(unint64_t)utterances forProfile:(id)profile forConfigVersion:(id)version;
- (void)addUtterances:(id)utterances withPolicy:(id)policy withCompletion:(id)completion;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerPSR

- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size withScorers:(id)scorers processedAudioDurationMs:(unint64_t)ms
{
  v32 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  scorersCopy = scorers;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(scorersCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = scorersCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
        [v14 scoreSpeakerVector:vectorCopy withDimensions:size withThresholdType:0];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        profileID = [v14 profileID];
        [v9 setObject:v15 forKeyedSubscript:profileID];
      }

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v11);
  }

  v30[0] = v9;
  v29[0] = @"spIdKnownUserPSRScores";
  v29[1] = @"spIdAudioProcessedDuration";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ms];
  v30[1] = v17;
  v29[2] = @"bestVoiceTriggerScore";
  *&v18 = self->_bestTriggerScore;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v30[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

  return v20;
}

- (id)_processAudioFile:(id)file withPSRProcessor:(id)processor
{
  v52 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  processorCopy = processor;
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
    *&buf[12] = 2114;
    *&buf[14] = fileCopy;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_psrScore = -1.0;
  v10 = [(SSRVoiceProfileRetrainerPSR *)self _psrProcessorResetSync:processorCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    self->_currUttLengthInMs = 0xFFFFFFFFLL;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = __Block_byref_object_copy__3115;
    v50 = __Block_byref_object_dispose__3116;
    v51 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __66__SSRVoiceProfileRetrainerPSR__processAudioFile_withPSRProcessor___block_invoke;
    v31[3] = &unk_2785783A0;
    v13 = fileCopy;
    v32 = v13;
    selfCopy = self;
    v35 = buf;
    v36 = v37;
    v14 = processorCopy;
    v34 = v14;
    [SSRUtils streamAudioFromFileUrl:v13 audioStreamBasicDescriptor:v42 samplesPerStreamChunk:640 audioDataAvailableHandler:v31];
    v15 = *(*&buf[8] + 40);
    if (v15)
    {
      v16 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v42 = 136315650;
        v43 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
        v44 = 2114;
        v45 = v13;
        v46 = 2114;
        v47 = v15;
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v42, 0x20u);
        v15 = *(*&buf[8] + 40);
      }

      v12 = v15;
    }

    else if (self->_currUttLengthInMs > 0xC7)
    {
      getLatestSuperVector = [v14 getLatestSuperVector];
      speakerVector = self->_speakerVector;
      self->_speakerVector = getLatestSuperVector;

      v23 = [(NSData *)self->_speakerVector length];
      currUttLengthInMs = self->_currUttLengthInMs;
      v25 = self->_speakerVector;
      self->_speakerVectorSize = v23 >> 2;
      self->_processedAudioDurationMs = currUttLengthInMs;
      if (v25)
      {
        v12 = 0;
      }

      else
      {
        currUttLengthInMs = [MEMORY[0x277CCACA8] stringWithFormat:@"speakerVector is nil! for processedAUdioDurationMs: %lu, _currUttLengthInMs: %lu", currUttLengthInMs, currUttLengthInMs];
        v27 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = currUttLengthInMs;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v29 = [v27 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v28];

        v12 = v29;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", self->_currUttLengthInMs, v13];
      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v42 = 136315394;
        v43 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]";
        v44 = 2114;
        v45 = v17;
        _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s %{public}@", v42, 0x16u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = v17;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v12 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v20];
    }

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(buf, 8);
  }

  return v12;
}

void __66__SSRVoiceProfileRetrainerPSR__processAudioFile_withPSRProcessor___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v19 = 136315394;
      v20 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]_block_invoke";
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", &v19, 0x16u);
    }

    v10 = *(*(a1 + 56) + 8);
    v11 = v7;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
    goto LABEL_10;
  }

  if (!a3)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v18 = [v12 length];
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    *(*(*(a1 + 64) + 8) + 24) += v18 / v24;
    [*(a1 + 48) addAudioSync:v12];
LABEL_10:

    goto LABEL_11;
  }

  v13 = *(*(*(a1 + 64) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(a1 + 40) + 96) = ((v13 / v14) * 1000.0);
  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(*(a1 + 40) + 96);
    v19 = 136315650;
    v20 = "[SSRVoiceProfileRetrainerPSR _processAudioFile:withPSRProcessor:]_block_invoke";
    v21 = 2050;
    v22 = v17;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", &v19, 0x20u);
  }

  [*(a1 + 48) endAudio];
LABEL_11:
}

- (id)_psrProcessorResetSync:(id)sync
{
  syncCopy = sync;
  [syncCopy resetForNewRequestSync];

  return 0;
}

- (id)_logSpeakerConfusion:(id)confusion forProfileArray:(id)array withPrependString:(id)string
{
  confusionCopy = confusion;
  arrayCopy = array;
  stringCopy = string;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3115;
  v23 = __Block_byref_object_dispose__3116;
  v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SSRVoiceProfileRetrainerPSR__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke;
  v15[3] = &unk_278578378;
  v18 = &v19;
  v11 = stringCopy;
  v16 = v11;
  v12 = arrayCopy;
  v17 = v12;
  [confusionCopy enumerateObjectsUsingBlock:v15];
  if ([v20[5] length])
  {
    [v20[5] appendFormat:@"----------------------------------------------------------------------------------------------\n\n"];
  }

  objc_autoreleasePoolPop(v10);
  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __86__SSRVoiceProfileRetrainerPSR__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  if (!a3)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n\n%@\n----------------------------------------------------------------------------------------------\n", *(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"              "];
    for (i = 0; ; ++i)
    {
      v6 = [*(a1 + 40) count];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      if (i >= v6)
      {
        break;
      }

      v9 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v8 appendFormat:@"%@  ", v9];
    }

    [*(v7 + 40) appendFormat:@"\n"];
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Utterance%02d   ", a3];
  for (j = 0; j < [v15 count]; ++j)
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (j)
    {
      v12 = [v15 objectAtIndexedSubscript:j];
      [v12 floatValue];
      [v11 appendFormat:@"%39.2f", v13];
    }

    else
    {
      v12 = [v15 objectAtIndexedSubscript:0];
      [v12 floatValue];
      [v11 appendFormat:@"%16.2f", v14];
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
}

- (id)_composeSpeakerConfusionWithScores:(id)scores forProfiles:(id)profiles
{
  v31 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  profilesCopy = profiles;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = scoresCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:{16, scoresCopy}];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = [v9 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = profilesCopy;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [v11 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * j)];
              [v10 addObject:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }

        [v19 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return v19;
}

- (void)_emitVoiceProfileOnboardedSelfLogWithExplicitScores:(id)scores withProfilePitch:(float)pitch
{
  v43 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  if (([MEMORY[0x277D018F8] isDarwinOS] & 1) == 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = scoresCopy;
    v29 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v29)
    {
      v30 = 0;
      v27 = *v38;
      do
      {
        v32 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v37 + 1) + 8 * v32);
          v31 = objc_alloc_init(MEMORY[0x277D589D8]);
          v6 = [v5 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
          array2 = [MEMORY[0x277CBEB18] array];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v9)
          {
            LODWORD(v10) = 0;
            v11 = *v34;
            do
            {
              v12 = 0;
              do
              {
                if (*v34 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v33 + 1) + 8 * v12);
                v14 = objc_alloc_init(MEMORY[0x277D589C8]);
                v10 = (v10 + 1);
                v15 = [@"HomeMember" stringByAppendingFormat:@"%d", v10];
                [v14 setHomeMemberUserId:v15];

                v16 = [v8 objectForKeyedSubscript:v13];
                [v16 floatValue];
                [v14 setSimilarityScore:(v17 * 100.0)];

                [array2 addObject:v14];
                ++v12;
              }

              while (v9 != v12);
              v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v9);
          }

          [v31 setVoiceProfileConfusionScores:array2];
          ++v30;
          [v31 setEnrollmentUtteranceNumber:?];
          [array addObject:v31];

          ++v32;
        }

        while (v32 != v29);
        v29 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v29);
    }

    v18 = objc_alloc_init(MEMORY[0x277D589F8]);
    [v18 setVoiceProfilePitchInHz:5 * (pitch / 5)];
    [v18 setConfusionScoresForEnrollmentUtterances:array];
    v19 = objc_alloc_init(MEMORY[0x277D587E8]);
    v20 = objc_alloc_init(MEMORY[0x277D58800]);
    v21 = objc_alloc(MEMORY[0x277D5AC70]);
    v22 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v23 = [v21 initWithNSUUID:v22];
    [v20 setMhId:v23];

    [v19 setEventMetadata:v20];
    [v19 setVoiceProfileOnboarded:v18];
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:v19];
  }
}

- (void)_logSpeakerConfusionWithExplicitScores:(id)scores withImplicitScores:(id)implicitScores withPurgeUtterances:(unint64_t)utterances forProfile:(id)profile forConfigVersion:(id)version
{
  v63 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  implicitScoresCopy = implicitScores;
  profileCopy = profile;
  versionCopy = version;
  if (scoresCopy && [scoresCopy count])
  {
    profileID = [profileCopy profileID];
    v17 = [scoresCopy objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];

    v51 = v18;
    allKeys = [v18 allKeys];
    v20 = [allKeys mutableCopy];

    if ([v20 containsObject:profileID])
    {
      [v20 removeObject:profileID];
      [v20 insertObject:profileID atIndex:0];
      v50 = [(SSRVoiceProfileRetrainerPSR *)self _composeSpeakerConfusionWithScores:scoresCopy forProfiles:v20];
      v49 = [(SSRVoiceProfileRetrainerPSR *)self _composeSpeakerConfusionWithScores:implicitScoresCopy forProfiles:v20];
      v55[0] = @"locale";
      locale = [profileCopy locale];
      v22 = locale;
      v23 = @"unknown";
      if (versionCopy)
      {
        v23 = versionCopy;
      }

      v56[0] = locale;
      v56[1] = v23;
      v55[1] = @"asset";
      v55[2] = @"explicitUtteranceConfusion";
      v56[2] = v50;
      v56[3] = v49;
      v55[3] = @"implicitUtteranceConfusion";
      v55[4] = @"purgedUtteranceCount";
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:utterances];
      v56[4] = v24;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];

      mEMORY[0x277CEF150] = [MEMORY[0x277CEF150] sharedAnalytics];
      [mEMORY[0x277CEF150] logEventWithType:6113 context:v48 contextNoCopy:0];

      v26 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v59 = 2112;
        v60 = v48;
        _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Log %@", buf, 0x16u);
      }

      mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
      fileLoggingIsEnabled = [mEMORY[0x277D01788] fileLoggingIsEnabled];

      if (fileLoggingIsEnabled)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Explicit Utterance Confusion Matrix for User - %@ is", profileID];
        v46 = [(SSRVoiceProfileRetrainerPSR *)self _logSpeakerConfusion:v50 forProfileArray:v20 withPrependString:v29];

        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Implicit Utterance Confusion Matrix for User - %@ is", profileID];
        v45 = [(SSRVoiceProfileRetrainerPSR *)self _logSpeakerConfusion:v49 forProfileArray:v20 withPrependString:v30];

        v53[0] = @"explicitUtteranceConfusion";
        v53[1] = @"implicitUtteranceConfusion";
        v54[0] = scoresCopy;
        v54[1] = implicitScoresCopy;
        v53[2] = @"purgedUtteranceCount";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:utterances];
        v54[2] = v31;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];

        v52 = 0;
        v43 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v47 options:3 error:&v52];
        v42 = v52;
        if (v42)
        {
          log = *MEMORY[0x277D01970];
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v42 localizedDescription];
            *buf = 136315394;
            v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
            v59 = 2114;
            v60 = localizedDescription;
            _os_log_error_impl(&dword_225E12000, log, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get json object with error %{public}@", buf, 0x16u);
          }
        }

        else
        {
          log = [MEMORY[0x277CCACA8] stringWithFormat:@"CS-VoiceId-UserConfusion-%@.json", profileID];
          mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
          voiceTriggerAudioLogDirectory = [mEMORY[0x277D01788]2 voiceTriggerAudioLogDirectory];
          v37 = [voiceTriggerAudioLogDirectory stringByAppendingPathComponent:log];

          v38 = [SSRUtils removeItemAtPath:v37];
          [v43 writeToFile:v37 atomically:0];
        }

        v39 = MEMORY[0x277D01970];
        v40 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v59 = 2114;
          v60 = v46;
          _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
          v40 = *v39;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v59 = 2114;
          v60 = v45;
          _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      profilePitch = [profileCopy profilePitch];
      [profilePitch floatValue];
      [(SSRVoiceProfileRetrainerPSR *)self _emitVoiceProfileOnboardedSelfLogWithExplicitScores:scoresCopy withProfilePitch:?];
    }

    else
    {
      v34 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v59 = 2114;
        v60 = profileID;
        v61 = 2114;
        v62 = v20;
        _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s profile %{public}@ is not present in %{public}@ - Bailing out", buf, 0x20u);
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v58 = "[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s explicit scores are nil - Bailing out", buf, 0xCu);
    }
  }
}

- (id)purgeConfusionInformationWithPolicy:(id)policy
{
  v73[1] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  comparativeModels = self->_comparativeModels;
  if (!comparativeModels)
  {
    v54 = 0;
    goto LABEL_8;
  }

  v54 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
  if (v54 && [v54 count])
  {
LABEL_8:
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v54)
    {
      [v55 addObjectsFromArray:?];
    }

    getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
    v13 = [(SSRVoiceProfile *)self->_voiceProfile getExplicitEnrollmentUtterancesForType:self->_spIdType];
    v14 = [v13 count];

    if (v14 > 2)
    {
      if (getSATVectorCount >= v14)
      {
        v26 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
          *buf = 136315906;
          v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
          v64 = 2114;
          *v65 = profileID;
          *&v65[8] = 2050;
          *&v65[10] = getSATVectorCount;
          v66 = 2050;
          v67 = v14;
          _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Processing Voice Profile %{public}@ with vectorCount %{public}lu and expVectorCount %{public}lu", buf, 0x2Au);
        }

        v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:getSATVectorCount - v14];
        v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
        do
        {
          v28 = getSATVectorCount - 1;
          v29 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSpeakerVectorAtIndex:getSATVectorCount - 1];
          v30 = *MEMORY[0x277D01970];
          v31 = v30;
          if (v29)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              profileID2 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
              v33 = [v29 length];
              *buf = 136315906;
              v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
              v64 = 2050;
              *v65 = getSATVectorCount - 1;
              *&v65[8] = 2114;
              *&v65[10] = profileID2;
              v66 = 2050;
              v67 = v33 >> 2;
              _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}lu vector from %{public}@ with size %{public}lu", buf, 0x2Au);
            }

            v34 = -[SSRVoiceProfileRetrainerPSR _processSpeakerVector:withSize:withScorers:processedAudioDurationMs:](self, "_processSpeakerVector:withSize:withScorers:processedAudioDurationMs:", v29, [v29 length] >> 2, v55, 0);
            v31 = v34;
            if (v34)
            {
              v35 = [v34 mutableCopy];
              if (v35)
              {
                if (getSATVectorCount <= v14)
                {
                  [v51 addObject:v35];
                }

                else
                {
                  if (policyCopy)
                  {
                    v36 = policyCopy[2]();
                  }

                  else
                  {
                    v36 = 1;
                  }

                  [v52 addObject:v35];
                  if ((v36 & 1) == 0)
                  {
                    v40 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      profileID3 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                      *buf = 136315650;
                      v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                      v64 = 1026;
                      *v65 = getSATVectorCount - 1;
                      *&v65[4] = 2114;
                      *&v65[6] = profileID3;
                      _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Adding vector %{public}u for deletion from profile %{public}@", buf, 0x1Cu);
                    }

                    v42 = [MEMORY[0x277CCABB0] numberWithInteger:getSATVectorCount - 1];
                    [v50 addObject:v42];
                  }
                }
              }

              else
              {
                v39 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                  v64 = 2114;
                  *v65 = v31;
                  _os_log_error_impl(&dword_225E12000, v39, OS_LOG_TYPE_ERROR, "%s Failed to allocate mapped scores for %{public}@", buf, 0x16u);
                }

                v35 = 0;
              }
            }

            else
            {
              v35 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                profileID4 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                *buf = 136315650;
                v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                v64 = 1026;
                *v65 = getSATVectorCount - 1;
                *&v65[4] = 2114;
                *&v65[6] = profileID4;
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s Failed to get scores for vectorIdx %{public}u of profile %{public}@", buf, 0x1Cu);
              }
            }
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            profileID5 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
            *buf = 136315650;
            v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
            v64 = 1024;
            *v65 = getSATVectorCount - 1;
            *&v65[4] = 2114;
            *&v65[6] = profileID5;
            _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Failed to %u vector from profile %{public}@", buf, 0x1Cu);
          }

          getSATVectorCount = v28;
        }

        while ((v28 + 1) > 1);
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v50;
        v43 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v43)
        {
          v44 = *v58;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v58 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v46 = *(*(&v57 + 1) + 8 * i);
              v47 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                profileID6 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
                *buf = 136315650;
                v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
                v64 = 2114;
                *v65 = v46;
                *&v65[8] = 2114;
                *&v65[10] = profileID6;
                _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}@ from profile %{public}@", buf, 0x20u);
              }

              -[SSRSpeakerRecognitionScorer deleteVectorAtIndex:](self->_psrScorer, "deleteVectorAtIndex:", [v46 intValue]);
            }

            v43 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
          }

          while (v43);
        }

        -[SSRVoiceProfileRetrainerPSR _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:](self, "_logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:", v51, v52, [obj count], self->_voiceProfile, self->_configVersion);
        v11 = 0;
        goto LABEL_55;
      }

      v21 = MEMORY[0x277CCACA8];
      profileID7 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v23 = [v21 stringWithFormat:@"satVectorCount %lu is < %luE for profile %@ - Bailingout", getSATVectorCount, v14, profileID7];

      v24 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
        v64 = 2114;
        *v65 = v23;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v68 = @"reason";
      v69 = v23;
      obj = v23;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v20 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:?];
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      profileID8 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v17 = [v15 stringWithFormat:@"ExpSatVectorCount is invalid (%lu) for profile %@ - Bailingout", v14, profileID8];

      v18 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
        v64 = 2114;
        *v65 = v17;
        _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v70 = @"reason";
      v71 = v17;
      obj = v17;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v20 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:?];
    }

    v11 = v20;
LABEL_55:

    v10 = obj;
    goto LABEL_56;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = self->_comparativeModels;
  profileID9 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v55 = [v5 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v6, profileID9];

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "[SSRVoiceProfileRetrainerPSR purgeConfusionInformationWithPolicy:]";
    v64 = 2114;
    *v65 = v55;
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCA9B8];
  v72 = @"reason";
  v73[0] = v55;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
  v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v10];
LABEL_56:

  return v11;
}

- (void)purgeLastSpeakerEmbedding
{
  *&v12[13] = *MEMORY[0x277D85DE8];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  v5 = v4;
  if (getSATVectorCount)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v7 = (getSATVectorCount - 1);
      v9 = 136315650;
      v10 = "[SSRVoiceProfileRetrainerPSR purgeLastSpeakerEmbedding]";
      v11 = 1026;
      *v12 = v7;
      v12[2] = 2114;
      *&v12[3] = profileID;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v9, 0x1Cu);
    }

    else
    {
      v7 = (getSATVectorCount - 1);
    }

    [(SSRSpeakerRecognitionScorer *)self->_psrScorer deleteVectorAtIndex:v7];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      profileID2 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v9 = 136315394;
      v10 = "[SSRVoiceProfileRetrainerPSR purgeLastSpeakerEmbedding]";
      v11 = 2114;
      *v12 = profileID2;
      _os_log_error_impl(&dword_225E12000, v5, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v9, 0x16u);
    }
  }
}

- (void)addUtterances:(id)utterances withPolicy:(id)policy withCompletion:(id)completion
{
  v94[1] = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  policyCopy = policy;
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (utterancesCopy && [utterancesCopy count])
  {
    v8 = objc_alloc(MEMORY[0x277D071F0]);
    psrConfigFilePath = [(SSRSpeakerRecognitionScorer *)self->_psrScorer psrConfigFilePath];
    psrConfigRoot = [(SSRSpeakerRecognitionScorer *)self->_psrScorer psrConfigRoot];
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v61 = [v8 initWithConfigFile:psrConfigFilePath configRoot:psrConfigRoot sampleRate:v11 delegate:self queue:self->_queue];

    comparativeModels = self->_comparativeModels;
    if (comparativeModels)
    {
      v53 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
      if (!v53 || ![v53 count])
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = self->_comparativeModels;
        profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
        context = [v13 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v14, profileID, context];

        v16 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v74 = 2114;
          v75 = context;
          _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        }

        if (completionCopy)
        {
          v17 = MEMORY[0x277CCA9B8];
          v91 = @"reason";
          v92[0] = context;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
          v19 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v18];
          (*(completionCopy + 2))(completionCopy, v19, 0, 0);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v53 = 0;
    }

    context = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v53)
    {
      [context addObjectsFromArray:v53];
    }

    [context addObject:self->_psrScorer];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = utterancesCopy;
    v21 = [obj countByEnumeratingWithState:&v66 objects:v90 count:16];
    if (!v21)
    {
LABEL_44:

      if (completionCopy)
      {
        (*(completionCopy + 2))();
      }

      goto LABEL_46;
    }

    v65 = *v67;
    v63 = *MEMORY[0x277CCA450];
LABEL_17:
    v22 = 0;
    while (1)
    {
      if (*v67 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v66 + 1) + 8 * v22);
      pathExtension = [v23 pathExtension];
      v25 = [pathExtension isEqualToString:@"wav"];

      if ((v25 & 1) == 0)
      {
        v28 = MEMORY[0x277CCACA8];
        path = [v23 path];
        path3 = [v28 stringWithFormat:@"Invalid file format %@ ", path];

        v30 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v74 = 2114;
          v75 = path3;
          _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
        }

        v31 = MEMORY[0x277CCA9B8];
        v88 = v63;
        v89 = path3;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v26 = [v31 errorWithDomain:@"com.apple.speakerrecognition" code:729 userInfo:v32];

        path2 = [v23 path];
        [v64 setObject:v26 forKey:path2];
        goto LABEL_41;
      }

      v26 = [(SSRVoiceProfileRetrainerPSR *)self _processAudioFile:v23 withPSRProcessor:v61];
      if (!v26)
      {
        break;
      }

      path3 = [v23 path];
      [v64 setObject:v26 forKey:path3];
LABEL_42:

      if (v21 == ++v22)
      {
        v21 = [obj countByEnumeratingWithState:&v66 objects:v90 count:16];
        if (!v21)
        {
          goto LABEL_44;
        }

        goto LABEL_17;
      }
    }

    path3 = [(SSRVoiceProfileRetrainerPSR *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:context processedAudioDurationMs:self->_processedAudioDurationMs];
    if (path3)
    {
      if (policyCopy)
      {
        v26 = policyCopy[2](policyCopy, v23, path3);
        if (v26)
        {
          path2 = [v23 path];
          [v64 setObject:v26 forKey:path2];
LABEL_41:

          goto LABEL_42;
        }
      }

      path2 = [(NSURL *)self->_psrModelFilePath URLByDeletingLastPathComponent];
      v34 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v34;
        lastPathComponent = [v23 lastPathComponent];
        lastPathComponent2 = [(NSURL *)self->_psrModelFilePath lastPathComponent];
        lastPathComponent3 = [path2 lastPathComponent];
        uRLByDeletingLastPathComponent = [path2 URLByDeletingLastPathComponent];
        lastPathComponent4 = [uRLByDeletingLastPathComponent lastPathComponent];
        getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
        *buf = 136316674;
        v73 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
        v74 = 2114;
        v75 = lastPathComponent;
        v76 = 2114;
        v77 = lastPathComponent2;
        v78 = 2114;
        v79 = lastPathComponent3;
        v80 = 2114;
        v81 = lastPathComponent4;
        v82 = 2050;
        v83 = getSATVectorCount;
        v84 = 2114;
        v85 = path3;
        _os_log_impl(&dword_225E12000, v57, OS_LOG_TYPE_DEFAULT, "%s Adding %{public}@ to {%{public}@, %{public}@, %{public}@} as %{public}lu vector with scoreCard %{public}@", buf, 0x48u);

        v34 = v57;
      }

      getSATVectorCount2 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
      [(SSRSpeakerRecognitionScorer *)self->_psrScorer updateSAT];
      if ([(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount]- getSATVectorCount2 == 1)
      {
        path4 = [v23 path];
        [v56 setObject:path3 forKey:path4];
        v26 = 0;
      }

      else
      {
        path4 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_psrScorer, "getSATVectorCount")];
        v48 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
          v74 = 2114;
          v75 = path4;
          _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

        v49 = MEMORY[0x277CCA9B8];
        v70 = v63;
        v71 = path4;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v26 = [v49 errorWithDomain:@"com.apple.speakerrecognition" code:739 userInfo:v50];

        path5 = [v23 path];
        [v64 setObject:v26 forKey:path5];
      }
    }

    else
    {
      v42 = MEMORY[0x277CCACA8];
      lastPathComponent5 = [v23 lastPathComponent];
      profileID2 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      path2 = [v42 stringWithFormat:@"Failed to get scorecard for utterance %@ on profile %@", lastPathComponent5, profileID2, context];

      v45 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "[SSRVoiceProfileRetrainerPSR addUtterances:withPolicy:withCompletion:]";
        v74 = 2114;
        v75 = path2;
        _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v46 = MEMORY[0x277CCA9B8];
      v86 = @"reason";
      v87 = path2;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v26 = [v46 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v47];

      path4 = [v23 path];
      [v64 setObject:v26 forKey:path4];
    }

    goto LABEL_41;
  }

  v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"File Array is nil"];
  if (completionCopy)
  {
    v20 = MEMORY[0x277CCA9B8];
    v93 = *MEMORY[0x277CCA450];
    v94[0] = v61;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    context = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:701 userInfo:?];
    (*(completionCopy + 2))();
LABEL_46:
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)implicitTrainingRequired
{
  v13 = *MEMORY[0x277D85DE8];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    maximumSpeakerVectors = self->_maximumSpeakerVectors;
    v7 = 136315650;
    v8 = "[SSRVoiceProfileRetrainerPSR implicitTrainingRequired]";
    v9 = 2050;
    v10 = getSATVectorCount;
    v11 = 2050;
    v12 = maximumSpeakerVectors;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s satVectorCount %{public}ld maxCount %{public}ld", &v7, 0x20u);
  }

  return getSATVectorCount < self->_maximumSpeakerVectors;
}

- (BOOL)needsRetrainingWithAudioFiles:(id)files
{
  v42 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  voiceProfileBasePath = [(SSRVoiceProfile *)self->_voiceProfile voiceProfileBasePath];
  v31 = 0;
  if (([defaultManager fileExistsAtPath:voiceProfileBasePath isDirectory:&v31] & 1) == 0)
  {
    v7 = v31;
    if ((v31 & 1) == 0)
    {
      v21 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
        v34 = 2114;
        v35 = voiceProfileBasePath;
        v36 = 1026;
        LODWORD(v37) = v7;
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: Cannot find SAT Audio dir at %{public}@: isDir: %{public}d - Bailing out", buf, 0x1Cu);
      }

      goto LABEL_14;
    }
  }

  if (![(SSRSpeakerRecognitionScorer *)self->_psrScorer satModelAvailable])
  {
    v17 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v18 = "%s PSRNeedsRetraining(YES): satModelAvailable is not available!";
    v19 = v17;
    v20 = 12;
LABEL_17:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_18;
  }

  path = [(NSURL *)self->_psrModelFilePath path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v23 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    psrModelFilePath = self->_psrModelFilePath;
    *buf = 136315394;
    v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v34 = 2114;
    v35 = psrModelFilePath;
    v18 = "%s PSRNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v19 = v23;
    v20 = 22;
    goto LABEL_17;
  }

  v10 = [filesCopy count];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v12 = getSATVectorCount;
  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v10 <= maximumSpeakerVectors && getSATVectorCount != v10)
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_maximumSpeakerVectors;
      v16 = [SSRUtils stringForCSSpIdType:self->_spIdType];
      *buf = 136316162;
      v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v10;
      v36 = 2050;
      v37 = v12;
      v38 = 2050;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)", buf, 0x34u);
    }

LABEL_9:

LABEL_18:
    v22 = 1;
    goto LABEL_19;
  }

  v14 = *MEMORY[0x277D01970];
  v26 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v10 > maximumSpeakerVectors && v12 != maximumSpeakerVectors)
  {
    if (v26)
    {
      v27 = self->_maximumSpeakerVectors;
      v28 = [SSRUtils stringForCSSpIdType:self->_spIdType];
      *buf = 136316162;
      v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
      v34 = 2050;
      v35 = v10;
      v36 = 2050;
      v37 = v12;
      v38 = 2050;
      v39 = v27;
      v40 = 2114;
      v41 = v28;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)", buf, 0x34u);
    }

    goto LABEL_9;
  }

  if (v26)
  {
    v29 = self->_maximumSpeakerVectors;
    v30 = [SSRUtils stringForCSSpIdType:self->_spIdType];
    *buf = 136316162;
    v33 = "[SSRVoiceProfileRetrainerPSR needsRetrainingWithAudioFiles:]";
    v34 = 2050;
    v35 = v10;
    v36 = 2050;
    v37 = v12;
    v38 = 2050;
    v39 = v29;
    v40 = 2114;
    v41 = v30;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", buf, 0x34u);
  }

LABEL_14:
  v22 = 0;
LABEL_19:

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:1];
  profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v3 stringWithFormat:@"{%@:%@}", v4, profileID];

  return v6;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SSRVoiceProfileRetrainerPSR dealloc]";
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = SSRVoiceProfileRetrainerPSR;
  [(SSRVoiceProfileRetrainerPSR *)&v4 dealloc];
}

- (BOOL)resetModelForRetraining
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    psrModelFilePath = self->_psrModelFilePath;
    v8 = 136315394;
    v9 = "[SSRVoiceProfileRetrainerPSR resetModelForRetraining]";
    v10 = 2114;
    v11 = psrModelFilePath;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", &v8, 0x16u);
  }

  path = [(NSURL *)self->_psrModelFilePath path];
  v5 = [SSRUtils removeItemAtPath:path];

  return [(SSRSpeakerRecognitionScorer *)self->_psrScorer resetScorerWithModelFilePath:self->_psrModelFilePath];
}

- (SSRVoiceProfileRetrainerPSR)initWithVoiceRetrainingContext:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v40.receiver = self;
  v40.super_class = SSRVoiceProfileRetrainerPSR;
  v5 = [(SSRVoiceProfileRetrainerPSR *)&v40 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  modelsContext = [contextCopy modelsContext];
  v7 = [SSRUtils stringForSpeakerRecognizerType:1];
  v8 = [modelsContext objectForKeyedSubscript:v7];

  if (!v8)
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v38 = "%s PSRModel Retraining context is nil! - Skipping";
LABEL_14:
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
    }

LABEL_15:

    v36 = 0;
    goto LABEL_16;
  }

  if ([contextCopy forceRetrain])
  {
    v9 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      voiceProfileModelFilePath = [v8 voiceProfileModelFilePath];
      *buf = 136315394;
      v42 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v43 = 2114;
      v44 = voiceProfileModelFilePath;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
    }

    voiceProfileModelFilePath2 = [v8 voiceProfileModelFilePath];
    path = [voiceProfileModelFilePath2 path];
    v13 = [SSRUtils removeItemAtPath:path];
  }

  v14 = [SSRSpeakerRecognitionScorer alloc];
  voiceProfile = [contextCopy voiceProfile];
  profileID = [voiceProfile profileID];
  voiceProfileModelFilePath3 = [v8 voiceProfileModelFilePath];
  configFilePath = [v8 configFilePath];
  resourceFilePath = [contextCopy resourceFilePath];
  v20 = [(SSRSpeakerRecognitionScorer *)v14 initWithProfileID:profileID withModelFile:voiceProfileModelFilePath3 withConfigFile:configFilePath withResourceFile:resourceFilePath withOffsetsType:0 forRetraining:1];
  psrScorer = v5->_psrScorer;
  v5->_psrScorer = v20;

  if (!v5->_psrScorer)
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[SSRVoiceProfileRetrainerPSR initWithVoiceRetrainingContext:]";
      v38 = "%s ERR: Cannot create PSR Scorer";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v22 = dispatch_queue_create("com.apple.corespeech.speakerretrain.psrq", 0);
  queue = v5->_queue;
  v5->_queue = v22;

  configFilePath2 = [v8 configFilePath];
  configFilePath = v5->_configFilePath;
  v5->_configFilePath = configFilePath2;

  resourceFilePath2 = [contextCopy resourceFilePath];
  resourceFilePath = v5->_resourceFilePath;
  v5->_resourceFilePath = resourceFilePath2;

  voiceProfileModelFilePath4 = [v8 voiceProfileModelFilePath];
  psrModelFilePath = v5->_psrModelFilePath;
  v5->_psrModelFilePath = voiceProfileModelFilePath4;

  voiceProfile2 = [contextCopy voiceProfile];
  voiceProfile = v5->_voiceProfile;
  v5->_voiceProfile = voiceProfile2;

  compareModelFilePaths = [v8 compareModelFilePaths];
  comparativeModels = v5->_comparativeModels;
  v5->_comparativeModels = compareModelFilePaths;

  v5->_maximumSpeakerVectors = [contextCopy maxAllowedSpeakerVectors];
  configVersion = [contextCopy configVersion];
  configVersion = v5->_configVersion;
  v5->_configVersion = configVersion;

  v5->_spIdType = [contextCopy spIdType];
LABEL_9:
  v36 = v5;
LABEL_16:

  return v36;
}

@end