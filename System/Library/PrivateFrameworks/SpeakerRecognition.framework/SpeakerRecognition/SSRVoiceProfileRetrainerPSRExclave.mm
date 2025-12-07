@interface SSRVoiceProfileRetrainerPSRExclave
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)files;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerPSRExclave)initWithVoiceRetrainingContext:(id)context secureAsset:(id)asset secureSpeakerRecognitionConfig:(id)config;
- (id)_composeSpeakerConfusionWithScores:(id)scores forProfiles:(id)profiles;
- (id)_logSpeakerConfusion:(id)confusion forProfileArray:(id)array withPrependString:(id)string;
- (id)_processAudioFile:(id)file;
- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size withScorers:(id)scorers processedAudioDurationMs:(unint64_t)ms;
- (id)purgeConfusionInformationWithPolicy:(id)policy;
- (void)_logSpeakerConfusionWithExplicitScores:(id)scores withImplicitScores:(id)implicitScores withPurgeUtterances:(unint64_t)utterances forProfile:(id)profile forConfigVersion:(id)version;
- (void)addUtterances:(id)utterances withPolicy:(id)policy withCompletion:(id)completion;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerPSRExclave

- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size withScorers:(id)scorers processedAudioDurationMs:(unint64_t)ms
{
  msCopy = ms;
  v33 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  scorersCopy = scorers;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(scorersCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = scorersCopy;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        [v16 scoreSpeakerVector:vectorCopy withDimensions:size withThresholdType:{0, msCopy}];
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        profileID = [v16 profileID];
        [v10 setObject:v17 forKeyedSubscript:profileID];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);
  }

  v31[0] = v10;
  v30[0] = @"spIdKnownUserPSRScores";
  v30[1] = @"spIdAudioProcessedDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:msCopy];
  v31[1] = v19;
  v30[2] = @"bestVoiceTriggerScore";
  *&v20 = self->_bestTriggerScore;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v31[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  return v22;
}

- (id)_processAudioFile:(id)file
{
  v55 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
    *&buf[12] = 2114;
    *&buf[14] = fileCopy;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_bestTriggerScore = -1.0;
  nd_reset();
  self->_currUttLengthInMs = 0xFFFFFFFFLL;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1345;
  v38 = __Block_byref_object_dispose__1346;
  v39 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v51 = &unk_225ECB98D;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__SSRVoiceProfileRetrainerPSRExclave__processAudioFile___block_invoke;
  v27[3] = &unk_278578A70;
  v7 = COERCE_DOUBLE(fileCopy);
  v28 = v7;
  selfCopy = self;
  v30 = &v34;
  v31 = v33;
  v32 = buf;
  [SSRUtils streamAudioFromFileUrl:*&v7 audioStreamBasicDescriptor:v44 samplesPerStreamChunk:640 audioDataAvailableHandler:v27];
  v8 = v35[5];
  if (v8)
  {
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315650;
      v45 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v46 = 2114;
      v47 = v7;
      v48 = 2114;
      v49 = v8;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v44, 0x20u);
      v8 = v35[5];
    }

    v10 = v8;
  }

  else if (self->_currUttLengthInMs > 0xC7)
  {
    v15 = *(*&buf[8] + 48);
    self->_bestTriggerScore = v15;
    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 136315394;
      v45 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v46 = 2050;
      v47 = v15;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Found last detection results, trigger score = %{public}f", v44, 0x16u);
    }

    v17 = nd_getsupervector();
    if (v17)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:4 * *(v17 + 8)];
      speakerVector = self->_speakerVector;
      self->_speakerVector = v18;

      v20 = [(NSData *)self->_speakerVector length];
      v10 = 0;
      currUttLengthInMs = self->_currUttLengthInMs;
      self->_speakerVectorSize = v20 >> 2;
      self->_processedAudioDurationMs = currUttLengthInMs;
    }

    else
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"speakerVector is nil! for processedAUdioDurationMs: %lu, _currUttLengthInMs: %lu", self->_processedAudioDurationMs, self->_currUttLengthInMs];
      v23 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = v22;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v25 = [v23 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v24];

      v10 = v25;
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Too little audio %dms in %@ - Bailing out", self->_currUttLengthInMs, *&v7];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315394;
      v45 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]";
      v46 = 2114;
      v47 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@", v44, 0x16u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v10 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v14];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v34, 8);

  return v10;
}

void __56__SSRVoiceProfileRetrainerPSRExclave__processAudioFile___block_invoke(void *a1, uint64_t a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 136315394;
      v23 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]_block_invoke";
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  else if (a3)
  {
    v11 = *(*(a1[7] + 8) + 24);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    *(a1[5] + 104) = ((v11 / v12) * 1000.0);
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v15 = *(a1[5] + 104);
      *buf = 136315650;
      v23 = "[SSRVoiceProfileRetrainerPSRExclave _processAudioFile:]_block_invoke";
      v24 = 2050;
      v25 = v15;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", buf, 0x20u);
    }

    nd_endwavedata();
    v16 = nd_getresults();
    if (v16)
    {
      v17 = *(a1[8] + 8);
      v18 = *v16;
      *(v17 + 48) = *(v16 + 16);
      *(v17 + 32) = v18;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v20 = [v19 length];
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    *(*(a1[7] + 8) + 24) += v20 / v21;
    [v19 bytes];
    nd_wavedata();
  }
}

- (id)_logSpeakerConfusion:(id)confusion forProfileArray:(id)array withPrependString:(id)string
{
  confusionCopy = confusion;
  arrayCopy = array;
  stringCopy = string;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1345;
  v23 = __Block_byref_object_dispose__1346;
  v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__SSRVoiceProfileRetrainerPSRExclave__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke;
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

void __93__SSRVoiceProfileRetrainerPSRExclave__logSpeakerConfusion_forProfileArray_withPrependString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (!a3)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n\n%@\n----------------------------------------------------------------------------------------------\n", *(a1 + 32)];
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"              "];
    if ([*(a1 + 40) count])
    {
      v5 = 0;
      do
      {
        v6 = *(*(*(a1 + 48) + 8) + 40);
        v7 = [*(a1 + 40) objectAtIndexedSubscript:v5];
        [v6 appendFormat:@"%@  ", v7];

        ++v5;
      }

      while (v5 < [*(a1 + 40) count]);
    }

    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Utterance%02d   ", a3];
  if ([v13 count])
  {
    v8 = 0;
    do
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);
      if (v8)
      {
        v10 = @"%39.2f";
      }

      else
      {
        v10 = @"%16.2f";
      }

      v11 = [v13 objectAtIndexedSubscript:v8];
      [v11 floatValue];
      [v9 appendFormat:v10, v12];

      ++v8;
    }

    while (v8 < [v13 count]);
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"\n"];
}

- (id)_composeSpeakerConfusionWithScores:(id)scores forProfiles:(id)profiles
{
  v33 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  profilesCopy = profiles;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = scoresCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v12 = [v10 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = profilesCopy;
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [v12 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * j)];
              [v11 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v15);
        }

        [v22 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  return v22;
}

- (void)_logSpeakerConfusionWithExplicitScores:(id)scores withImplicitScores:(id)implicitScores withPurgeUtterances:(unint64_t)utterances forProfile:(id)profile forConfigVersion:(id)version
{
  v68 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  implicitScoresCopy = implicitScores;
  profileCopy = profile;
  versionCopy = version;
  if (scoresCopy && [scoresCopy count])
  {
    profileID = [profileCopy profileID];
    v17 = [scoresCopy objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"spIdKnownUserPSRScores"];

    v56 = v18;
    allKeys = [v18 allKeys];
    v20 = [allKeys mutableCopy];

    if ([v20 containsObject:profileID])
    {
      [v20 removeObject:profileID];
      v53 = profileID;
      [v20 insertObject:profileID atIndex:0];
      v21 = [(SSRVoiceProfileRetrainerPSRExclave *)self _composeSpeakerConfusionWithScores:scoresCopy forProfiles:v20];
      v22 = [(SSRVoiceProfileRetrainerPSRExclave *)self _composeSpeakerConfusionWithScores:implicitScoresCopy forProfiles:v20];
      v60[0] = @"locale";
      locale = [profileCopy locale];
      v24 = locale;
      v25 = @"unknown";
      if (versionCopy)
      {
        v25 = versionCopy;
      }

      v61[0] = locale;
      v61[1] = v25;
      v60[1] = @"asset";
      v60[2] = @"explicitUtteranceConfusion";
      v54 = v22;
      v55 = v21;
      v61[2] = v21;
      v61[3] = v22;
      v60[3] = @"implicitUtteranceConfusion";
      v60[4] = @"purgedUtteranceCount";
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:utterances];
      v61[4] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:5];

      v28 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v64 = 2112;
        v65 = v27;
        _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Log %@", buf, 0x16u);
      }

      v52 = v27;
      mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
      fileLoggingIsEnabled = [mEMORY[0x277D01788] fileLoggingIsEnabled];

      profileID = v53;
      if (fileLoggingIsEnabled)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Explicit Utterance Confusion Matrix for User - %@ is", v53];
        v49 = [(SSRVoiceProfileRetrainerPSRExclave *)self _logSpeakerConfusion:v55 forProfileArray:v20 withPrependString:v31];

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Implicit Utterance Confusion Matrix for User - %@ is", v53];
        v48 = [(SSRVoiceProfileRetrainerPSRExclave *)self _logSpeakerConfusion:v54 forProfileArray:v20 withPrependString:v32];

        v58[0] = @"explicitUtteranceConfusion";
        v58[1] = @"implicitUtteranceConfusion";
        v59[0] = scoresCopy;
        v59[1] = implicitScoresCopy;
        v58[2] = @"purgedUtteranceCount";
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:utterances];
        v59[2] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];

        v57 = 0;
        v47 = v34;
        v51 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v34 options:3 error:&v57];
        v50 = v57;
        if (v50)
        {
          v35 = MEMORY[0x277D01970];
          v36 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            localizedDescription = [v50 localizedDescription];
            *buf = 136315394;
            v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
            v64 = 2114;
            v65 = localizedDescription;
            _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get json object with error %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"CS-VoiceId-UserConfusion-%@.json", v53];
          mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
          voiceTriggerAudioLogDirectory = [mEMORY[0x277D01788]2 voiceTriggerAudioLogDirectory];
          v44 = [voiceTriggerAudioLogDirectory stringByAppendingPathComponent:v41];

          v45 = [SSRUtils removeItemAtPath:v44];
          [v51 writeToFile:v44 atomically:0];

          v35 = MEMORY[0x277D01970];
        }

        v46 = *v35;
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v64 = 2114;
          v65 = v49;
          _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
          v46 = *v35;
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
          v64 = 2114;
          v65 = v48;
          _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
        v64 = 2114;
        v65 = profileID;
        v66 = 2114;
        v67 = v20;
        _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s profile %{public}@ is not present in %{public}@ - Bailing out", buf, 0x20u);
      }
    }
  }

  else
  {
    v39 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v63 = "[SSRVoiceProfileRetrainerPSRExclave _logSpeakerConfusionWithExplicitScores:withImplicitScores:withPurgeUtterances:forProfile:forConfigVersion:]";
      _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s explicit scores are nil - Bailing out", buf, 0xCu);
    }
  }
}

- (id)purgeConfusionInformationWithPolicy:(id)policy
{
  v97[1] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  comparativeModels = self->_comparativeModels;
  if (comparativeModels)
  {
    v6 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:comparativeModels withConfigFile:self->_configFilePath withResourceFile:self->_resourceFilePath withOffsetsType:0 forRetraining:1];
    v7 = v6;
    if (!v6 || ![v6 count])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = self->_comparativeModels;
      profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
      v8 = [v9 stringWithFormat:@"Cannot create comparative scorers from %@ on profile %@", v10, profileID];

      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
        v88 = 2114;
        *v89 = v8;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v13 = MEMORY[0x277CCA9B8];
      v96 = @"reason";
      v97[0] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v14];
      goto LABEL_55;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 addObjectsFromArray:v7];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = 0;
  }

  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v17 = [(SSRVoiceProfile *)self->_voiceProfile getExplicitEnrollmentUtterancesForType:self->_spIdType];
  v18 = [v17 count];

  if (v18 <= 2)
  {
    v19 = MEMORY[0x277CCACA8];
    profileID2 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
    v14 = [v19 stringWithFormat:@"ExpSatVectorCount is invalid (%lu) for profile %@ - Bailingout", v18, profileID2];

    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v88 = 2114;
      *v89 = v14;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v94 = @"reason";
    v95 = v14;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v95;
    v25 = &v94;
LABEL_17:
    v29 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    v15 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v29];
    goto LABEL_54;
  }

  if (getSATVectorCount < v18)
  {
    v26 = MEMORY[0x277CCACA8];
    profileID3 = [(SSRVoiceProfile *)self->_voiceProfile profileID];
    v14 = [v26 stringWithFormat:@"satVectorCount %lu is < %luE for profile %@ - Bailingout", getSATVectorCount, v18, profileID3];

    v28 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v88 = 2114;
      *v89 = v14;
      _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v92 = @"reason";
    v93 = v14;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v93;
    v25 = &v92;
    goto LABEL_17;
  }

  v77 = v8;
  v75 = v7;
  v30 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    voiceProfile = self->_voiceProfile;
    v32 = v30;
    profileID4 = [(SSRVoiceProfile *)voiceProfile profileID];
    *buf = 136315906;
    v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
    v88 = 2114;
    *v89 = profileID4;
    *&v89[8] = 2050;
    *&v89[10] = getSATVectorCount;
    v90 = 2050;
    v91 = v18;
    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Processing Voice Profile %{public}@ with vectorCount %{public}lu and expVectorCount %{public}lu", buf, 0x2Au);
  }

  v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v79 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:getSATVectorCount - v18];
  v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
  do
  {
    v34 = getSATVectorCount - 1;
    v35 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSpeakerVectorAtIndex:getSATVectorCount - 1];
    v36 = *MEMORY[0x277D01970];
    if (v35)
    {
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v37 = self->_voiceProfile;
        v38 = v36;
        profileID5 = [(SSRVoiceProfile *)v37 profileID];
        v40 = [v35 length];
        *buf = 136315906;
        v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
        v88 = 2050;
        *v89 = getSATVectorCount - 1;
        *&v89[8] = 2114;
        *&v89[10] = profileID5;
        v90 = 2050;
        v91 = v40 >> 2;
        _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}lu vector from %{public}@ with size %{public}lu", buf, 0x2Au);
      }

      v41 = -[SSRVoiceProfileRetrainerPSRExclave _processSpeakerVector:withSize:withScorers:processedAudioDurationMs:](self, "_processSpeakerVector:withSize:withScorers:processedAudioDurationMs:", v35, [v35 length] >> 2, v8, 0);
      v42 = v41;
      if (!v41)
      {
        v54 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v55 = self->_voiceProfile;
          v56 = v54;
          profileID6 = [(SSRVoiceProfile *)v55 profileID];
          *buf = 136315650;
          v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v88 = 1026;
          *v89 = getSATVectorCount - 1;
          v8 = v77;
          *&v89[4] = 2114;
          *&v89[6] = profileID6;
          _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s Failed to get scores for vectorIdx %{public}u of profile %{public}@", buf, 0x1Cu);
        }

        goto LABEL_42;
      }

      v43 = [v41 mutableCopy];
      if (!v43)
      {
        v58 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v88 = 2114;
          *v89 = v42;
          _os_log_error_impl(&dword_225E12000, v58, OS_LOG_TYPE_ERROR, "%s Failed to allocate mapped scores for %{public}@", buf, 0x16u);
        }

        goto LABEL_41;
      }

      if (getSATVectorCount <= v18)
      {
        v59 = v78;
      }

      else
      {
        if (policyCopy)
        {
          v44 = policyCopy[2](policyCopy, v42);
          [v79 addObject:v43];
          if ((v44 & 1) == 0)
          {
            v45 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              v46 = getSATVectorCount - 1;
              v47 = self->_voiceProfile;
              v48 = v45;
              profileID7 = [(SSRVoiceProfile *)v47 profileID];
              *buf = 136315650;
              v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
              v88 = 1026;
              *v89 = v46;
              v8 = v77;
              *&v89[4] = 2114;
              *&v89[6] = profileID7;
              _os_log_impl(&dword_225E12000, v48, OS_LOG_TYPE_DEFAULT, "%s Adding vector %{public}u for deletion from profile %{public}@", buf, 0x1Cu);
            }

            v50 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
            [v76 addObject:v50];
          }

          goto LABEL_41;
        }

        v59 = v79;
      }

      [v59 addObject:v43];
LABEL_41:

LABEL_42:
      goto LABEL_43;
    }

    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v51 = self->_voiceProfile;
      v52 = v36;
      profileID8 = [(SSRVoiceProfile *)v51 profileID];
      *buf = 136315650;
      v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
      v88 = 1024;
      *v89 = getSATVectorCount - 1;
      v8 = v77;
      *&v89[4] = 2114;
      *&v89[6] = profileID8;
      _os_log_error_impl(&dword_225E12000, v52, OS_LOG_TYPE_ERROR, "%s Failed to %u vector from profile %{public}@", buf, 0x1Cu);
    }

LABEL_43:

    getSATVectorCount = v34;
  }

  while ((v34 + 1) > 1);
  v80 = policyCopy;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v14 = v76;
  v60 = [v14 countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v82;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v82 != v62)
        {
          objc_enumerationMutation(v14);
        }

        v64 = *(*(&v81 + 1) + 8 * i);
        v65 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v66 = v14;
          v67 = self->_voiceProfile;
          v68 = v65;
          profileID9 = [(SSRVoiceProfile *)v67 profileID];
          *buf = 136315650;
          v87 = "[SSRVoiceProfileRetrainerPSRExclave purgeConfusionInformationWithPolicy:]";
          v88 = 2114;
          *v89 = v64;
          *&v89[8] = 2114;
          *&v89[10] = profileID9;
          _os_log_impl(&dword_225E12000, v68, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}@ from profile %{public}@", buf, 0x20u);

          v14 = v66;
        }

        -[SSRSpeakerRecognitionScorer deleteVectorAtIndex:](self->_psrScorer, "deleteVectorAtIndex:", [v64 intValue]);
      }

      v61 = [v14 countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v61);
  }

  v70 = [v14 count];
  v71 = self->_voiceProfile;
  configVersion = self->_configVersion;
  selfCopy = self;
  v29 = v79;
  [(SSRVoiceProfileRetrainerPSRExclave *)selfCopy _logSpeakerConfusionWithExplicitScores:v78 withImplicitScores:v79 withPurgeUtterances:v70 forProfile:v71 forConfigVersion:configVersion];

  v15 = 0;
  policyCopy = v80;
  v7 = v75;
  v8 = v77;
LABEL_54:

LABEL_55:

  return v15;
}

- (void)purgeLastSpeakerEmbedding
{
  *&v15[13] = *MEMORY[0x277D85DE8];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (getSATVectorCount)
  {
    v5 = (getSATVectorCount - 1);
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      voiceProfile = self->_voiceProfile;
      v7 = v4;
      profileID = [(SSRVoiceProfile *)voiceProfile profileID];
      v12 = 136315650;
      v13 = "[SSRVoiceProfileRetrainerPSRExclave purgeLastSpeakerEmbedding]";
      v14 = 1026;
      *v15 = v5;
      v15[2] = 2114;
      *&v15[3] = profileID;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v12, 0x1Cu);
    }

    [(SSRSpeakerRecognitionScorer *)self->_psrScorer deleteVectorAtIndex:v5];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v9 = self->_voiceProfile;
    v10 = v4;
    profileID2 = [(SSRVoiceProfile *)v9 profileID];
    v12 = 136315394;
    v13 = "[SSRVoiceProfileRetrainerPSRExclave purgeLastSpeakerEmbedding]";
    v14 = 2114;
    *v15 = profileID2;
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v12, 0x16u);
  }
}

- (void)addUtterances:(id)utterances withPolicy:(id)policy withCompletion:(id)completion
{
  v96[1] = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  policyCopy = policy;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (utterancesCopy && [utterancesCopy count])
  {
    v57 = v11;
    v58 = completionCopy;
    v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v67 addObject:self->_psrScorer];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v59 = utterancesCopy;
    obj = utterancesCopy;
    v12 = [obj countByEnumeratingWithState:&v70 objects:v94 count:16];
    v13 = v66;
    if (!v12)
    {
      goto LABEL_34;
    }

    v14 = v12;
    v15 = *v71;
    v69 = *MEMORY[0x277CCA450];
    v65 = policyCopy;
    v60 = *v71;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v70 + 1) + 8 * v16);
        pathExtension = [v17 pathExtension];
        v19 = [pathExtension isEqualToString:@"wav"];

        if (v19)
        {
          v20 = [(SSRVoiceProfileRetrainerPSRExclave *)self _processAudioFile:v17];
          if (v20)
          {
            v21 = v20;
            path = [v17 path];
            [v13 setObject:v21 forKey:path];
            goto LABEL_16;
          }

          path = [(SSRVoiceProfileRetrainerPSRExclave *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:v67 processedAudioDurationMs:self->_processedAudioDurationMs];
          if (!path)
          {
            v38 = MEMORY[0x277CCACA8];
            lastPathComponent = [v17 lastPathComponent];
            profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
            uRLByDeletingLastPathComponent = [v38 stringWithFormat:@"Failed to get scorecard for utterance %@ on profile %@", lastPathComponent, profileID];

            v41 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v77 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
              v78 = 2114;
              v79 = uRLByDeletingLastPathComponent;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CCA9B8];
            v90 = @"reason";
            v91 = uRLByDeletingLastPathComponent;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v21 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:754 userInfo:v43];

            path2 = [v17 path];
            v13 = v66;
            [v66 setObject:v21 forKey:path2];

            policyCopy = v65;
            goto LABEL_15;
          }

          if (!policyCopy || (policyCopy[2](policyCopy, v17, path), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            uRLByDeletingLastPathComponent = [(NSURL *)self->_psrModelFilePath URLByDeletingLastPathComponent];
            v30 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              log = v30;
              lastPathComponent2 = [v17 lastPathComponent];
              lastPathComponent3 = [(NSURL *)self->_psrModelFilePath lastPathComponent];
              lastPathComponent4 = [uRLByDeletingLastPathComponent lastPathComponent];
              v28URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
              [v28URLByDeletingLastPathComponent lastPathComponent];
              v34 = v63 = uRLByDeletingLastPathComponent;
              getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
              *buf = 136316674;
              v77 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
              v78 = 2114;
              v79 = lastPathComponent2;
              v80 = 2114;
              v81 = lastPathComponent3;
              v82 = 2114;
              v83 = lastPathComponent4;
              v84 = 2114;
              v85 = v34;
              v86 = 2050;
              v87 = getSATVectorCount;
              v88 = 2114;
              v89 = path;
              _os_log_impl(&dword_225E12000, log, OS_LOG_TYPE_DEFAULT, "%s Adding %{public}@ to {%{public}@, %{public}@, %{public}@} as %{public}lu vector with scoreCard %{public}@", buf, 0x48u);

              v15 = v60;
              uRLByDeletingLastPathComponent = v63;

              policyCopy = v65;
            }

            getSATVectorCount2 = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
            [(SSRSpeakerRecognitionScorer *)self->_psrScorer updateSAT];
            if ([(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount]- getSATVectorCount2 == 1)
            {
              path3 = [v17 path];
              [v61 setObject:path forKey:path3];
              v21 = 0;
            }

            else
            {
              path3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_psrScorer, "getSATVectorCount")];
              v45 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v77 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
                v78 = 2114;
                v79 = path3;
                _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
              }

              v46 = MEMORY[0x277CCA9B8];
              v74 = v69;
              v75 = path3;
              v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              v21 = [v46 errorWithDomain:@"com.apple.speakerrecognition" code:739 userInfo:v47];

              path4 = [v17 path];
              [v66 setObject:v21 forKey:path4];

              policyCopy = v65;
            }

            v13 = v66;
            goto LABEL_15;
          }

          v21 = v29;
        }

        else
        {
          v23 = MEMORY[0x277CCACA8];
          path5 = [v17 path];
          path = [v23 stringWithFormat:@"Invalid file format %@ ", path5];

          v25 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v77 = "[SSRVoiceProfileRetrainerPSRExclave addUtterances:withPolicy:withCompletion:]";
            v78 = 2114;
            v79 = path;
            _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
          }

          v26 = MEMORY[0x277CCA9B8];
          v92 = v69;
          v93 = path;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v21 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:729 userInfo:v27];
        }

        uRLByDeletingLastPathComponent = [v17 path];
        [v13 setObject:v21 forKey:uRLByDeletingLastPathComponent];
LABEL_15:

LABEL_16:
        ++v16;
      }

      while (v14 != v16);
      v49 = [obj countByEnumeratingWithState:&v70 objects:v94 count:16];
      v14 = v49;
      if (!v49)
      {
LABEL_34:

        voiceProfile = self->_voiceProfile;
        absoluteString = [(NSURL *)self->_psrModelFilePath absoluteString];
        [(SSRVoiceProfile *)voiceProfile updateVoiceProfilePathExclave:absoluteString];

        completionCopy = v58;
        if (v58)
        {
          (*(v58 + 2))(v58, 0, v61, v66);
        }

        utterancesCopy = v59;
        v11 = v57;
        v52 = v67;
        goto LABEL_39;
      }
    }
  }

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"File Array is nil"];
  v52 = v53;
  if (completionCopy)
  {
    v54 = MEMORY[0x277CCA9B8];
    v95 = *MEMORY[0x277CCA450];
    v96[0] = v53;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:&v95 count:1];
    v56 = [v54 errorWithDomain:@"com.apple.speakerrecognition" code:701 userInfo:v55];
    (*(completionCopy + 2))(completionCopy, v56, 0, 0);
  }

LABEL_39:

  objc_autoreleasePoolPop(v11);
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
    v8 = "[SSRVoiceProfileRetrainerPSRExclave implicitTrainingRequired]";
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
  v41 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  if (![(SSRSpeakerRecognitionScorer *)self->_psrScorer satModelAvailable])
  {
    v17 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v31 = 136315138;
    v32 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v18 = "%s PSRNeedsRetraining(YES): satModelAvailable is not available!";
    v19 = v17;
    v20 = 12;
LABEL_11:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, &v31, v20);
    goto LABEL_12;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_psrModelFilePath path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v7 & 1) == 0)
  {
    v21 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    psrModelFilePath = self->_psrModelFilePath;
    v31 = 136315394;
    v32 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v33 = 2114;
    v34 = psrModelFilePath;
    v18 = "%s PSRNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v19 = v21;
    v20 = 22;
    goto LABEL_11;
  }

  v8 = [filesCopy count];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_psrScorer getSATVectorCount];
  v10 = getSATVectorCount;
  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v8 <= maximumSpeakerVectors && getSATVectorCount != v8)
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      spIdType = self->_spIdType;
      v14 = v12;
      v15 = [SSRUtils stringForCSSpIdType:spIdType];
      v31 = 136316162;
      v32 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
      v33 = 2050;
      v34 = v8;
      v35 = 2050;
      v36 = v10;
      v37 = 2050;
      v38 = maximumSpeakerVectors;
      v39 = 2114;
      v40 = v15;
      v16 = "%s PSRNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
LABEL_18:
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, v16, &v31, 0x34u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v25 = *MEMORY[0x277D01970];
  v26 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v8 > maximumSpeakerVectors && v10 != maximumSpeakerVectors)
  {
    if (v26)
    {
      v27 = self->_spIdType;
      v14 = v25;
      v15 = [SSRUtils stringForCSSpIdType:v27];
      v31 = 136316162;
      v32 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
      v33 = 2050;
      v34 = v8;
      v35 = 2050;
      v36 = v10;
      v37 = 2050;
      v38 = maximumSpeakerVectors;
      v39 = 2114;
      v40 = v15;
      v16 = "%s PSRNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
      goto LABEL_18;
    }

LABEL_12:
    v23 = 1;
    goto LABEL_13;
  }

  if (v26)
  {
    v28 = self->_spIdType;
    v29 = v25;
    v30 = [SSRUtils stringForCSSpIdType:v28];
    v31 = 136316162;
    v32 = "[SSRVoiceProfileRetrainerPSRExclave needsRetrainingWithAudioFiles:]";
    v33 = 2050;
    v34 = v8;
    v35 = 2050;
    v36 = v10;
    v37 = 2050;
    v38 = maximumSpeakerVectors;
    v39 = 2114;
    v40 = v30;
    _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s PSRNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", &v31, 0x34u);
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:1];
  profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v3 stringWithFormat:@"{%@:%@:%@:%@}", v4, profileID, self->_psrModelFilePath, self->_asset];

  return v6;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_novDetector)
  {
    nd_close();
    self->_novDetector = 0;
  }

  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SSRVoiceProfileRetrainerPSRExclave dealloc]";
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = SSRVoiceProfileRetrainerPSRExclave;
  [(SSRVoiceProfileRetrainerPSRExclave *)&v4 dealloc];
}

- (BOOL)resetModelForRetraining
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    psrModelFilePath = self->_psrModelFilePath;
    v8 = 136315394;
    v9 = "[SSRVoiceProfileRetrainerPSRExclave resetModelForRetraining]";
    v10 = 2114;
    v11 = psrModelFilePath;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", &v8, 0x16u);
  }

  path = [(NSURL *)self->_psrModelFilePath path];
  v5 = [SSRUtils removeItemAtPath:path];

  return [(SSRSpeakerRecognitionScorer *)self->_psrScorer resetScorerWithModelFilePath:self->_psrModelFilePath];
}

- (SSRVoiceProfileRetrainerPSRExclave)initWithVoiceRetrainingContext:(id)context secureAsset:(id)asset secureSpeakerRecognitionConfig:(id)config
{
  v67 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetCopy = asset;
  configCopy = config;
  selfCopy = 0;
  if (contextCopy && assetCopy)
  {
    v60.receiver = self;
    v60.super_class = SSRVoiceProfileRetrainerPSRExclave;
    self = [(SSRVoiceProfileRetrainerPSRExclave *)&v60 init];
    if (!self)
    {
LABEL_33:
      self = self;
      selfCopy = self;
      goto LABEL_34;
    }

    SSRLogInitIfNeeded();
    objc_storeStrong(&self->_asset, asset);
    objc_storeStrong(&self->_ctx, context);
    modelsContext = [contextCopy modelsContext];
    v14 = [SSRUtils stringForSpeakerRecognizerType:1];
    v15 = [modelsContext objectForKeyedSubscript:v14];

    if (v15)
    {
      if (self->_asset)
      {
        objc_storeStrong(&self->_speakerRecognitionConfig, config);
        if (self->_speakerRecognitionConfig)
        {
          v16 = nd_create();
          self->_novDetector = v16;
          if (v16)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v66 = 1;
            psrMemoryIndex = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrMemoryIndex];
            memoryIndexes = [psrMemoryIndex memoryIndexes];
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __112__SSRVoiceProfileRetrainerPSRExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke;
            v57[3] = &unk_278578A48;
            v59 = buf;
            selfCopy2 = self;
            v58 = selfCopy2;
            [memoryIndexes enumerateKeysAndObjectsUsingBlock:v57];

            if ((*(*&buf[8] + 24) & 1) == 0)
            {

              _Block_object_dispose(buf, 8);
              goto LABEL_22;
            }

            psrConfigString = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrConfigString];
            v20 = psrConfigString;
            [psrConfigString cStringUsingEncoding:4];
            v21 = nd_initialize();

            v22 = *MEMORY[0x277D01970];
            if (v21)
            {
              v23 = v22;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v53 = nd_error();
                *v61 = 136315394;
                v62 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                v63 = 2080;
                v64 = v53;
                _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s Failed to initialize nov detector with error %s", v61, 0x16u);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
            {
              *v61 = 136315138;
              v62 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
              _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_INFO, "%s Successfully created nov detector", v61, 0xCu);
            }

            _Block_object_dispose(buf, 8);
            if (v21)
            {
              goto LABEL_22;
            }

            if ([contextCopy forceRetrain])
            {
              v26 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                secureProfileModelFilePath = [v15 secureProfileModelFilePath];
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                *&buf[12] = 2114;
                *&buf[14] = secureProfileModelFilePath;
                _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
              }

              secureProfileModelFilePath2 = [v15 secureProfileModelFilePath];
              path = [secureProfileModelFilePath2 path];
              v31 = [SSRUtils removeItemAtPath:path];
            }

            v32 = [SSRSpeakerRecognitionScorer alloc];
            voiceProfile = [contextCopy voiceProfile];
            profileID = [voiceProfile profileID];
            secureProfileModelFilePath3 = [v15 secureProfileModelFilePath];
            psrConfigString2 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrConfigString];
            psrMemoryIndex2 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig psrMemoryIndex];
            LOBYTE(v54) = 1;
            v37 = [(SSRSpeakerRecognitionScorer *)v32 initWithProfileID:profileID withModelFile:secureProfileModelFilePath3 withConfigFile:0 withResourceFile:0 configData:psrConfigString2 memoryIndex:psrMemoryIndex2 withOffsetsType:0 forRetraining:v54];
            psrScorer = selfCopy2->_psrScorer;
            selfCopy2->_psrScorer = v37;

            if (selfCopy2->_psrScorer)
            {
              v39 = dispatch_queue_create("com.apple.corespeech.speakerretrain.secure.psrq", 0);
              queue = selfCopy2->_queue;
              selfCopy2->_queue = v39;

              configFilePath = [v15 configFilePath];
              configFilePath = selfCopy2->_configFilePath;
              selfCopy2->_configFilePath = configFilePath;

              resourceFilePath = [contextCopy resourceFilePath];
              resourceFilePath = selfCopy2->_resourceFilePath;
              selfCopy2->_resourceFilePath = resourceFilePath;

              secureProfileModelFilePath4 = [v15 secureProfileModelFilePath];
              psrModelFilePath = selfCopy2->_psrModelFilePath;
              selfCopy2->_psrModelFilePath = secureProfileModelFilePath4;

              voiceProfile2 = [contextCopy voiceProfile];
              voiceProfile = selfCopy2->_voiceProfile;
              selfCopy2->_voiceProfile = voiceProfile2;

              comparativeModels = selfCopy2->_comparativeModels;
              selfCopy2->_comparativeModels = 0;

              selfCopy2->_maximumSpeakerVectors = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig maxEnrollmentUtterances];
              configVersion = [contextCopy configVersion];
              configVersion = selfCopy2->_configVersion;
              selfCopy2->_configVersion = configVersion;

              selfCopy2->_spIdType = [contextCopy spIdType];
              goto LABEL_33;
            }

            v24 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_22;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v25 = "%s ERR: Cannot create PSR Scorer";
            goto LABEL_21;
          }

          v24 = *MEMORY[0x277D015C8];
          if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v25 = "%s Secure Speaker detector failed to create nov detector.";
            goto LABEL_21;
          }

LABEL_22:

          selfCopy = 0;
          goto LABEL_34;
        }

        v24 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v25 = "%s Secure Speaker detector config is nil";
      }

      else
      {
        v24 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v25 = "%s PSRModel Retraining asset is nil! - Skipping";
      }
    }

    else
    {
      v24 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
      v25 = "%s PSRModel Retraining context is nil! - Skipping";
    }

LABEL_21:
    _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    goto LABEL_22;
  }

LABEL_34:

  return selfCopy;
}

void __112__SSRVoiceProfileRetrainerPSRExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v9 = v7;
    v10 = a3;
    [v8 cStringUsingEncoding:4];
    [v10 bytes];
    [v10 length];

    if (nd_addresource())
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315395;
        v13 = "[SSRVoiceProfileRetrainerPSRExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]_block_invoke";
        v14 = 2113;
        v15 = v8;
        _os_log_debug_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEBUG, "%s Failed to add resource %{private}@", &v12, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

@end