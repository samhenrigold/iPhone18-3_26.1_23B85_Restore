@interface SSRVoiceProfilePruner
- (id)_retrainVoiceProfile:(id)profile withAsset:(id)asset;
- (unint64_t)_deleteUtterances:(id)utterances;
- (void)_getScoresForAudio:(id)audio withController:(id)controller withDetector:(id)detector forProfile:(id)profile withCompletion:(id)completion;
- (void)pruneVoiceProfile:(id)profile forSpIdType:(unint64_t)type withAsset:(id)asset;
@end

@implementation SSRVoiceProfilePruner

- (unint64_t)_deleteUtterances:(id)utterances
{
  v27 = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [utterancesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    v8 = MEMORY[0x277D01970];
    do
    {
      v17 = v6;
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(utterancesCopy);
        }

        path = [*(*(&v18 + 1) + 8 * i) path];
        stringByDeletingPathExtension = [path stringByDeletingPathExtension];
        v12 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"json"];

        v13 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "[SSRVoiceProfilePruner _deleteUtterances:]";
          v24 = 2114;
          v25 = path;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Deleting %{public}@", buf, 0x16u);
        }

        v14 = [SSRUtils removeItemAtPath:path];
        v15 = [SSRUtils removeItemAtPath:v12];
      }

      v6 = v17 + v5;
      v5 = [utterancesCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_retrainVoiceProfile:(id)profile withAsset:(id)asset
{
  v44[3] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  assetCopy = asset;
  v6 = +[SSRVoiceProfileManager sharedInstance];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5164;
  v35 = __Block_byref_object_dispose__5165;
  v36 = 0;
  v43[0] = @"SSRVoiceRetrainingVoiceProfile";
  v43[1] = @"SSRVoiceRetrainingPayloadProfile";
  v44[0] = profileCopy;
  v44[1] = MEMORY[0x277CBEC28];
  v43[2] = @"SSRVoiceRetrainingAsset";
  v44[2] = assetCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v8 = [SSRVoiceProfileRetrainingContext alloc];
  v9 = (v32 + 5);
  obj = v32[5];
  v10 = [(SSRVoiceProfileRetrainingContext *)v8 initWithVoiceRetrainingContext:v7 error:&obj];
  objc_storeStrong(v9, obj);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  date = [MEMORY[0x277CBEAA8] date];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__SSRVoiceProfilePruner__retrainVoiceProfile_withAsset___block_invoke;
  v27[3] = &unk_2785789C8;
  v29 = &v31;
  v13 = v11;
  v28 = v13;
  [v6 triggerRetrainingVoiceProfile:profileCopy withContext:v10 withCompletion:v27];
  v14 = dispatch_time(0, 12000000000);
  v15 = dispatch_group_wait(v13, v14);
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  if (v15)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pruner: Timeout (%fms) waiting for retraining - Bailing out", v17 * 1000.0];
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[SSRVoiceProfilePruner _retrainVoiceProfile:withAsset:]";
      v41 = 2114;
      v42 = v18;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v37 = @"reason";
    v38 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:707 userInfo:v21];
    v23 = v32[5];
    v32[5] = v22;
  }

  v24 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v24;
}

void __56__SSRVoiceProfilePruner__retrainVoiceProfile_withAsset___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_getScoresForAudio:(id)audio withController:(id)controller withDetector:(id)detector forProfile:(id)profile withCompletion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  controllerCopy = controller;
  detectorCopy = detector;
  profileCopy = profile;
  completionCopy = completion;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5164;
  v48 = __Block_byref_object_dispose__5165;
  v49 = 0;
  objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke;
  v41[3] = &unk_278578CE8;
  v43 = &v44;
  v15 = controllerCopy;
  v42 = v15;
  [SSRUtils streamAudioFromFileUrl:audioCopy audioStreamBasicDescriptor:buf samplesPerStreamChunk:640 audioDataAvailableHandler:v41];
  if (!v45[5])
  {
    getLatestSpeakerInfo = [v15 getLatestSpeakerInfo];
    if (!getLatestSpeakerInfo)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get scoreCard - Bailing out"];
      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v56 = @"reason";
      v57 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:111 userInfo:v21];
      v23 = v45[5];
      v45[5] = v22;

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v45[5], -INFINITY, -INFINITY, -INFINITY, -INFINITY);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v59) = -8388608;
    v24 = [getLatestSpeakerInfo objectForKeyedSubscript:@"spIdKnownUserScores"];
    if (v24)
    {
      profileID = [profileCopy profileID];
      v26 = [v24 objectForKeyedSubscript:profileID];
      [v26 floatValue];
    }

    v27 = [getLatestSpeakerInfo objectForKeyedSubscript:@"spIdKnownUserPSRExpScores"];
    if (v27)
    {
      profileID2 = [profileCopy profileID];
      v29 = [v27 objectForKeyedSubscript:profileID2];
      [v29 floatValue];
    }

    v30 = [getLatestSpeakerInfo objectForKeyedSubscript:@"spIdKnownUserSATExpScores"];
    if (v30)
    {
      profileID3 = [profileCopy profileID];
      v32 = [v30 objectForKeyedSubscript:profileID3];
      [v32 floatValue];
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke_24;
    v40[3] = &unk_2785789A0;
    v40[4] = &v44;
    v40[5] = buf;
    [detectorCopy computeTriggerConfidenceForAudio:audioCopy withCompletion:v40];
    if (v45[5])
    {
      v33 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [audioCopy lastPathComponent];
        v38 = v45[5];
        *v50 = 136315650;
        v51 = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
        v52 = 2114;
        v53 = lastPathComponent;
        v54 = 2114;
        v55 = v38;
        _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s ERR: Failed in trigger processing %{public}@ with %{public}@", v50, 0x20u);
      }

      if (!completionCopy)
      {
        goto LABEL_26;
      }

      v34 = v45[5];
    }

    else
    {
      if (!completionCopy)
      {
LABEL_26:

        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v34 = 0;
    }

    (completionCopy[2])(completionCopy, v34);
    goto LABEL_26;
  }

  v16 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    lastPathComponent2 = [audioCopy lastPathComponent];
    v36 = v45[5];
    *buf = 136315650;
    *&buf[4] = "[SSRVoiceProfilePruner _getScoresForAudio:withController:withDetector:forProfile:withCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = lastPathComponent2;
    *&buf[22] = 2114;
    v59 = v36;
    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed in processing %{public}@ with %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v45[5], -INFINITY, -INFINITY, -INFINITY, -INFINITY);
  }

LABEL_27:

  _Block_object_dispose(&v44, 8);
}

void __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else if (a3)
  {
    [*(a1 + 32) endAudio];
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    [*(a1 + 32) processAudio:v8 withNumberOfSamples:{objc_msgSend(v8, "length") >> 1}];
  }
}

void __98__SSRVoiceProfilePruner__getScoresForAudio_withController_withDetector_forProfile_withCompletion___block_invoke_24(uint64_t a1, void *a2, float a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (void)pruneVoiceProfile:(id)profile forSpIdType:(unint64_t)type withAsset:(id)asset
{
  v197[3] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  assetCopy = asset;
  if (CSIsIOS())
  {
    if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v10 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v184 = 1026;
        *v185 = type;
        v11 = "%s Called with explicit spId type %{public}d - Bailing out";
        v12 = v10;
        v13 = 18;
LABEL_7:
        _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v15 = [SSRLoggingAggregator alloc];
    locale = [profileCopy locale];
    configVersion = [assetCopy configVersion];
    v145 = [(SSRLoggingAggregator *)v15 initWithEvent:@"pruning" locale:locale configVersion:configVersion];

    v142 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
    v144 = [profileCopy getExplicitEnrollmentUtterancesForType:1];
    v143 = [profileCopy getImplicitEnrollmentUtterancesForType:1];
    pruningNumRetentionUtterance = [assetCopy pruningNumRetentionUtterance];
    pruningCookie = [profileCopy pruningCookie];
    voiceProfilePruningCookie = [assetCopy voiceProfilePruningCookie];
    [assetCopy pruningThresholdPSR];
    v21 = v20;
    [assetCopy pruningThresholdSAT];
    v23 = v22;
    [assetCopy pruningExplicitUttThresholdPSR];
    v25 = v24;
    [assetCopy pruningExplicitUttThresholdSAT];
    v27 = v26;
    [assetCopy satVTImplicitThreshold];
    v29 = v28;
    v30 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
      v184 = 2114;
      *v185 = voiceProfilePruningCookie;
      *&v185[8] = 2114;
      *&v185[10] = pruningCookie;
      _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Voice Profile pruning cookie from Asset %{public}@ lastCookie %{public}@", buf, 0x20u);
    }

    if (voiceProfilePruningCookie)
    {
      if (!pruningCookie || ![pruningCookie isEqualToString:voiceProfilePruningCookie])
      {
        v33 = [profileCopy updatePruningCookie:voiceProfilePruningCookie];
        v34 = *MEMORY[0x277D01970];
        if (v33)
        {
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
            v184 = 2114;
            *v185 = v144;
            *&v185[8] = 2114;
            *&v185[10] = v143;
            _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s Explicit utterances: %{public}@, Implicit utterances: %{public}@", buf, 0x20u);
          }

          if (v144)
          {
            if ([v144 count] > 3)
            {
              if (v143 && [v143 count])
              {
                v37 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                  _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Pruning(1)::----------------------------- Retrain profile to create explicit model ---------------------------------------", buf, 0xCu);
                }

                v38 = [(SSRVoiceProfilePruner *)self _retrainVoiceProfile:profileCopy withAsset:assetCopy];
                if (v38)
                {
                  v39 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                    v184 = 2114;
                    *v185 = v38;
                    _os_log_error_impl(&dword_225E12000, v39, OS_LOG_TYPE_ERROR, "%s ERR: creating pruning voice profile failed with %{public}@", buf, 0x16u);
                  }

                  [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:5];
                  [(SSRLoggingAggregator *)v145 pushAnalytics];
                }

                else
                {
                  v197[0] = &unk_283933918;
                  v196[0] = @"SSRSpeakerRecognitionStyle";
                  v196[1] = @"SSRSpeakerRecognitionProfileArray";
                  v195 = profileCopy;
                  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
                  v197[1] = v41;
                  v196[2] = @"SSRSpeakerRecognitionAsset";
                  v197[2] = assetCopy;
                  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:3];

                  v174 = 0;
                  v175 = &v174;
                  v176 = 0x3032000000;
                  v177 = __Block_byref_object_copy__5164;
                  v178 = __Block_byref_object_dispose__5165;
                  v179 = 0;
                  v42 = [SSRSpeakerRecognitionContext alloc];
                  v43 = (v175 + 5);
                  obj = v175[5];
                  v135 = [(SSRSpeakerRecognitionContext *)v42 initWithVoiceRecognitionContext:v121 error:&obj];
                  objc_storeStrong(v43, obj);
                  v44 = v175[5];
                  if (v44 || !v135)
                  {
                    v73 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v184 = 2114;
                      *v185 = v44;
                      _os_log_error_impl(&dword_225E12000, v73, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create SSR context with error %{public}@ - Bailing out", buf, 0x16u);
                    }

                    allObjects = 0;
                    v137 = 0;
                  }

                  else
                  {
                    v45 = [SSRSpeakerRecognitionController alloc];
                    v46 = (v175 + 5);
                    v172 = v175[5];
                    v139 = [(SSRSpeakerRecognitionController *)v45 initWithContext:v135 withDelegate:self error:&v172];
                    objc_storeStrong(v46, v172);
                    v47 = [SSRTriggerPhraseDetector alloc];
                    locale2 = [profileCopy locale];
                    v134 = [(SSRTriggerPhraseDetector *)v47 initWithLocale:locale2 asset:assetCopy];

                    v49 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v49, OS_LOG_TYPE_DEFAULT, "%s Pruning(2)::----------------------------- Check Explicit Utterance scores ---------------------------------------", buf, 0xCu);
                    }

                    v170 = 0u;
                    v171 = 0u;
                    v168 = 0u;
                    v169 = 0u;
                    v124 = v144;
                    v50 = [v124 countByEnumeratingWithState:&v168 objects:v194 count:16];
                    if (v50)
                    {
                      log = 0;
                      v125 = 0;
                      v131 = *v169;
                      *&v51 = 136315138;
                      v117 = v51;
                      while (2)
                      {
                        v52 = 0;
                        v127 = v50;
                        do
                        {
                          if (*v169 != v131)
                          {
                            objc_enumerationMutation(v124);
                          }

                          v53 = *(*(&v168 + 1) + 8 * v52);
                          v164 = 0;
                          v165 = &v164;
                          v166 = 0x2020000000;
                          v167 = -8388608;
                          v160 = 0;
                          v161 = &v160;
                          v162 = 0x2020000000;
                          v163 = -8388608;
                          v156 = 0;
                          v157 = &v156;
                          v158 = 0x2020000000;
                          v159 = -8388608;
                          v152 = 0;
                          v153 = &v152;
                          v154 = 0x2020000000;
                          v155 = -8388608;
                          v117 = [(SSRSpeakerRecognitionController *)v139 resetWithContext:v135, v117];
                          v151[0] = MEMORY[0x277D85DD0];
                          v151[1] = 3221225472;
                          v151[2] = __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke;
                          v151[3] = &unk_278578970;
                          v151[4] = &v174;
                          v151[5] = &v164;
                          v151[6] = &v160;
                          v151[7] = &v156;
                          v151[8] = &v152;
                          [(SSRVoiceProfilePruner *)self _getScoresForAudio:v53 withController:v139 withDetector:v134 forProfile:profileCopy withCompletion:v151];
                          v136 = v175[5];
                          if (v136)
                          {
                            v56 = *MEMORY[0x277D01970];
                            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                            {
                              *buf = v117;
                              v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                              _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s ERR: ScoreCard is nil in voice profile pruning - Bailing out", buf, 0xCu);
                            }

                            [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:6];
                            [(SSRLoggingAggregator *)v145 pushAnalytics];
                          }

                          else
                          {
                            v57 = v165[6];
                            if (v57 <= 0.0 || v57 <= v27 || (v58 = v161[6], v58 <= 0.0) || v58 <= v25)
                            {
                              LODWORD(v55) = *(v157 + 6);
                              [(SSRLoggingAggregator *)v145 appendVoiceProfileFailedExplicitUtteranceScoreWith:v55];
                              v66 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                              {
                                lastPathComponent = [v53 lastPathComponent];
                                v68 = v153[6];
                                v69 = v165[6];
                                v70 = v161[6];
                                v71 = *(v157 + 6);
                                *buf = 136317442;
                                v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v184 = 1026;
                                *v185 = v125;
                                *&v185[4] = 2114;
                                *&v185[6] = lastPathComponent;
                                *&v185[14] = 2050;
                                *&v185[16] = v68;
                                *&v185[24] = 2050;
                                *&v185[26] = v29;
                                *&v185[34] = 2050;
                                *&v185[36] = v69;
                                v186 = 2050;
                                v187 = v27;
                                v188 = 2050;
                                v189 = v70;
                                v190 = 2050;
                                v191 = v25;
                                v192 = 2050;
                                v193 = v71;
                                _os_log_error_impl(&dword_225E12000, v66, OS_LOG_TYPE_ERROR, "%s Low Score Explicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              log = 1;
                            }

                            else
                            {
                              v59 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                              {
                                lastPathComponent2 = [v53 lastPathComponent];
                                v61 = v153[6];
                                v62 = v165[6];
                                v63 = v161[6];
                                v64 = *(v157 + 6);
                                *buf = 136317442;
                                v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v184 = 1026;
                                *v185 = v125;
                                *&v185[4] = 2114;
                                *&v185[6] = lastPathComponent2;
                                *&v185[14] = 2050;
                                *&v185[16] = v61;
                                *&v185[24] = 2050;
                                *&v185[26] = v29;
                                *&v185[34] = 2050;
                                *&v185[36] = v62;
                                v186 = 2050;
                                v187 = v27;
                                v188 = 2050;
                                v189 = v63;
                                v190 = 2050;
                                v191 = v25;
                                v192 = 2050;
                                v193 = v64;
                                _os_log_impl(&dword_225E12000, v59, OS_LOG_TYPE_DEFAULT, "%s Explicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f(%{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v65) = *(v157 + 6);
                              [(SSRLoggingAggregator *)v145 appendVoiceProfileExplicitUtteranceScoreWith:v65];
                            }

                            ++v125;
                          }

                          _Block_object_dispose(&v152, 8);
                          _Block_object_dispose(&v156, 8);
                          _Block_object_dispose(&v160, 8);
                          _Block_object_dispose(&v164, 8);
                          if (v136)
                          {
LABEL_107:

LABEL_108:
                            allObjects = 0;
                            v137 = 0;
                            goto LABEL_109;
                          }

                          ++v52;
                        }

                        while (v127 != v52);
                        v50 = [v124 countByEnumeratingWithState:&v168 objects:v194 count:16];
                        if (v50)
                        {
                          continue;
                        }

                        break;
                      }

                      if (log)
                      {
                        v72 = *MEMORY[0x277D01970];
                        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                        {
                          *buf = v117;
                          v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                          _os_log_error_impl(&dword_225E12000, v72, OS_LOG_TYPE_ERROR, "%s ERR: Detected explicit utterances with lower scores, Bailing out", buf, 0xCu);
                        }

                        [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:4];
                        [(SSRLoggingAggregator *)v145 pushAnalytics];
                        goto LABEL_108;
                      }
                    }

                    else
                    {
                    }

                    v74 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v74, OS_LOG_TYPE_DEFAULT, "%s Pruning(3)::----------------------------- Implicit selection ---------------------------------------", buf, 0xCu);
                    }

                    v149 = 0u;
                    v150 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    v119 = v143;
                    v75 = [v119 countByEnumeratingWithState:&v147 objects:v181 count:16];
                    if (v75)
                    {
                      v120 = 0;
                      loga = 0;
                      v129 = *v148;
                      *&v76 = 136315138;
                      v118 = v76;
                      while (2)
                      {
                        v77 = 0;
                        v126 = v75;
                        do
                        {
                          if (*v148 != v129)
                          {
                            objc_enumerationMutation(v119);
                          }

                          v78 = *(*(&v147 + 1) + 8 * v77);
                          v164 = 0;
                          v165 = &v164;
                          v166 = 0x2020000000;
                          v167 = -8388608;
                          v160 = 0;
                          v161 = &v160;
                          v162 = 0x2020000000;
                          v163 = -8388608;
                          v156 = 0;
                          v157 = &v156;
                          v158 = 0x2020000000;
                          v159 = -8388608;
                          v152 = 0;
                          v153 = &v152;
                          v154 = 0x2020000000;
                          v155 = -8388608;
                          v118 = [(SSRSpeakerRecognitionController *)v139 resetWithContext:v135, v118];
                          v146[0] = MEMORY[0x277D85DD0];
                          v146[1] = 3221225472;
                          v146[2] = __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke_9;
                          v146[3] = &unk_278578970;
                          v146[4] = &v174;
                          v146[5] = &v164;
                          v146[6] = &v160;
                          v146[7] = &v156;
                          v146[8] = &v152;
                          [(SSRVoiceProfilePruner *)self _getScoresForAudio:v78 withController:v139 withDetector:v134 forProfile:profileCopy withCompletion:v146];
                          v132 = v78;
                          v138 = v175[5];
                          if (v138)
                          {
                            v80 = *MEMORY[0x277D01970];
                            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                            {
                              *buf = v118;
                              v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                              _os_log_error_impl(&dword_225E12000, v80, OS_LOG_TYPE_ERROR, "%s ERR: ScoreCard is nil in voice profile pruning - Bailing out", buf, 0xCu);
                            }

                            [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:6];
                            [(SSRLoggingAggregator *)v145 pushAnalytics];
                          }

                          else
                          {
                            if (v153[6] <= v29 || (v81 = v165[6], v81 <= 0.0) || v81 <= v23 || (v82 = v161[6], v82 <= 0.0) || v82 <= v21)
                            {
                              v90 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                              {
                                lastPathComponent3 = [v132 lastPathComponent];
                                v94 = v153[6];
                                v95 = v165[6];
                                v96 = v161[6];
                                v97 = *(v157 + 6);
                                *buf = 136317442;
                                v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v184 = 1026;
                                *v185 = loga;
                                *&v185[4] = 2114;
                                *&v185[6] = lastPathComponent3;
                                *&v185[14] = 2050;
                                *&v185[16] = v94;
                                *&v185[24] = 2050;
                                *&v185[26] = v29;
                                *&v185[34] = 2050;
                                *&v185[36] = v95;
                                v186 = 2050;
                                v187 = v23;
                                v188 = 2050;
                                v189 = v96;
                                v190 = 2050;
                                v191 = v21;
                                v192 = 2050;
                                v193 = v97;
                                _os_log_error_impl(&dword_225E12000, v90, OS_LOG_TYPE_ERROR, "%s Deleting low Score Implicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v91) = *(v157 + 6);
                              [(SSRLoggingAggregator *)v145 appendVoiceProfileDiscardedImplicitUtteranceScoreWith:v91];
                              v180 = v132;
                              v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
                              [(SSRVoiceProfilePruner *)self _deleteUtterances:v92];

                              ++v120;
                            }

                            else
                            {
                              v83 = *MEMORY[0x277D01970];
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                              {
                                lastPathComponent4 = [v132 lastPathComponent];
                                v85 = v153[6];
                                v86 = v165[6];
                                v87 = v161[6];
                                v88 = *(v157 + 6);
                                *buf = 136317442;
                                v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                                v184 = 1026;
                                *v185 = loga;
                                *&v185[4] = 2114;
                                *&v185[6] = lastPathComponent4;
                                *&v185[14] = 2050;
                                *&v185[16] = v85;
                                *&v185[24] = 2050;
                                *&v185[26] = v29;
                                *&v185[34] = 2050;
                                *&v185[36] = v86;
                                v186 = 2050;
                                v187 = v23;
                                v188 = 2050;
                                v189 = v87;
                                v190 = 2050;
                                v191 = v21;
                                v192 = 2050;
                                v193 = v88;
                                _os_log_impl(&dword_225E12000, v83, OS_LOG_TYPE_DEFAULT, "%s Implicit utterance[%{public}d]: %{public}@ --> T:(%{public}.3f, %{public}.3f) S:(%{public}.3f, %{public}.3f) P:(%{public}.3f, %{public}.3f) C:%{public}.3f", buf, 0x62u);
                              }

                              LODWORD(v89) = *(v157 + 6);
                              [(SSRLoggingAggregator *)v145 appendVoiceProfileImplicitUtteranceScoreWith:v89];
                            }

                            ++loga;
                          }

                          _Block_object_dispose(&v152, 8);
                          _Block_object_dispose(&v156, 8);
                          _Block_object_dispose(&v160, 8);
                          _Block_object_dispose(&v164, 8);
                          if (v138)
                          {
                            v124 = v119;
                            goto LABEL_107;
                          }

                          ++v77;
                        }

                        while (v126 != v77);
                        v75 = [v119 countByEnumeratingWithState:&v147 objects:v181 count:16];
                        if (v75)
                        {
                          continue;
                        }

                        break;
                      }

                      v98 = v120;
                    }

                    else
                    {
                      v98 = 0;
                    }

                    [(SSRLoggingAggregator *)v145 setVoiceProfileDiscardedUtteranceCount:v98];
                    v99 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v99, OS_LOG_TYPE_DEFAULT, "%s Pruning(4)::----------------------------- Implicit sampling ---------------------------------------", buf, 0xCu);
                    }

                    v137 = [profileCopy getImplicitEnrollmentUtterancesForType:type];
                    v100 = pruningNumRetentionUtterance + [v137 count] - 1;
                    v130 = v100 / pruningNumRetentionUtterance;
                    if (pruningNumRetentionUtterance <= v100)
                    {
                      v133 = [v124 count];
                      v113 = 0;
                      v128 = pruningNumRetentionUtterance + 5;
                      for (i = -1; v113 < [v137 count]; --i)
                      {
                        if (v113 % v130)
                        {
                          v115 = [v137 objectAtIndexedSubscript:v113];
                          [v142 addObject:v115];
                        }

                        else
                        {
                          ++v133;
                        }

                        v116 = [v137 count];
                        if (v128 > v133 && i + v116 <= v128 - v133)
                        {
                          break;
                        }

                        ++v113;
                      }
                    }

                    v101 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      v102 = [v137 count];
                      v103 = [v142 count];
                      *buf = 136316162;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v184 = 2050;
                      *v185 = v102;
                      *&v185[8] = 2050;
                      *&v185[10] = v130;
                      *&v185[18] = 2050;
                      *&v185[20] = pruningNumRetentionUtterance;
                      *&v185[28] = 2050;
                      *&v185[30] = v103;
                      _os_log_impl(&dword_225E12000, v101, OS_LOG_TYPE_DEFAULT, "%s Utterance selection totalImplicit: %{public}lu selectionIndex: %{public}lu retentionCount: %{public}lu deleteCount: %{public}lu ", buf, 0x34u);
                    }

                    if (v142 && [v142 count])
                    {
                      v104 = [MEMORY[0x277CBEB58] setWithArray:v137];
                      v105 = [MEMORY[0x277CBEB98] setWithArray:v142];
                      [v104 minusSet:v105];
                      allObjects = [v104 allObjects];
                    }

                    else
                    {
                      allObjects = v137;
                    }

                    v106 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                    {
                      v107 = [v142 count];
                      *buf = 136315650;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      v184 = 2048;
                      *v185 = v107;
                      *&v185[8] = 2114;
                      *&v185[10] = v142;
                      _os_log_impl(&dword_225E12000, v106, OS_LOG_TYPE_DEFAULT, "%s Deleting implicit utterances(%lu) - %{public}@", buf, 0x20u);
                    }

                    [(SSRVoiceProfilePruner *)self _deleteUtterances:v142];
                    -[SSRLoggingAggregator setVoiceProfilePrunedUtteranceCount:](v145, "setVoiceProfilePrunedUtteranceCount:", [v142 count]);
                    -[SSRLoggingAggregator setVoiceProfileRetainedUtteranceCount:](v145, "setVoiceProfileRetainedUtteranceCount:", [allObjects count]);
                    v108 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                      _os_log_impl(&dword_225E12000, v108, OS_LOG_TYPE_DEFAULT, "%s Pruning(5)::----------------------------- Retrain the voice profile ---------------------------------------", buf, 0xCu);
                    }

                    v109 = [(SSRVoiceProfilePruner *)self _retrainVoiceProfile:profileCopy withAsset:assetCopy];
                    v110 = v175[5];
                    v175[5] = v109;

                    v111 = v175[5];
                    if (v111)
                    {
                      v112 = *MEMORY[0x277D01970];
                      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                        v184 = 2114;
                        *v185 = v111;
                        _os_log_error_impl(&dword_225E12000, v112, OS_LOG_TYPE_ERROR, "%s ERR: creating pruning voice profile failed with %{public}@", buf, 0x16u);
                      }

                      [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:7];
                    }

                    [(SSRLoggingAggregator *)v145 pushAnalytics];
LABEL_109:
                  }

                  _Block_object_dispose(&v174, 8);
                }
              }

              else
              {
                v40 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                  _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Zero implicit utterances - Bailing out", buf, 0xCu);
                }

                [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:3];
                [(SSRLoggingAggregator *)v145 pushAnalytics];
              }
            }

            else
            {
              v35 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
                _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: Low explicit utterances - Bailing out", buf, 0xCu);
              }

              [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:2];
              [(SSRLoggingAggregator *)v145 pushAnalytics];
            }
          }

          else
          {
            v36 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
              _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s ERR: No explicit utterances!!! - Bailing out", buf, 0xCu);
            }

            [(SSRLoggingAggregator *)v145 setVoiceProfilePruningFailureReasonCode:1];
            [(SSRLoggingAggregator *)v145 pushAnalytics];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
          _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Failed updating pruning cookie", buf, 0xCu);
        }

        goto LABEL_42;
      }

      v31 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v32 = "%s Already pruned voice profile - Bailing out";
LABEL_25:
        _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
      }
    }

    else
    {
      v31 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
        v32 = "%s Pruning cookie unavailable from asset - Bailing out";
        goto LABEL_25;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v183 = "[SSRVoiceProfilePruner pruneVoiceProfile:forSpIdType:withAsset:]";
    v11 = "%s ";
    v12 = v14;
    v13 = 12;
    goto LABEL_7;
  }

LABEL_43:
}

void __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke(void *a1, void *a2, float a3, float a4, float a5, float a6)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v12 = a2;
  *(*(a1[5] + 8) + 24) = a4;
  *(*(a1[6] + 8) + 24) = a5;
  *(*(a1[7] + 8) + 24) = a6;
  *(*(a1[8] + 8) + 24) = a3;
}

void __65__SSRVoiceProfilePruner_pruneVoiceProfile_forSpIdType_withAsset___block_invoke_9(void *a1, void *a2, float a3, float a4, float a5, float a6)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v12 = a2;
  *(*(a1[5] + 8) + 24) = a4;
  *(*(a1[6] + 8) + 24) = a5;
  *(*(a1[7] + 8) + 24) = a6;
  *(*(a1[8] + 8) + 24) = a3;
}

@end