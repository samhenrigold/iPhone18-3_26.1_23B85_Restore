@interface SSRVoiceProfileStore
+ (id)sharedInstance;
- (BOOL)_checkIfRetrainingRequiredForProfile:(id)profile;
- (BOOL)checkIfVoiceProfile:(id)profile needsUpdatedWith:(id)with withCategory:(unint64_t)category;
- (BOOL)cleanupDuplicatedProfiles;
- (BOOL)evaluateImplicitAdditionPolicyWithScores:(id)scores forProfile:(id)profile withImplicitThreshold:(float)threshold withDeltaThreshold:(float)deltaThreshold;
- (id)_deleteUserVoiceProfile:(id)profile;
- (id)_enrolledVoiceProfiles;
- (id)_getTopScoringProfileIdFromScores:(id)scores;
- (id)_retrainVoiceProfile:(id)profile withContext:(id)context;
- (id)_retrainVoiceProfile:(id)profile withContext:(id)context withUtterances:(id)utterances;
- (id)copyAudioFiles:(id)files toProfile:(id)profile forModelType:(unint64_t)type;
- (id)deleteUserVoiceProfile:(id)profile;
- (id)initStore;
- (id)loadCurrentVoiceProfiles;
- (id)updateVoiceProfile:(id)profile withUserName:(id)name;
- (id)updateVoiceProfile:(id)profile withUserName:(id)name withBasePathExclave:(id)exclave;
- (id)userVoiceProfileForVoiceProfileID:(id)d;
- (id)userVoiceProfilesForAppDomain:(id)domain;
- (id)userVoiceProfilesForAppDomain:(id)domain forLocale:(id)locale;
- (id)userVoiceProfilesForLocale:(id)locale;
- (void)_logVoiceProfileConfusionWithCleanup:(BOOL)cleanup;
- (void)_retrainLiveOnOnboardedProfilesForLanguage:(id)language withForceRetrain:(BOOL)retrain withCompletion:(id)completion;
- (void)_saveTrainedUsers:(id)users;
- (void)_synchronizeSiriVoiceProfilesWithAssistant;
- (void)_updateTrainedUsersWithAction:(unint64_t)action UserVoiceProfile:(id)profile;
- (void)addImplicitUtterance:(id)utterance toVoiceProfile:(id)profile withAsset:(id)asset withTriggerSource:(id)source withAudioInput:(id)input withCompletion:(id)completion;
- (void)addUserVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion;
- (void)cleanupDuplicatesForProfile:(id)profile;
- (void)cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets;
- (void)cleanupVoiceProfileStore:(id)store;
- (void)isImplicitTrainingRequiredToVoiceProfile:(id)profile withAsset:(id)asset completion:(id)completion;
- (void)logVoiceProfileConfusionWithCleanup:(BOOL)cleanup;
- (void)migrateVoiceProfilesIfNeededWithCompletionBlock:(id)block;
- (void)retrainVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion;
- (void)saveVoiceProfiles:(id)profiles completion:(id)completion;
@end

@implementation SSRVoiceProfileStore

- (id)copyAudioFiles:(id)files toProfile:(id)profile forModelType:(unint64_t)type
{
  v50 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v8 = [profile voiceProfileAudioDirPathForSpidType:type];
  v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v9 = [SSRUtils createDirectoryIfDoesNotExist:v8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = filesCopy;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v11)
  {
    v21 = v10;
    goto LABEL_19;
  }

  v32 = v8;
  obj = v10;
  v12 = *v38;
  v13 = v34;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v38 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      uRLByDeletingPathExtension = [v15 URLByDeletingPathExtension];
      v17 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

      lastPathComponent = [v17 lastPathComponent];
      v19 = [v13 URLByAppendingPathComponent:lastPathComponent];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0;
      [defaultManager copyItemAtURL:v17 toURL:v19 error:&v36];
      v21 = v36;

      if (v21)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %@ to %@ with error %@", v17, v19, v21];
        v25 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v46 = "[SSRVoiceProfileStore copyAudioFiles:toProfile:forModelType:]";
          v47 = 2112;
          v48 = v23;
          _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }

        v26 = MEMORY[0x277CCA9B8];
        v43 = @"reason";
        v44 = v23;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v11 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v27];
        goto LABEL_18;
      }

      lastPathComponent2 = [v15 lastPathComponent];
      v23 = [v13 URLByAppendingPathComponent:lastPathComponent2];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = 0;
      [defaultManager2 copyItemAtURL:v15 toURL:v23 error:&v35];
      v21 = v35;

      if (v21)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %@ to %@ with error %@", v15, v23, v21];
        v28 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v46 = "[SSRVoiceProfileStore copyAudioFiles:toProfile:forModelType:]";
          v47 = 2112;
          v48 = v27;
          _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v41 = @"reason";
        v42 = v27;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v11 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v30];

LABEL_18:
        v8 = v32;
        v10 = obj;

        goto LABEL_19;
      }

      v13 = v34;
    }

    v10 = obj;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v21 = obj;
  v8 = v32;
LABEL_19:

  return v11;
}

- (id)_retrainVoiceProfile:(id)profile withContext:(id)context withUtterances:(id)utterances
{
  v70[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  contextCopy = context;
  utterancesCopy = utterances;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__7847;
  v57 = __Block_byref_object_dispose__7848;
  v58 = 0;
  v40 = contextCopy;
  spIdType = [contextCopy spIdType];
  appDomain = [profileCopy appDomain];
  if ([appDomain isEqualToString:@"com.apple.siri"])
  {
    if (!utterancesCopy)
    {

LABEL_29:
      utterancesCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Too less (%d) audio files in %@ ", objc_msgSend(utterancesCopy, "count"), utterancesCopy];
      v35 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
        v60 = 2112;
        v61 = utterancesCopy;
        _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: %@", location, 0x16u);
      }

      mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
      [mEMORY[0x277D01708] submitVoiceIdIssueReport:*MEMORY[0x277D01A80]];

      v37 = MEMORY[0x277CCA9B8];
      v69 = @"reason";
      v70[0] = utterancesCopy;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v27 = [v37 errorWithDomain:@"com.apple.speakerrecognition" code:728 userInfo:?];
      goto LABEL_32;
    }

    v10 = [utterancesCopy count] < 3;

    if (v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  utterancesCopy = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
  v11 = [(SSRVoiceProfileRetrainerFactory *)utterancesCopy voiceRetrainersWithContext:v40];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = [v11 count];
    v12 = v13;
    if (v14)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v49 objects:v66 count:16];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = *v50;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v49 + 1) + 8 * i);
          if ([v19 needsRetrainingWithAudioFiles:utterancesCopy])
          {
            if ([v19 resetModelForRetraining])
            {
              objc_initWeak(location, v19);
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __72__SSRVoiceProfileStore__retrainVoiceProfile_withContext_withUtterances___block_invoke;
              v43[3] = &unk_2785795C8;
              v47 = &v53;
              objc_copyWeak(&v48, location);
              v44 = profileCopy;
              v45 = v19;
              v46 = v40;
              [v19 addUtterances:utterancesCopy withPolicy:0 withCompletion:v43];

              objc_destroyWeak(&v48);
              objc_destroyWeak(location);
              continue;
            }

            v20 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              profileID = [profileCopy profileID];
              v25 = [SSRUtils stringForCSSpIdType:spIdType];
              v26 = +[SSRUtils stringForVoiceProfileRetrainerType:](SSRUtils, "stringForVoiceProfileRetrainerType:", [v19 retrainerType]);
              *location = 136315906;
              *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
              v60 = 2114;
              v61 = profileID;
              v62 = 2114;
              v63 = v25;
              v64 = 2114;
              v65 = v26;
              _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: Failed resetting for %{public}@ - for {%{public}@, %{public}@}", location, 0x2Au);
            }
          }

          else
          {
            v20 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              profileID2 = [profileCopy profileID];
              v22 = [SSRUtils stringForCSSpIdType:spIdType];
              v23 = +[SSRUtils stringForVoiceProfileRetrainerType:](SSRUtils, "stringForVoiceProfileRetrainerType:", [v19 retrainerType]);
              *location = 136315906;
              *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
              v60 = 2114;
              v61 = profileID2;
              v62 = 2114;
              v63 = v22;
              v64 = 2114;
              v65 = v23;
              _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Skipping retraining for %{public}@ - for {%{public}@, %{public}@}", location, 0x2Au);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v49 objects:v66 count:16];
        if (!v16)
        {
LABEL_24:

          v27 = v54[5];
          v28 = v15;
          goto LABEL_32;
        }
      }
    }
  }

  v28 = v12;
  v29 = MEMORY[0x277CCACA8];
  profileID3 = [profileCopy profileID];
  v31 = [v29 stringWithFormat:@"Failed to init retrainers for profileID %@ with ctxt %@", profileID3, v40];

  v32 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
    v60 = 2112;
    v61 = v31;
    _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s ERR: %@", location, 0x16u);
  }

  v33 = MEMORY[0x277CCA9B8];
  v67 = @"reason";
  v68 = v31;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v27 = [v33 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v34];

LABEL_32:
  _Block_object_dispose(&v53, 8);

  return v27;
}

void __72__SSRVoiceProfileStore__retrainVoiceProfile_withContext_withUtterances___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = WeakRetained;
  v56 = a1;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v52 = v8;
    v53 = v10;
    v55 = WeakRetained;
    v21 = [WeakRetained modelFilePath];
    v57 = [v21 URLByDeletingLastPathComponent];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v51 = v9;
    obj = v9;
    v22 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v64;
      v25 = MEMORY[0x277D01970];
      v54 = *v64;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(*(&v63 + 1) + 8 * i);
            v29 = v27;
            v30 = [v28 lastPathComponent];
            v31 = [*(v56 + 32) profileID];
            v32 = +[SSRUtils stringForCSSpIdType:](SSRUtils, "stringForCSSpIdType:", [*(v56 + 48) spIdType]);
            v33 = [v55 modelFilePath];
            v34 = [v33 lastPathComponent];
            v35 = [v57 lastPathComponent];
            v36 = [obj objectForKeyedSubscript:v28];
            *buf = 136316674;
            v69 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
            v70 = 2114;
            v71 = v30;
            v72 = 2114;
            v73 = v31;
            v74 = 2114;
            v75 = v32;
            v76 = 2114;
            v77 = v34;
            v78 = 2114;
            v79 = v35;
            v80 = 2114;
            v81 = v36;
            _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s Added utterance %{public}@ to {%{public}@, %{public}@, %{public}@, %{public}@} with score %{public}@", buf, 0x48u);

            v24 = v54;
            v25 = MEMORY[0x277D01970];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
      }

      while (v23);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v37 = v53;
    v38 = [v37 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v60;
      v41 = MEMORY[0x277D01970];
      do
      {
        v42 = 0;
        do
        {
          if (*v60 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *v41;
          if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
          {
            v44 = *(*(&v59 + 1) + 8 * v42);
            v45 = v43;
            v46 = [v37 objectForKeyedSubscript:v44];
            *buf = 136315650;
            v69 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
            v70 = 2114;
            v71 = v44;
            v72 = 2114;
            v73 = v46;
            _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s Rejected utterance %{public}@ with error %{public}@", buf, 0x20u);
          }

          ++v42;
        }

        while (v39 != v42);
        v39 = [v37 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v39);
    }

    v9 = v51;
    v8 = v52;
    v10 = v53;
    v12 = v55;
    goto LABEL_26;
  }

  v13 = MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v47 = *(v56 + 32);
    v48 = v14;
    v49 = [v47 profileID];
    v50 = *(*(*(v56 + 56) + 8) + 40);
    *buf = 136315650;
    v69 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
    v70 = 2114;
    v71 = v49;
    v72 = 2114;
    v73 = v50;
    _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, "%s ERR: Failed in retraining %{public}@ with error %{public}@", buf, 0x20u);
  }

  v15 = [*(v56 + 40) modelFilePath];
  v16 = [v15 path];
  v17 = [SSRUtils removeItemAtPath:v16];

  v57 = v17;
  if (v17)
  {
    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [v12 modelFilePath];
      *buf = 136315394;
      v69 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
      v70 = 2114;
      v71 = v20;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete the model at %{public}@", buf, 0x16u);
    }

LABEL_26:
  }
}

- (id)_retrainVoiceProfile:(id)profile withContext:(id)context
{
  v106[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  contextCopy = context;
  appDomain = [profileCopy appDomain];
  v9 = [appDomain isEqualToString:@"com.apple.siri"];

  v10 = MEMORY[0x277D01970];
  if (!profileCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"VoiceProfile is nil - Bailing out"];
    v18 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v95 = 2112;
      v96 = v12;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v105 = @"reason";
    v106[0] = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v106;
    v17 = &v105;
    goto LABEL_13;
  }

  if (!contextCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"context is nil - Bailing out"];
    v19 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v95 = 2112;
      v96 = v12;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v103 = @"reason";
    v104 = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v104;
    v17 = &v103;
    goto LABEL_13;
  }

  spIdType = [contextCopy spIdType];
  if ((spIdType - 6) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid spIdType %d - Bailing out", spIdType];
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v95 = 2112;
      v96 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v101 = @"reason";
    v102 = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v102;
    v17 = &v101;
LABEL_13:
    v20 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v21 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:730 userInfo:v20];
    goto LABEL_14;
  }

  v84 = v9;
  selfCopy = self;
  v23 = [SSRUtils explicitSpIdTypeForSpId:spIdType];
  v20 = [profileCopy getEnrollmentUtterancesForModelType:spIdType];
  v81 = v23;
  v24 = [profileCopy getEnrollmentUtterancesForModelType:v23];
  v89 = [v20 mutableCopy];
  v25 = MEMORY[0x277CCACA8];
  profileID = [profileCopy profileID];
  v27 = [v25 stringWithFormat:@"SSRVoiceProfileStore retrainer - %@", profileID];

  [v27 UTF8String];
  v28 = os_transaction_create();
  v29 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v95 = 2048;
    v96 = v28;
    v97 = 2114;
    v98 = v27;
    _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s Creating OS Transaction %p for %{public}@", buf, 0x20u);
  }

  v87 = v27;
  v30 = objc_autoreleasePoolPush();
  v86 = v28;
  if ([contextCopy filterToVoiceTriggerUtterances])
  {
    v31 = +[SSRAssetManager sharedManager];
    locale = [profileCopy locale];
    v33 = [v31 installedAssetOfType:0 forLanguage:locale];

    if (v33)
    {
      v34 = [MEMORY[0x277CBEB98] setWithArray:v20];
      v35 = [v34 mutableCopy];

      if ([v35 count] && objc_msgSend(v24, "count"))
      {
        v36 = [MEMORY[0x277CBEB98] setWithArray:v24];
        [v35 minusSet:v36];

        if ([v35 count])
        {
          allObjects = [v35 allObjects];
          locale2 = [profileCopy locale];
          contexta = [SSRTriggerPhraseDetector filterVTAudioFiles:allObjects withLocale:locale2 withAsset:v33];

          v39 = [v24 mutableCopy];
          [v39 addObjectsFromArray:contexta];

          v89 = v39;
        }

        else
        {
          v73 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
            _os_log_impl(&dword_225E12000, v73, OS_LOG_TYPE_DEFAULT, "%s No Implicit audio - ignoring filterToVoiceTriggerUtterances", buf, 0xCu);
          }
        }
      }

      else
      {
        v40 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
          v95 = 2114;
          v96 = v35;
          v97 = 2114;
          v98 = v24;
          _os_log_error_impl(&dword_225E12000, v40, OS_LOG_TYPE_ERROR, "%s ERR: ignoring filtering option as %{public}@ or %{public}@ is nil", buf, 0x20u);
        }
      }
    }

    else
    {
      v41 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v76 = v41;
        locale3 = [profileCopy locale];
        *buf = 136315394;
        v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
        v95 = 2114;
        v96 = locale3;
        _os_log_error_impl(&dword_225E12000, v76, OS_LOG_TYPE_ERROR, "%s ERR: ignoring filtering option as VTAssets not found on %{public}@", buf, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(v30);
  context = objc_autoreleasePoolPush();
  date = [MEMORY[0x277CBEAA8] date];
  v43 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:profileCopy withContext:contextCopy withUtterances:v89];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v46 = v45;
  logAggregator = [contextCopy logAggregator];
  [logAggregator setRetrainingWaitTime:v46];

  if (v43)
  {
    code = [v43 code];
    [contextCopy logAggregator];
    v50 = v49 = v24;
    [v50 setVoiceProfileRetrainingFailureReasonCode:code];

    v24 = v49;
    v51 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v74 = v51;
      v24 = v49;
      v75 = [SSRUtils stringForCSSpIdType:spIdType];
      *buf = 136315906;
      v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v95 = 2114;
      v96 = v75;
      v97 = 2114;
      v98 = profileCopy;
      v99 = 2114;
      v100 = v43;
      _os_log_error_impl(&dword_225E12000, v74, OS_LOG_TYPE_ERROR, "%s ERR: Failed training %{public}@ of %{public}@ with error %{public}@", buf, 0x2Au);
    }
  }

  logAggregator2 = [contextCopy logAggregator];
  [logAggregator2 pushAnalytics];

  objc_autoreleasePoolPop(context);
  v53 = objc_autoreleasePoolPush();
  if (!v84)
  {
    v57 = MEMORY[0x277D01970];
LABEL_50:
    objc_autoreleasePoolPop(v53);

    v72 = *v57;
    v69 = v87;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v95 = 2114;
      v96 = v87;
      _os_log_impl(&dword_225E12000, v72, OS_LOG_TYPE_DEFAULT, "%s Releasing OS Transaction %{public}@", buf, 0x16u);
    }

    v12 = v43;
    v21 = v12;
    goto LABEL_53;
  }

  v85 = v24;
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v54 setObject:profileCopy forKeyedSubscript:@"SSRVoiceRetrainingVoiceProfile"];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v81];
  [v54 setObject:v55 forKeyedSubscript:@"SSRVoiceRetrainingSpIdType"];

  asset = [contextCopy asset];

  v57 = MEMORY[0x277D01970];
  if (asset)
  {
    asset2 = [contextCopy asset];
    [v54 setObject:asset2 forKeyedSubscript:@"SSRVoiceRetrainingAsset"];
  }

  secureAsset = [contextCopy secureAsset];

  if (secureAsset)
  {
    secureAsset2 = [contextCopy secureAsset];
    [v54 setObject:secureAsset2 forKeyedSubscript:@"SSRVoiceRetrainingSecureAsset"];
  }

  v90 = v43;
  v61 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v54 error:&v90];
  v12 = v90;

  if (!v12)
  {
    v70 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:profileCopy withContext:v61 withUtterances:v85];
    if (v70)
    {
      v71 = *v57;
      if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
      {
        v78 = v71;
        v79 = [SSRUtils stringForCSSpIdType:v81];
        siriProfileId = [profileCopy siriProfileId];
        *buf = 136315906;
        v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
        v95 = 2114;
        v96 = v79;
        v97 = 2114;
        v98 = v70;
        v99 = 2114;
        v100 = siriProfileId;
        _os_log_error_impl(&dword_225E12000, v78, OS_LOG_TYPE_ERROR, "%s Failed to create %{public}@ model with error %{public}@ for profile %{public}@", buf, 0x2Au);

        v57 = MEMORY[0x277D01970];
      }
    }

    v43 = 0;
    v24 = v85;
    goto LABEL_50;
  }

  v62 = MEMORY[0x277CCACA8];
  profileID2 = [profileCopy profileID];
  v64 = [v62 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", profileID2, v12];

  v65 = *v57;
  if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v95 = 2112;
    v96 = v64;
    _os_log_error_impl(&dword_225E12000, v65, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
  }

  v66 = *v57;
  if (os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v94 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v95 = 2114;
    v96 = v87;
    _os_log_impl(&dword_225E12000, v66, OS_LOG_TYPE_DEFAULT, "%s Releasing OS Transaction %{public}@", buf, 0x16u);
  }

  v67 = MEMORY[0x277CCA9B8];
  v91 = @"reason";
  v92 = v64;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
  v21 = [v67 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v68];

  objc_autoreleasePoolPop(v53);
  v24 = v85;
  v69 = v87;
LABEL_53:

LABEL_14:

  return v21;
}

- (void)_retrainLiveOnOnboardedProfilesForLanguage:(id)language withForceRetrain:(BOOL)retrain withCompletion:(id)completion
{
  retrainCopy = retrain;
  v69 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  completionCopy = completion;
  selfCopy = self;
  v9 = [(SSRVoiceProfileStore *)self userVoiceProfilesForAppDomain:@"com.apple.siridebug" forLocale:languageCopy];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v57 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
    v58 = 2114;
    v59 = languageCopy;
    v60 = 1024;
    LODWORD(v61) = retrainCopy;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Retraining for locale %{public}@ with force %d", buf, 0x1Cu);
  }

  v41 = languageCopy;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v43 = completionCopy;
  v46 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  v11 = 0;
  if (!v46)
  {
    v49 = 0;
    goto LABEL_27;
  }

  v49 = 0;
  v12 = 0x277CBE000uLL;
  v44 = *v53;
  do
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (*v53 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v52 + 1) + 8 * v13);
      date = [*(v12 + 2728) date];
      v66[0] = @"SSRVoiceRetrainingVoiceProfile";
      v66[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
      v67[0] = v15;
      v67[1] = MEMORY[0x277CBEC38];
      v66[2] = @"SSRVoiceRetrainingForce";
      v17 = [MEMORY[0x277CCABB0] numberWithBool:retrainCopy];
      v67[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];

      v19 = [SSRVoiceProfileRetrainingContext alloc];
      v51 = v14;
      v20 = [(SSRVoiceProfileRetrainingContext *)v19 initWithVoiceRetrainingContext:v18 error:&v51];
      v11 = v51;

      if (!v11)
      {
        v28 = v49;
        goto LABEL_21;
      }

      v21 = v12;
      v22 = MEMORY[0x277CCACA8];
      profileID = [v15 profileID];
      v48 = [v22 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", profileID, v11];

      v24 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v57 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v58 = 2112;
        v59 = v48;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      if (v43)
      {
        v25 = MEMORY[0x277CCA9B8];
        v64 = @"reason";
        v65 = v48;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v27 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v26];
        (v43)[2](v43, v27);
      }

      v28 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:v15 withContext:v20];

      date2 = [*(v12 + 2728) date];
      [date2 timeIntervalSinceDate:date];
      v31 = v30 * 1000.0;
      v32 = *MEMORY[0x277D01970];
      v33 = *MEMORY[0x277D01970];
      if (v28)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = v32;
          profileID2 = [v15 profileID];
          *buf = 136315906;
          v57 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
          v58 = 2114;
          v59 = profileID2;
          v60 = 2114;
          v61 = *&v28;
          v62 = 2050;
          v63 = v31;
          _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Retraining failed for %{public}@ with error %{public}@ in %{public}fms", buf, 0x2Au);
LABEL_19:
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v32;
        profileID2 = [v15 profileID];
        *buf = 136315650;
        v57 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v58 = 2114;
        v59 = profileID2;
        v60 = 2050;
        v61 = v31;
        _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s Retraining successfully finished for %{public}@ in %{public}fms", buf, 0x20u);
        goto LABEL_19;
      }

      v12 = v21;
LABEL_21:
      v49 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:v15 withContext:v20];

      date3 = [*(v12 + 2728) date];
      [date3 timeIntervalSinceDate:date];
      v37 = v36;
      v38 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        profileID3 = [v15 profileID];
        *buf = 136315906;
        v57 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v58 = 2112;
        v59 = profileID3;
        v60 = 2112;
        v61 = *&v49;
        v62 = 2048;
        v63 = v37 * 1000.0;
        _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s Retraining finished for %@ with error %@ in %fms", buf, 0x2Au);
      }

      ++v13;
      v14 = v11;
    }

    while (v46 != v13);
    v46 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  }

  while (v46);
LABEL_27:

  if (v43)
  {
    (v43)[2](v43, v49);
  }
}

- (id)updateVoiceProfile:(id)profile withUserName:(id)name withBasePathExclave:(id)exclave
{
  v31[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  nameCopy = name;
  exclaveCopy = exclave;
  profileID = [profileCopy profileID];
  v12 = [(SSRVoiceProfileStore *)self userVoiceProfileForVoiceProfileID:profileID];

  if (v12)
  {
    if (exclaveCopy)
    {
      [v12 setUserName:nameCopy];
      [v12 updateVoiceProfilePathExclave:exclaveCopy];
      v13 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        profileID2 = [profileCopy profileID];
        *buf = 136315650;
        v25 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:withBasePathExclave:]";
        v26 = 2114;
        v27 = profileID2;
        v28 = 2114;
        v29 = exclaveCopy;
        _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Updating profile %{public}@ with basePath %{public}@", buf, 0x20u);
      }

      [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:2 UserVoiceProfile:v12];
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:758 userInfo:&unk_283933838];
    }
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    profileID3 = [profileCopy profileID];
    v19 = [v17 stringWithFormat:@"Voice Profile not found for profileId: %@ - Bailing out", profileID3];

    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:withBasePathExclave:]";
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v30 = @"reason";
    v31[0] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v16 = [v21 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v22];
  }

  return v16;
}

- (id)updateVoiceProfile:(id)profile withUserName:(id)name
{
  v28[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  nameCopy = name;
  profileID = [profileCopy profileID];
  v9 = [(SSRVoiceProfileStore *)self userVoiceProfileForVoiceProfileID:profileID];

  if (v9)
  {
    [v9 setUserName:nameCopy];
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      profileID2 = [profileCopy profileID];
      *buf = 136315650;
      v22 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:]";
      v23 = 2114;
      v24 = profileID2;
      v25 = 2114;
      v26 = nameCopy;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Updating profile %{public}@ with userName %{public}@", buf, 0x20u);
    }

    [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:2 UserVoiceProfile:v9];
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    profileID3 = [profileCopy profileID];
    v16 = [v14 stringWithFormat:@"Voice Profile not found for profileId: %@ - Bailing out", profileID3];

    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:]";
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = @"reason";
    v28[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v19];
  }

  return v13;
}

- (void)_saveTrainedUsers:(id)users
{
  v17 = *MEMORY[0x277D85DE8];
  usersCopy = users;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(usersCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = usersCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SSRVoiceProfileStorePrefs *)self->_storePrefs setVoiceProfileStoreVersion:1];
  [(SSRVoiceProfileStorePrefs *)self->_storePrefs saveKnownUserVoiceProfiles:v5];
}

- (void)_updateTrainedUsersWithAction:(unint64_t)action UserVoiceProfile:(id)profile
{
  v35 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SSRVoiceProfileStore__updateTrainedUsersWithAction_UserVoiceProfile___block_invoke;
  v17[3] = &unk_278579590;
  v8 = profileCopy;
  v18 = v8;
  v19 = &v25;
  v20 = &v21;
  [_enrolledVoiceProfiles enumerateObjectsUsingBlock:v17];
  if (action - 1 >= 2)
  {
    if (action)
    {
      v14 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      v30 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v31 = 2048;
      actionCopy = action;
      v15 = "%s ERR: UserVoiceProfile Action undefined %ld - Bailing out";
      v16 = v14;
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      v12 = *MEMORY[0x277D01970];
      if (*(v26 + 24) == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
          v31 = 2112;
          actionCopy = v8;
          _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Deleting User Voice Profile %@", buf, 0x16u);
        }

        [_enrolledVoiceProfiles removeObjectAtIndex:v22[3]];
        goto LABEL_14;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      v30 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v31 = 2112;
      actionCopy = v8;
      v15 = "%s User Voice Profile not found %@ - Bailing out";
      v16 = v11;
    }

    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
    goto LABEL_18;
  }

  if (v26[3])
  {
    v9 = [_enrolledVoiceProfiles objectAtIndex:v22[3]];
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v31 = 2112;
      actionCopy = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Updating User Voice Profile to %@ from %@", buf, 0x20u);
    }

    [_enrolledVoiceProfiles removeObjectAtIndex:v22[3]];
    [_enrolledVoiceProfiles addObject:v8];
  }

  else
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v31 = 2112;
      actionCopy = v8;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Adding User Voice Profile %@", buf, 0x16u);
    }

    [_enrolledVoiceProfiles addObject:v8];
  }

LABEL_14:
  [(SSRVoiceProfileStore *)self _saveTrainedUsers:_enrolledVoiceProfiles];
LABEL_18:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __71__SSRVoiceProfileStore__updateTrainedUsersWithAction_UserVoiceProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 profileID];
  v8 = [*(a1 + 32) profileID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

- (id)_enrolledVoiceProfiles
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  loadKnownUserVoiceProfiles = [(SSRVoiceProfileStorePrefs *)self->_storePrefs loadKnownUserVoiceProfiles];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [loadKnownUserVoiceProfiles countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(loadKnownUserVoiceProfiles);
        }

        v10 = [[SSRVoiceProfile alloc] initWithDictionary:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v18 = "[SSRVoiceProfileStore _enrolledVoiceProfiles]";
            _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s voiceProfile is nil!", buf, 0xCu);
          }
        }
      }

      v6 = [loadKnownUserVoiceProfiles countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)retrainVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion
{
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SSRVoiceProfileStore_retrainVoiceProfile_withContext_withCompletion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = profileCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = completionCopy;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = profileCopy;
  dispatch_async(queue, v15);
}

void __71__SSRVoiceProfileStore_retrainVoiceProfile_withContext_withCompletion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    [v4 profileID];
    v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v7 = [*(a1 + 32) locale];
    v43 = 136315650;
    v44 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
    v45 = 2114;
    v46 = v6;
    v47 = 2114;
    v48 = *&v7;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Retraining %{public}@ for locale %{public}@", &v43, 0x20u);
  }

  if (CSIsCommunalDevice())
  {
    v8 = [*(a1 + 32) appDomain];
    if ([v8 isEqualToString:@"com.apple.siri"])
    {
      v9 = [*(a1 + 32) profileLocallyAvailable];

      if ((v9 & 1) == 0)
      {
        v10 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = v10;
          [v11 profileID];
          v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v43 = 136315394;
          v44 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
          v45 = 2114;
          v46 = v13;
          _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Needs retraining %{public}@ - Triggering voice profiles download", &v43, 0x16u);
        }

        v14 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v14 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];

        v15 = *(a1 + 56);
        if (v15)
        {
          (*(v15 + 16))(v15, 0);
        }

        return;
      }
    }

    else
    {
    }
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [*(a1 + 40) _retrainVoiceProfile:*(a1 + 32) withContext:*(a1 + 48)];
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSinceDate:v16];
  v20 = v19 * 1000.0;
  v21 = *v2;
  v22 = *v2;
  if (v17)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v21;
      [v23 profileID];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v43 = 136315906;
      v44 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
      v45 = 2114;
      v46 = v25;
      v47 = 2114;
      v48 = *&v17;
      v49 = 2050;
      v50 = v20;
      _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: Retraining failed for %{public}@ with error %{public}@ in %{public}fms", &v43, 0x2Au);
LABEL_16:
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    v24 = v21;
    [v26 profileID];
    v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v43 = 136315650;
    v44 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
    v45 = 2114;
    v46 = v25;
    v47 = 2050;
    v48 = v20;
    _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Retraining successfully finished for %{public}@ in %{public}fms", &v43, 0x20u);
    goto LABEL_16;
  }

  if ([MEMORY[0x277D018F8] isExclaveHardware])
  {
    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
    v29 = [v28 userName];
    v30 = [*(a1 + 32) voiceProfilePathExclave];
    v31 = [v27 updateVoiceProfile:v28 withUserName:v29 withBasePathExclave:v30];
  }

  if (CSIsIOS())
  {
    v32 = [*(a1 + 32) profilePitch];
    if (!v32 || (v33 = v32, [*(a1 + 32) profilePitch], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, !v34))
    {
      v35 = [[SSRPitchExtractor alloc] initWithDefaultParameters];
      if (v35)
      {
        v36 = [*(a1 + 32) getExplicitEnrollmentUtterancesForType:{objc_msgSend(*(a1 + 48), "spIdType")}];
        [(SSRPitchExtractor *)v35 getPitchForUtteranceAudioFiles:v36];
        v38 = v37;
        v39 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136315394;
          v44 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
          v45 = 2050;
          v46 = v38;
          _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s Detected mean pitch for explicit utterances = %{public}f Hz", &v43, 0x16u);
        }

        *&v40 = v38;
        v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
        [*(a1 + 32) setProfilePitch:v41];

        [*(a1 + 40) _updateTrainedUsersWithAction:2 UserVoiceProfile:*(a1 + 32)];
      }
    }
  }

  v42 = *(a1 + 56);
  if (v42)
  {
    (*(v42 + 16))(v42, v17);
  }
}

- (BOOL)_checkIfRetrainingRequiredForProfile:(id)profile
{
  profileCopy = profile;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SSRVoiceProfileStore__checkIfRetrainingRequiredForProfile___block_invoke;
  v8[3] = &unk_278579568;
  v9 = profileCopy;
  v4 = profileCopy;
  v5 = MEMORY[0x22AA71400](v8);
  if (v5[2](v5, 3))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5[2](v5, 4);
  }

  return v6;
}

uint64_t __61__SSRVoiceProfileStore__checkIfRetrainingRequiredForProfile___block_invoke(uint64_t a1, uint64_t a2)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v45[0] = @"SSRVoiceRetrainingVoiceProfile";
  v45[1] = @"SSRVoiceRetrainingSpIdType";
  v46[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v46[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v37 = 0;
  v8 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v7 error:&v37];
  v9 = v37;
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) profileID];
    v12 = [v10 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v11, v9];

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
      v40 = 2112;
      v41 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = 0;
    v15 = 1;
  }

  else
  {
    v12 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    v16 = [(SSRVoiceProfileRetrainerFactory *)v12 voiceRetrainersWithContext:v8];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v32 = v4;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v17;
      v19 = [(SSRVoiceProfileRetrainerFactory *)v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v31 = v17;
        v21 = *v34;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v33 + 1) + 8 * i) needsRetrainingWithAudioFiles:0])
            {
              v26 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                v28 = [SSRUtils stringForCSSpIdType:a2];
                v29 = [*(a1 + 32) profileID];
                *buf = 136315650;
                v39 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
                v40 = 2114;
                v41 = v28;
                v42 = 2114;
                v43 = v29;
                _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining %{public}@ model update for profile %{public}@ ", buf, 0x20u);
              }

              v15 = 1;
              v14 = 1;
              goto LABEL_22;
            }
          }

          v20 = [(SSRVoiceProfileRetrainerFactory *)v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
          v14 = 1;
          if (v20)
          {
            continue;
          }

          break;
        }

        v15 = 0;
LABEL_22:
        v17 = v31;
        v4 = v32;
      }

      else
      {
        v15 = 0;
        v14 = 1;
      }
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [*(a1 + 32) profileID];
      v18 = [v23 stringWithFormat:@"Failed to init retrainers for profileID %@ with ctxt %@", v24, v8];

      v25 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
        v40 = 2112;
        v41 = v18;
        _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      v14 = 0;
      v15 = 1;
    }
  }

  objc_autoreleasePoolPop(v4);
  return v15 & v14;
}

- (BOOL)checkIfVoiceProfile:(id)profile needsUpdatedWith:(id)with withCategory:(unint64_t)category
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  withCopy = with;
  voiceProfileIdentity = [profileCopy voiceProfileIdentity];
  v10 = [withCopy stringByAppendingPathComponent:@"enrollment_version.json"];

  v11 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:v10];
  v12 = MEMORY[0x277D01970];
  if (category == 5)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v27 = 136316418;
      v28 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
      v29 = 1024;
      *v30 = [profileCopy profileLocallyAvailable];
      *&v30[4] = 2048;
      *&v30[6] = 5;
      *&v30[14] = 2112;
      *&v30[16] = voiceProfileIdentity;
      *&v30[24] = 2112;
      *&v30[26] = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s %d, %lu, %@,%@, %@", &v27, 0x3Au);
    }

    if (v11 && (!voiceProfileIdentity || ([v11 isEqualToString:voiceProfileIdentity] & 1) == 0))
    {
      v23 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        profileID = [profileCopy profileID];
        v27 = 136316162;
        v28 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
        v29 = 2114;
        *v30 = profileID;
        *&v30[8] = 2114;
        *&v30[10] = voiceProfileIdentity;
        *&v30[18] = 2114;
        *&v30[20] = v11;
        *&v30[28] = 1026;
        *&v30[30] = 5;
        _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v27, 0x30u);
      }

      goto LABEL_15;
    }
  }

  profileLocallyAvailable = [profileCopy profileLocallyAvailable];
  v16 = *v12;
  v17 = os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT);
  if ((profileLocallyAvailable & 1) == 0)
  {
    if (v17)
    {
      v21 = v16;
      profileID2 = [profileCopy profileID];
      v27 = 136316162;
      v28 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
      v29 = 2114;
      *v30 = profileID2;
      *&v30[8] = 2114;
      *&v30[10] = voiceProfileIdentity;
      *&v30[18] = 2114;
      *&v30[20] = v11;
      *&v30[28] = 1026;
      *&v30[30] = category;
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining storage for Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v27, 0x30u);
    }

LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }

  if (v17)
  {
    v18 = v16;
    profileID3 = [profileCopy profileID];
    v27 = 136316162;
    v28 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
    v29 = 2114;
    *v30 = profileID3;
    *&v30[8] = 2114;
    *&v30[10] = voiceProfileIdentity;
    *&v30[18] = 2114;
    *&v30[20] = v11;
    *&v30[28] = 1026;
    *&v30[30] = category;
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Skipping Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v27, 0x30u);
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (id)_deleteUserVoiceProfile:(id)profile
{
  v43 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (profileCopy)
  {
    v5 = MEMORY[0x277D01970];
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
      v41 = 2114;
      v42 = profileCopy;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting VoiceProfile %{public}@", buf, 0x16u);
    }

    voiceProfileBasePath = [profileCopy voiceProfileBasePath];

    if (voiceProfileBasePath)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      voiceProfileBasePath2 = [profileCopy voiceProfileBasePath];
      v32 = 0;
      [defaultManager removeItemAtPath:voiceProfileBasePath2 error:&v32];
      v10 = v32;

      if (!v10)
      {
        v17 = 0;
        goto LABEL_17;
      }

      v11 = MEMORY[0x277CCACA8];
      voiceProfileBasePath3 = [profileCopy voiceProfileBasePath];
      v13 = [v11 stringWithFormat:@"Deleting profile data at %@ failed with error %@", voiceProfileBasePath3, v10];

      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
        v41 = 2112;
        v42 = v13;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Err: %@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v35 = @"reason";
      v36 = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.speakerrecognition" code:706 userInfo:v16];
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Profile path is nil!"];
      v24 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
        v41 = 2114;
        v42 = v13;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v33 = @"reason";
      v34 = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v17 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:725 userInfo:v16];
    }

LABEL_17:
    [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:0 UserVoiceProfile:profileCopy];
    appDomain = [profileCopy appDomain];
    if ([appDomain isEqualToString:@"com.apple.siri"])
    {
      profileID = [profileCopy profileID];
      v28 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentMetaDataWithVoiceProfileId:profileID];

      if (v28)
      {
        defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter postNotificationName:@"com.apple.voiceprofile.rpicleanup" object:0];

        v30 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
          _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Send notification for RPI cleanup", buf, 0xCu);
        }
      }
    }

    else
    {
    }

    v23 = v17;
    goto LABEL_23;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Profile is nil!"];
  v19 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v40 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
    v41 = 2114;
    v42 = v18;
    _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
  }

  v20 = MEMORY[0x277CCA9B8];
  v37 = @"reason";
  v38 = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:724 userInfo:v21];

  v23 = v22;
LABEL_23:

  return v23;
}

- (void)saveVoiceProfiles:(id)profiles completion:(id)completion
{
  profilesCopy = profiles;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__88;
  v20 = __Block_byref_object_dispose__89;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke;
  v14[3] = &unk_278579690;
  v8 = completionCopy;
  v15 = v8;
  v21 = MEMORY[0x22AA71400](v14);
  if (profilesCopy)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke_94;
    v11[3] = &unk_278579530;
    v11[4] = self;
    v12 = profilesCopy;
    v13 = &v16;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1251 userInfo:&unk_283933810];
    (*(v17[5] + 16))();
  }

  _Block_object_dispose(&v16, 8);
}

void __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v8 = 136315394;
    v9 = "[SSRVoiceProfileStore saveVoiceProfiles:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s saveVoiceProfiles with error: %@", &v8, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

uint64_t __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke_94(uint64_t a1)
{
  [*(a1 + 32) _saveTrainedUsers:*(a1 + 40)];
  v2 = *(*(*(*(a1 + 48) + 8) + 40) + 16);

  return v2();
}

- (id)loadCurrentVoiceProfiles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7847;
  v10 = __Block_byref_object_dispose__7848;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SSRVoiceProfileStore_loadCurrentVoiceProfiles__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__SSRVoiceProfileStore_loadCurrentVoiceProfiles__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _enrolledVoiceProfiles];

  return MEMORY[0x2821F96F8]();
}

- (id)deleteUserVoiceProfile:(id)profile
{
  profileCopy = profile;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7847;
  v17 = __Block_byref_object_dispose__7848;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SSRVoiceProfileStore_deleteUserVoiceProfile___block_invoke;
  block[3] = &unk_278579530;
  selfCopy = self;
  v12 = &v13;
  v10 = profileCopy;
  v6 = profileCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __47__SSRVoiceProfileStore_deleteUserVoiceProfile___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 profileID];
    v9 = 136315394;
    v10 = "[SSRVoiceProfileStore deleteUserVoiceProfile:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Deleting voice profile with voiceProfileId: %@", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) _deleteUserVoiceProfile:*(a1 + 32)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)addUserVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion
{
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SSRVoiceProfileStore_addUserVoiceProfile_withContext_withCompletion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = profileCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = completionCopy;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = profileCopy;
  dispatch_async(queue, v15);
}

void __71__SSRVoiceProfileStore_addUserVoiceProfile_withContext_withCompletion___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Profile is nil!"];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
      v32 = 2114;
      v33 = v7;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v36 = @"reason";
    *v37 = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:726 userInfo:v10];

    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v11);
    }

    goto LABEL_31;
  }

  [*(a1 + 40) _updateTrainedUsersWithAction:1 UserVoiceProfile:?];
  if (*(a1 + 48))
  {
    v29 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
    if (v29)
    {
      v2 = [*(a1 + 32) locale];
      v3 = [v29 isEqualToString:v2];

      if ((v3 & 1) == 0)
      {
        v13 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = v13;
          [v14 locale];
          v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136315650;
          v31 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
          v32 = 2114;
          v33 = v16;
          v34 = 2114;
          v35 = v29;
          _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Skipping retraining for language %{public}@, current %{public}@", buf, 0x20u);
        }

        v17 = *(a1 + 56);
        if (v17)
        {
          (*(v17 + 16))(v17, 1, 0);
        }

        return;
      }
    }

    v4 = [*(a1 + 40) _retrainVoiceProfile:*(a1 + 32) withContext:*(a1 + 48)];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 56);
      if (v6)
      {
        (*(v6 + 16))(v6, 0, v5);
      }

      return;
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, 1, 0);
  }

  if (*(a1 + 48))
  {
    v19 = [*(a1 + 32) appDomain];
    v20 = [v19 isEqual:@"com.apple.siri"];

    if (v20)
    {
      v21 = [SSRPitchExtractor alloc];
      v22 = [*(a1 + 48) asset];
      v7 = COERCE_DOUBLE([(SSRPitchExtractor *)v21 initWithAsset:v22]);

      if (v7 != 0.0)
      {
        v23 = [*(a1 + 32) getExplicitEnrollmentUtterancesForType:{objc_msgSend(*(a1 + 48), "spIdType")}];
        [*&v7 getPitchForUtteranceAudioFiles:v23];
        v25 = v24;
        v26 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
          v32 = 2050;
          v33 = v25;
          _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Detected mean pitch for explicit utterances = %{public}f Hz", buf, 0x16u);
        }

        *&v27 = v25;
        v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
        [*(a1 + 32) setProfilePitch:v28];

        [*(a1 + 40) _updateTrainedUsersWithAction:2 UserVoiceProfile:*(a1 + 32)];
      }

      [*(a1 + 40) _logVoiceProfileConfusionWithCleanup:CSIsCommunalDevice()];
LABEL_31:
    }
  }
}

- (id)_getTopScoringProfileIdFromScores:(id)scores
{
  scoresCopy = scores;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7847;
  v13 = __Block_byref_object_dispose__7848;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__7847;
  v7[4] = __Block_byref_object_dispose__7848;
  v8 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SSRVoiceProfileStore__getTopScoringProfileIdFromScores___block_invoke;
  v6[3] = &unk_2785794E0;
  v6[4] = v7;
  v6[5] = &v9;
  [scoresCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __58__SSRVoiceProfileStore__getTopScoringProfileIdFromScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 40))
  {
    if ([v6 compare:?] != 1)
    {
      goto LABEL_5;
    }

    v8 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v8 + 40), a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_5:
}

- (BOOL)evaluateImplicitAdditionPolicyWithScores:(id)scores forProfile:(id)profile withImplicitThreshold:(float)threshold withDeltaThreshold:(float)deltaThreshold
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = COERCE_DOUBLE(scores);
  profileCopy = profile;
  v12 = MEMORY[0x277CBEB38];
  v13 = [*&v10 objectForKeyedSubscript:@"spIdKnownUserScores"];
  v14 = [v12 dictionaryWithDictionary:v13];

  v15 = [(SSRVoiceProfileStore *)self _getTopScoringProfileIdFromScores:v14];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:v15];
    [v16 floatValue];
    v18 = v17;

    [v14 removeObjectForKey:v15];
    [(SSRVoiceProfileStore *)self _getTopScoringProfileIdFromScores:v14];
    v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (v19 == 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v20 = [v14 objectForKeyedSubscript:*&v19];
      [v20 floatValue];
      v22 = v21;
    }

    profileID = [profileCopy profileID];
    v26 = [v15 isEqualToString:profileID];

    v27 = *MEMORY[0x277D01970];
    v28 = *MEMORY[0x277D01970];
    if ((v26 & 1) == 0)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v37 = v27;
        [profileCopy profileID];
        v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v39 = 136316418;
        v40 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
        v41 = 2050;
        v42 = v18;
        v43 = 2114;
        v44 = v15;
        v45 = 2050;
        thresholdCopy = v22;
        v47 = 2114;
        deltaThresholdCopy = v19;
        v49 = 2114;
        thresholdCopy2 = v38;
        _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s ERR: Utterance scored %{public}f (%{public}@) with next top score %{public}f (%{public}@) for profileId %{public}@", &v39, 0x3Eu);
      }

      v24 = 0;
      goto LABEL_24;
    }

    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v19 == 0.0)
    {
      if (v29)
      {
        v30 = v27;
        profileID2 = [profileCopy profileID];
        v39 = 136316162;
        v40 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
        v41 = 2050;
        v42 = v18;
        v43 = 2114;
        v44 = profileID2;
        v45 = 2050;
        thresholdCopy = threshold;
        v47 = 2050;
        deltaThresholdCopy = deltaThreshold;
        v32 = "%s Utterance scored %{public}f for %{public}@ and thresholds (%{public}f, %{public}f)";
        v33 = v30;
        v34 = 52;
        goto LABEL_17;
      }
    }

    else if (v29)
    {
      v30 = v27;
      profileID2 = [profileCopy profileID];
      v39 = 136316674;
      v40 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
      v41 = 2050;
      v42 = v18;
      v43 = 2114;
      v44 = profileID2;
      v45 = 2050;
      thresholdCopy = v22;
      v47 = 2114;
      deltaThresholdCopy = v19;
      v49 = 2050;
      thresholdCopy2 = threshold;
      v51 = 2050;
      deltaThresholdCopy2 = deltaThreshold;
      v32 = "%s Utterance scored %{public}f (%{public}@) with next top score %{public}f (%{public}@) and thresholds (%{public}f, %{public}f)";
      v33 = v30;
      v34 = 72;
LABEL_17:
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, v32, &v39, v34);
    }

    v24 = (v18 - v22) > deltaThreshold && v18 > threshold;
LABEL_24:

    goto LABEL_25;
  }

  v23 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v39 = 136315394;
    v40 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
    v41 = 2114;
    v42 = v10;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get top scorer in %{public}@ - Bailing out", &v39, 0x16u);
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (void)_logVoiceProfileConfusionWithCleanup:(BOOL)cleanup
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  if (v4)
  {
    v5 = +[SSRAssetManager sharedManager];
    v6 = [v5 installedAssetOfType:3 forLanguage:v4];

    v7 = [(SSRVoiceProfileStore *)self userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v4];
    v8 = v7;
    if (v6)
    {
      selfCopy = self;
      v24 = v7;
      v25 = v4;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = v7;
      v29 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v29)
      {
        v26 = *v38;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v9);
            }

            v11 = *(*(&v37 + 1) + 8 * i);
            v12 = objc_autoreleasePoolPush();
            CSIsIOS();
            v41[0] = @"SSRVoiceRetrainingVoiceProfile";
            v41[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
            v42[0] = v11;
            v42[1] = v9;
            v41[2] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
            v42[2] = v13;
            v42[3] = v6;
            v41[3] = @"SSRVoiceRetrainingAsset";
            v41[4] = @"SSRVoiceRetrainingSpIdType";
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
            v42[4] = v14;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];

            v16 = [SSRVoiceProfileRetrainingContext alloc];
            v36 = 0;
            v17 = [(SSRVoiceProfileRetrainingContext *)v16 initWithVoiceRetrainingContext:v15 error:&v36];
            v18 = v36;
            v19 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
            v20 = [(SSRVoiceProfileRetrainerFactory *)v19 voiceRetrainersWithContext:v17];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke;
            v30[3] = &unk_2785794B0;
            cleanupCopy = cleanup;
            v31 = v17;
            v32 = selfCopy;
            v33 = v11;
            v34 = v6;
            v21 = v17;
            [v20 enumerateObjectsUsingBlock:v30];

            objc_autoreleasePoolPop(v12);
          }

          v29 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v29);
      }

      v8 = v24;
      v4 = v25;
    }

    else
    {
      v23 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v45 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]";
        _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s assetForLocale is nil - Bail out", buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]";
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s Locale is nil - Bail out", buf, 0xCu);
    }
  }
}

void __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke_2;
  v14 = &unk_278579488;
  v4 = v3;
  v15 = v4;
  v16 = *(a1 + 32);
  v19 = *(a1 + 64);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = [v4 purgeConfusionInformationWithPolicy:&v11];
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    if (v5)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 48);
        v9 = v7;
        v10 = [v8 profileID];
        *buf = 136315650;
        v21 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]_block_invoke";
        v22 = 2114;
        v23 = v10;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed purging profile %{public}@ with error - %{public}@", buf, 0x20u);
      }
    }
  }
}

uint64_t __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 retrainerType] == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 32) retrainerType] == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) combinationWeight];
  v7 = [SSRUtils combineScoreFromPSR:v5 fromSAT:v6 withCombinedWt:?];

  if (*(a1 + 72) == 1)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [*(a1 + 64) satImplicitProfileThreshold];
    v11 = v10;
    [*(a1 + 64) satImplicitProfileDeltaThreshold];
    LODWORD(v13) = v12;
    LODWORD(v14) = v11;
    v15 = [v8 evaluateImplicitAdditionPolicyWithScores:v7 forProfile:v9 withImplicitThreshold:v14 withDeltaThreshold:v13];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)logVoiceProfileConfusionWithCleanup:(BOOL)cleanup
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SSRVoiceProfileStore_logVoiceProfileConfusionWithCleanup___block_invoke;
  v4[3] = &unk_278579460;
  v4[4] = self;
  cleanupCopy = cleanup;
  dispatch_sync(queue, v4);
}

- (void)addImplicitUtterance:(id)utterance toVoiceProfile:(id)profile withAsset:(id)asset withTriggerSource:(id)source withAudioInput:(id)input withCompletion:(id)completion
{
  utteranceCopy = utterance;
  profileCopy = profile;
  assetCopy = asset;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke;
  block[3] = &unk_278579438;
  v22 = assetCopy;
  selfCopy = self;
  v25 = utteranceCopy;
  v26 = completionCopy;
  v24 = profileCopy;
  v17 = utteranceCopy;
  v18 = completionCopy;
  v19 = profileCopy;
  v20 = assetCopy;
  dispatch_async(queue, block);
}

void __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke(uint64_t a1)
{
  v157[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (CSIsCommunalDevice())
  {

    v90 = (a1 + 48);
LABEL_9:
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) appDomain];
    v9 = [*(a1 + 48) locale];
    v10 = [v7 userVoiceProfilesForAppDomain:v8 forLocale:v9];

    v11 = *(a1 + 48);
    v156[0] = @"SSRVoiceRetrainingVoiceProfile";
    v156[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
    v157[0] = v11;
    v157[1] = v10;
    v156[2] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
    v156[3] = @"SSRVoiceRetrainingAsset";
    v12 = *(a1 + 32);
    v157[2] = MEMORY[0x277CBEC38];
    v157[3] = v12;
    v156[4] = @"SSRVoiceRetrainingSpIdType";
    v156[5] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
    v157[4] = &unk_283933990;
    v157[5] = &unk_2839339A8;
    v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:6];

    goto LABEL_12;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsAppleSiliconMac())
  {
    [v2 psrCombinationWeight];
    v4 = v3;
    v5 = [v2 useTDTIEnrollment];

    v90 = (a1 + 48);
    if (v4 == 1.0 && v5 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v90 = (a1 + 48);
  }

  v13 = *(a1 + 48);
  v154[0] = @"SSRVoiceRetrainingVoiceProfile";
  v154[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
  v155[0] = v13;
  v155[1] = MEMORY[0x277CBEC38];
  v14 = *(a1 + 32);
  v154[2] = @"SSRVoiceRetrainingAsset";
  v154[3] = @"SSRVoiceRetrainingSpIdType";
  v155[2] = v14;
  v155[3] = &unk_2839339C0;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:4];
LABEL_12:
  v131 = 0;
  v93 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v97 error:&v131];
  v95 = v131;
  if (!v95)
  {
    v96 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    v21 = [(SSRVoiceProfileRetrainerFactory *)v96 voiceRetrainersWithContext:v93];
    v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v20 = v21;
    v22 = [v20 countByEnumeratingWithState:&v127 objects:v151 count:16];
    if (v22)
    {
      v23 = *v128;
      v24 = MEMORY[0x277D015D8];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v128 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v127 + 1) + 8 * i);
          if ([v26 retrainerType] == 1 && (objc_msgSend(*(a1 + 32), "psrCombinationWeight"), fabsf(v27 + -1.0) <= 0.00000011921))
          {
            v28 = *v24;
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
              _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Skip SAT retrainer since combination weight is 1", buf, 0xCu);
            }
          }

          else if ([v26 implicitTrainingRequired])
          {
            [v99 addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v127 objects:v151 count:16];
      }

      while (v22);
    }

    if ([v99 count])
    {
      v29 = objc_autoreleasePoolPush();
      v148 = *(a1 + 56);
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
      v31 = [*(a1 + 48) locale];
      v32 = [SSRTriggerPhraseDetector filterVTAudioFiles:v30 withLocale:v31 withAsset:*(a1 + 32)];

      if (v32 && [v32 count])
      {

        objc_autoreleasePoolPop(v29);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v143 = __Block_byref_object_copy__7847;
        v144 = __Block_byref_object_dispose__7848;
        v145 = 0;
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_67;
        v123[3] = &unk_2785793E8;
        v124 = *(a1 + 56);
        v125 = *(a1 + 48);
        v126 = buf;
        v92 = MEMORY[0x22AA71400](v123);
        v117 = 0;
        v118 = &v117;
        v119 = 0x3032000000;
        v120 = __Block_byref_object_copy__7847;
        v121 = __Block_byref_object_dispose__7848;
        v122 = 0;
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_72;
        v112[3] = &unk_278579410;
        v116 = &v117;
        v113 = *(a1 + 56);
        v114 = *(a1 + 48);
        v115 = 0;
        v98 = MEMORY[0x22AA71400](v112);
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v33 = v99;
        v34 = 0;
        v35 = [v33 countByEnumeratingWithState:&v108 objects:v141 count:16];
        if (v35)
        {
          v91 = 0;
          v36 = *v109;
LABEL_35:
          v37 = 0;
          while (1)
          {
            if (*v109 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v108 + 1) + 8 * v37);
            v140 = *(a1 + 56);
            v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
            [v38 addUtterances:v39 withPolicy:v92 withCompletion:v98];

            if (v118[5])
            {
              break;
            }

            [v94 addObject:v38];
            v40 = [v38 retrainerType];
            v41 = *(*&buf[8] + 40);
            if (v40 == 2)
            {
              v42 = [v41 copy];
              v43 = v91;
              v91 = v42;
            }

            else
            {
              v44 = [v41 copy];
              v43 = v34;
              v34 = v44;
            }

            if (v35 == ++v37)
            {
              v35 = [v33 countByEnumeratingWithState:&v108 objects:v141 count:16];
              if (v35)
              {
                goto LABEL_35;
              }

              break;
            }
          }
        }

        else
        {
          v91 = 0;
        }

        v62 = [v33 count];
        if (v62 == [v94 count])
        {
          [(SSRVoiceProfileRetrainingContext *)v93 combinationWeight];
          v63 = [SSRUtils combineScoreFromPSR:v91 fromSAT:v34 withCombinedWt:?];
          v65 = *(a1 + 40);
          v64 = *(a1 + 48);
          [*(a1 + 32) satImplicitProfileThreshold];
          v67 = v66;
          [*(a1 + 32) satImplicitProfileDeltaThreshold];
          LODWORD(v69) = v68;
          LODWORD(v70) = v67;
          if ([v65 evaluateImplicitAdditionPolicyWithScores:v63 forProfile:v64 withImplicitThreshold:v70 withDeltaThreshold:v69])
          {
            v71 = *(a1 + 64);
            if (v71)
            {
              (*(v71 + 16))(v71, 0);
            }
          }

          else
          {
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v77 = v33;
            v78 = [v77 countByEnumeratingWithState:&v100 objects:v138 count:16];
            if (v78)
            {
              v79 = *v101;
              do
              {
                for (j = 0; j != v78; ++j)
                {
                  if (*v101 != v79)
                  {
                    objc_enumerationMutation(v77);
                  }

                  [*(*(&v100 + 1) + 8 * j) purgeLastSpeakerEmbedding];
                }

                v78 = [v77 countByEnumeratingWithState:&v100 objects:v138 count:16];
              }

              while (v78);
            }

            v81 = MEMORY[0x277CCACA8];
            v82 = [*(a1 + 56) lastPathComponent];
            v83 = [*v90 profileID];
            v84 = [v81 stringWithFormat:@"Utterance %@ in profile %@ not satisfied the implicit policy", v82, v83];

            v85 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *v134 = 136315394;
              v135 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
              v136 = 2114;
              v137 = v84;
              _os_log_impl(&dword_225E12000, v85, OS_LOG_TYPE_DEFAULT, "%s %{public}@", v134, 0x16u);
            }

            v86 = *(a1 + 64);
            if (v86)
            {
              v87 = MEMORY[0x277CCA9B8];
              v132 = @"reason";
              v133 = v84;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
              v89 = [v87 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v88];
              (*(v86 + 16))(v86, v89);
            }
          }
        }

        else
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v72 = v94;
          v73 = [v72 countByEnumeratingWithState:&v104 objects:v139 count:16];
          if (v73)
          {
            v74 = *v105;
            do
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v105 != v74)
                {
                  objc_enumerationMutation(v72);
                }

                [*(*(&v104 + 1) + 8 * k) purgeLastSpeakerEmbedding];
              }

              v73 = [v72 countByEnumeratingWithState:&v104 objects:v139 count:16];
            }

            while (v73);
          }

          v76 = *(a1 + 64);
          if (v76)
          {
            (*(v76 + 16))(v76, v118[5]);
          }
        }

        _Block_object_dispose(&v117, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = [*(a1 + 56) lastPathComponent];
        v47 = [*(a1 + 48) profileID];
        v48 = [v45 stringWithFormat:@"Utterance %@ in profile %@ not satisfied the implicit VT policy", v46, v47];

        v49 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v48;
          _os_log_impl(&dword_225E12000, v49, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        v50 = *(a1 + 64);
        if (v50)
        {
          v51 = MEMORY[0x277CCA9B8];
          v146 = @"reason";
          v147 = v48;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v53 = [v51 errorWithDomain:@"com.apple.speakerrecognition" code:750 userInfo:v52];
          (*(v50 + 16))(v50, v53);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    else
    {
      v54 = MEMORY[0x277CCACA8];
      v55 = [*v90 profileID];
      v56 = [v54 stringWithFormat:@"Profile %@ is full - Ignoring", v55];

      v57 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_impl(&dword_225E12000, v57, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
      }

      v58 = *(a1 + 64);
      if (v58)
      {
        v59 = MEMORY[0x277CCA9B8];
        v149 = @"reason";
        v150 = v56;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v61 = [v59 errorWithDomain:@"com.apple.speakerrecognition" code:757 userInfo:v60];
        (*(v58 + 16))(v58, v61);
      }
    }

    goto LABEL_84;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [*v90 profileID];
  v96 = [v15 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v16, v95];

  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v96;
    _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = MEMORY[0x277CCA9B8];
    v152 = @"reason";
    v153 = v96;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v99 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v20];
    (*(v18 + 16))(v18, v99);
LABEL_84:
  }
}

id __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_67(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [*(a1 + 32) lastPathComponent];
    v9 = [*(a1 + 40) profileID];
    v10 = [v7 stringWithFormat:@"Rejecting Implicit utterance %@ for profile %@", v8, v9];

    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v15 = @"reason";
    v16 = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v6 = [v12 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v13];
  }

  return v6;
}

void __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v7;
      v11 = [v8 profileID];
      v12 = *(a1 + 48);
      *buf = 136315906;
      v28 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed in adding %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
LABEL_7:

LABEL_11:
    }
  }

  else
  {
    if (![a3 count])
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [*(a1 + 32) lastPathComponent];
      v18 = [*(a1 + 40) profileID];
      v10 = [v16 stringWithFormat:@"Utterance %@ rejected for profile %@", v17, v18];

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
        v29 = 2114;
        v30 = v10;
        _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v25 = @"reason";
      v26 = v10;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v21];
      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      goto LABEL_11;
    }

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v10 = v13;
      v11 = [v14 lastPathComponent];
      v15 = [*(a1 + 40) profileID];
      *buf = 136315650;
      v28 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Added Implicit SAT vector from %{public}@ to profile %{public}@", buf, 0x20u);

      goto LABEL_7;
    }
  }
}

- (void)isImplicitTrainingRequiredToVoiceProfile:(id)profile withAsset:(id)asset completion:(id)completion
{
  profileCopy = profile;
  assetCopy = asset;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SSRVoiceProfileStore_isImplicitTrainingRequiredToVoiceProfile_withAsset_completion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = assetCopy;
  selfCopy = self;
  v18 = profileCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = profileCopy;
  v14 = assetCopy;
  dispatch_async(queue, v15);
}

void __86__SSRVoiceProfileStore_isImplicitTrainingRequiredToVoiceProfile_withAsset_completion___block_invoke(uint64_t a1)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (CSIsCommunalDevice())
  {

    v3 = (a1 + 48);
LABEL_9:
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) appDomain];
    v10 = [*(a1 + 48) locale];
    v11 = [v8 userVoiceProfilesForAppDomain:v9 forLocale:v10];

    v12 = *(a1 + 48);
    v43[0] = @"SSRVoiceRetrainingVoiceProfile";
    v43[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
    v44[0] = v12;
    v44[1] = v11;
    v43[2] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
    v43[3] = @"SSRVoiceRetrainingAsset";
    v13 = *(a1 + 32);
    v44[2] = MEMORY[0x277CBEC38];
    v44[3] = v13;
    v43[4] = @"SSRVoiceRetrainingSpIdType";
    v43[5] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
    v44[4] = &unk_283933990;
    v44[5] = &unk_2839339A8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];

    goto LABEL_12;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsAppleSiliconMac())
  {
    [v2 psrCombinationWeight];
    v5 = v4;
    v6 = [v2 useTDTIEnrollment];

    v3 = (a1 + 48);
    if (v5 == 1.0 && v6 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v3 = (a1 + 48);
  }

  v15 = *(a1 + 48);
  v41[0] = @"SSRVoiceRetrainingVoiceProfile";
  v41[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
  v42[0] = v15;
  v42[1] = MEMORY[0x277CBEC38];
  v16 = *(a1 + 32);
  v41[2] = @"SSRVoiceRetrainingAsset";
  v41[3] = @"SSRVoiceRetrainingSpIdType";
  v42[2] = v16;
  v42[3] = &unk_2839339C0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
LABEL_12:
  v35 = 0;
  v17 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v14 error:&v35];
  v18 = v35;
  if (v18)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [*v3 profileID];
    v21 = [v19 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v20, v18];

    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[SSRVoiceProfileStore isImplicitTrainingRequiredToVoiceProfile:withAsset:completion:]_block_invoke";
      v39 = 2112;
      v40 = v21;
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v18);
    }
  }

  else
  {
    v21 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    [(SSRVoiceProfileRetrainerFactory *)v21 voiceRetrainersWithContext:v17];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v34 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v31 + 1) + 8 * i) implicitTrainingRequired])
          {
            v30 = *(a1 + 56);
            if (v30)
            {
              (*(v30 + 16))(v30, 1, 0);
            }

            goto LABEL_30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = *(a1 + 56);
    if (v29)
    {
      (*(v29 + 16))(v29, 0, 0);
    }

LABEL_30:
  }
}

- (void)_synchronizeSiriVoiceProfilesWithAssistant
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Synchronize voiceprofiles with Assistant...", buf, 0xCu);
  }

  v4 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v5 = [*(a1 + 32) _enrolledVoiceProfiles];
  v6 = [(SSRVoiceProfileStoreCleaner *)v4 filterInvalidSiriProfilesFrom:v5];

  if ([v6 count])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke_48;
    v23[3] = &unk_278579328;
    v23[4] = *(a1 + 32);
    [v6 enumerateObjectsUsingBlock:v23];
    v7 = [MEMORY[0x277D01708] sharedInstance];
    [v7 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];
  }

  notify_post("com.apple.siri.corespeech.voiceprofilelist.change");
  if ([v6 count])
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Missing user models - Triggering voice profiles download", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v9 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [*(a1 + 32) _enrolledVoiceProfiles];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 appDomain];
          v16 = [v15 isEqualToString:@"com.apple.siri"];

          if (v16 && ([v14 profileLocallyAvailable] & 1) == 0)
          {
            v17 = *v2;
            if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v26 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
              _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Needs retraining - Triggering voice profiles download", buf, 0xCu);
            }

            v18 = [MEMORY[0x277CCA9A0] defaultCenter];
            [v18 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];

            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:
}

void __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke_48(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting stale voiceprofile(%lu): %@", &v8, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets
{
  localeCopy = locale;
  assetsCopy = assets;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SSRVoiceProfileStore_cleanupVoiceProfileModelFilesForLocale_withAssets___block_invoke;
  block[3] = &unk_2785793A0;
  v12 = localeCopy;
  v13 = assetsCopy;
  selfCopy = self;
  v9 = assetsCopy;
  v10 = localeCopy;
  dispatch_sync(queue, block);
}

void __74__SSRVoiceProfileStore_cleanupVoiceProfileModelFilesForLocale_withAssets___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v3 = +[SSRAssetManager sharedManager];
  v4 = [v3 allInstalledAssetsOfType:3 forLanguage:*(a1 + 32)];

  v16 = v4;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  v6 = *(a1 + 40);
  if (v6 && [v6 count] && v5)
  {
    [v5 addObjectsFromArray:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SSRVoiceProfileStore cleanupVoiceProfileModelFilesForLocale:withAssets:]_block_invoke";
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleanup model files with assets %{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [*(a1 + 48) _enrolledVoiceProfiles];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 locale];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          [(SSRVoiceProfileStoreCleaner *)v2 cleanupInvalidModelsForProfile:v13 withAssetArray:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset
{
  localeCopy = locale;
  assetCopy = asset;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (assetCopy && array)
  {
    [array addObject:assetCopy];
  }

  [(SSRVoiceProfileStore *)self cleanupVoiceProfileModelFilesForLocale:localeCopy withAssets:v8];
}

- (void)cleanupVoiceProfileStore:(id)store
{
  storeCopy = store;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(queue, v7);
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v3 = [(SSRVoiceProfileStoreCleaner *)v2 cleanupProfileStore];
  v4 = [*(a1 + 32) _enrolledVoiceProfiles];
  v5 = [(SSRVoiceProfileStoreCleaner *)v2 filterDuplicatedSiriProfilesFrom:v4];

  if ([v5 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2;
    v18[3] = &unk_278579328;
    v18[4] = *(a1 + 32);
    [v5 enumerateObjectsUsingBlock:v18];
    v6 = [MEMORY[0x277D01708] sharedInstance];
    [v6 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];

    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Triggering voice profiles download", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v8 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
  }

  v9 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v10 = [(SSRVoiceProfileStoreCleaner *)v2 deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:v9 appDomain:@"com.apple.siri"];

  if (CSIsCommunalDevice())
  {
    v11 = dispatch_time(0, 120000000000);
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_38;
    v17[3] = &unk_2785797A8;
    v17[4] = v12;
    dispatch_after(v11, v13, v17);
  }

  if ((CSIsCommunalDevice() & 1) != 0 || CSIsIOS() && ([MEMORY[0x277D01788] sharedPreferences], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "voiceTriggerEnabled"), v14, v15))
  {
    [*(a1 + 32) _logVoiceProfileConfusionWithCleanup:0];
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke_2";
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting duplicated voiceprofile(%lu): %@", &v8, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSiriVoiceProfilesWithAssistant];
  if (CSIsInternalBuild())
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
    [v2 _retrainLiveOnOnboardedProfilesForLanguage:v3 withForceRetrain:1 withCompletion:&__block_literal_global_45];
  }
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2_42(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D01970];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke_2";
      v6 = 2114;
      v7 = v2;
      _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s ERR: Failed retraining LiveOn onboarded users with error %{public}@", &v4, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Successfully retrained LiveOn onboarded users", &v4, 0xCu);
  }
}

- (void)cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain
{
  v15 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v5 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v6 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v7 = [(SSRVoiceProfileStoreCleaner *)v5 deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:v6 appDomain:domainCopy];

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    localizedDescription = [v7 localizedDescription];
    v11 = 136315394;
    v12 = "[SSRVoiceProfileStore cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
    v13 = 2114;
    v14 = localizedDescription;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleted invalid Siri profile with err: %{public}@", &v11, 0x16u);
  }
}

- (void)cleanupDuplicatesForProfile:(id)profile
{
  profileCopy = profile;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SSRVoiceProfileStore_cleanupDuplicatesForProfile___block_invoke;
  v7[3] = &unk_278579350;
  v8 = profileCopy;
  selfCopy = self;
  v6 = profileCopy;
  dispatch_sync(queue, v7);
}

void __52__SSRVoiceProfileStore_cleanupDuplicatesForProfile___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 personaID];
    *buf = 136315394;
    v61 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
    v62 = 2112;
    v63 = v8;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleaning up duplicated profiles for personaId: %@", buf, 0x16u);
  }

  v9 = [*(a1 + 40) _enrolledVoiceProfiles];
  v43 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v9;
  v48 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v48)
  {
    v47 = *v55;
    *&v10 = 136315394;
    v42 = v10;
    v49 = a1;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        v13 = [*(a1 + 32) personaID];
        if (v13 && ([*(a1 + 32) personaID], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "personaID"), v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqualToString:", v2) & 1) != 0))
        {
          v14 = v1;
          v15 = v2;
          v16 = v3;
          v17 = 0;
        }

        else
        {
          v18 = [*(a1 + 32) siriProfileId];
          if (!v18)
          {
            if (v13)
            {
            }

            v1 = 0;
            goto LABEL_30;
          }

          v1 = v18;
          v19 = [*(a1 + 32) siriProfileId];
          v45 = [v12 siriProfileId];
          v46 = v19;
          if (![v19 isEqualToString:?])
          {
            v22 = 0;
            goto LABEL_23;
          }

          v14 = v1;
          v15 = v2;
          v16 = v3;
          v17 = 1;
        }

        v20 = [*(v49 + 32) locale];
        v21 = [v12 locale];
        v22 = [v20 isEqualToString:v21];

        v3 = v16;
        v2 = v15;
        v1 = v14;
        if (!v17)
        {
          a1 = v49;
          if (!v13)
          {
            goto LABEL_17;
          }

          goto LABEL_24;
        }

        a1 = v49;
LABEL_23:

        if (!v13)
        {
LABEL_17:

          if (!v22)
          {
            goto LABEL_30;
          }

          goto LABEL_25;
        }

LABEL_24:

        if ((v22 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_25:
        v23 = [*(a1 + 32) profileID];
        v24 = [v12 profileID];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          v26 = *MEMORY[0x277D01970];
          if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          v27 = v26;
          v28 = [v12 profileID];
          *buf = v42;
          v61 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
          v62 = 2112;
          v63 = v28;
          _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_INFO, "%s Retaining the voice profile with profile id: %@", buf, 0x16u);
          goto LABEL_28;
        }

        [v43 addObject:v12];
        v29 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
        {
          v27 = v29;
          v28 = [v12 profileID];
          *buf = v42;
          v61 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
          v62 = 2112;
          v63 = v28;
          _os_log_debug_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEBUG, "%s Queueing the profile with profile ID %@ to be deleted", buf, 0x16u);
LABEL_28:
        }

LABEL_30:
        ++v11;
      }

      while (v48 != v11);
      v30 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v48 = v30;
    }

    while (v30);
  }

  if ([v43 count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v31 = v43;
    v32 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v51;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v50 + 1) + 8 * i);
          v37 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v61 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
            v62 = 2112;
            v63 = v36;
            _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_INFO, "%s Deleting duplicated voice profile: %@", buf, 0x16u);
          }

          v38 = [*(a1 + 40) _deleteUserVoiceProfile:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v33);
    }
  }

  v39 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    v41 = [v43 count];
    *buf = 136315394;
    v61 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
    v62 = 1024;
    LODWORD(v63) = v41;
    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Found %d duplicated profiles", buf, 0x12u);
  }
}

- (BOOL)cleanupDuplicatedProfiles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (CSIsIOS())
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke;
    v6[3] = &unk_2785797D0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Triggered cleanup duplicated profiles", buf, 0xCu);
  }

  v4 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v5 = [*(a1 + 32) _enrolledVoiceProfiles];
  v6 = [(SSRVoiceProfileStoreCleaner *)v4 filterDuplicatedSiriProfilesFrom:v5];

  if ([v6 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke_33;
    v11[3] = &unk_278579328;
    v11[4] = *(a1 + 32);
    [v6 enumerateObjectsUsingBlock:v11];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = [MEMORY[0x277D01708] sharedInstance];
    [v7 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];
  }

  v8 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 count];
    *buf = 136315394;
    v13 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    v14 = 1026;
    v15 = v10;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Found %{public}d duplicated profiles", buf, 0x12u);
  }
}

void __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke_33(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting duplicated voiceprofile(%lu): %@", &v8, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];
}

- (void)migrateVoiceProfilesIfNeededWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SSRVoiceProfileStore_migrateVoiceProfilesIfNeededWithCompletionBlock___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

void __72__SSRVoiceProfileStore_migrateVoiceProfilesIfNeededWithCompletionBlock___block_invoke(uint64_t a1)
{
  v175[1] = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 16) getVoiceProfileStoreVersion];
  v2 = *MEMORY[0x277D01970];
  v3 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v1 == -1)
  {
    if (v3)
    {
      *buf = 136315138;
      v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Migration of voice profile is triggered...", buf, 0xCu);
    }

    v5 = 0x278577000uLL;
    v133 = +[SSRVoiceProfileManager sharedInstance];
    v6 = [v133 SSRSpeakerProfilesBasePath];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v7 fileExistsAtPath:v6] & 1) == 0)
    {
      v20 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2112;
        v167 = v6;
        _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Sat directory doesnt exist %@", buf, 0x16u);
      }

      v21 = *(a1 + 40);
      if (v21)
      {
        (*(v21 + 16))(v21, 0);
      }

      v10 = 0;
      goto LABEL_119;
    }

    v159 = 0;
    v8 = [v7 contentsOfDirectoryAtPath:v6 error:&v159];
    v9 = v159;
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = MEMORY[0x277CCACA8];
      v13 = [v9 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed to get contents of %@ with error %@", v6, v13];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2114;
        v167 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 40);
      if (!v16)
      {
        v8 = v11;
LABEL_118:

LABEL_119:
        return;
      }

      v138 = v10;
      v17 = MEMORY[0x277CCA9B8];
      v174 = @"reason";
      v175[0] = v14;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:&v174 count:1];
      v19 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v18];
      (*(v16 + 16))(v16, v19);

      goto LABEL_66;
    }

    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      v166 = 2114;
      v167 = v8;
      _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Migrating voice profiles in languages - %{public}@", buf, 0x16u);
    }

    v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = AFPreferencesSupportedLanguages();
    v123 = v8;
    v124 = v7;
    if (v18)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v23 = v8;
      v24 = [(SSRVoiceProfile *)v23 countByEnumeratingWithState:&v155 objects:v173 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v156;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v156 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v155 + 1) + 8 * i);
            if (([(SSRVoiceProfile *)v18 containsObject:v28]& 1) != 0)
            {
              [(SSRVoiceProfile *)v131 addObject:v28];
            }

            else
            {
              v29 = v18;
              v30 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                v166 = 2114;
                v167 = v28;
                v168 = 2114;
                v169 = v29;
                _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Language %{public}@ not supported in %{public}@ - Deleting", buf, 0x20u);
              }

              v31 = [(SSRVoiceProfile *)v6 stringByAppendingPathComponent:v28];
              v32 = [SSRUtils removeItemAtPath:v31];

              v18 = v29;
            }
          }

          v25 = [(SSRVoiceProfile *)v23 countByEnumeratingWithState:&v155 objects:v173 count:16];
        }

        while (v25);
      }

      v8 = v123;
      v7 = v124;
      v5 = 0x278577000uLL;
    }

    if (!v131)
    {
      v11 = v8;
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filtered languages is nil - %@", v8];
      v56 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2114;
        v167 = v55;
        _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v57 = *(a1 + 40);
      if (v57)
      {
        (*(v57 + 16))(v57, 0);
      }

      v14 = 0;
      v138 = 0;
LABEL_66:
      v8 = v11;
LABEL_117:

      v10 = v138;
      goto LABEL_118;
    }

    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      v166 = 2114;
      v167 = v131;
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Migrating voice profiles in languages - %{public}@", buf, 0x16u);
    }

    if ((CSIsIOS() & 1) != 0 || CSIsMac())
    {
      v122 = v18;
      v132 = v6;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      obj = v131;
      v34 = [(SSRVoiceProfile *)obj countByEnumeratingWithState:&v151 objects:v172 count:16];
      if (v34)
      {
        v35 = v34;
        v138 = 0;
        v36 = *v152;
        v37 = 0x278577000uLL;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v152 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v151 + 1) + 8 * j);
            v40 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v166 = 2114;
              v167 = v39;
              _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Voice profile migration for language - %{public}@", buf, 0x16u);
            }

            v41 = [(SSRVoiceProfile *)v132 stringByAppendingPathComponent:v39];
            v42 = [v133 newVoiceProfileWithLocale:v39 withAppDomain:@"com.apple.siri"];
            v43 = v42;
            if (v42)
            {
              v44 = *(v37 + 1160);
              v45 = [v42 voiceProfileBasePath];
              v46 = [v44 moveContentsOfSrcDirectory:v41 toDestDirectory:v45];

              if (v46)
              {
                v47 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  v53 = v47;
                  v54 = [v43 voiceProfileBasePath];
                  *buf = 136315906;
                  v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                  v166 = 2114;
                  v167 = v41;
                  v168 = 2114;
                  v169 = v54;
                  v170 = 2114;
                  v171 = v46;
                  _os_log_error_impl(&dword_225E12000, v53, OS_LOG_TYPE_ERROR, "%s Moving contents from %{public}@ to %{public}@ failed with error %{public}@", buf, 0x2Au);
                }

                v138 = v46;
                v37 = 0x278577000;
              }

              else
              {
                [*(a1 + 32) _updateTrainedUsersWithAction:1 UserVoiceProfile:v43];
                v49 = [*(v37 + 1160) removeItemAtPath:v41];
                v50 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  v51 = v50;
                  v52 = [v43 profileID];
                  *buf = 136315650;
                  v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                  v166 = 2114;
                  v167 = v52;
                  v168 = 2114;
                  v169 = v39;
                  _os_log_impl(&dword_225E12000, v51, OS_LOG_TYPE_DEFAULT, "%s Completed migrating voiceprofile for %{public}@ in language %{public}@", buf, 0x20u);

                  v37 = 0x278577000;
                }

                v138 = 0;
              }
            }

            else
            {
              v48 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                v166 = 2114;
                v167 = v39;
                _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, "%s voice profile created is nil!!! - Skipping %{public}@", buf, 0x16u);
              }
            }
          }

          v35 = [(SSRVoiceProfile *)obj countByEnumeratingWithState:&v151 objects:v172 count:16];
        }

        while (v35);
        goto LABEL_113;
      }

LABEL_112:
      v138 = 0;
LABEL_113:

      v6 = v132;
      v8 = v123;
      v7 = v124;
      v18 = v122;
LABEL_114:
      v111 = *(a1 + 40);
      if (v111)
      {
        (*(v111 + 16))(v111, v138);
      }

      v14 = v131;
      goto LABEL_117;
    }

    if (!CSIsCommunalDevice())
    {
      v138 = 0;
      goto LABEL_114;
    }

    v122 = v18;
    v132 = v6;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v125 = v131;
    v127 = [(SSRVoiceProfile *)v125 countByEnumeratingWithState:&v147 objects:v163 count:16];
    if (!v127)
    {
      goto LABEL_112;
    }

    v138 = 0;
    v126 = *v148;
LABEL_70:
    v58 = 0;
    v59 = MEMORY[0x277D01970];
    while (1)
    {
      v60 = v59;
      if (*v148 != v126)
      {
        objc_enumerationMutation(v125);
      }

      v61 = *(*(&v147 + 1) + 8 * v58);
      v62 = [*(v5 + 1216) sharedInstance];
      v63 = [v62 SSRSpeakerProfilesBasePath];
      v137 = v61;
      v64 = [v63 stringByAppendingPathComponent:v61];

      v65 = [v64 stringByAppendingPathComponent:@"spid"];
      v66 = [v65 stringByAppendingPathComponent:@"trained_users.json"];

      v146 = 0;
      v67 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v63) = [v67 fileExistsAtPath:v66 isDirectory:&v146];

      v68 = [MEMORY[0x277CBEA60] array];
      v69 = v68;
      if (v63)
      {
        v59 = v60;
        if (v146)
        {
          v70 = v68;
        }

        else
        {
          v71 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v66];
          v145 = 0;
          v70 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v71 options:0 error:&v145];
          v72 = v145;

          if (v70)
          {
            v73 = v72 == 0;
          }

          else
          {
            v73 = 0;
          }

          if (!v73)
          {
            v112 = *v59;
            if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v166 = 2112;
              v167 = v66;
              v168 = 2112;
              v169 = v72;
              _os_log_impl(&dword_225E12000, v112, OS_LOG_TYPE_DEFAULT, "%s Could not read existing %@ file: err: %@", buf, 0x20u);
            }

            v114 = MEMORY[0x277CCACA8];
            v115 = [(SSRVoiceProfile *)v72 localizedDescription];
            v116 = [v114 stringWithFormat:@"Could not read existing %@ file: err: %@", v66, v115];

            v117 = *MEMORY[0x277D01970];
            v14 = v125;
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v166 = 2114;
              v167 = v116;
              _os_log_error_impl(&dword_225E12000, v117, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }

            v118 = *(a1 + 40);
            if (v118)
            {
              v119 = MEMORY[0x277CCA9B8];
              v161 = @"reason";
              v162 = v116;
              v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              v121 = [v119 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v120];
              (*(v118 + 16))(v118, v121);

              v14 = v125;
            }

            v6 = v132;
            v8 = v123;
            v7 = v124;
            v18 = v122;
            goto LABEL_117;
          }
        }
      }

      else
      {
        v70 = v68;
        v59 = v60;
      }

      v128 = v58;
      v74 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2114;
        v167 = v137;
        _os_log_impl(&dword_225E12000, v74, OS_LOG_TYPE_DEFAULT, "%s Voice profile migration for language - %{public}@", buf, 0x16u);
      }

      v129 = v66;
      v130 = v64;
      v75 = [SSRUtils removeItemAtPath:v66];
      v76 = [*(v5 + 1216) sharedInstance];
      v77 = [v76 SSRBasePathForAppDomain:@"com.apple.siri"];

      v135 = v77;
      v78 = [SSRUtils createDirectoryIfDoesNotExist:v77];
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      obja = v70;
      v79 = [obja countByEnumeratingWithState:&v141 objects:v160 count:16];
      if (v79)
      {
        break;
      }

LABEL_109:

      v110 = [SSRUtils removeItemAtPath:v130];
      v58 = v128 + 1;
      v5 = 0x278577000;
      if (v128 + 1 == v127)
      {
        v127 = [(SSRVoiceProfile *)v125 countByEnumeratingWithState:&v147 objects:v163 count:16];
        if (!v127)
        {
          goto LABEL_113;
        }

        goto LABEL_70;
      }
    }

    v80 = v79;
    v81 = *v142;
LABEL_87:
    v82 = 0;
    v136 = v80;
    while (1)
    {
      if (*v142 != v81)
      {
        objc_enumerationMutation(obja);
      }

      v83 = *(*(&v141 + 1) + 8 * v82);
      v84 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
      if (v84)
      {
        v85 = v84;
        v86 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
        v87 = [v86 unsignedIntegerValue];

        if (v87 == 1)
        {
          break;
        }
      }

      v101 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v101;
        v96 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
        v102 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
        *buf = 136315650;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2114;
        v167 = v96;
        v168 = 2114;
        v169 = v102;
        _os_log_impl(&dword_225E12000, v88, OS_LOG_TYPE_DEFAULT, "%s Skipped migrating non-siri landed profile - %{public}@, %{public}@", buf, 0x20u);

LABEL_106:
      }

      if (v80 == ++v82)
      {
        v80 = [obja countByEnumeratingWithState:&v141 objects:v160 count:16];
        if (!v80)
        {
          goto LABEL_109;
        }

        goto LABEL_87;
      }
    }

    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
    [v88 setObject:v89 forKeyedSubscript:@"UserVoiceProfileID"];

    v90 = [v83 objectForKeyedSubscript:@"UserSharedSiriID"];
    [v88 setObject:v90 forKeyedSubscript:@"UserSharedSiriID"];

    v91 = [v83 objectForKeyedSubscript:@"UserVoiceProfileDateTrained"];
    [v88 setObject:v91 forKeyedSubscript:@"UserVoiceProfileDateTrained"];

    v92 = [v83 objectForKeyedSubscript:@"UserVoiceProfileExpSatVecCount"];
    [v88 setObject:v92 forKeyedSubscript:@"UserVoiceProfileExpSatVecCount"];

    [v88 setObject:v137 forKeyedSubscript:@"UserVoiceProfileLocale"];
    [v88 setObject:@"com.apple.siri" forKeyedSubscript:@"UserVoiceProfileAppDomain"];
    v93 = [v135 stringByAppendingPathComponent:v137];
    v94 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
    v95 = [v93 stringByAppendingPathComponent:v94];
    [v88 setObject:v95 forKeyedSubscript:@"UserVoiceProfilePath"];

    v96 = [[SSRVoiceProfile alloc] initWithDictionary:v88];
    if (v96)
    {
      v97 = [v83 objectForKeyedSubscript:@"UserVoiceProfilePath"];
      v98 = [(SSRVoiceProfile *)v96 voiceProfileBasePath];
      v99 = [SSRUtils moveContentsOfSrcDirectory:v97 toDestDirectory:v98];

      if (v99)
      {
        v59 = MEMORY[0x277D01970];
        v100 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v107 = v100;
          v108 = [v83 objectForKeyedSubscript:@"UserVoiceProfilePath"];
          v109 = [(SSRVoiceProfile *)v96 voiceProfileBasePath];
          *buf = 136315906;
          v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
          v166 = 2114;
          v167 = v108;
          v168 = 2114;
          v169 = v109;
          v170 = 2114;
          v171 = v99;
          _os_log_error_impl(&dword_225E12000, v107, OS_LOG_TYPE_ERROR, "%s Moving contents from %{public}@ to %{public}@ failed with error %{public}@", buf, 0x2Au);

          v59 = MEMORY[0x277D01970];
        }

        v138 = v99;
      }

      else
      {
        [*(a1 + 32) _updateTrainedUsersWithAction:1 UserVoiceProfile:v96];
        v59 = MEMORY[0x277D01970];
        v104 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v105 = v104;
          v106 = [(SSRVoiceProfile *)v96 profileID];
          *buf = 136315650;
          v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
          v166 = 2114;
          v167 = v106;
          v168 = 2114;
          v169 = v137;
          _os_log_impl(&dword_225E12000, v105, OS_LOG_TYPE_DEFAULT, "%s Completed migrating voiceprofile for %{public}@ in language %{public}@", buf, 0x20u);

          v59 = MEMORY[0x277D01970];
        }

        v138 = 0;
      }
    }

    else
    {
      v103 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v166 = 2114;
        v167 = v88;
        _os_log_error_impl(&dword_225E12000, v103, OS_LOG_TYPE_ERROR, "%s voice profile created is nil!!! - Skipping %{public}@", buf, 0x16u);
      }
    }

    v80 = v136;
    goto LABEL_106;
  }

  if (v3)
  {
    *buf = 136315138;
    v165 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Profiles already migrated - Bailing out", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (id)userVoiceProfileForVoiceProfileID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v6 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          profileID = [v9 profileID];
          v11 = [profileID isEqualToString:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userVoiceProfilesForLocale:(id)locale
{
  v25 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  if (localeCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v7 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          locale = [v11 locale];
          v13 = [locale isEqualToString:localeCopy];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[SSRVoiceProfileStore userVoiceProfilesForLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ERR: locale passed as nil", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (id)userVoiceProfilesForAppDomain:(id)domain forLocale:(id)locale
{
  v26 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  localeCopy = locale;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
  v10 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v22;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(_enrolledVoiceProfiles);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      if (domainCopy)
      {
        appDomain = [*(*(&v21 + 1) + 8 * i) appDomain];
        if (([appDomain isEqualToString:domainCopy] & 1) == 0)
        {

          continue;
        }

        if (!localeCopy)
        {

LABEL_16:
          [v20 addObject:v14];
          continue;
        }
      }

      else if (!localeCopy)
      {
        goto LABEL_16;
      }

      locale = [v14 locale];
      v16 = [locale isEqualToString:localeCopy];

      if (!domainCopy)
      {
        if (!v16)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (v16)
      {
        goto LABEL_16;
      }
    }

    v11 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v11);
LABEL_19:

  if ([v20 count])
  {
    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (id)userVoiceProfilesForAppDomain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  if (domainCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v7 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          appDomain = [v11 appDomain];
          v13 = [appDomain isEqualToString:domainCopy];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[SSRVoiceProfileStore userVoiceProfilesForAppDomain:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ERR: appDomain passed as nil", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (id)initStore
{
  v8.receiver = self;
  v8.super_class = SSRVoiceProfileStore;
  v2 = [(SSRVoiceProfileStore *)&v8 init];
  if (v2)
  {
    v3 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
    storePrefs = v2->_storePrefs;
    v2->_storePrefs = v3;

    v5 = dispatch_queue_create("com.apple.corespeech.voiceprofilestore", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7998 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7998, &__block_literal_global_7999);
  }

  v3 = sharedInstance_userStore;

  return v3;
}

uint64_t __38__SSRVoiceProfileStore_sharedInstance__block_invoke(uint64_t a1)
{
  if (CSIsInternalBuild())
  {
    +[SSRUtils cleanupOrphanedVoiceIdGradingFiles];
  }

  sharedInstance_userStore = [[SSRVoiceProfileStore alloc] initStore];

  return MEMORY[0x2821F96F8]();
}

@end