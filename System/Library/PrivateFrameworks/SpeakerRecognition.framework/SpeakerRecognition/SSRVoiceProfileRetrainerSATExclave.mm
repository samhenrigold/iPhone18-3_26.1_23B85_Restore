@interface SSRVoiceProfileRetrainerSATExclave
- (BOOL)implicitTrainingRequired;
- (BOOL)needsRetrainingWithAudioFiles:(id)files;
- (BOOL)resetModelForRetraining;
- (NSString)description;
- (SSRVoiceProfileRetrainerSATExclave)initWithVoiceRetrainingContext:(id)context secureAsset:(id)asset secureSpeakerRecognitionConfig:(id)config;
- (id)_processAudioFile:(id)file;
- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size withScorers:(id)scorers processedAudioDurationMs:(unint64_t)ms;
- (void)addUtterances:(id)utterances withPolicy:(id)policy withCompletion:(id)completion;
- (void)dealloc;
- (void)purgeLastSpeakerEmbedding;
@end

@implementation SSRVoiceProfileRetrainerSATExclave

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
  v30[0] = @"spIdKnownUserSATScores";
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
  v58 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
    *&buf[12] = 2114;
    *&buf[14] = fileCopy;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Processing %{public}@", buf, 0x16u);
  }

  self->_bestTriggerScore = -1.0;
  nd_reset();
  self->_currUttLengthInMs = 0xFFFFFFFFLL;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5702;
  v41 = __Block_byref_object_dispose__5703;
  v42 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v54 = &unk_225ECB98D;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__SSRVoiceProfileRetrainerSATExclave__processAudioFile___block_invoke;
  v30[3] = &unk_278578A70;
  v7 = COERCE_DOUBLE(fileCopy);
  v31 = v7;
  selfCopy = self;
  v33 = &v37;
  v34 = v36;
  v35 = buf;
  [SSRUtils streamAudioFromFileUrl:*&v7 audioStreamBasicDescriptor:v47 samplesPerStreamChunk:640 audioDataAvailableHandler:v30];
  v8 = v38[5];
  if (v8)
  {
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v47 = 136315650;
      v48 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v49 = 2114;
      v50 = v7;
      v51 = 2114;
      v52 = v8;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed processing %{public}@ with error %{public}@", v47, 0x20u);
      v8 = v38[5];
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
      *v47 = 136315394;
      v48 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v49 = 2050;
      v50 = v15;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Found last detection results, trigger score = %{public}f", v47, 0x16u);
    }

    v17 = nd_getsupervector();
    if (v17)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:4 * *(v17 + 8)];
      speakerVector = self->_speakerVector;
      self->_speakerVector = v18;

      v20 = [(NSData *)self->_speakerVector length]>> 2;
      self->_speakerVectorSize = v20;
      v21 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v29 = self->_speakerVector;
        *v47 = 136315651;
        v48 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
        v49 = 2113;
        v50 = *&v29;
        v51 = 2048;
        v52 = v20;
        _os_log_debug_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEBUG, "%s SpeakerVector: %{private}@ [dimension=%ld]", v47, 0x20u);
      }

      v10 = 0;
      self->_processedAudioDurationMs = self->_currUttLengthInMs;
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get valid supervector for %@ - Skipping...", *&v7];
      v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v23 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = v22;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v25 = [v23 errorWithDomain:@"com.apple.speakerrecognition" code:743 userInfo:v24];

      v26 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *v47 = 136315394;
        v48 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
        v49 = 2114;
        v50 = v22;
        _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@", v47, 0x16u);
      }

      mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
      [mEMORY[0x277D01708] submitVoiceIdIssueReport:*MEMORY[0x277D01A70]];

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
      *v47 = 136315394;
      v48 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]";
      v49 = 2114;
      v50 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@", v47, 0x16u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46 = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v10 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:751 userInfo:v14];
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);

  return v10;
}

void __56__SSRVoiceProfileRetrainerSATExclave__processAudioFile___block_invoke(void *a1, uint64_t a2, int a3, void *a4)
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
      v23 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]_block_invoke";
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
      v23 = "[SSRVoiceProfileRetrainerSATExclave _processAudioFile:]_block_invoke";
      v24 = 2050;
      v25 = v15;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Reached end of file. _currUttLengthInMs: %{public}lu, calling endAudio: %@", buf, 0x20u);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v17 = [v16 length];
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    *(*(a1[7] + 8) + 24) += v17 / v21;
    [v16 bytes];
    nd_wavedata();
    v18 = nd_getresults();
    if (v18)
    {
      v19 = *(a1[8] + 8);
      v20 = *v18;
      *(v19 + 48) = *(v18 + 16);
      *(v19 + 32) = v20;
    }
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
    [v67 addObject:self->_satScorer];
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
          v20 = [(SSRVoiceProfileRetrainerSATExclave *)self _processAudioFile:v17];
          if (v20)
          {
            v21 = v20;
            path = [v17 path];
            [v13 setObject:v21 forKey:path];
            goto LABEL_16;
          }

          path = [(SSRVoiceProfileRetrainerSATExclave *)self _processSpeakerVector:self->_speakerVector withSize:self->_speakerVectorSize withScorers:v67 processedAudioDurationMs:self->_processedAudioDurationMs];
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
              v77 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
              v78 = 2114;
              v79 = uRLByDeletingLastPathComponent;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CCA9B8];
            v90 = @"reason";
            v91 = uRLByDeletingLastPathComponent;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v21 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:755 userInfo:v43];

            path2 = [v17 path];
            v13 = v66;
            [v66 setObject:v21 forKey:path2];

            policyCopy = v65;
            goto LABEL_15;
          }

          if (!policyCopy || (policyCopy[2](policyCopy, v17, path), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            uRLByDeletingLastPathComponent = [(NSURL *)self->_satModelFilePath URLByDeletingLastPathComponent];
            v30 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              log = v30;
              lastPathComponent2 = [v17 lastPathComponent];
              lastPathComponent3 = [(NSURL *)self->_satModelFilePath lastPathComponent];
              lastPathComponent4 = [uRLByDeletingLastPathComponent lastPathComponent];
              v28URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
              [v28URLByDeletingLastPathComponent lastPathComponent];
              v34 = v63 = uRLByDeletingLastPathComponent;
              getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
              *buf = 136316674;
              v77 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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

            getSATVectorCount2 = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
            [(SSRSpeakerRecognitionScorer *)self->_satScorer updateSAT];
            if ([(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount]- getSATVectorCount2 == 1)
            {
              path3 = [v17 path];
              [v61 setObject:path forKey:path3];
              v21 = 0;
            }

            else
            {
              path3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Reached max (%lu) of training utterances, Skipped SAT model update", -[SSRSpeakerRecognitionScorer getSATVectorCount](self->_satScorer, "getSATVectorCount")];
              v45 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v77 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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
            v77 = "[SSRVoiceProfileRetrainerSATExclave addUtterances:withPolicy:withCompletion:]";
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
        absoluteString = [(NSURL *)self->_satModelFilePath absoluteString];
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

- (void)purgeLastSpeakerEmbedding
{
  *&v15[13] = *MEMORY[0x277D85DE8];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
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
      v13 = "[SSRVoiceProfileRetrainerSATExclave purgeLastSpeakerEmbedding]";
      v14 = 1026;
      *v15 = v5;
      v15[2] = 2114;
      *&v15[3] = profileID;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting vector %{public}d from profile %{public}@", &v12, 0x1Cu);
    }

    [(SSRSpeakerRecognitionScorer *)self->_satScorer deleteVectorAtIndex:v5];
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v9 = self->_voiceProfile;
    v10 = v4;
    profileID2 = [(SSRVoiceProfile *)v9 profileID];
    v12 = 136315394;
    v13 = "[SSRVoiceProfileRetrainerSATExclave purgeLastSpeakerEmbedding]";
    v14 = 2114;
    *v15 = profileID2;
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Vector count of zero for profile %{public}@", &v12, 0x16u);
  }
}

- (BOOL)implicitTrainingRequired
{
  v13 = *MEMORY[0x277D85DE8];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    maximumSpeakerVectors = self->_maximumSpeakerVectors;
    v7 = 136315650;
    v8 = "[SSRVoiceProfileRetrainerSATExclave implicitTrainingRequired]";
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
  if (![(SSRSpeakerRecognitionScorer *)self->_satScorer satModelAvailable])
  {
    v16 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v31 = 136315138;
    v32 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v17 = "%s SATNeedsRetraining(YES): satModelAvailable is not available!!";
    v18 = v16;
    v19 = 12;
LABEL_10:
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, v17, &v31, v19);
    goto LABEL_11;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_satModelFilePath path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v7 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    satModelFilePath = self->_satModelFilePath;
    v31 = 136315394;
    v32 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v33 = 2114;
    v34 = satModelFilePath;
    v17 = "%s SATNeedsRetraining(YES): phsSATFile doesnt exist at: %{public}@.";
    v18 = v20;
    v19 = 22;
    goto LABEL_10;
  }

  v8 = [filesCopy count];
  getSATVectorCount = [(SSRSpeakerRecognitionScorer *)self->_satScorer getSATVectorCount];
  if (CSIsCommunalDevice())
  {
    goto LABEL_4;
  }

  maximumSpeakerVectors = self->_maximumSpeakerVectors;
  if (v8 <= maximumSpeakerVectors && getSATVectorCount != v8)
  {
    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      spIdType = self->_spIdType;
      v26 = v24;
      v27 = [SSRUtils stringForCSSpIdType:spIdType];
      v31 = 136316162;
      v32 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
      v33 = 2050;
      v34 = v8;
      v35 = 2050;
      v36 = getSATVectorCount;
      v37 = 2050;
      v38 = maximumSpeakerVectors;
      v39 = 2114;
      v40 = v27;
      v28 = "%s SATNeedsRetraining(YES): SpeakerVectors MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
LABEL_21:
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x34u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v8 > maximumSpeakerVectors && getSATVectorCount != maximumSpeakerVectors)
  {
    v29 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_spIdType;
      v26 = v29;
      v27 = [SSRUtils stringForCSSpIdType:v30];
      v31 = 136316162;
      v32 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
      v33 = 2050;
      v34 = v8;
      v35 = 2050;
      v36 = getSATVectorCount;
      v37 = 2050;
      v38 = maximumSpeakerVectors;
      v39 = 2114;
      v40 = v27;
      v28 = "%s SATNeedsRetraining(YES): SpeakerVectors Max MISMATCH! (%{public}ld, %{public}ld, %{public}ld, %{public}@)";
      goto LABEL_21;
    }

LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D01970];
  v11 = 0;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_maximumSpeakerVectors;
    v13 = self->_spIdType;
    v14 = v10;
    v15 = [SSRUtils stringForCSSpIdType:v13];
    v31 = 136316162;
    v32 = "[SSRVoiceProfileRetrainerSATExclave needsRetrainingWithAudioFiles:]";
    v33 = 2050;
    v34 = v8;
    v35 = 2050;
    v36 = getSATVectorCount;
    v37 = 2050;
    v38 = v12;
    v39 = 2114;
    v40 = v15;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s SATNeedsRetraining(NO): audioFiles:%{public}ld, vectors:%{public}ld, max:%{public}ld, modelType: %{public}@", &v31, 0x34u);

    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [SSRUtils stringForSpeakerRecognizerType:2];
  profileID = [(SSRVoiceProfile *)self->_voiceProfile profileID];
  v6 = [v3 stringWithFormat:@"{%@:%@:%@:%@}", v4, profileID, self->_satModelFilePath, self->_asset];

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
    v6 = "[SSRVoiceProfileRetrainerSATExclave dealloc]";
    v7 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = SSRVoiceProfileRetrainerSATExclave;
  [(SSRVoiceProfileRetrainerSATExclave *)&v4 dealloc];
}

- (BOOL)resetModelForRetraining
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    satModelFilePath = self->_satModelFilePath;
    v8 = 136315394;
    v9 = "[SSRVoiceProfileRetrainerSATExclave resetModelForRetraining]";
    v10 = 2114;
    v11 = satModelFilePath;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Deleting model file at %{public}@", &v8, 0x16u);
  }

  path = [(NSURL *)self->_satModelFilePath path];
  v5 = [SSRUtils removeItemAtPath:path];

  return [(SSRSpeakerRecognitionScorer *)self->_satScorer resetScorerWithModelFilePath:self->_satModelFilePath];
}

- (SSRVoiceProfileRetrainerSATExclave)initWithVoiceRetrainingContext:(id)context secureAsset:(id)asset secureSpeakerRecognitionConfig:(id)config
{
  v72 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetCopy = asset;
  configCopy = config;
  selfCopy = 0;
  if (contextCopy && assetCopy)
  {
    v65.receiver = self;
    v65.super_class = SSRVoiceProfileRetrainerSATExclave;
    self = [(SSRVoiceProfileRetrainerSATExclave *)&v65 init];
    if (!self)
    {
LABEL_40:
      self = self;
      selfCopy = self;
      goto LABEL_41;
    }

    SSRLogInitIfNeeded();
    objc_storeStrong(&self->_asset, asset);
    objc_storeStrong(&self->_ctx, context);
    modelsContext = [contextCopy modelsContext];
    v14 = [SSRUtils stringForSpeakerRecognizerType:2];
    v61 = [modelsContext objectForKeyedSubscript:v14];

    if (v61)
    {
      if (self->_asset)
      {
        objc_storeStrong(&self->_speakerRecognitionConfig, config);
        satMemoryIndex = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
        v16 = satMemoryIndex == 0;

        if (v16)
        {
          v42 = *MEMORY[0x277D015C8];
          if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          *buf = 136315138;
          *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
          v43 = "%s Secure Speaker detector memory index is nil - Skipping";
        }

        else
        {
          satConfigString = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
          v18 = satConfigString == 0;

          if (v18)
          {
            v42 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_32;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v43 = "%s Secure Speaker detector config is nil - Skipping";
          }

          else
          {
            if ([contextCopy forceRetrain])
            {
              v19 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                v20 = v19;
                secureProfileModelFilePath = [v61 secureProfileModelFilePath];
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                *&buf[12] = 2114;
                *&buf[14] = secureProfileModelFilePath;
                _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Deleting model file at %{public}@", buf, 0x16u);
              }

              secureProfileModelFilePath2 = [v61 secureProfileModelFilePath];
              path = [secureProfileModelFilePath2 path];
              v24 = [SSRUtils removeItemAtPath:path];
            }

            v25 = [SSRSpeakerRecognitionScorer alloc];
            voiceProfile = [contextCopy voiceProfile];
            profileID = [voiceProfile profileID];
            secureProfileModelFilePath3 = [v61 secureProfileModelFilePath];
            satConfigString2 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
            satMemoryIndex2 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
            LOBYTE(v60) = 1;
            v31 = [(SSRSpeakerRecognitionScorer *)v25 initWithProfileID:profileID withModelFile:secureProfileModelFilePath3 withConfigFile:0 withResourceFile:0 configData:satConfigString2 memoryIndex:satMemoryIndex2 withOffsetsType:0 forRetraining:v60];
            satScorer = self->_satScorer;
            self->_satScorer = v31;

            if (self->_satScorer)
            {
              v33 = nd_create();
              self->_novDetector = v33;
              if (v33)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v71 = 1;
                satMemoryIndex3 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satMemoryIndex];
                memoryIndexes = [satMemoryIndex3 memoryIndexes];
                v62[0] = MEMORY[0x277D85DD0];
                v62[1] = 3221225472;
                v62[2] = __112__SSRVoiceProfileRetrainerSATExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke;
                v62[3] = &unk_278578A48;
                v64 = buf;
                selfCopy2 = self;
                v63 = selfCopy2;
                [memoryIndexes enumerateKeysAndObjectsUsingBlock:v62];

                if (*(*&buf[8] + 24))
                {
                  satConfigString3 = [(SecureSpeakerRecognitionConfig *)self->_speakerRecognitionConfig satConfigString];
                  v38 = satConfigString3;
                  [satConfigString3 cStringUsingEncoding:4];
                  v39 = nd_initialize();

                  v40 = *MEMORY[0x277D01970];
                  if (v39)
                  {
                    v41 = v40;
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      v59 = nd_error();
                      *v66 = 136315394;
                      v67 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                      v68 = 2080;
                      v69 = v59;
                      _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s Failed to initialize nov detector with error %s", v66, 0x16u);
                    }
                  }

                  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
                  {
                    *v66 = 136315138;
                    v67 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_INFO, "%s Successfully created nov detector", v66, 0xCu);
                  }

                  _Block_object_dispose(buf, 8);
                  if (!v39)
                  {
                    v45 = dispatch_queue_create("com.apple.corespeech.speakerretrain.secure.satq", 0);
                    queue = selfCopy2->_queue;
                    selfCopy2->_queue = v45;

                    configFilePath = [v61 configFilePath];
                    configFilePath = selfCopy2->_configFilePath;
                    selfCopy2->_configFilePath = configFilePath;

                    resourceFilePath = [contextCopy resourceFilePath];
                    resourceFilePath = selfCopy2->_resourceFilePath;
                    selfCopy2->_resourceFilePath = resourceFilePath;

                    secureProfileModelFilePath4 = [v61 secureProfileModelFilePath];
                    satModelFilePath = selfCopy2->_satModelFilePath;
                    selfCopy2->_satModelFilePath = secureProfileModelFilePath4;

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
                    goto LABEL_40;
                  }
                }

                else
                {
                  v44 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *v66 = 136315138;
                    v67 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                    _os_log_error_impl(&dword_225E12000, v44, OS_LOG_TYPE_ERROR, "%s ERR: Cannot create SAT nd detector", v66, 0xCu);
                  }

                  _Block_object_dispose(buf, 8);
                }

                goto LABEL_32;
              }

              v42 = *MEMORY[0x277D015C8];
              if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
                v43 = "%s Secure Speaker detector failed to create nov detector.";
                goto LABEL_31;
              }

LABEL_32:

              selfCopy = 0;
              goto LABEL_41;
            }

            v42 = *MEMORY[0x277D015C8];
            if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_32;
            }

            *buf = 136315138;
            *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
            v43 = "%s ERR: Cannot create SAT Scorer";
          }
        }
      }

      else
      {
        v42 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136315138;
        *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
        v43 = "%s SATModel Retraining asset is nil! - Skipping";
      }
    }

    else
    {
      v42 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]";
      v43 = "%s SATModel Retraining context is nil! - Skipping";
    }

LABEL_31:
    _os_log_impl(&dword_225E12000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0xCu);
    goto LABEL_32;
  }

LABEL_41:

  return selfCopy;
}

void __112__SSRVoiceProfileRetrainerSATExclave_initWithVoiceRetrainingContext_secureAsset_secureSpeakerRecognitionConfig___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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
        v13 = "[SSRVoiceProfileRetrainerSATExclave initWithVoiceRetrainingContext:secureAsset:secureSpeakerRecognitionConfig:]_block_invoke";
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