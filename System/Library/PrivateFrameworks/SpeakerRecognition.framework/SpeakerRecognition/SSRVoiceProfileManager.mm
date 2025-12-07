@interface SSRVoiceProfileManager
+ (id)sharedInstanceWithEndpointId:(id)id;
+ (void)clearVTEnableAfterProfileSyncFlag;
- (BOOL)_checkIfDownloadRequiredForProfileId:(id)id;
- (BOOL)_isDirectory:(id)directory;
- (BOOL)_isLegacyEnrollmentMarkedWith:(id)with forLanguageCode:(id)code;
- (BOOL)_isMarkedForVoiceProfileTrainingSyncForLanguage:(id)language;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code withBackupMetaBlob:(id)blob;
- (BOOL)isSATEnrolledForSiriProfileId:(id)id forLanguageCode:(id)code;
- (BOOL)isSATEnrollmentMigratedForSiriProfileId:(id)id forLanguageCode:(id)code;
- (BOOL)isVoiceTriggerRepromptRequired;
- (BOOL)triggerVoiceProfileDuplicatesCleanup;
- (SSRVoiceProfileManager)initWithEndpointId:(id)id;
- (SSRVoiceProfileManagerDelegate)delegate;
- (id)SSRBasePathForAppDomain:(id)domain;
- (id)SSRSpeakerProfilesBasePath;
- (id)_CSSATCachePathForAppDomain:(id)domain;
- (id)_CSSATDownloadPath;
- (id)_CSSATLegacyUploadPath;
- (id)_CSSATUploadPathForSiriProfileId:(id)id;
- (id)_copyVoiceProfileAtPath:(id)path toPath:(id)toPath;
- (id)_createAndSetNewEnrollmentId;
- (id)_downloadAndEnrollVoiceProfileForProfileId:(id)id withDownloadTriggerBlock:(id)block;
- (id)_enableVoiceTriggerIfLanguageMatches:(id)matches;
- (id)_enrollVoiceProfileForSiriProfileId:(id)id fromCacheDirectoryPath:(id)path withCategoryType:(unint64_t)type;
- (id)_getUserVoiceProfileDownloadCacheDirectoryForProfileId:(id)id forDeviceCategory:(unint64_t)category forVoiceProfileVersion:(unint64_t)version;
- (id)_getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:(id)path;
- (id)_getVoiceProfilePathsToBeUploadedForSiriProfileId:(id)id;
- (id)_getVoiceProfilesForSiriProfileId:(id)id withLanguageCode:(id)code;
- (id)_prepareVoiceProfileWithSiriProfileId:(id)id withUploadBlock:(id)block;
- (id)createEnrollmentId;
- (id)deleteUserVoiceProfile:(id)profile;
- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)language;
- (id)discardSiriEnrollmentForProfileId:(id)id forLanguageCode:(id)code;
- (id)getAllContentsOfVoiceProfileStore;
- (id)getCacheDirectoryForAppDomain:(id)domain;
- (id)getCachedVoiceProfileAvailabilityMetaBlob;
- (id)getDonationIdsFromLanguageCode:(id)code error:(id *)error;
- (id)getSATEnrollmentPath;
- (id)getUserVoiceProfileUpdateDirectory;
- (id)getUserVoiceProfileUploadPathWithEnrolledLanguageList:(id *)list;
- (id)getVoiceProfileAnalyticsForAppDomain:(id)domain withLocale:(id)locale;
- (id)markSATEnrollmentSuccessForVoiceProfile:(id)profile;
- (id)newVoiceProfileWithLocale:(id)locale withAppDomain:(id)domain;
- (id)provisionedVoiceProfilesForAppDomain:(id)domain withLocale:(id)locale;
- (id)provisionedVoiceProfilesForLocale:(id)locale;
- (id)updateVoiceProfile:(id)profile withUserName:(id)name;
- (id)voiceProfileForId:(id)id;
- (id)voiceTriggerRepromptFinished;
- (void)_copyExplicitEnrollmentFilesFromPath:(id)path toPath:(id)toPath withCompletion:(id)completion;
- (void)_downloadVoiceProfileForProfileId:(id)id forDeviceCategory:(unint64_t)category withDownloadTriggerBlock:(id)block withCompletion:(id)completion;
- (void)_markVoiceProfileTrainingSyncForLanguage:(id)language;
- (void)addUtterances:(id)utterances toProfile:(id)profile withContext:(id)context doUtteranceDonation:(BOOL)donation withCompletion:(id)completion;
- (void)applyContentsToVoiceProfileStore:(id)store;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets;
- (void)deleteAllVoiceProfilesForAppDomain:(id)domain;
- (void)emitMetricEnrollmentId:(id)id isVoiceProfileiCloudSyncSuccess:(BOOL)success failureReasonIfAny:(id)any forLocale:(id)locale;
- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)language;
- (void)importVoiceProfile:(id)profile appDomain:(id)domain withSharedUserId:(id)id withPersonaId:(id)personaId withLocale:(id)locale withAsset:(id)asset trainWithPayload:(BOOL)payload withCompletion:(id)self0;
- (void)isImplicitTrainingRequiredForVoiceProfileId:(id)id locale:(id)locale completion:(id)completion;
- (void)isVoiceProfileUploadedToiCloudForLanguageCode:(id)code withCompletionBlock:(id)block;
- (void)isVoiceTriggerRepromptRequiredWithCompletion:(id)completion;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion;
- (void)migrateTDVoiceProfilesToTDTI;
- (void)notifyImplicitTrainingUtteranceAvailable:(id)available forVoiceProfileId:(id)id withRecordDeviceInfo:(id)info withRecordCtxt:(id)ctxt withVoiceTriggerCtxt:(id)triggerCtxt withOtherCtxt:(id)otherCtxt assetToUse:(id)use withCompletion:(id)self0;
- (void)notifyUserVoiceProfileDownloadReadyForUser:(id)user getData:(id)data completion:(id)completion;
- (void)notifyUserVoiceProfileUpdateReady;
- (void)notifyUserVoiceProfileUploadComplete;
- (void)notifyUserVoiceProfileUploadCompleteForSiriProfileId:(id)id withError:(id)error;
- (void)pruneImplicitUtterancesOfProfile:(id)profile withAsset:(id)asset;
- (void)setDelegate:(id)delegate;
- (void)triggerInvalidSiriProfileCleanupFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain;
- (void)triggerRetrainingVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion;
- (void)triggerVoiceProfileCleanupWithCompletion:(id)completion;
- (void)triggerVoiceProfileDownload;
- (void)triggerVoiceProfileMigrationWithCompletion:(id)completion;
- (void)uploadUserVoiceProfileForSiriProfileId:(id)id withUploadTrigger:(id)trigger completion:(id)completion;
- (void)voiceTriggerRepromptFinishedWithCompletion:(id)completion;
@end

@implementation SSRVoiceProfileManager

- (SSRVoiceProfileManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)getDonationIdsFromLanguageCode:(id)code error:(id *)error
{
  codeCopy = code;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6714;
  v25 = __Block_byref_object_dispose__6715;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6714;
  v19 = __Block_byref_object_dispose__6715;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRVoiceProfileManager_getDonationIdsFromLanguageCode_error___block_invoke;
  block[3] = &unk_2785791B8;
  v8 = codeCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __63__SSRVoiceProfileManager_getDonationIdsFromLanguageCode_error___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  v3 = [v2 userVoiceProfilesForLocale:a1[4]];

  if (v3 && [v3 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v9 appDomain];
          v11 = [v10 isEqualToString:@"com.apple.siri"];

          if (v11)
          {
            v15 = [v9 getDonationIds];
            v16 = *(a1[6] + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = v15;

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (!*(*(a1[6] + 8) + 40))
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"voiceProfile with appDomain: %@ is not found", @"com.apple.siri"];
      v19 = MEMORY[0x277CCA9B8];
      v28 = @"reason";
      v29 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v20];
      v22 = *(a1[5] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:&unk_2839337E8];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SSRVoiceProfileManager_setDelegate___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)applyContentsToVoiceProfileStore:(id)store
{
  storeCopy = store;
  v4 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v4 applyContentsToVoiceProfileStorePrefs:storeCopy];
}

- (id)getAllContentsOfVoiceProfileStore
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  getAllContentsOfVoiceProfileStorePrefs = [v2 getAllContentsOfVoiceProfileStorePrefs];

  return getAllContentsOfVoiceProfileStorePrefs;
}

- (void)importVoiceProfile:(id)profile appDomain:(id)domain withSharedUserId:(id)id withPersonaId:(id)personaId withLocale:(id)locale withAsset:(id)asset trainWithPayload:(BOOL)payload withCompletion:(id)self0
{
  profileCopy = profile;
  domainCopy = domain;
  idCopy = id;
  personaIdCopy = personaId;
  localeCopy = locale;
  assetCopy = asset;
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __139__SSRVoiceProfileManager_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke;
  v26[3] = &unk_278579690;
  v22 = completionCopy;
  v27 = v22;
  v23 = MEMORY[0x22AA71400](v26);
  if (profileCopy && domainCopy && localeCopy)
  {
    v24 = +[SSRVoiceProfileManagerXPCClient sharedClient];
    LOBYTE(v25) = payload;
    [v24 importVoiceProfile:profileCopy appDomain:domainCopy withSharedUserId:idCopy withPersonaId:personaIdCopy withLocale:localeCopy withAsset:assetCopy trainWithPayload:v25 withCompletion:v23];
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839337C0];
    (v23)[2](v23, v24);
  }
}

void __139__SSRVoiceProfileManager_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = MEMORY[0x277D01970];
    v6 = *MEMORY[0x277D01970];
    if (v3 && os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SSRVoiceProfileManager importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: %@", &v7, 0x16u);
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[SSRVoiceProfileManager importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
      _os_log_fault_impl(&dword_225E12000, v6, OS_LOG_TYPE_FAULT, "%s No completionBlock provided to importVoice Profile", &v7, 0xCu);
    }
  }
}

- (BOOL)_isLegacyEnrollmentMarkedWith:(id)with forLanguageCode:(id)code
{
  v26 = *MEMORY[0x277D85DE8];
  withCopy = with;
  codeCopy = code;
  if (!codeCopy)
  {
    v17 = *MEMORY[0x277D01970];
    v16 = 0;
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v22 = 136315138;
    v23 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Language Code is nil!", &v22, 0xCu);
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  sSRSpeakerProfilesBasePath = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v9 = [sSRSpeakerProfilesBasePath stringByAppendingPathComponent:codeCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (![defaultManager fileExistsAtPath:v9 isDirectory:0])
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s SAT path doesnt exist - %@", &v22, 0x16u);
    }

    goto LABEL_17;
  }

  v11 = [v9 stringByAppendingPathComponent:withCopy];
  v12 = [v9 stringByAppendingPathComponent:@"td/audio"];
  if (![defaultManager fileExistsAtPath:v11 isDirectory:0])
  {
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v13 = [defaultManager contentsOfDirectoryAtPath:v12 error:0];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'"];
  v15 = [v13 filteredArrayUsingPredicate:v14];

  if (!v15 || ![v15 count])
  {
    v19 = MEMORY[0x277D01970];
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s No Audio file exists when enrollment marker is set, remove marker", &v22, 0xCu);
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      v24 = 2114;
      v25 = v13;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Contents of audio dir - %{public}@", &v22, 0x16u);
    }

    [defaultManager removeItemAtPath:v11 error:0];

    goto LABEL_16;
  }

  v16 = 1;
LABEL_19:

  return v16;
}

- (id)_CSSATUploadPathForSiriProfileId:(id)id
{
  idCopy = id;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Caches/VoiceTrigger/SATUpload"];
  v5 = v4;
  if (idCopy)
  {
    v6 = [v4 stringByAppendingPathComponent:idCopy];

    v5 = v6;
  }

  v7 = +[SSRUtils baseDir];
  v8 = [v7 stringByAppendingPathComponent:v5];

  return v8;
}

- (id)_CSSATCachePathForAppDomain:(id)domain
{
  domainCopy = domain;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Caches/VoiceTrigger"];
  v5 = v4;
  if (domainCopy)
  {
    v6 = [v4 stringByAppendingPathComponent:domainCopy];

    v5 = v6;
  }

  v7 = +[SSRUtils baseDir];
  v8 = [v7 stringByAppendingPathComponent:v5];

  return v8;
}

- (id)_CSSATDownloadPath
{
  v2 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
  v3 = [v2 stringByAppendingPathComponent:@"SATUpdate"];

  return v3;
}

- (void)deleteAllVoiceProfilesForAppDomain:(id)domain
{
  v44 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
    v39 = 2112;
    v40 = domainCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting all voice profiles for app domain: %@", buf, 0x16u);
  }

  v6 = +[SSRVoiceProfileStore sharedInstance];
  v30 = domainCopy;
  v7 = [v6 userVoiceProfilesForAppDomain:domainCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v6 deleteUserVoiceProfile:v12];
        if (v13)
        {
          v14 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v15 = v14;
            profileID = [v12 profileID];
            *buf = 136315650;
            v38 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
            v39 = 2114;
            v40 = profileID;
            v41 = 2114;
            v42 = v13;
            _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete Voice Profile %{public}@ with error %{public}@", buf, 0x20u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  v17 = [v29 SSRBasePathForAppDomain:v30];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v17 isDirectory:0])
  {
    v32 = 0;
    [defaultManager removeItemAtPath:v17 error:&v32];
    v19 = v32;
    if (v19)
    {
      v20 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v24 = v20;
        localizedDescription = [v19 localizedDescription];
        *buf = 136315650;
        v38 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
        v39 = 2112;
        v40 = v17;
        v41 = 2112;
        v42 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s Couldn't delete SAT directory at path %@ %@", buf, 0x20u);
      }
    }
  }

  _CSSATCachePath = [v29 _CSSATCachePath];
  if ([defaultManager fileExistsAtPath:_CSSATCachePath isDirectory:0])
  {
    v31 = 0;
    [defaultManager removeItemAtPath:_CSSATCachePath error:&v31];
    v22 = v31;
    if (v22)
    {
      v23 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v26 = v23;
        localizedDescription2 = [v22 localizedDescription];
        *buf = 136315650;
        v38 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
        v39 = 2112;
        v40 = _CSSATCachePath;
        v41 = 2112;
        v42 = localizedDescription2;
        _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s Couldn't delete SAT cache directory at path %@ %@", buf, 0x20u);
      }
    }
  }
}

- (id)deleteUserVoiceProfile:(id)profile
{
  v21[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
    v16 = 2112;
    v17 = profileCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting voice profile with voiceProfileId: %@", &v14, 0x16u);
  }

  if (!profileCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile passed is nil - Bailing out"];
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s %{public}@", &v14, 0x16u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = v9;
    profileID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v7 = [v12 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:profileID];
    goto LABEL_10;
  }

  v6 = +[SSRVoiceProfileStore sharedInstance];
  v7 = [v6 deleteUserVoiceProfile:profileCopy];

  if (v7)
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      profileID = [profileCopy profileID];
      v14 = 136315650;
      v15 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
      v16 = 2114;
      v17 = profileID;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete Voice Profile %{public}@ with error %{public}@", &v14, 0x20u);
LABEL_10:
    }
  }

  return v7;
}

- (BOOL)isSATEnrollmentMigratedForSiriProfileId:(id)id forLanguageCode:(id)code
{
  v4 = [SSRUtils getVoiceProfileForSiriProfileId:id forLanguageCode:code];
  v5 = v4;
  if (v4)
  {
    isMarkedSATMigrated = [v4 isMarkedSATMigrated];
  }

  else
  {
    isMarkedSATMigrated = 0;
  }

  return isMarkedSATMigrated;
}

- (BOOL)isSATEnrolledForSiriProfileId:(id)id forLanguageCode:(id)code
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  codeCopy = code;
  v8 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  getVoiceProfileStoreVersion = [v8 getVoiceProfileStoreVersion];

  if (getVoiceProfileStoreVersion == -1)
  {
    isMarkedSATEnrolled = [(SSRVoiceProfileManager *)self _isLegacyEnrollmentMarkedWith:@"enrollment_completed" forLanguageCode:codeCopy];
  }

  else
  {
    v10 = [SSRUtils getVoiceProfileForSiriProfileId:idCopy forLanguageCode:codeCopy];
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[SSRVoiceProfileManager isSATEnrolledForSiriProfileId:forLanguageCode:]";
      v16 = 2114;
      v17 = codeCopy;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Profiles already migrated, check for enrollment on %{public}@ on profile %{public}@", &v14, 0x20u);
    }

    if (v10)
    {
      isMarkedSATEnrolled = [v10 isMarkedSATEnrolled];
    }

    else
    {
      isMarkedSATEnrolled = 0;
    }
  }

  return isMarkedSATEnrolled;
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke;
  block[3] = &unk_278579218;
  selfCopy = self;
  v14 = completionCopy;
  v12 = profileCopy;
  v9 = profileCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__291;
  v24 = __Block_byref_object_dispose__292;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_293;
  v17[3] = &unk_278579050;
  v19 = *(a1 + 48);
  v18 = *(a1 + 32);
  v25 = MEMORY[0x22AA71400](v17);
  if (*(a1 + 32))
  {
    v2 = +[SSRVoiceProfileStore sharedInstance];
    if ([*(a1 + 32) markSATEnrollmentSuccess])
    {
      if (CSIsIOS() && (CSIsCommunalDevice() & 1) == 0)
      {
        v3 = *(a1 + 40);
        v4 = [*(a1 + 32) locale];
        [v3 _markVoiceProfileTrainingSyncForLanguage:v4];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_294;
      v14[3] = &unk_2785790A0;
      v16 = &v20;
      v13 = *(a1 + 32);
      v15 = vextq_s8(v13, v13, 8uLL);
      [v2 addUserVoiceProfile:v13.i64[0] withContext:0 withCompletion:v14];

      v5 = 0;
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 32) profileID];
      v10 = [v8 stringWithFormat:@"ERR: Failed in marking Enrollment as Successful for profile %@", v9];

      v11 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v27 = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v5 = [v11 errorWithDomain:@"com.apple.speakerrecognition" code:723 userInfo:v12];

      (*(v21[5] + 16))();
    }
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v6 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = v2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v5 = [v6 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v7];

    (*(v21[5] + 16))();
  }

  _Block_object_dispose(&v20, 8);
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_293(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D01970];
  if (v5)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@", &v13, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 profileID];
      v13 = 136315906;
      v14 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Marking SAT enrollment success for voice profile %@ finished with result: %i and error: %@", &v13, 0x26u);

      v8 = *(a1 + 40);
    }

    (*(v8 + 16))(v8, a2, v5);
  }
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_294(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_2;
  block[3] = &unk_278579078;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    if (CSIsIOS())
    {
      v2 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke_2";
        _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering profile sync check", &v6, 0xCu);
      }

      v3 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v3 postNotificationName:@"com.apple.voicetrigger.voiceprofilesync" object:0];
    }

    v4 = +[SSRVoiceProfileStore sharedInstance];
    [v4 cleanupDuplicatesForProfile:*(a1 + 40)];
  }

  return notify_post("com.apple.voicetrigger.PHSProfileModified");
}

- (id)markSATEnrollmentSuccessForVoiceProfile:(id)profile
{
  v34 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6714;
  v26 = __Block_byref_object_dispose__6715;
  v27 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = objc_alloc_init(MEMORY[0x277D01710]);
  [v6 enter];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile___block_invoke;
  v19[3] = &unk_278579028;
  v21 = &v22;
  v7 = v6;
  v20 = v7;
  [(SSRVoiceProfileManager *)self markSATEnrollmentSuccessForVoiceProfile:profileCopy completion:v19];
  v8 = [v7 waitWithTimeout:{dispatch_time(0, 10000000000)}];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  if (v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"markSATEnrollmentSuccessForVoiceProfile timedout after %fms", v10 * 1000.0];
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:]";
      v32 = 2112;
      v33 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v28 = @"reason";
    v29 = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:767 userInfo:v14];
    v16 = v23[5];
    v23[5] = v15;
  }

  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __66__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) leave];
}

- (void)triggerRetrainingVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  if (profileCopy)
  {
    v10 = +[SSRVoiceProfileStore sharedInstance];
    profileID = [profileCopy profileID];
    v12 = [v10 userVoiceProfileForVoiceProfileID:profileID];

    if (v12)
    {
      [v10 retrainVoiceProfile:v12 withContext:contextCopy withCompletion:completionCopy];
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      profileID2 = [profileCopy profileID];
      v18 = [v16 stringWithFormat:@"ERR: Voice Profile not found for Id %@ - Bailing out", profileID2];

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[SSRVoiceProfileManager triggerRetrainingVoiceProfile:withContext:withCompletion:]";
        v29 = 2114;
        v30 = v18;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v21];
      completionCopy[2](completionCopy, v22);

      v12 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[SSRVoiceProfileManager triggerRetrainingVoiceProfile:withContext:withCompletion:]";
      v29 = 2114;
      v30 = v10;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v12];
    completionCopy[2](completionCopy, v15);
  }
}

- (void)triggerVoiceProfileDownload
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
}

- (void)pruneImplicitUtterancesOfProfile:(id)profile withAsset:(id)asset
{
  assetCopy = asset;
  profileCopy = profile;
  v8 = objc_alloc_init(SSRVoiceProfilePruner);
  if (CSIsCommunalDevice())
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [(SSRVoiceProfilePruner *)v8 pruneVoiceProfile:profileCopy forSpIdType:v7 withAsset:assetCopy];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets
{
  assetsCopy = assets;
  localeCopy = locale;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  [v7 cleanupVoiceProfileModelFilesForLocale:localeCopy withAssets:assetsCopy];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset
{
  localeCopy = locale;
  assetCopy = asset;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (assetCopy)
  {
    [array addObject:assetCopy];
  }

  [(SSRVoiceProfileManager *)self cleanupVoiceProfileModelFilesForLocale:localeCopy withAssets:v8];
}

- (void)triggerVoiceProfileCleanupWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  [v4 cleanupVoiceProfileStore:completionCopy];
}

- (BOOL)triggerVoiceProfileDuplicatesCleanup
{
  v2 = +[SSRVoiceProfileStore sharedInstance];
  cleanupDuplicatedProfiles = [v2 cleanupDuplicatedProfiles];

  return cleanupDuplicatedProfiles;
}

- (void)triggerInvalidSiriProfileCleanupFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain
{
  domainCopy = domain;
  languageCopy = language;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  [v7 cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:languageCopy appDomain:domainCopy];
}

- (void)migrateTDVoiceProfilesToTDTI
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  v3 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v4 = [v2 userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 copyTDAudioToTDTI];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          voiceProfileBasePath = [v11 voiceProfileBasePath];
          *buf = 136315394;
          v20 = "[SSRVoiceProfileManager migrateTDVoiceProfilesToTDTI]";
          v21 = 2112;
          v22 = voiceProfileBasePath;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Triggering td profile migration for profile: %@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)triggerVoiceProfileMigrationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  [v4 migrateVoiceProfilesIfNeededWithCompletionBlock:completionCopy];
}

- (void)voiceTriggerRepromptFinishedWithCompletion:(id)completion
{
  v7 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVoiceProfileManager voiceTriggerRepromptFinishedWithCompletion:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Not-implemented", &v5, 0xCu);
  }

  completionCopy[2](completionCopy, 0);
}

- (id)voiceTriggerRepromptFinished
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Running VoiceTriggerRePromptFinised...", &v10, 0xCu);
  }

  v5 = self->_lastRepromptedDate;
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Storing VoiceTriggerRePromptFinished on date %@", &v10, 0x16u);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  [mEMORY[0x277D01788] voiceTriggerRePromptFinishedWithDate:v5];

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Done VoiceTriggerRePromptFinised!", &v10, 0xCu);
  }

  return 0;
}

- (void)isVoiceTriggerRepromptRequiredWithCompletion:(id)completion
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequiredWithCompletion:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s not-implemented. return false.", &v4, 0xCu);
  }
}

- (BOOL)isVoiceTriggerRepromptRequired
{
  v77 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v4 = v3;

  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Checking if isVoiceTriggerRepromptRequired...", buf, 0xCu);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  forceRePromptVoiceTrigger = [mEMORY[0x277D01788] forceRePromptVoiceTrigger];

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Checking if already reprompted...", buf, 0xCu);
  }

  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
  dateWhenVoiceTriggerRePrompted = [mEMORY[0x277D01788]2 dateWhenVoiceTriggerRePrompted];

  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (forceRePromptVoiceTrigger)
    {
      v13 = @"YES";
    }

    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Force re-prompt preference config value %@", buf, 0x16u);
    v12 = *v5;
  }

  v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!dateWhenVoiceTriggerRePrompted)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    v18 = "%s Not RePrompted before";
    v19 = v12;
LABEL_17:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_18:
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Setting up AFSettingsConnection...", buf, 0xCu);
    }

    v50 = objc_alloc_init(MEMORY[0x277CEF3A0]);
    date = [MEMORY[0x277CBEAA8] date];
    v22 = dispatch_semaphore_create(0);
    v23 = dispatch_time(0, 5000000000);
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = __Block_byref_object_copy__6714;
    v75 = __Block_byref_object_dispose__6715;
    v76 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__6714;
    v61 = __Block_byref_object_dispose__6715;
    v62 = 0;
    v24 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136315138;
      v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Fetching active account using AFSettingConnection...", v67, 0xCu);
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __56__SSRVoiceProfileManager_isVoiceTriggerRepromptRequired__block_invoke;
    v52[3] = &unk_278579000;
    v54 = buf;
    v55 = &v57;
    v56 = &v63;
    v25 = v22;
    v53 = v25;
    [v50 fetchActiveAccount:v52];
    v26 = COERCE_DOUBLE(dispatch_semaphore_wait(v25, v23));
    date2 = [MEMORY[0x277CBEAA8] date];
    v28 = *v5;
    if (v26 == 0.0)
    {
      v30 = v28;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        [date2 timeIntervalSinceDate:date];
        *v67 = 136315394;
        v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
        v69 = 2050;
        v70 = v31 * 1000.0;
        _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s timeToRet(AFSettingsConnection:fetchActiveAccount:): %{public}fms", v67, 0x16u);
      }
    }

    else if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136315650;
      v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v69 = 2050;
      v70 = v26;
      v71 = 1026;
      LODWORD(v72) = 5000;
      _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Timedout waiting for AFSettingsConnection:fetchActiveAccount: %{public}ld, waitedFor: %{public}d, Returning false", v67, 0x1Cu);
    }

    v32 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v64 + 24))
      {
        *&v33 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v33 = COERCE_DOUBLE(@"NO");
      }

      *v67 = 136315394;
      v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v69 = 2112;
      v70 = *&v33;
      _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Result of isVoiceTriggerRepromptRequired is %@...", v67, 0x16u);
    }

    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    [processInfo2 systemUptime];
    v36 = v35;

    v37 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 136315394;
      v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v69 = 2050;
      v70 = (v36 - v4) * 1000.0;
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s isVoiceTriggerRePrompt required check if re prompt is required took %{public}.3fms", v67, 0x16u);
    }

    mEMORY[0x277D01788]3 = [MEMORY[0x277D01788] sharedPreferences];
    forceSetRePromptRequired = [mEMORY[0x277D01788]3 forceSetRePromptRequired];

    if (CSIsInternalBuild() & forceSetRePromptRequired)
    {
      v40 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v64 + 24))
        {
          *&v41 = COERCE_DOUBLE(@"YES");
        }

        else
        {
          *&v41 = COERCE_DOUBLE(@"NO");
        }

        *v67 = 136315394;
        v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
        v69 = 2112;
        v70 = *&v41;
        _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Forcing isRePromptRequired to YES overriding it's original value of: %@", v67, 0x16u);
      }

      *(v64 + 24) = forceSetRePromptRequired;
    }

    else if ((v64[3] & 1) == 0)
    {
      v29 = 0;
LABEL_50:

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v63, 8);
      goto LABEL_51;
    }

    v42 = objc_alloc_init(MEMORY[0x277CCA968]);
    v43 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v42 setLocale:v43];

    [v42 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v44 = [MEMORY[0x277CBEAA8] now];
    v45 = [v42 stringFromDate:v44];

    v46 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      lastRepromptedDate = self->_lastRepromptedDate;
      *v67 = 136315650;
      v68 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v69 = 2112;
      v70 = *&lastRepromptedDate;
      v71 = 2112;
      v72 = v45;
      _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s RePrompted. Updating _lastRepromptedDate from %@ to %@", v67, 0x20u);
    }

    objc_storeStrong(&self->_lastRepromptedDate, v45);
    mEMORY[0x277D01900] = [MEMORY[0x277D01900] sharedLogger];
    [mEMORY[0x277D01900] logRePromptFinishedWithSiriSpeechID:v58[5] withRePromptDate:self->_lastRepromptedDate withIsRePrompted:*(v64 + 24) withLocale:*(*&buf[8] + 40)];

    v29 = *(v64 + 24);
    goto LABEL_50;
  }

  if (v14)
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    *&buf[12] = 2112;
    *&buf[14] = dateWhenVoiceTriggerRePrompted;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Already RePrompted on %@", buf, 0x16u);
  }

  v15 = CSIsInternalBuild() & forceRePromptVoiceTrigger;
  v16 = *v5;
  v17 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
  if (v15 == 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    v18 = "%s Force re-prompt enabled. Continuing with RePrompt..";
    v19 = v16;
    goto LABEL_17;
  }

  if (v17)
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s RePrompt is not required. Return false.", buf, 0xCu);
  }

  v29 = 0;
LABEL_51:

  return v29 & 1;
}

void __56__SSRVoiceProfileManager_isVoiceTriggerRepromptRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v5 debugDescription];
    v19 = 136315394;
    v20 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Active Assistant Account is %@", &v19, 0x16u);
  }

  v11 = [v5 speechIdentifier];
  v12 = [v5 localeIdentifier];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s speechIdentifier is %@", &v19, 0x16u);
  }

  v16 = +[VoiceTriggerRePromptUtil sharedInstance];
  v17 = [v16 isRePromptableWithAssistantId:v11];

  if (v17)
  {
    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s AssistantId required RePrompt", &v19, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getVoiceProfileAnalyticsForAppDomain:(id)domain withLocale:(id)locale
{
  v43 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  localeCopy = locale;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:domainCopy forLocale:localeCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = +[SSRAssetManager sharedManager];
    v12 = 3;
    v33 = localeCopy;
    v13 = [v11 installedAssetOfType:3 forLanguage:localeCopy];

    v14 = v13;
    if ((CSIsCommunalDevice() & 1) == 0)
    {
      if ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac())
      {
        [v14 psrCombinationWeight];
        if (((v15 == 1.0) & [v14 useTDTIEnrollment]) != 0)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    v32 = v7;
    v34 = domainCopy;
    v31 = v14;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v9;
    v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          profileID = [v21 profileID];
          [dictionary setObject:profileID forKey:@"profileID"];

          v24 = MEMORY[0x277CCABB0];
          v25 = [v21 getExplicitEnrollmentUtterancesForType:v12];
          v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
          [dictionary setObject:v26 forKey:@"numExplicitUtt"];

          v27 = MEMORY[0x277CCABB0];
          v28 = [v21 getImplicitEnrollmentUtterancesForType:v12];
          v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
          [dictionary setObject:v29 forKey:@"numImplicitUtt"];

          [array addObject:dictionary];
        }

        v18 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }

    localeCopy = v33;
    domainCopy = v34;
    v7 = v32;
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[SSRVoiceProfileManager getVoiceProfileAnalyticsForAppDomain:withLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil!", buf, 0xCu);
    }

    array = 0;
  }

  return array;
}

- (id)voiceProfileForId:(id)id
{
  idCopy = id;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfileForVoiceProfileID:idCopy];

  return v5;
}

- (id)provisionedVoiceProfilesForLocale:(id)locale
{
  v28 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfilesForLocale:localeCopy];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 && [v5 count])
  {
    v19 = v4;
    v20 = localeCopy;
    deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
    v7 = [SSRUtils deviceCategoryForDeviceProductType:?];
    v8 = [v5 sortedArrayUsingComparator:&__block_literal_global_272];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SSRVoiceProfileMetaContext alloc] initWithVoiceProfile:*(*(&v21 + 1) + 8 * i)];
          v14 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v7];
          [(SSRVoiceProfileMetaContext *)v13 setProductCategory:v14];

          [(SSRVoiceProfileMetaContext *)v13 setVersion:&unk_283933948];
          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v15 = v6;

    v4 = v19;
    localeCopy = v20;
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[SSRVoiceProfileManager provisionedVoiceProfilesForLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil!", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t __60__SSRVoiceProfileManager_provisionedVoiceProfilesForLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateAdded];

  if (v6)
  {
    v7 = [v5 dateAdded];

    if (v7)
    {
      v8 = [v4 dateAdded];
      v9 = [v5 dateAdded];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)provisionedVoiceProfilesForAppDomain:(id)domain withLocale:(id)locale
{
  v19 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  localeCopy = locale;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:domainCopy forLocale:localeCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_6768];
  }

  else
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[SSRVoiceProfileManager provisionedVoiceProfilesForAppDomain:withLocale:]";
      v15 = 2114;
      v16 = domainCopy;
      v17 = 2114;
      v18 = localeCopy;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil for %{public}@ and %{public}@!", &v13, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

uint64_t __74__SSRVoiceProfileManager_provisionedVoiceProfilesForAppDomain_withLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateAdded];

  if (v6)
  {
    v7 = [v5 dateAdded];

    if (v7)
    {
      v8 = [v4 dateAdded];
      v9 = [v5 dateAdded];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)_CSSATLegacyUploadPath
{
  v2 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
  v3 = [v2 stringByAppendingPathComponent:@"SATLegacyUpload"];

  return v3;
}

- (BOOL)_isDirectory:(id)directory
{
  v7 = 0;
  v3 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  defaultManager = [v3 defaultManager];
  [defaultManager fileExistsAtPath:directoryCopy isDirectory:&v7];

  return v7;
}

- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)language
{
  v33 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
    *&buf[12] = 2114;
    *&buf[14] = languageCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s \nlanguageCode: %{public}@", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v7 = objc_alloc_init(MEMORY[0x277CEF3A0]);
  v8 = dispatch_semaphore_create(0);
  v9 = dispatch_time(0, 5000000000);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__6714;
  v31 = __Block_byref_object_dispose__6715;
  v32 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SSRVoiceProfileManager_devicesWithVoiceProfileIniCloudForLanguage___block_invoke;
  v19[3] = &unk_278578FA0;
  v10 = languageCopy;
  v20 = v10;
  v22 = buf;
  v11 = v8;
  v21 = v11;
  [v7 getDevicesWithAvailablePHSAssetsForLanguage:v10 completion:v19];
  v12 = dispatch_semaphore_wait(v11, v9);
  date2 = [MEMORY[0x277CBEAA8] date];
  v14 = *v4;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315650;
      v24 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
      v25 = 2050;
      v26 = *&v12;
      v27 = 1026;
      v28 = 5000;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Timedout waiting for AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage: %{public}ld, waitedFor: %{public}d, Returning nil", v23, 0x1Cu);
    }
  }

  else
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [date2 timeIntervalSinceDate:date];
      *v23 = 136315394;
      v24 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
      v25 = 2050;
      v26 = v16 * 1000.0;
      _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s timeToRet(AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage:): %{public}fms", v23, 0x16u);
    }
  }

  v17 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v17;
}

void __69__SSRVoiceProfileManager_devicesWithVoiceProfileIniCloudForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Devices with VoiceProfile in iCloud for language: %{public}@:%{public}@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)language
{
  v18 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = *MEMORY[0x277D01970];
  if (languageCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
      v16 = 2114;
      v17 = languageCopy;
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Will Enable VoiceTrigger after VoiceProfile sync for language: %{public}@", buf, 0x16u);
    }

    _CSNotBackedupPreferencesSetValueForKey();
    if (CSIsInternalBuild())
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v6 = _CSNotBackedupPreferencesValueForKey();
      v7 = v6;
      if (v6)
      {
        v8 = [v6 mutableCopy];

        dictionary = v8;
      }

      deviceBuildVersion = [MEMORY[0x277D018F8] deviceBuildVersion];
      v12[1] = @"timestamp";
      v13[0] = deviceBuildVersion;
      v10 = +[SSRUtils timeStampString];
      v13[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

      [dictionary setObject:v11 forKeyedSubscript:@"EnableVTUponVoiceProfileSync"];
      _CSNotBackedupPreferencesSetValueForKey();
    }

    CSNotBackedupInternalPreferencesSynchronize();
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    v16 = 2082;
    v17 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", buf, 0x16u);
  }
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code
{
  v63 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  createEnrollmentId = [(SSRVoiceProfileManager *)self createEnrollmentId];
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (!deviceProductType)
  {
    v33 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      v38 = @"Unknown device";
      selfCopy2 = self;
      v40 = createEnrollmentId;
      v41 = codeCopy;
LABEL_24:
      [(SSRVoiceProfileManager *)selfCopy2 emitMetricEnrollmentId:v40 isVoiceProfileiCloudSyncSuccess:0 failureReasonIfAny:v38 forLocale:v41];
      v30 = 0;
      goto LABEL_29;
    }

    *buf = 136315394;
    v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v54 = 2114;
    v55 = codeCopy;
    v34 = "%s ERR: Unknown device. Returning false, language: %{public}@";
    v35 = v33;
    v36 = 22;
LABEL_34:
    _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    goto LABEL_23;
  }

  v7 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  if (!v7)
  {
    v37 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v54 = 2114;
    v55 = deviceProductType;
    v56 = 2114;
    v57 = codeCopy;
    v34 = "%s ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@";
    v35 = v37;
    v36 = 32;
    goto LABEL_34;
  }

  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (!codeCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
      v54 = 2082;
      v55 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", buf, 0x16u);
    }

    v38 = @"Unknown language";
    selfCopy2 = self;
    v40 = createEnrollmentId;
    v41 = 0;
    goto LABEL_24;
  }

  v10 = v7;
  v44 = createEnrollmentId;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
    v12 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
    *buf = 136315650;
    v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v54 = 2114;
    v55 = deviceProductType;
    v56 = 2114;
    v57 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Searching for synced-VoiceProfile for CurrDevice: %{public}@{%{public}@}", buf, 0x20u);
  }

  v47 = deviceProductType;
  selfCopy3 = self;
  v45 = codeCopy;
  [(SSRVoiceProfileManager *)self devicesWithVoiceProfileIniCloudForLanguage:codeCopy];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v51 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
  v15 = 0x278577000uLL;
  if (v14)
  {
    v16 = v14;
    v17 = *v49;
    v46 = *v49;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = [*(v15 + 1160) deviceCategoryForDeviceProductType:v19];
        v21 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v8;
          v23 = *(v15 + 1160);
          v24 = v21;
          v25 = [v23 deviceCategoryStringRepresentationForCategoryType:v10];
          [*(v15 + 1160) deviceCategoryStringRepresentationForCategoryType:v20];
          v27 = v26 = v13;
          *buf = 136316162;
          v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
          v54 = 2114;
          v55 = v47;
          v56 = 2114;
          v57 = v25;
          v58 = 2114;
          v59 = v19;
          v60 = 2114;
          v61 = v27;
          _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

          v13 = v26;
          v15 = 0x278577000;

          v8 = v22;
          v17 = v46;

          v21 = *v8;
        }

        v28 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20 == v10)
        {
          if (v28)
          {
            *buf = 136315138;
            v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
            _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
          }

          v30 = 1;
          createEnrollmentId = v44;
          codeCopy = v45;
          [(SSRVoiceProfileManager *)selfCopy3 emitMetricEnrollmentId:v44 isVoiceProfileiCloudSyncSuccess:1 failureReasonIfAny:@"not-applicable forLocale:no-failure", v45];

          deviceProductType = v47;
          goto LABEL_28;
        }

        if (v28)
        {
          *buf = 136315138;
          v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  createEnrollmentId = v44;
  codeCopy = v45;
  [(SSRVoiceProfileManager *)selfCopy3 emitMetricEnrollmentId:v44 isVoiceProfileiCloudSyncSuccess:0 failureReasonIfAny:@"Voice Profile Mismatch" forLocale:v45];
  v29 = *v8;
  v30 = 0;
  deviceProductType = v47;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v29;
    v32 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
    *buf = 136315650;
    v53 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v54 = 2114;
    v55 = v47;
    v56 = 2114;
    v57 = v32;
    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s CurrDevice: [%{public}@ : {%{public}@}] DOES NOT have VoiceProfile synced in iCloud", buf, 0x20u);

    v30 = 0;
  }

LABEL_28:

LABEL_29:
  return v30;
}

- (void)emitMetricEnrollmentId:(id)id isVoiceProfileiCloudSyncSuccess:(BOOL)success failureReasonIfAny:(id)any forLocale:(id)locale
{
  successCopy = success;
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  anyCopy = any;
  localeCopy = locale;
  v12 = MEMORY[0x277D01970];
  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *v17 = 136315906;
    *&v17[4] = "[SSRVoiceProfileManager emitMetricEnrollmentId:isVoiceProfileiCloudSyncSuccess:failureReasonIfAny:forLocale:]";
    if (successCopy)
    {
      v14 = @"YES";
    }

    *&v17[12] = 2112;
    *&v17[14] = idCopy;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = anyCopy;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Emitting voice profile icloud sync metrics for enrollmentID %@, isSuccess %@, for reason %@...", v17, 0x2Au);
  }

  mEMORY[0x277D01918] = [MEMORY[0x277D01918] sharedLogger];
  [mEMORY[0x277D01918] logVoiceProfileICloudSyncFinishedForEnrollmentId:idCopy isVoiceProfileiCloudSyncSuccess:successCopy failureReasonIfAny:anyCopy forLocale:localeCopy];

  v16 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315138;
    *&v17[4] = "[SSRVoiceProfileManager emitMetricEnrollmentId:isVoiceProfileiCloudSyncSuccess:failureReasonIfAny:forLocale:]";
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Finished emitting voice profile icloud sync metrics.", v17, 0xCu);
  }
}

- (id)_createAndSetNewEnrollmentId
{
  v12 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  [mEMORY[0x277D01788] setEnrollmentIdForVoiceProfileiCloudMetrics:uUIDString on:date];

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SSRVoiceProfileManager _createAndSetNewEnrollmentId]";
    v10 = 2112;
    v11 = uUIDString;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Returning enrollment ID %@...", &v8, 0x16u);
  }

  return uUIDString;
}

- (id)createEnrollmentId
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[SSRVoiceProfileManager createEnrollmentId]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating an enrollmentID...", &v21, 0xCu);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated = [mEMORY[0x277D01788] dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated];

  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
  enrollmentIdForVoiceProfileiCloudMetrics = [mEMORY[0x277D01788]2 enrollmentIdForVoiceProfileiCloudMetrics];

  if (dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated)
  {
    v9 = enrollmentIdForVoiceProfileiCloudMetrics == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SSRVoiceProfileManager createEnrollmentId]";
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s No enrollmentId exists, create new one", &v21, 0xCu);
    }

    _createAndSetNewEnrollmentId = [(SSRVoiceProfileManager *)self _createAndSetNewEnrollmentId];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setMonth:-6];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [currentCalendar dateByAddingComponents:v13 toDate:date options:0];
    v16 = [dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated compare:v15];
    v17 = *v3;
    v18 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
    if (v16 == -1)
    {
      if (v18)
      {
        v21 = 136315394;
        v22 = "[SSRVoiceProfileManager createEnrollmentId]";
        v23 = 2112;
        v24 = dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s The date %@ is older than 6 months ago.", &v21, 0x16u);
      }

      _createAndSetNewEnrollmentId2 = [(SSRVoiceProfileManager *)self _createAndSetNewEnrollmentId];
    }

    else
    {
      if (v18)
      {
        v21 = 136315394;
        v22 = "[SSRVoiceProfileManager createEnrollmentId]";
        v23 = 2112;
        v24 = dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s The date %@ is within 6 months. Reusing enrollment ID", &v21, 0x16u);
        v17 = *v3;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315394;
        v22 = "[SSRVoiceProfileManager createEnrollmentId]";
        v23 = 2112;
        v24 = enrollmentIdForVoiceProfileiCloudMetrics;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Returning enrollment ID %@...", &v21, 0x16u);
      }

      _createAndSetNewEnrollmentId2 = enrollmentIdForVoiceProfileiCloudMetrics;
    }

    _createAndSetNewEnrollmentId = _createAndSetNewEnrollmentId2;
  }

  return _createAndSetNewEnrollmentId;
}

- (void)isVoiceProfileUploadedToiCloudForLanguageCode:(id)code withCompletionBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  blockCopy = block;
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (!deviceProductType)
  {
    codeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Unknown product type. Returning false, language: %@", codeCopy];
    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v46 = 2114;
      v47 = codeCopy;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v42 = @"reason";
    v43 = codeCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v43;
    v25 = &v42;
    goto LABEL_18;
  }

  v8 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  if (!v8)
  {
    codeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Unknown device-category for device: %@, languageCode: %@", deviceProductType, codeCopy];
    v26 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v46 = 2114;
      v47 = codeCopy;
      _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v40 = @"reason";
    v41 = codeCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v41;
    v25 = &v40;
LABEL_18:
    codeCopy2 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    v20 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:codeCopy2];
    blockCopy[2](blockCopy, v20, 0);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:codeCopy];
  codeCopy = v10;
  if (!v10)
  {
LABEL_9:
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v46 = 2114;
      v47 = codeCopy;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Querying VoiceProfile upload state on %{public}@", buf, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CEF3A0]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __92__SSRVoiceProfileManager_isVoiceProfileUploadedToiCloudForLanguageCode_withCompletionBlock___block_invoke;
    v30[3] = &unk_278578F78;
    v31 = v18;
    v32 = 0;
    v35 = blockCopy;
    v33 = deviceProductType;
    v36 = v9;
    v34 = codeCopy;
    v37 = codeCopy != 0;
    codeCopy2 = v18;
    [codeCopy2 getDevicesWithAvailablePHSAssetsOnDeviceCheck:v30];

    v20 = v31;
    goto LABEL_19;
  }

  v12 = [v10 getExplicitEnrollmentUtterancesForType:1];
  v13 = [v12 count];

  v14 = [codeCopy getExplicitEnrollmentUtterancesForType:3];
  v15 = [v14 count];

  if ([codeCopy isMarkedSATEnrolled] && (v15 + v13) >= 3)
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v46 = 2114;
      v47 = codeCopy;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Triggering VoiceProfile upload for %{public}@", buf, 0x16u);
    }

    notify_post("com.apple.voicetrigger.PHSProfileModified");
    goto LABEL_9;
  }

  codeCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Improper VoiceProfile detected: %@, languageCode: %@", deviceProductType, codeCopy];
  v27 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v45 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
    v46 = 2114;
    v47 = codeCopy2;
    _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v28 = MEMORY[0x277CCA9B8];
  v38 = @"reason";
  v39 = codeCopy2;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v29 = [v28 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:v20];
  blockCopy[2](blockCopy, v29, 0);

LABEL_19:
}

void __92__SSRVoiceProfileManager_isVoiceProfileUploadedToiCloudForLanguageCode_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v5 = a3;
  v40 = *(a1 + 32);
  v6 = MEMORY[0x277D01970];
  v7 = *MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (!v5)
  {
    v10 = 0x278577000uLL;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 72);
      v13 = v7;
      v14 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v12, v40];
      *buf = 136315906;
      v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v14;
      v63 = 2114;
      v64 = v41;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Looking VoiceProfile for CurrDevice: %{public}@{%{public}@} in devices %{public}@", buf, 0x2Au);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = v41;
    v16 = [v15 countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v16)
    {
      v17 = v16;
      v42 = 0;
      v18 = *v54;
      v43 = *v54;
      v44 = v15;
      do
      {
        v19 = 0;
        v45 = v17;
        do
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v53 + 1) + 8 * v19);
          if ([v20 isEqualToString:{*(a1 + 56), v40}])
          {
            v21 = [v15 objectForKeyedSubscript:v20];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            obj = v21;
            v48 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
            if (v48)
            {
              v46 = v19;
              v22 = *v50;
              while (2)
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v50 != v22)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v49 + 1) + 8 * i);
                  v25 = [*(v10 + 1160) deviceCategoryForDeviceProductType:v24];
                  v26 = *v6;
                  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = *(a1 + 48);
                    v28 = *(v10 + 1160);
                    v29 = v10;
                    v30 = a1;
                    v31 = *(a1 + 72);
                    v32 = v26;
                    v33 = [v28 deviceCategoryStringRepresentationForCategoryType:v31];
                    v34 = [*(v29 + 1160) deviceCategoryStringRepresentationForCategoryType:v25];
                    *buf = 136316162;
                    v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                    v59 = 2114;
                    v60 = v27;
                    v61 = 2114;
                    v62 = v33;
                    v63 = 2114;
                    v64 = v24;
                    v65 = 2114;
                    v66 = v34;
                    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

                    a1 = v30;
                    v10 = v29;

                    v6 = MEMORY[0x277D01970];
                    v26 = *v6;
                  }

                  v35 = *(a1 + 72);
                  v36 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                  if (v25 == v35)
                  {
                    if (v36)
                    {
                      *buf = 136315138;
                      v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
                    }

                    v42 = 1;
                    goto LABEL_29;
                  }

                  if (v36)
                  {
                    *buf = 136315138;
                    v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                    _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
                  }
                }

                v48 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }

LABEL_29:
              v18 = v43;
              v15 = v44;
              v17 = v45;
              v19 = v46;
            }
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = [v15 countByEnumeratingWithState:&v53 objects:v68 count:16];
      }

      while (v17);

      if (v42)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    if (*(a1 + 80) == 1)
    {
      v37 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 56);
        *buf = 136315394;
        v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
        v59 = 2114;
        v60 = v38;
        _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile available locally for %{public}@, not uploaded yet", buf, 0x16u);
      }
    }

LABEL_39:
    (*(*(a1 + 64) + 16))();
    v9 = 0;
    goto LABEL_40;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a1 + 40);
    *buf = 136315394;
    v58 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
    v59 = 2114;
    v60 = v39;
    _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Fetching cached devices resulted in error %{public}@", buf, 0x16u);
  }

  v9 = v5;
  (*(*(a1 + 64) + 16))(*(a1 + 64));
LABEL_40:
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)code withBackupMetaBlob:(id)blob
{
  v76 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  blobCopy = blob;
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  v8 = deviceProductType;
  if (!blobCopy)
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = codeCopy;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_INFO, "%s metaBlob is nil. Returning false, language: %{public}@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (!deviceProductType)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = codeCopy;
      v18 = "%s ERR: Unknown device. Returning false, language: %{public}@";
LABEL_17:
      v20 = v17;
      v21 = 22;
      goto LABEL_18;
    }

LABEL_19:
    v12 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v9 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  if (!v9)
  {
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = v8;
      v68 = 2114;
      v69 = codeCopy;
      v18 = "%s ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@";
      v20 = v19;
      v21 = 32;
LABEL_18:
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, v18, buf, v21);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (!codeCopy)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2082;
      v67 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v18 = "%s ERR: %{public}s: Bailing out as language is nil!";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v10 = v9;
  v63 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:blobCopy options:0 error:&v63];
  v12 = v63;
  v13 = MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if (v12)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = v12;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Failed to deserialize metaBlob with error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v14;
      v24 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
      *buf = 136315906;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = v8;
      v68 = 2114;
      v69 = v24;
      v70 = 2114;
      v71 = v11;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Looking VoiceProfile for CurrDevice: %{public}@{%{public}@} in metablob %{public}@", buf, 0x2Au);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = v11;
    v51 = [v25 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v51)
    {
      v52 = *v60;
      v49 = blobCopy;
      v50 = codeCopy;
      v53 = v8;
      v48 = v25;
      v46 = v11;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(v25);
          }

          v27 = *(*(&v59 + 1) + 8 * i);
          if ([v27 isEqualToString:{codeCopy, v46}])
          {
            v47 = i;
            v28 = [v25 objectForKeyedSubscript:v27];
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            obj = v28;
            v29 = [obj countByEnumeratingWithState:&v55 objects:v74 count:16];
            v30 = 0x278577000uLL;
            if (v29)
            {
              v31 = v29;
              v32 = *v56;
              while (2)
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v56 != v32)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v34 = *(*(&v55 + 1) + 8 * j);
                  v35 = [*(v30 + 1160) deviceCategoryForDeviceProductType:v34];
                  v36 = *v13;
                  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = v13;
                    v38 = *(v30 + 1160);
                    v39 = v36;
                    v40 = [v38 deviceCategoryStringRepresentationForCategoryType:v10];
                    v41 = [*(v30 + 1160) deviceCategoryStringRepresentationForCategoryType:v35];
                    *buf = 136316162;
                    v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                    v66 = 2114;
                    v67 = v53;
                    v68 = 2114;
                    v69 = v40;
                    v70 = 2114;
                    v71 = v34;
                    v72 = 2114;
                    v73 = v41;
                    _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

                    v30 = 0x278577000;
                    v13 = v37;

                    v36 = *v37;
                  }

                  v42 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                  if (v35 == v10)
                  {
                    if (v42)
                    {
                      *buf = 136315138;
                      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                      _os_log_impl(&dword_225E12000, v36, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
                    }

                    v15 = 1;
                    blobCopy = v49;
                    codeCopy = v50;
                    v8 = v53;
                    v12 = 0;
                    v11 = v46;
                    goto LABEL_49;
                  }

                  if (v42)
                  {
                    *buf = 136315138;
                    v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                    _os_log_impl(&dword_225E12000, v36, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
                  }
                }

                v31 = [obj countByEnumeratingWithState:&v55 objects:v74 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            blobCopy = v49;
            codeCopy = v50;
            v8 = v53;
            v25 = v48;
            v12 = 0;
            i = v47;
          }
        }

        v51 = [v25 countByEnumeratingWithState:&v59 objects:v75 count:16];
        v11 = v46;
      }

      while (v51);
    }

    v43 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
      *buf = 136315650;
      v65 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v66 = 2114;
      v67 = v8;
      v68 = 2114;
      v69 = v45;
      _os_log_impl(&dword_225E12000, v44, OS_LOG_TYPE_DEFAULT, "%s CurrDevice: [%{public}@ : {%{public}@}] DOES NOT have VoiceProfile synced in iCloud", buf, 0x20u);
    }
  }

  v15 = 0;
LABEL_49:

LABEL_20:
  return v15;
}

- (id)getCachedVoiceProfileAvailabilityMetaBlob
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6714;
  v32 = __Block_byref_object_dispose__6715;
  v33 = 0;
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (!deviceProductType)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      v5 = "%s ERR: Unknown device - returning nil";
      v6 = v8;
      v7 = 12;
      goto LABEL_8;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_15;
  }

  v3 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  if (v3 == 1)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s NonAOP device-category - returning nil", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      v36 = 2114;
      v37 = deviceProductType;
      v5 = "%s ERR: Unknown device-category for device: %{public}@";
      v6 = v4;
      v7 = 22;
LABEL_8:
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x277CEF3A0]);
  v12 = dispatch_time(0, 100000000);
  v13 = dispatch_semaphore_create(0);
  date = [MEMORY[0x277CBEAA8] date];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __67__SSRVoiceProfileManager_getCachedVoiceProfileAvailabilityMetaBlob__block_invoke;
  v25 = &unk_278578F50;
  v15 = v13;
  v26 = v15;
  v27 = &v28;
  [v11 getDevicesWithAvailablePHSAssetsOnDeviceCheck:&v22];
  v16 = dispatch_semaphore_wait(v15, v12);
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v19 = v18;
  v20 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
    v36 = 2048;
    v37 = v16;
    v38 = 2048;
    v39 = v19 * 1000.0;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s CachedVoiceProfileFetch: Done Waiting with timedOut=%ld, waitTimeMs: %fms", buf, 0x20u);
  }

  v10 = v29[5];

LABEL_15:
  _Block_object_dispose(&v28, 8);

  return v10;
}

void __67__SSRVoiceProfileManager_getCachedVoiceProfileAvailabilityMetaBlob__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      v36 = 2114;
      v37 = v6;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Fetching cached devices resulted in error %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  if (!v5)
  {
    v26 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Devices with voice profile is nil!", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v27 = a1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = v5;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v13 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:v15];
        if ([v16 isMarkedSATEnrolled])
        {
          v17 = [v9 objectForKeyedSubscript:v15];
          [v8 setObject:v17 forKeyedSubscript:v15];
        }

        else
        {
          v18 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
            v36 = 2114;
            v37 = v15;
            _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Skipping %{public}@ not locally present", buf, 0x16u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v11);
  }

  a1 = v27;
  v6 = 0;
  if (!v8 || ![v8 count])
  {
LABEL_23:

    v5 = v28;
LABEL_26:
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_27;
  }

  v19 = MEMORY[0x277CCAAA0];
  v20 = [v8 copy];
  v29 = 0;
  v21 = [v19 dataWithJSONObject:v20 options:0 error:&v29];
  v22 = v29;

  v23 = *MEMORY[0x277D01970];
  if (v21 && !v22)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      v36 = 2114;
      v37 = v9;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Cached devices with VoiceProfile in iCloud: %{public}@", buf, 0x16u);
    }

    v24 = *(*(v27 + 40) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v21;

    goto LABEL_23;
  }

  v5 = v28;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v35 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
    v36 = 2112;
    v37 = v21;
    v38 = 2112;
    v39 = v22;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: error creating profilesJsonData: %@, err: %@", buf, 0x20u);
  }

  dispatch_semaphore_signal(*(v27 + 32));

LABEL_27:
}

- (BOOL)_isMarkedForVoiceProfileTrainingSyncForLanguage:(id)language
{
  v15 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (languageCopy)
  {
    v4 = _CSNotBackedupPreferencesValueForKey();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      v11 = 2114;
      v12 = v4;
      v13 = 2114;
      v14 = languageCopy;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile training sync language: %{public}@, VoiceProfile language: %{public}@", &v9, 0x20u);
    }

    if ([languageCopy isEqualToString:v4])
    {
      _CSNotBackedupPreferencesSetValueForKey();
      CSNotBackedupInternalPreferencesSynchronize();
      v6 = 1;
    }

    else
    {
LABEL_7:
      v6 = 0;
    }
  }

  else
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      v11 = 2082;
      v12 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", &v9, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_markVoiceProfileTrainingSyncForLanguage:(id)language
{
  v9 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = *MEMORY[0x277D01970];
  if (languageCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
      v7 = 2114;
      v8 = languageCopy;
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting VoiceProfile Training Sync for language: %{public}@", &v5, 0x16u);
    }

    _CSNotBackedupPreferencesSetValueForKey();
    CSNotBackedupInternalPreferencesSynchronize();
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
    v7 = 2082;
    v8 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", &v5, 0x16u);
  }
}

- (id)_prepareVoiceProfileWithSiriProfileId:(id)id withUploadBlock:(id)block
{
  v94[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  blockCopy = block;
  selfCopy = self;
  v7 = [(SSRVoiceProfileManager *)self _CSSATUploadPathForSiriProfileId:idCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v7])
  {
    v77 = 0;
    v9 = [defaultManager removeItemAtPath:v7 error:&v77];
    v10 = v77;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v12 = MEMORY[0x277CCACA8];
      localizedDescription = [v10 localizedDescription];
      v14 = [v12 stringWithFormat:@"Cannot delete existing SATUpload Diretory : %@", localizedDescription];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
        v84 = 2114;
        v85 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v93 = @"reason";
      v94[0] = v14;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
      v18 = v16;
      v19 = 708;
LABEL_37:
      v46 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:v19 userInfo:v17];
      goto LABEL_44;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v76 = v11;
  v21 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v76];
  v11 = v76;

  if ((v21 & 1) == 0)
  {
    v47 = MEMORY[0x277CCACA8];
    localizedDescription2 = [v11 localizedDescription];
    v14 = [v47 stringWithFormat:@"Cannot create SAT Upload Directory : %@", localizedDescription2];

    v49 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
      v84 = 2114;
      v85 = v14;
      _os_log_error_impl(&dword_225E12000, v49, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v50 = MEMORY[0x277CCA9B8];
    v91 = @"reason";
    v92 = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v18 = v50;
    v19 = 709;
    goto LABEL_37;
  }

  [(SSRVoiceProfileManager *)selfCopy _getVoiceProfilePathsToBeUploadedForSiriProfileId:idCopy];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v22 = v75 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v72 objects:v90 count:16];
  if (v23)
  {
    v24 = v23;
    v65 = defaultManager;
    v66 = idCopy;
    v70 = *v73;
    v67 = v22;
    v68 = v7;
    while (2)
    {
      v25 = 0;
      v26 = v11;
      do
      {
        if (*v73 != v70)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v72 + 1) + 8 * v25);
        v28 = [v22 objectForKeyedSubscript:v27];
        languageCode = [v28 languageCode];
        v30 = [v7 stringByAppendingPathComponent:languageCode];

        v11 = [(SSRVoiceProfileManager *)selfCopy _copyVoiceProfileAtPath:v27 toPath:v30];
        v31 = *MEMORY[0x277D01970];
        v32 = *MEMORY[0x277D01970];
        if (v11)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v84 = 2112;
            v85 = v27;
            v86 = 2112;
            v87 = v30;
            v88 = 2114;
            v89 = v11;
            _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Cannot copy voice profile from %@ to %@ with error %{public}@", buf, 0x2Au);
          }

          v33 = [SSRUtils removeItemAtPath:v30];
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v84 = 2112;
            v85 = v27;
            _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Triggering upload of voice profile %@", buf, 0x16u);
          }

          v34 = blockCopy[2](blockCopy, v28, v30);
          if (v34)
          {
            v35 = v34;
            v51 = MEMORY[0x277CCACA8];
            languageCode2 = [v28 languageCode];
            localizedDescription3 = [v35 localizedDescription];
            v36 = [v51 stringWithFormat:@"Failed to upload %@ with error %@ - Bailing out", languageCode2, localizedDescription3];

            v54 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
              v84 = 2114;
              v85 = v36;
              _os_log_error_impl(&dword_225E12000, v54, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }

            v55 = MEMORY[0x277CCA9B8];
            v80 = @"reason";
            v81 = v36;
            v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            v46 = [v55 errorWithDomain:@"com.apple.speakerrecognition" code:717 userInfo:v56];
            goto LABEL_41;
          }

          v35 = [v27 stringByAppendingPathComponent:@"enrollment_version.json"];
          v36 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:v35];
          v37 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            productCategory = [v28 productCategory];
            *buf = 136315906;
            v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v84 = 2114;
            v85 = v36;
            v86 = 2112;
            v87 = v30;
            v88 = 2114;
            v89 = productCategory;
            _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Upload of voice profile with identifier %{public}@ at %@ with category %{public}@ completed successfully", buf, 0x2Au);
          }

          if (CSIsIOS())
          {
            if ((CSIsCommunalDevice() & 1) == 0)
            {
              languageCode3 = [v28 languageCode];
              v41 = [(SSRVoiceProfileManager *)selfCopy _isMarkedForVoiceProfileTrainingSyncForLanguage:languageCode3];

              if (v41)
              {
                v42 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:5];
                [v28 setProductCategory:v42];

                v43 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                  v84 = 2112;
                  v85 = v27;
                  _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s Triggering upload of explicit voice profile %@", buf, 0x16u);
                }

                v44 = blockCopy[2](blockCopy, v28, v30);
                if (v44)
                {
                  v56 = v44;
                  v58 = MEMORY[0x277CCACA8];
                  languageCode4 = [v28 languageCode];
                  localizedDescription4 = [v56 localizedDescription];
                  v61 = [v58 stringWithFormat:@"Failed to upload %@ with error %@ - Bailing out", languageCode4, localizedDescription4];

                  v62 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                    v84 = 2114;
                    v85 = v61;
                    _os_log_error_impl(&dword_225E12000, v62, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
                  }

                  v63 = MEMORY[0x277CCA9B8];
                  v78 = @"reason";
                  v79 = v61;
                  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
                  v46 = [v63 errorWithDomain:@"com.apple.speakerrecognition" code:717 userInfo:v64];

LABEL_41:
                  v11 = 0;
                  v17 = v67;
                  v7 = v68;
                  goto LABEL_42;
                }

                v45 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v83 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                  v84 = 2112;
                  v85 = v30;
                  _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s Upload of explicit voice profile at %@ completed successfully", buf, 0x16u);
                }
              }
            }
          }

          v22 = v67;
          v7 = v68;
        }

        ++v25;
        v26 = v11;
      }

      while (v24 != v25);
      v24 = [v22 countByEnumeratingWithState:&v72 objects:v90 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    v17 = v22;
    v46 = 0;
LABEL_42:
    v14 = v17;
    idCopy = v66;
    defaultManager = v65;
  }

  else
  {
    v17 = v22;
    v46 = 0;
    v14 = v17;
  }

LABEL_44:

  return v46;
}

- (id)_copyVoiceProfileAtPath:(id)path toPath:(id)toPath
{
  v90 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  toPathCopy = toPath;
  v49 = pathCopy;
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v7 = [SSRUtils getContentsOfDirectory:v6];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__6714;
  v77 = __Block_byref_object_dispose__6715;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v89 count:16];
  if (v8)
  {
    v9 = *v62;
    do
    {
      v10 = 0;
      do
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * v10);
        lastPathComponent = [v11 lastPathComponent];
        path = [v11 path];
        lastPathComponent2 = [path lastPathComponent];
        v15 = [toPathCopy stringByAppendingPathComponent:lastPathComponent2];

        v16 = [SSRUtils stringForCSSpIdType:1];
        if ([lastPathComponent isEqualToString:v16])
        {

LABEL_9:
          path2 = [v11 path];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __57__SSRVoiceProfileManager__copyVoiceProfileAtPath_toPath___block_invoke;
          v56[3] = &unk_278578F20;
          v58 = &v73;
          v20 = lastPathComponent;
          v57 = v20;
          v59 = &v69;
          v60 = &v65;
          [(SSRVoiceProfileManager *)self _copyExplicitEnrollmentFilesFromPath:path2 toPath:v15 withCompletion:v56];

          if (v74[5])
          {
            v34 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              path3 = [v11 path];
              v46 = v74[5];
              *buf = 136315906;
              v80 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v81 = 2114;
              *v82 = path3;
              *&v82[8] = 2114;
              *v83 = v15;
              *&v83[8] = 2114;
              v84[0] = v46;
              _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Failed to copy from %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
            }

            v33 = v74[5];
            stringByDeletingLastPathComponent = v57;
            lastPathComponent = v20;
LABEL_38:

            goto LABEL_39;
          }

          stringByDeletingLastPathComponent = v57;
LABEL_11:

          goto LABEL_12;
        }

        v17 = [SSRUtils stringForCSSpIdType:3];
        v18 = [lastPathComponent isEqualToString:v17];

        if (v18)
        {
          goto LABEL_9;
        }

        if (([lastPathComponent isEqualToString:@"meta_version.json"] & 1) != 0 || objc_msgSend(lastPathComponent, "isEqualToString:", @"enrollment_version.json"))
        {
          stringByDeletingLastPathComponent = [v15 stringByDeletingLastPathComponent];
          v22 = (v74 + 5);
          v55 = v74[5];
          v23 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v55];
          objc_storeStrong(v22, v55);
          if ((v23 & 1) == 0)
          {
            v43 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              v48 = v74[5];
              *buf = 136315650;
              v80 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v81 = 2114;
              *v82 = stringByDeletingLastPathComponent;
              *&v82[8] = 2114;
              *v83 = v48;
              _os_log_error_impl(&dword_225E12000, v43, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
            }

            v33 = v74[5];
            goto LABEL_38;
          }

          v24 = (v74 + 5);
          v54 = v74[5];
          v25 = [defaultManager copyItemAtPath:path toPath:v15 error:&v54];
          objc_storeStrong(v24, v54);
          v26 = v74;
          if (!v25 || v74[5])
          {
            v37 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              v47 = v26[5];
              *buf = 136315906;
              v80 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v81 = 2114;
              *v82 = path;
              *&v82[8] = 2114;
              *v83 = v15;
              *&v83[8] = 2114;
              v84[0] = v47;
              _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s ERR: Cannot copy file %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
              v26 = v74;
            }

            v38 = MEMORY[0x277CCACA8];
            localizedDescription = [v26[5] localizedDescription];
            v40 = [v38 stringWithFormat:@"Failed to copy to SATUpload Diretory : %@", localizedDescription];

            v41 = MEMORY[0x277CCA9B8];
            v87 = @"reason";
            v88 = v40;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v33 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v42];

            goto LABEL_38;
          }

          goto LABEL_11;
        }

LABEL_12:

        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v61 objects:v89 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = v70[3];
  if (v28 > 2 || v66[3] > 2)
  {
    v35 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v36 = v66[3];
      *buf = 136316162;
      v80 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
      v81 = 1026;
      *v82 = v28;
      *&v82[4] = 1026;
      *&v82[6] = v36;
      *v83 = 2112;
      *&v83[2] = v49;
      LOWORD(v84[0]) = 2112;
      *(v84 + 2) = toPathCopy;
      _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Successfully copied {%{public}d,%{public}d} utterances from %@ to %@", buf, 0x2Cu);
    }

    v33 = 0;
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Number of training utterances copied from %@ to %@ is too less %ld", v49, toPathCopy, v28];
    v30 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
      v81 = 2114;
      *v82 = v29;
      _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v85 = @"reason";
    v86 = v29;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v33 = [v31 errorWithDomain:@"com.apple.speakerrecognition" code:733 userInfo:v32];
  }

LABEL_39:
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return v33;
}

void __57__SSRVoiceProfileManager__copyVoiceProfileAtPath_toPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = *(a1 + 32);
  v7 = [SSRUtils stringForCSSpIdType:1];
  LODWORD(v6) = [v6 isEqualToString:v7];

  v8 = 56;
  if (v6)
  {
    v8 = 48;
  }

  *(*(*(a1 + v8) + 8) + 24) = a3;
}

- (void)_copyExplicitEnrollmentFilesFromPath:(id)path toPath:(id)toPath withCompletion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  toPathCopy = toPath;
  completionCopy = completion;
  [MEMORY[0x277CCAA00] defaultManager];
  v48 = v58 = 0;
  v50 = toPathCopy;
  LOBYTE(completion) = [v48 createDirectoryAtPath:toPathCopy withIntermediateDirectories:1 attributes:0 error:&v58];
  v52 = v58;
  if (completion)
  {
    v45 = completionCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager enumeratorAtPath:pathCopy];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v51 = 0;
      v16 = *v55;
      v46 = v13;
      v47 = pathCopy;
LABEL_4:
      v17 = 0;
      v49 = v15;
      while (1)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        v19 = [pathCopy stringByAppendingPathComponent:v18];
        v20 = [(SSRVoiceProfileManager *)self _isDirectory:v19];

        if (v20)
        {
          goto LABEL_23;
        }

        v21 = v16;
        selfCopy = self;
        pathExtension = [v18 pathExtension];
        if ([v18 containsString:@"audiocache"])
        {
          v24 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v62 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
            v63 = 2112;
            v64 = v18;
            _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Skipping audiocache file %@", buf, 0x16u);
          }

          goto LABEL_22;
        }

        if (([pathExtension isEqualToString:@"wav"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"json"))
        {
          break;
        }

LABEL_22:

        self = selfCopy;
        v16 = v21;
LABEL_23:
        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v54 objects:v69 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_33;
        }
      }

      v25 = v13;
      v26 = [pathCopy stringByAppendingPathComponent:v18];
      v27 = [v50 stringByAppendingPathComponent:v18];
      lastPathComponent = [v18 lastPathComponent];
      v29 = [lastPathComponent isEqualToString:@"enrollment_version.json"];

      if ((v29 & 1) == 0)
      {
        v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
        v31 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v30];

        if (v31 && ([v31 isEqualToString:@"implicit"] & 1) != 0)
        {

          v13 = v25;
          pathCopy = v47;
LABEL_21:
          v15 = v49;
          goto LABEL_22;
        }
      }

      v32 = [pathExtension isEqualToString:@"wav"];
      stringByDeletingLastPathComponent = [v27 stringByDeletingLastPathComponent];
      v34 = [SSRUtils createDirectoryIfDoesNotExist:stringByDeletingLastPathComponent];

      v53 = 0;
      LODWORD(stringByDeletingLastPathComponent) = [v48 copyItemAtPath:v26 toPath:v27 error:&v53];
      v35 = v53;
      if (!stringByDeletingLastPathComponent || v35)
      {
        v52 = v35;
        v38 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v62 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
          v63 = 2114;
          v64 = v26;
          v65 = 2114;
          v66 = v27;
          v67 = 2114;
          v68 = v52;
          _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s Cannot copy file %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
        }

        v39 = MEMORY[0x277CCACA8];
        localizedDescription = [v52 localizedDescription];
        v41 = [v39 stringWithFormat:@"Failed to copy to SATUpload Diretory : %@", localizedDescription];

        v42 = MEMORY[0x277CCA9B8];
        v59 = @"reason";
        v60 = v41;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v44 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v43];
        completionCopy = v45;
        v45[2](v45, v44, 0);

        v13 = v46;
        pathCopy = v47;
        goto LABEL_34;
      }

      v51 += v32;

      v52 = 0;
      v13 = v46;
      pathCopy = v47;
      goto LABEL_21;
    }

    v51 = 0;
LABEL_33:

    completionCopy = v45;
    v45[2](v45, 0, v51);
LABEL_34:

    v37 = v52;
  }

  else
  {
    v36 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v62 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
      v63 = 2114;
      v64 = toPathCopy;
      v65 = 2114;
      v66 = v52;
      _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
    }

    v37 = v52;
    completionCopy[2](completionCopy, v52, 0);
  }
}

- (id)_getVoiceProfilePathsToBeUploadedForSiriProfileId:(id)id
{
  v44 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = AFPreferencesSupportedLanguages();
  v6 = CSIsCommunalDevice();
  if (idCopy || !v6)
  {
    v29 = idCopy;
    v9 = [SSRUtils getVoiceProfilesForSiriProfileId:idCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = v10;
    v12 = *v32;
    v13 = MEMORY[0x277D01970];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (v5)
        {
          locale = [*(*(&v31 + 1) + 8 * i) locale];
          v17 = [v5 containsObject:locale];

          if ((v17 & 1) == 0)
          {
            v21 = *v13;
            if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              continue;
            }

            v18 = v21;
            locale2 = [v15 locale];
            *buf = 136315650;
            v36 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
            v37 = 2114;
            v38 = locale2;
            v39 = 2114;
            v40 = v5;
            p_super = &v18->super;
            v23 = "%s Unsupported languagecode %{public}@ in %{public}@ - Skipping";
            v24 = 32;
LABEL_20:
            _os_log_impl(&dword_225E12000, p_super, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
            goto LABEL_23;
          }
        }

        if (![v15 voiceProfileVersion])
        {
          v25 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v25;
          locale2 = [v15 locale];
          *buf = 136315906;
          v36 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
          v37 = 2114;
          v38 = locale2;
          v39 = 2048;
          v40 = 0;
          v41 = 2048;
          v42 = 1;
          p_super = &v18->super;
          v23 = "%s Skipping uploading %{public}@ legacy version (%lu) of voice profile, current version %lu";
          v24 = 42;
          goto LABEL_20;
        }

        if ([v15 isMarkedSATEnrolled])
        {
          v18 = [[SSRVoiceProfileMetaContext alloc] initWithVoiceProfile:v15];
          v19 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:self->_currentDeviceCategory];
          [(SSRVoiceProfileMetaContext *)v18 setProductCategory:v19];

          [(SSRVoiceProfileMetaContext *)v18 setVersion:&unk_283933948];
          locale2 = [v15 voiceProfileBasePath];
          [v4 setObject:v18 forKey:locale2];
        }

        else
        {
          v26 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v26;
          locale2 = [v15 locale];
          profileID = [v15 profileID];
          *buf = 136315650;
          v36 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
          v37 = 2114;
          v38 = locale2;
          v39 = 2112;
          v40 = profileID;
          _os_log_impl(&dword_225E12000, &v18->super, OS_LOG_TYPE_DEFAULT, "%s Skipping uploading %{public}@ voice profile for profileId %@", buf, 0x20u);
        }

LABEL_23:
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (!v11)
      {
LABEL_26:
        v8 = v4;

        idCopy = v29;
        goto LABEL_27;
      }
    }
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v36 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
    _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: siriProfileId is nil - Bailing out", buf, 0xCu);
  }

  v8 = 0;
LABEL_27:

  return v8;
}

- (void)notifyUserVoiceProfileUploadComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRVoiceProfileManager_notifyUserVoiceProfileUploadComplete__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__SSRVoiceProfileManager_notifyUserVoiceProfileUploadComplete__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _CSSATLegacyUploadPath];
  if ([v2 fileExistsAtPath:v3])
  {
    v9 = 0;
    v4 = [v2 removeItemAtPath:v3 error:&v9];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [v5 localizedDescription];
        *buf = 136315394;
        v11 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadComplete]_block_invoke";
        v12 = 2114;
        v13 = v8;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Cannot delete existing SATUpload Diretory : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (id)getUserVoiceProfileUploadPathWithEnrolledLanguageList:(id *)list
{
  v14 = *MEMORY[0x277D85DE8];
  if (CSIsCommunalDevice())
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Legacy upload API called on Horseman - Bailing out", &buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__6714;
    v12 = __Block_byref_object_dispose__6715;
    _CSSATLegacyUploadPath = [(SSRVoiceProfileManager *)self _CSSATLegacyUploadPath];
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__SSRVoiceProfileManager_getUserVoiceProfileUploadPathWithEnrolledLanguageList___block_invoke;
    v8[3] = &unk_2785797D0;
    v8[4] = self;
    v8[5] = &buf;
    dispatch_sync(queue, v8);
    v5 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  return v5;
}

void __80__SSRVoiceProfileManager_getUserVoiceProfileUploadPathWithEnrolledLanguageList___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)])
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v76 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v76];
    v6 = v76;
    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [v6 localizedDescription];
        *buf = 136315394;
        v79 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
        v80 = 2114;
        v81 = v9;
        v10 = "%s Cannot delete existing SATUpload Diretory : %{public}@";
LABEL_51:
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);

        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  v12 = *(*(*(a1 + 40) + 8) + 40);
  v75 = v6;
  v13 = [v3 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v75];
  v6 = v75;

  if ((v13 & 1) == 0)
  {
    v43 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = v43;
      v9 = [v6 localizedDescription];
      *buf = 136315394;
      v79 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
      v80 = 2114;
      v81 = v9;
      v10 = "%s Cannot create SAT Upload Directory : %{public}@";
      goto LABEL_51;
    }

LABEL_40:
    v44 = *(*(a1 + 40) + 8);
    v14 = *(v44 + 40);
    *(v44 + 40) = 0;
    goto LABEL_49;
  }

  [*(a1 + 32) _getVoiceProfilePathsToBeUploadedForSiriProfileId:0];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v14 = v74 = 0u;
  v56 = [v14 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v56)
  {
    v57 = *v72;
    *&v15 = 136315650;
    v53 = v15;
    v62 = v3;
    v54 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v72 != v57)
        {
          objc_enumerationMutation(v14);
        }

        v59 = v16;
        v17 = *(*(&v71 + 1) + 8 * v16);
        v18 = [v14 objectForKeyedSubscript:{v17, v53}];
        v19 = [v18 languageCode];

        v20 = v17;
        v21 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:v19];
        v60 = v20;
        v22 = [v20 stringByAppendingPathComponent:@"td"];
        v23 = [*(v2 + 2560) defaultManager];
        v24 = [v23 enumeratorAtPath:v22];

        v70 = v6;
        v63 = v21;
        LOBYTE(v23) = [v62 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v70];
        v25 = v70;

        v58 = v24;
        if (v23)
        {
          v55 = v19;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          obj = v24;
          v26 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v67;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v67 != v28)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v66 + 1) + 8 * i);
                v31 = a1;
                v32 = *(a1 + 32);
                v33 = [v22 stringByAppendingPathComponent:v30];
                LODWORD(v32) = [v32 _isDirectory:v33];

                if (v32)
                {
                  v34 = [v63 stringByAppendingPathComponent:v30];
                  v65 = v25;
                  v35 = [v62 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:0 error:&v65];
                  v6 = v65;

                  if ((v35 & 1) == 0)
                  {
                    v45 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                    {
                      v51 = v45;
                      v52 = [v63 stringByAppendingPathComponent:v30];
                      *buf = 136315394;
                      v79 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
                      v80 = 2114;
                      v81 = v52;
                      _os_log_error_impl(&dword_225E12000, v51, OS_LOG_TYPE_ERROR, "%s Cannot create directory(%{public}@)", buf, 0x16u);
                    }

                    v46 = *(*(v31 + 40) + 8);
                    v36 = *(v46 + 40);
                    *(v46 + 40) = 0;
LABEL_47:
                    v3 = v62;
                    v14 = v54;

                    goto LABEL_48;
                  }

                  v25 = v6;
                }

                else
                {
                  v36 = [v30 pathExtension];
                  if (([v36 isEqualToString:@"wav"] & 1) != 0 || objc_msgSend(v36, "isEqualToString:", @"json"))
                  {
                    v37 = [v22 stringByAppendingPathComponent:v30];
                    v38 = [v63 stringByAppendingPathComponent:v30];

                    v64 = 0;
                    v39 = [v62 copyItemAtPath:v37 toPath:v38 error:&v64];
                    v40 = v64;
                    if (v39)
                    {
                      v41 = v40 == 0;
                    }

                    else
                    {
                      v41 = 0;
                    }

                    if (!v41)
                    {
                      v6 = v40;
                      v47 = *MEMORY[0x277D01970];
                      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                      {
                        *buf = v53;
                        v79 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
                        v80 = 2114;
                        v81 = v37;
                        v82 = 2114;
                        v83 = v38;
                        _os_log_error_impl(&dword_225E12000, v47, OS_LOG_TYPE_ERROR, "%s Cannot copy file: %{public}@ to %{public}@", buf, 0x20u);
                      }

                      v49 = *(*(v31 + 40) + 8);
                      v50 = *(v49 + 40);
                      *(v49 + 40) = 0;

                      goto LABEL_47;
                    }

                    v25 = 0;
                  }
                }

                a1 = v31;
              }

              v27 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v6 = v25;
          v14 = v54;
          v19 = v55;
        }

        else
        {
          v42 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = v53;
            v79 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
            v80 = 2114;
            v81 = v21;
            v82 = 2114;
            v83 = v25;
            _os_log_error_impl(&dword_225E12000, v42, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
          }

          v6 = v25;
        }

        v2 = 0x277CCA000;

        v16 = v59 + 1;
      }

      while (v59 + 1 != v56);
      v56 = [v14 countByEnumeratingWithState:&v71 objects:v84 count:16];
      v3 = v62;
    }

    while (v56);
  }

LABEL_48:

LABEL_49:
}

- (void)uploadUserVoiceProfileForSiriProfileId:(id)id withUploadTrigger:(id)trigger completion:(id)completion
{
  idCopy = id;
  triggerCopy = trigger;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke;
  v15[3] = &unk_278578EF8;
  v16 = idCopy;
  selfCopy = self;
  v18 = completionCopy;
  v19 = triggerCopy;
  v12 = triggerCopy;
  v13 = completionCopy;
  v14 = idCopy;
  dispatch_async(queue, v15);
}

void __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Primary User";
    if (*(a1 + 32))
    {
      v4 = *(a1 + 32);
    }

    *buf = 136315394;
    v26 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Upload trigger of voice profile of %@ ", buf, 0x16u);
  }

  if (!*(*(a1 + 40) + 8))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277D018F8] deviceProductType];
    v7 = [v9 stringWithFormat:@"Unknown device category for device type %@ - Bailing out", v10];

    v11 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = MEMORY[0x277CCA9B8];
      v23 = @"reason";
      v24 = v7;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:v14];
      (*(v12 + 16))(v12, v15);
    }

    goto LABEL_15;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsOSX())
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke_205;
    v21[3] = &unk_278578ED0;
    v22 = *(a1 + 56);
    v7 = [v5 _prepareVoiceProfileWithSiriProfileId:v6 withUploadBlock:v21];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

LABEL_15:
    return;
  }

  v16 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v18 = MEMORY[0x277D018F8];
    v19 = v16;
    v20 = [v18 deviceProductType];
    *buf = 136315394;
    v26 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Upload not supported on %{public}@", buf, 0x16u);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, 0);
  }
}

- (void)notifyUserVoiceProfileUploadCompleteForSiriProfileId:(id)id withError:(id)error
{
  idCopy = id;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SSRVoiceProfileManager_notifyUserVoiceProfileUploadCompleteForSiriProfileId_withError___block_invoke;
  block[3] = &unk_2785793A0;
  block[4] = self;
  v12 = idCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __89__SSRVoiceProfileManager_notifyUserVoiceProfileUploadCompleteForSiriProfileId_withError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _CSSATUploadPathForSiriProfileId:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  v7 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = @"Primary User";
    }

    *buf = 136315650;
    v20 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
    v21 = 2112;
    v22 = v8;
    v23 = 2114;
    v24 = v4;
    v9 = "%s Upload of Voice Profile for %@ completed with error %{public}@";
    v10 = v6;
    v11 = 32;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v12 = @"Primary User";
    if (*(a1 + 40))
    {
      v12 = *(a1 + 40);
    }

    *buf = 136315394;
    v20 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
    v21 = 2112;
    v22 = v12;
    v9 = "%s Upload of Voice Profile for %@ completed successfully";
    v10 = v6;
    v11 = 22;
  }

  _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_11:
  if ([v2 fileExistsAtPath:v3])
  {
    v18 = 0;
    v13 = [v2 removeItemAtPath:v3 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v14 localizedDescription];
        *buf = 136315394;
        v20 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
        v21 = 2114;
        v22 = v17;
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete existing SATUpload diretory : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = 0;
  }
}

- (id)_getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    goto LABEL_8;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy isDirectory:0];

  v6 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s PHS update directory already exists, remove before we move forward", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v10 = [defaultManager2 removeItemAtPath:pathCopy error:&v19];
  v6 = v19;

  if ((v10 & 1) == 0)
  {
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
      _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Failed to delete PHS update directory", buf, 0xCu);
    }
  }

  else
  {
LABEL_6:
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = v6;
    v12 = [defaultManager3 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v18];
    v13 = v18;

    if (v12)
    {

LABEL_8:
      v14 = pathCopy;
      goto LABEL_16;
    }

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create PHS update directory", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)_getUserVoiceProfileDownloadCacheDirectoryForProfileId:(id)id forDeviceCategory:(unint64_t)category forVoiceProfileVersion:(unint64_t)version
{
  idCopy = id;
  if (category == 3)
  {
    v9 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
    idCopy = v9;
    if (version)
    {
      v11 = @"SATUpdateNewerZone";
    }

    else
    {
      v11 = @"SATUpdate";
    }

    v15 = [v9 stringByAppendingPathComponent:v11];
  }

  else
  {
    v12 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
    v13 = [v12 stringByAppendingPathComponent:@"SATUpdate"];

    version = [MEMORY[0x277CCACA8] stringWithFormat:@"_%d_%d", category, version];
    v15 = [v13 stringByAppendingString:version];

    if (!idCopy)
    {
      goto LABEL_9;
    }

    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_%@", idCopy];
    v16 = [v15 stringByAppendingString:idCopy];

    v15 = v16;
  }

LABEL_9:
  v17 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:v15];

  return v17;
}

- (id)_enableVoiceTriggerIfLanguageMatches:(id)matches
{
  v37 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v5 = _CSNotBackedupPreferencesValueForKey();
  v6 = MEMORY[0x277D018F8];
  uUIDString = [(NSUUID *)self->_endpointUUID UUIDString];
  v8 = [v6 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:0];

  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315906;
    v30 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
    v31 = 2114;
    v32 = *&matchesCopy;
    v33 = 2114;
    v34 = v5;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@, enableVTAfterSyncLanguage: %{public}@, currSiriLanguage: %{public}@", &v29, 0x2Au);
  }

  if (v5 && v8)
  {
    v11 = [matchesCopy isEqualToString:v8];
    v12 = *v9;
    if (v11)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315650;
        v30 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
        v31 = 2114;
        v32 = *&v8;
        v33 = 2114;
        v34 = v5;
        _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@ and enrolled language: %{public}@", &v29, 0x20u);
      }

      _CSNotBackedupPreferencesSetValueForKey();
      CSNotBackedupInternalPreferencesSynchronize();
      mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
      [mEMORY[0x277D7A8D0] setVoiceTriggerEnabled:1];

      if ([MEMORY[0x277D018F8] supportRemoteDarwinVoiceTrigger])
      {
        mEMORY[0x277D7A8D0]2 = [MEMORY[0x277D7A8D0] sharedPreferences];
        [mEMORY[0x277D7A8D0]2 setVoiceTriggerEnabled:1 sender:self deviceType:3 endpointId:0];
      }

      if (CSIsInternalBuild())
      {
        v15 = _CSNotBackedupPreferencesValueForKey();
        v16 = v15;
        if (v15)
        {
          v17 = [v15 objectForKeyedSubscript:@"EnableVTUponVoiceProfileSync"];

          if (v17)
          {
            v18 = [v16 objectForKeyedSubscript:@"EnableVTUponVoiceProfileSync"];
            v19 = [v18 objectForKeyedSubscript:@"timestamp"];
            v20 = objc_alloc_init(MEMORY[0x277CCA968]);
            v21 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
            [v20 setLocale:v21];

            [v20 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
            v22 = [v20 dateFromString:v19];
            date = [MEMORY[0x277CBEAA8] date];
            [date timeIntervalSinceDate:v22];
            v25 = v24;
            if (v24 > 604800.0)
            {
              v26 = *v9;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v29 = 136315394;
                v30 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
                v31 = 2048;
                v32 = v25;
                _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Triggering ABC logging since VoiceProfile download took %f secs", &v29, 0x16u);
              }

              mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
              [mEMORY[0x277D01708] submitVoiceTriggerIssueReport:*MEMORY[0x277D01A90]];
            }
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = *v9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315394;
    v30 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
    v31 = 2114;
    v32 = *&matchesCopy;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Not enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@", &v29, 0x16u);
  }

LABEL_22:

  return 0;
}

- (id)_enrollVoiceProfileForSiriProfileId:(id)id fromCacheDirectoryPath:(id)path withCategoryType:(unint64_t)type
{
  v147[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  pathCopy = path;
  selfCopy = self;
  sSRSpeakerProfilesBasePath = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v101 = sSRSpeakerProfilesBasePath;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__6714;
  v125 = __Block_byref_object_dispose__6715;
  v126 = 0;
  if (!pathCopy || !sSRSpeakerProfilesBasePath)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SourcePath (%@) or DestinationPath (%@) is nil - Bailing out", pathCopy, sSRSpeakerProfilesBasePath];
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
      v139 = 2114;
      v140 = v18;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v127 = @"reason";
    v128 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v100 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v21];

    goto LABEL_12;
  }

  v8 = [SSRUtils createDirectoryIfDoesNotExist:sSRSpeakerProfilesBasePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = (v122 + 5);
  obj = v122[5];
  v95 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&obj];
  objc_storeStrong(v10, obj);

  v109 = AFPreferencesSupportedLanguages();
  v11 = v122[5];
  v12 = selfCopy;
  if (v11)
  {
    v13 = MEMORY[0x277CCACA8];
    localizedDescription = [v11 localizedDescription];
    idCopy2 = [v13 stringWithFormat:@"Failed to get contents of %@ with error %@", pathCopy, localizedDescription];

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
      v139 = 2114;
      v140 = idCopy2;
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v146 = @"reason";
    v147[0] = idCopy2;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:&v146 count:1];
    v100 = [v16 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v17];
    goto LABEL_7;
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  idCopy2 = v95;
  v23 = [(SSRVoiceProfileRetrainingContext *)idCopy2 countByEnumeratingWithState:&v116 objects:v145 count:16];
  if (!v23)
  {
    log = 0;
    goto LABEL_98;
  }

  log = 0;
  v105 = *v117;
  v24 = idCopy;
  if (!idCopy)
  {
    v24 = @"Primary User";
  }

  v91 = v24;
  do
  {
    v106 = v23;
    for (i = 0; i != v106; ++i)
    {
      if (*v117 != v105)
      {
        objc_enumerationMutation(idCopy2);
      }

      v26 = *(*(&v116 + 1) + 8 * i);
      if (v109 && ([v109 containsObject:*(*(&v116 + 1) + 8 * i)] & 1) == 0)
      {
        v44 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v139 = 2114;
          v140 = v26;
          v141 = 2114;
          v142 = *&v109;
          _os_log_impl(&dword_225E12000, v44, OS_LOG_TYPE_DEFAULT, "%s Language %{public}@ not supported in %{public}@ - Skipping", buf, 0x20u);
        }

        goto LABEL_73;
      }

      v27 = [pathCopy stringByAppendingPathComponent:v26];
      v28 = MEMORY[0x277D018F8];
      uUIDString = [(NSUUID *)v12->_endpointUUID UUIDString];
      v30 = [v28 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:0];

      v31 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        endpointUUID = selfCopy->_endpointUUID;
        *buf = 136315650;
        v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
        v139 = 2112;
        v140 = endpointUUID;
        v141 = 2112;
        v142 = *&v30;
        _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s endPointId:%@, currentLanguageCode:%@", buf, 0x20u);
      }

      v33 = CSIsCommunalDevice();
      if (v30)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34 == 1)
      {
        if (([(SSRVoiceProfileRetrainingContext *)v26 isEqualToString:v30]& 1) != 0)
        {
          if ([SSRUtils isSpeakerRecognitionSupportedInLocale:v30])
          {
            goto LABEL_32;
          }

          v69 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2114;
            v140 = idCopy;
            v141 = 2114;
            v142 = *&v30;
            v46 = v69;
            v47 = "%s Skipping profile download for %{public}@ - voiceId not supported in %{public}@";
            v48 = 32;
LABEL_63:
            _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, v48);
          }
        }

        else
        {
          v45 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2114;
            v140 = idCopy;
            v141 = 2114;
            v142 = *&v26;
            v143 = 2114;
            v144 = v30;
            v46 = v45;
            v47 = "%s Skipping profile download for %{public}@ - %{public}@ not matching current %{public}@";
            v48 = 42;
            goto LABEL_63;
          }
        }

        goto LABEL_73;
      }

LABEL_32:
      v35 = [SSRUtils getVoiceProfileForSiriProfileId:idCopy forLanguageCode:v26];
      if (v35)
      {
        if (CSIsCommunalDevice())
        {
          v36 = +[SSRVoiceProfileStore sharedInstance];
          v37 = [v36 checkIfVoiceProfile:v35 needsUpdatedWith:v27 withCategory:type];

          if ((v37 & 1) == 0)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipping profile Update for %@ in %@", idCopy, v26];
            v39 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
              v139 = 2114;
              v140 = v38;
              _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
            }

            v40 = MEMORY[0x277CCA9B8];
            v135 = @"reason";
            v136 = v38;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
            v42 = [v40 errorWithDomain:@"com.apple.speakerrecognition" code:748 userInfo:v41];
            v43 = v122[5];
            v122[5] = v42;

            log = 1;
LABEL_45:

LABEL_73:
            v12 = selfCopy;
            continue;
          }
        }

        else if ([v35 isMarkedSATEnrolled])
        {
          v49 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2114;
            v140 = v26;
            _os_log_impl(&dword_225E12000, v49, OS_LOG_TYPE_DEFAULT, "%s Skipping language [%{public}@] since we already have enrollment data for this language", buf, 0x16u);
          }

          goto LABEL_45;
        }
      }

      v50 = objc_autoreleasePoolPush();
      v51 = +[SSRVoiceProfileStore sharedInstance];
      if (v35)
      {
        v52 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v139 = 2112;
          v140 = idCopy;
          _os_log_impl(&dword_225E12000, v52, OS_LOG_TYPE_DEFAULT, "%s Deleting the existing voice profile before enrolling a new one for siriSharedUserId: %@", buf, 0x16u);
        }

        v53 = [v51 deleteUserVoiceProfile:v35];
      }

      else
      {
        v35 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v26 withAppDomain:@"com.apple.siri"];
        [v35 setSharedSiriProfileId:idCopy];
      }

      v54 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      v55 = [v35 importVoiceProfileAtPath:v54];
      v56 = v122[5];
      v122[5] = v55;

      if (v122[5])
      {
        v57 = MEMORY[0x277CCACA8];
        locale = [v35 locale];
        idCopy = [v57 stringWithFormat:@"ERR: Failed to import profile %@ for %@", locale, idCopy];

        v60 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (([v35 markSATEnrollmentSuccess] & 1) == 0)
      {
        v70 = MEMORY[0x277CCACA8];
        locale2 = [v35 locale];
        idCopy = [v70 stringWithFormat:@"ERR: Migrated language %@ for %@ but failed to mark SAT enrollment", locale2, idCopy];

        v60 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
LABEL_68:
          *buf = 136315394;
          v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v139 = 2114;
          v140 = idCopy;
          _os_log_error_impl(&dword_225E12000, v60, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

LABEL_69:
        v68 = 5;
        goto LABEL_70;
      }

      if (([v35 markSATEnrollmentMigrated] & 1) == 0)
      {
        v72 = MEMORY[0x277CCACA8];
        locale3 = [v35 locale];
        idCopy = [v72 stringWithFormat:@"ERR: Failed to mark migrated for %@ in language %@", idCopy, locale3];

        v60 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (CSIsCommunalDevice())
      {
        v133[0] = @"SSRVoiceRetrainingVoiceProfile";
        v133[1] = @"SSRVoiceRetrainingSpIdType";
        v134[0] = v35;
        v134[1] = &unk_283933960;
        date = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
        v61 = [SSRVoiceProfileRetrainingContext alloc];
        v62 = (v122 + 5);
        v115 = v122[5];
        idCopy = [(SSRVoiceProfileRetrainingContext *)v61 initWithVoiceRetrainingContext:date error:&v115];
        objc_storeStrong(v62, v115);
        if (v122[5])
        {
          v63 = MEMORY[0x277CCACA8];
          profileID = [v35 profileID];
          v98 = [v63 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", profileID, v122[5]];

          v65 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2112;
            v140 = v98;
            _os_log_error_impl(&dword_225E12000, v65, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
          }

          v66 = MEMORY[0x277CCA9B8];
          v131 = @"reason";
          v132 = v98;
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v100 = [v66 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v67];
          v68 = 1;
          goto LABEL_87;
        }
      }

      else
      {
        idCopy = 0;
      }

      v94 = v50;
      date = [MEMORY[0x277CBEAA8] date];
      v74 = objc_alloc_init(MEMORY[0x277D01710]);
      [v74 enter];
      v75 = +[SSRVoiceProfileStore sharedInstance];
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __102__SSRVoiceProfileManager__enrollVoiceProfileForSiriProfileId_fromCacheDirectoryPath_withCategoryType___block_invoke;
      v110[3] = &unk_278578E58;
      v114 = &v121;
      v76 = v35;
      v111 = v76;
      v112 = v26;
      v98 = v74;
      v113 = v98;
      v92 = v76;
      [v75 addUserVoiceProfile:v76 withContext:idCopy withCompletion:v110];

      v50 = v94;
      v77 = [(SSRVoiceProfileRetrainingContext *)v98 waitWithTimeout:dispatch_time(0, 10000000000)];
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:date];
      v80 = v79 * 1000.0;
      if (v77)
      {
        v81 = MEMORY[0x277CCACA8];
        siriProfileId = [v92 siriProfileId];
        v83 = [v81 stringWithFormat:@"userAddition timedout for siriProfileId %@ after %fms", siriProfileId, *&v80];

        v84 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v139 = 2112;
          v140 = v83;
          _os_log_error_impl(&dword_225E12000, v84, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }
      }

      else
      {
        v85 = v122[5];
        if (!v85)
        {
          v86 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2114;
            v140 = v91;
            v141 = 2048;
            v142 = v80;
            _os_log_impl(&dword_225E12000, v86, OS_LOG_TYPE_DEFAULT, "%s Successfully added %{public}@ in %.2fms", buf, 0x20u);
            v86 = *MEMORY[0x277D01970];
          }

          loga = v86;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            locale4 = [v92 locale];
            *buf = 136315650;
            v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v139 = 2114;
            v140 = idCopy;
            v141 = 2114;
            v142 = *&locale4;
            _os_log_impl(&dword_225E12000, loga, OS_LOG_TYPE_DEFAULT, "%s Sucessfully enrolled %{public}@ for language %{public}@", buf, 0x20u);
          }

          if (selfCopy->_currentDeviceCategory - 1 <= 2)
          {
            v88 = [(SSRVoiceProfileManager *)selfCopy _enableVoiceTriggerIfLanguageMatches:v26];
          }

          v68 = 0;
          log = 1;
          goto LABEL_86;
        }

        v93 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v139 = 2114;
          v140 = idCopy;
          v141 = 2114;
          v142 = *&v26;
          v143 = 2114;
          v144 = v85;
          _os_log_error_impl(&dword_225E12000, v93, OS_LOG_TYPE_ERROR, "%s ERR: Failed migrating Voice profile with ID %{public}@ for language %{public}@ with error %{public}@", buf, 0x2Au);
        }
      }

      v68 = 5;
LABEL_86:

      v67 = v111;
LABEL_87:

LABEL_70:
      objc_autoreleasePoolPop(v50);

      if (v68 == 5)
      {
        goto LABEL_73;
      }

      v12 = selfCopy;
      if (v68)
      {
        goto LABEL_8;
      }
    }

    v23 = [(SSRVoiceProfileRetrainingContext *)idCopy2 countByEnumeratingWithState:&v116 objects:v145 count:16];
  }

  while (v23);
LABEL_98:

  if (log & 1 | ((CSIsCommunalDevice() & 1) == 0) || v122[5])
  {

    v100 = v122[5];
    goto LABEL_12;
  }

  idCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enroll user - %@", idCopy];
  v89 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v138 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
    v139 = 2114;
    v140 = idCopy2;
    _os_log_error_impl(&dword_225E12000, v89, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v90 = MEMORY[0x277CCA9B8];
  v129 = @"reason";
  v130 = idCopy2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v100 = [v90 errorWithDomain:@"com.apple.speakerrecognition" code:747 userInfo:v17];
LABEL_7:

LABEL_8:
LABEL_12:
  _Block_object_dispose(&v121, 8);

  return v100;
}

void __102__SSRVoiceProfileManager__enrollVoiceProfileForSiriProfileId_fromCacheDirectoryPath_withCategoryType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 profileID];
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = 136315906;
    v13 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]_block_invoke";
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding voiceprofile for %{public}@ in language %{public}@ completed with error %{public}@", &v12, 0x2Au);
  }

  [*(a1 + 48) leave];
}

- (void)_downloadVoiceProfileForProfileId:(id)id forDeviceCategory:(unint64_t)category withDownloadTriggerBlock:(id)block withCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  v11 = MEMORY[0x277D018F8];
  endpointUUID = self->_endpointUUID;
  idCopy = id;
  uUIDString = [(NSUUID *)endpointUUID UUIDString];
  v15 = [v11 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:0];

  v16 = MEMORY[0x277D01970];
  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_endpointUUID;
    *buf = 136315650;
    v42 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v15;
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s endPointId:%@, currentLanguageCode:%@", buf, 0x20u);
  }

  v19 = [SSRVoiceProfileMetaContext alloc];
  if (CSIsCommunalDevice())
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:category];
  v22 = [(SSRVoiceProfileMetaContext *)v19 initWithSharedSiriId:idCopy languageCode:v20 productCategory:v21 version:&unk_283933948];

  v23 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryForProfileId:idCopy forDeviceCategory:category forVoiceProfileVersion:1];

  if (!v23)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SAT download path is nil - Bailing out"];
    v33 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
      v43 = 2114;
      v44 = v27;
      _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v39 = @"reason";
    v40 = v27;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v28 = [v34 errorWithDomain:@"com.apple.speakerrecognition" code:718 userInfo:v35];

    v25 = blockCopy;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v28, 0);
    }

    goto LABEL_17;
  }

  v24 = [SSRUtils removeItemAtPath:v23];
  v25 = blockCopy;
  v26 = (*(blockCopy + 2))(blockCopy, v22, v23);
  if (v26)
  {
    v27 = v26;
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download for %@ failed with %@", v22, v26];
    v29 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_225E12000, v29, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v30 = MEMORY[0x277CCA9B8];
    v37 = @"reason";
    v38 = v28;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v32 = [v30 errorWithDomain:@"com.apple.speakerrecognition" code:712 userInfo:v31];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v32, 0);
    }

LABEL_17:
    goto LABEL_21;
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, v23);
  }

  v27 = 0;
LABEL_21:
}

- (id)_downloadAndEnrollVoiceProfileForProfileId:(id)id withDownloadTriggerBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  blockCopy = block;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke;
  v21[3] = &unk_278578EA8;
  v21[4] = self;
  v8 = idCopy;
  v22 = v8;
  v9 = blockCopy;
  v23 = v9;
  v10 = MEMORY[0x22AA71400](v21);
  currentDeviceCategory = self->_currentDeviceCategory;
  v12 = v10[2];
  if (currentDeviceCategory == 2)
  {
    v18 = v12();
    if (!v18)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v15 = v18;
    v17 = (v10[2])(v10, self->_currentDeviceCategory);
    goto LABEL_15;
  }

  if (currentDeviceCategory == 4)
  {
    v13 = v12();
    if (v13 && ((v10[2])(v10, 2), v14 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v14) != 0))
    {
      v15 = (v10[2])(v10, 1);

      if (v15)
      {
        v13 = v13;
        v16 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v25 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]";
          v26 = 2112;
          v27 = v8;
          v28 = 2114;
          v29 = v13;
          _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Failed to enroll siriProfileId %@ with %{public}@", buf, 0x20u);
        }

        v17 = v13;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v17 = v12();
LABEL_16:
  v19 = v17;

  return v17;
}

id __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6714;
  v16 = __Block_byref_object_dispose__6715;
  v17 = 0;
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke_2;
  v8[3] = &unk_278578E80;
  v10 = &v12;
  v11 = a2;
  v8[4] = v4;
  v9 = v3;
  [v4 _downloadVoiceProfileForProfileId:v9 forDeviceCategory:a2 withDownloadTriggerBlock:v5 withCompletion:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1 + 56);
      v37 = v7;
      v38 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v36];
      *buf = 136315650;
      v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke_2";
      v48 = 2114;
      v49 = v5;
      v50 = 2114;
      v51 = v38;
      _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s Failed to download voice profile with error %{public}@ and category %{public}@ ", buf, 0x20u);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_23;
  }

  v11 = [*(a1 + 32) _enrollVoiceProfileForSiriProfileId:*(a1 + 40) fromCacheDirectoryPath:v6 withCategoryType:*(a1 + 56)];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (!v14)
  {
    v16 = MEMORY[0x277D01970];
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      v20 = v17;
      v21 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v19];
      *buf = 136315650;
      v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      v48 = 2112;
      v49 = v18;
      v50 = 2114;
      v51 = v21;
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Successfully enrolled voice profile %@ with %{public}@ profile", buf, 0x20u);
    }

    if (!CSIsIOS())
    {
      goto LABEL_20;
    }

    v22 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Triggering profile sync check", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v23 postNotificationName:@"com.apple.voicetrigger.voiceprofilesync" object:0];
    goto LABEL_14;
  }

  v15 = [v14 domain];
  if (v15 == @"com.apple.speakerrecognition")
  {
    v24 = [*(*(*(a1 + 48) + 8) + 40) code];

    if (v24 == 748)
    {
      v25 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        v27 = *(a1 + 56);
        v28 = v25;
        v29 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v27];
        *buf = 136315650;
        v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
        v48 = 2112;
        v49 = v26;
        v50 = 2114;
        v51 = v29;
        _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Skipped enrolling voice profile %@ with %{public}@ profile", buf, 0x20u);
      }

      v30 = *(*(a1 + 48) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = 0;

      goto LABEL_20;
    }
  }

  else
  {
  }

  v32 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v39 = *(a1 + 40);
    v40 = *(a1 + 56);
    v23 = v32;
    v41 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v40];
    *buf = 136315650;
    v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
    v48 = 2112;
    v49 = v39;
    v50 = 2114;
    v51 = v41;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: Failed in enrolling Voice profile %@ with category %{public}@ profile", buf, 0x20u);

LABEL_14:
  }

LABEL_20:
  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = 0;
  v34 = [v33 removeItemAtPath:v6 error:&v45];
  v10 = v45;

  if ((v34 & 1) == 0)
  {
    v35 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v35;
      v44 = [v42 localizedDescription];
      *buf = 136315650;
      v47 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      v48 = 2114;
      v49 = v6;
      v50 = 2114;
      v51 = v44;
      _os_log_error_impl(&dword_225E12000, v43, OS_LOG_TYPE_ERROR, "%s Failed to remove update path [%{public}@] upon migration completion, error: %{public}@", buf, 0x20u);
    }
  }

LABEL_23:
}

- (BOOL)_checkIfDownloadRequiredForProfileId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (CSIsIOS() & 1) != 0 || (CSIsCommunalDevice() & 1) != 0 || (CSIsOSX())
  {
    v5 = CSIsCommunalDevice();
    if (idCopy || !v5)
    {
      if ((CSIsCommunalDevice() & 1) == 0)
      {
        v8 = MEMORY[0x277D018F8];
        uUIDString = [(NSUUID *)self->_endpointUUID UUIDString];
        v10 = [v8 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:0];

        v11 = [SSRUtils getVoiceProfileForSiriProfileId:idCopy forLanguageCode:v10];
        if ([v11 isMarkedSATEnrolled])
        {
          v12 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136315394;
            v16 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
            v17 = 2114;
            v18 = v10;
            _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Skipping download for language [%{public}@] since we already have enrollment data for this language", &v15, 0x16u);
          }

          goto LABEL_16;
        }
      }

      v13 = 1;
      goto LABEL_19;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
      v7 = "%s Skipping download for tvOS when shared id is nil";
LABEL_15:
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0xCu);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
      v7 = "%s Skipping download for unsupported OS";
      goto LABEL_15;
    }
  }

LABEL_16:
  v13 = 0;
LABEL_19:

  return v13;
}

- (void)notifyUserVoiceProfileUpdateReady
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke(uint64_t a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__6714;
  v110 = __Block_byref_object_dispose__6715;
  v111 = 0;
  v86 = [*(a1 + 32) _CSSATDownloadPath];
  v2 = [*(a1 + 32) SSRSpeakerProfilesBasePath];
  v3 = v2;
  v105 = 0;
  v74 = v2;
  if (v86 && v2)
  {
    v79 = a1;
    v4 = [SSRUtils createDirectoryIfDoesNotExist:v2];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = (v107 + 5);
    obj = v107[5];
    v7 = [v5 contentsOfDirectoryAtPath:v86 error:&obj];
    objc_storeStrong(v6, obj);

    v8 = v107;
    if (v107[5])
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8[5] localizedDescription];
        *buf = 136315394;
        v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
        v114 = 2114;
        v115 = v10;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_INFO, "%s Failed to get device hash list %{public}@", buf, 0x16u);
      }

LABEL_83:
      goto LABEL_84;
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v76 = v7;
    v78 = [v76 countByEnumeratingWithState:&v100 objects:v121 count:16];
    if (!v78)
    {
      goto LABEL_79;
    }

    v77 = *v101;
    v75 = *MEMORY[0x277D01AC0];
LABEL_9:
    v80 = 0;
    while (1)
    {
      if (*v101 != v77)
      {
        objc_enumerationMutation(v76);
      }

      v87 = *(*(&v100 + 1) + 8 * v80);
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
        v114 = 2114;
        v115 = v87;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Processing sync data from device hash: %{public}@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v86 stringByAppendingPathComponent:v87];
      v14 = (v107 + 5);
      v99 = v107[5];
      v15 = [v12 contentsOfDirectoryAtPath:v13 error:&v99];
      objc_storeStrong(v14, v99);

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v85 = v15;
      v16 = [v85 countByEnumeratingWithState:&v95 objects:v120 count:16];
      if (v16)
      {
        break;
      }

LABEL_77:

      if (++v80 == v78)
      {
        v78 = [v76 countByEnumeratingWithState:&v100 objects:v121 count:16];
        if (!v78)
        {
LABEL_79:

          goto LABEL_80;
        }

        goto LABEL_9;
      }
    }

    v88 = *v96;
LABEL_16:
    v17 = 0;
    while (1)
    {
      if (*v96 != v88)
      {
        objc_enumerationMutation(v85);
      }

      v18 = *(*(&v95 + 1) + 8 * v17);
      v19 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:v18];
      v20 = v19;
      if (v19 && [v19 isMarkedSATEnrolled])
      {
        v21 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v114 = 2114;
          v115 = v18;
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Skipping language [%{public}@] since we already have enrollment data for this language", buf, 0x16u);
        }

        goto LABEL_57;
      }

      v22 = [v86 stringByAppendingPathComponent:v87];
      v23 = [v22 stringByAppendingPathComponent:v18];

      v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v23];
      [v24 URLByAppendingPathComponent:@"audio"];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v105 = 0;
      v26 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = [*&v25 path];
      v28 = [v26 fileExistsAtPath:v27 isDirectory:&v105];
      v29 = v105;

      if (v28 & v29)
      {
        if ([SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:v23])
        {
          v30 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:*&v25];
          v31 = +[SSRVoiceProfileStore sharedInstance];
          if (v20)
          {
            v32 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_INFO, "%s Deleting invalid voice profile", buf, 0xCu);
            }

            v33 = [v31 deleteUserVoiceProfile:v20];
          }

          else
          {
            v20 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v18 withAppDomain:@"com.apple.siri"];
          }

          v39 = [v20 addUtterances:v30 spIdType:1];
          v40 = v107[5];
          v107[5] = v39;

          if (v107[5])
          {
            v41 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [v20 profileID];
              v56 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v57 = [v107[5] localizedDescription];
              *buf = 136315906;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v30;
              v116 = 2114;
              v117 = v56;
              v118 = 2114;
              v119 = v57;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s Error to copy profile from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);
            }

            goto LABEL_55;
          }

          if ([v20 markSATEnrollmentSuccess])
          {
            v84 = [MEMORY[0x277CBEAA8] date];
            v42 = objc_alloc_init(MEMORY[0x277D01710]);
            [v42 enter];
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke_132;
            v90[3] = &unk_278578E58;
            v94 = &v106;
            v43 = v20;
            v91 = v43;
            v92 = v18;
            v44 = v42;
            v93 = v44;
            [v31 addUserVoiceProfile:v43 withContext:0 withCompletion:v90];
            v82 = v44;
            v45 = [v44 waitWithTimeout:{dispatch_time(0, 10000000000)}];
            v83 = [MEMORY[0x277CBEAA8] date];
            [v83 timeIntervalSinceDate:v84];
            v47 = v46 * 1000.0;
            if (v45)
            {
              v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"userAddition timedout after %fms", v46 * 1000.0, v74];
              v49 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                v114 = 2112;
                v115 = v48;
                _os_log_error_impl(&dword_225E12000, v49, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
              }

LABEL_54:
LABEL_55:

              goto LABEL_56;
            }

            v53 = *(v107 + 5);
            v54 = *MEMORY[0x277D01970];
            if (v53 != 0.0)
            {
              v55 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                v114 = 2114;
                v115 = v18;
                v116 = 2114;
                v117 = v53;
                _os_log_error_impl(&dword_225E12000, v55, OS_LOG_TYPE_ERROR, "%s ERR: Failed migrating Voice profile for language %{public}@ with error %{public}@", buf, 0x20u);
              }

              goto LABEL_54;
            }

            v58 = v54;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v43 locale];
              *buf = 136315650;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v59;
              v116 = 2048;
              v117 = v47;
              _os_log_impl(&dword_225E12000, v58, OS_LOG_TYPE_DEFAULT, "%s Successfully added %{public}@ in %.2fms", buf, 0x20u);
            }

            _CSNotBackedupPreferencesValueForKey();
            v81 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v60 = MEMORY[0x277D018F8];
            v61 = [*(*(v79 + 32) + 24) UUIDString];
            v62 = [v60 getSiriLanguageWithEndpointId:v61 fallbackLanguage:0];

            v63 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v18;
              v116 = 2114;
              v117 = v81;
              v118 = 2114;
              v119 = v62;
              _os_log_impl(&dword_225E12000, v63, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@, enableVTAfterSyncLanguage: %{public}@, currSiriLanguage: %{public}@", buf, 0x2Au);
            }

            if (v81 == 0.0 || !v62)
            {
              v65 = *MEMORY[0x277D01970];
            }

            else
            {
              v64 = [v18 isEqualToString:v62];
              v65 = *MEMORY[0x277D01970];
              if (v64)
              {
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                  v114 = 2114;
                  v115 = v62;
                  v116 = 2114;
                  v117 = v81;
                  _os_log_impl(&dword_225E12000, v65, OS_LOG_TYPE_DEFAULT, "%s Enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@ and enrolled language: %{public}@", buf, 0x20u);
                }

                _CSNotBackedupPreferencesSetValueForKey();
                CSNotBackedupInternalPreferencesSynchronize();
                v66 = [MEMORY[0x277D7A8D0] sharedPreferences];
                [v66 setVoiceTriggerEnabled:1];

                if (CSIsInternalBuild())
                {
                  v67 = [MEMORY[0x277D01708] sharedInstance];
                  [v67 submitVoiceTriggerIssueReport:v75];
                }

                goto LABEL_73;
              }
            }

            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v18;
              _os_log_impl(&dword_225E12000, v65, OS_LOG_TYPE_DEFAULT, "%s Not enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@", buf, 0x16u);
            }

LABEL_73:
            v68 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v18;
              _os_log_impl(&dword_225E12000, v68, OS_LOG_TYPE_DEFAULT, "%s Sucessfully migrated language %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v50 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v18;
              _os_log_error_impl(&dword_225E12000, v50, OS_LOG_TYPE_ERROR, "%s Migrated language %{public}@ but failed to mark SAT enrollment", buf, 0x16u);
            }
          }

          v51 = [v20 markSATEnrollmentMigrated];
          v52 = *MEMORY[0x277D01970];
          if (v51)
          {
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v114 = 2114;
              v115 = v18;
              _os_log_impl(&dword_225E12000, v52, OS_LOG_TYPE_DEFAULT, "%s Sucessfully marked as migrated for language : %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
            v114 = 2114;
            v115 = v18;
            _os_log_error_impl(&dword_225E12000, v52, OS_LOG_TYPE_ERROR, "%s Failed to mark migrated for language : %{public}@", buf, 0x16u);
          }

          goto LABEL_55;
        }

        v38 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v114 = 2114;
          v115 = v18;
          v35 = v38;
          v36 = "%s Skipping language [%{public}@] as voice profile not compatible";
          v37 = 22;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v114 = 2114;
          v115 = v18;
          v116 = 2114;
          v117 = v25;
          v35 = v34;
          v36 = "%s Skipping language [%{public}@] as file path doesnt exist - %{public}@";
          v37 = 32;
LABEL_33:
          _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
        }
      }

LABEL_56:

LABEL_57:
      if (v16 == ++v17)
      {
        v69 = [v85 countByEnumeratingWithState:&v95 objects:v120 count:16];
        v16 = v69;
        if (!v69)
        {
          goto LABEL_77;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_80:
  v70 = [MEMORY[0x277CCAA00] defaultManager];
  v71 = (v107 + 5);
  v89 = v107[5];
  v72 = [v70 removeItemAtPath:v86 error:&v89];
  objc_storeStrong(v71, v89);

  if ((v72 & 1) == 0)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v107[5] localizedDescription];
      v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v113 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
      v114 = 2114;
      v115 = v86;
      v116 = 2114;
      v117 = v73;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove update path [%{public}@] upon migration completion, error: %{public}@", buf, 0x20u);
    }

    goto LABEL_83;
  }

LABEL_84:

  _Block_object_dispose(&v106, 8);
}

void __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 profileID];
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = 136315906;
    v13 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding voiceprofile for %{public}@ in language %{public}@ completed with error %{public}@", &v12, 0x2Au);
  }

  [*(a1 + 48) leave];
}

- (void)notifyUserVoiceProfileDownloadReadyForUser:(id)user getData:(id)data completion:(id)completion
{
  userCopy = user;
  dataCopy = data;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__6714;
  v21[4] = __Block_byref_object_dispose__6715;
  v22 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SSRVoiceProfileManager_notifyUserVoiceProfileDownloadReadyForUser_getData_completion___block_invoke;
  block[3] = &unk_278578E30;
  v18 = dataCopy;
  v19 = completionCopy;
  v16 = userCopy;
  selfCopy = self;
  v20 = v21;
  v12 = completionCopy;
  v13 = dataCopy;
  v14 = userCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v21, 8);
}

void __88__SSRVoiceProfileManager_notifyUserVoiceProfileDownloadReadyForUser_getData_completion___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Primary User";
    if (*(a1 + 32))
    {
      v4 = *(a1 + 32);
    }

    *buf = 136315394;
    v30 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Enrolling voice profile of %@ ", buf, 0x16u);
  }

  if (!*(a1 + 48))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing downloadTriggerBlock - Bailing out"];
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v31 = 2114;
      v32 = v13;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 56);
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = MEMORY[0x277CCA9B8];
    v37 = @"reason";
    v38[0] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v18 = v16;
    v19 = 713;
    goto LABEL_21;
  }

  v5 = *(a1 + 40);
  if (!v5[1])
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277D018F8] deviceProductType];
    v13 = [v20 stringWithFormat:@"Unknown device category for device type %@ - Bailing out", v21];

    v22 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v31 = 2114;
      v32 = v13;
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 56);
    if (!v15)
    {
      goto LABEL_22;
    }

    v23 = MEMORY[0x277CCA9B8];
    v35 = @"reason";
    v36 = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v18 = v23;
    v19 = 711;
LABEL_21:
    v24 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:v19 userInfo:v17];
    (*(v15 + 16))(v15, v24);

LABEL_22:
    return;
  }

  if (([v5 _checkIfDownloadRequiredForProfileId:*(a1 + 32)] & 1) == 0)
  {
    v25 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 136315394;
      v30 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v31 = 2114;
      v32 = v26;
      _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s Skipping download for voice profile: %{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v6 = [*(a1 + 40) _downloadAndEnrollVoiceProfileForProfileId:*(a1 + 32) withDownloadTriggerBlock:*(a1 + 48)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 64) + 8) + 40);
  if (!v9)
  {
LABEL_25:
    v27 = *(a1 + 56);
    if (!v27)
    {
      return;
    }

    v12 = *(v27 + 16);
    goto LABEL_27;
  }

  v10 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 32);
    *buf = 136315650;
    v30 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
    v31 = 2112;
    v32 = v28;
    v33 = 2112;
    v34 = v9;
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Failed enrolling %@ with error %@", buf, 0x20u);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(v11 + 16);
LABEL_27:
    v12();
  }
}

- (id)getCacheDirectoryForAppDomain:(id)domain
{
  v4 = [(SSRVoiceProfileManager *)self _CSSATCachePathForAppDomain:domain];
  v5 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:v4];

  return v5;
}

- (id)getUserVoiceProfileUpdateDirectory
{
  _CSSATDownloadPath = [(SSRVoiceProfileManager *)self _CSSATDownloadPath];
  v4 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:_CSSATDownloadPath];

  return v4;
}

- (void)notifyImplicitTrainingUtteranceAvailable:(id)available forVoiceProfileId:(id)id withRecordDeviceInfo:(id)info withRecordCtxt:(id)ctxt withVoiceTriggerCtxt:(id)triggerCtxt withOtherCtxt:(id)otherCtxt assetToUse:(id)use withCompletion:(id)self0
{
  v163[1] = *MEMORY[0x277D85DE8];
  availableCopy = available;
  idCopy = id;
  infoCopy = info;
  ctxtCopy = ctxt;
  triggerCtxtCopy = triggerCtxt;
  otherCtxtCopy = otherCtxt;
  useCopy = use;
  completionCopy = completion;
  v143 = 0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x3032000000;
  v141[3] = __Block_byref_object_copy__6714;
  v141[4] = __Block_byref_object_dispose__6715;
  v142 = [objc_alloc(MEMORY[0x277D017F8]) initWithDescription:@"ImplicitTraining"];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke;
  v137[3] = &unk_278578D88;
  v19 = idCopy;
  v138 = v19;
  v140 = v141;
  v20 = completionCopy;
  v139 = v20;
  v21 = MEMORY[0x22AA71400](v137);
  v22 = MEMORY[0x277D01970];
  v23 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = @"primary";
    }

    route = [infoCopy route];
    type = [ctxtCopy type];
    *buf = 136315906;
    *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = v24;
    *&buf[22] = 2114;
    v159 = route;
    LOWORD(v160) = 1024;
    *(&v160 + 2) = type;
    _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Received implicit utterance for %{public}@ from %{public}@ with context %d", buf, 0x26u);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  shouldDisableImplicitTraining = [mEMORY[0x277D01788] shouldDisableImplicitTraining];

  if (!shouldDisableImplicitTraining)
  {
    if (!availableCopy)
    {
      v36 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v35 = "%s ERR: FilePath is nil - Bailing out";
      v37 = v36;
      v38 = 12;
LABEL_36:
      _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, v35, buf, v38);
      goto LABEL_18;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [availableCopy path];
    v33 = [defaultManager fileExistsAtPath:path isDirectory:&v143];

    if ((v33 & 1) == 0)
    {
      v34 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = availableCopy;
      v35 = "%s ERR: Training utterance doesnt exist at %@ - Bailing out";
LABEL_35:
      v37 = v34;
      v38 = 22;
      goto LABEL_36;
    }

    if (v143 == 1)
    {
      v34 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = availableCopy;
      v35 = "%s ERR: Training utterance is marked as directory at %@ - Bailing out";
      goto LABEL_35;
    }

    if (!triggerCtxtCopy)
    {
      v29 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v30 = "%s VoiceTriggerEventInfo is nil - Bailing out";
      goto LABEL_9;
    }

    v39 = *MEMORY[0x277D01C10];
    v40 = [triggerCtxtCopy objectForKeyedSubscript:*MEMORY[0x277D01C10]];
    v41 = v40 == 0;

    if (v41)
    {
      v29 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v30 = "%s kVTEILanguageCode is nil - Bailing out";
      goto LABEL_9;
    }

    v102 = [triggerCtxtCopy objectForKeyedSubscript:v39];
    v42 = [triggerCtxtCopy objectForKeyedSubscript:*MEMORY[0x277D01EF0]];
    v43 = v42 == 0;

    if (v43)
    {
      v47 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v48 = "%s ERR: trigger score not found in VTEI - Bailing out";
    }

    else
    {
      v44 = [triggerCtxtCopy objectForKeyedSubscript:*MEMORY[0x277D01CF0]];
      v45 = [v44 isEqualToString:@"Siri"];

      if (v45)
      {
        v46 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
          _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s kVTEITriggeredPhrase is JS - Bailing out", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v49 = *MEMORY[0x277D01E38];
      v50 = [triggerCtxtCopy objectForKeyedSubscript:*MEMORY[0x277D01E38]];
      v51 = v50 == 0;

      if (v51)
      {
        bOOLValue = 0;
      }

      else
      {
        v52 = [triggerCtxtCopy objectForKeyedSubscript:v49];
        bOOLValue = [v52 BOOLValue];
      }

      if ((CSIsCommunalDevice() | bOOLValue))
      {
        if ([ctxtCopy type] == 21)
        {
          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_90;
          block[3] = &unk_278578DB0;
          v129 = infoCopy;
          selfCopy = self;
          v131 = availableCopy;
          v132 = v19;
          v133 = triggerCtxtCopy;
          v134 = v102;
          v135 = otherCtxtCopy;
          v136 = v21;
          dispatch_async(queue, block);

          v55 = v129;
LABEL_99:

          goto LABEL_49;
        }

        if ([ctxtCopy type] == 6)
        {
          if (useCopy)
          {
            v56 = useCopy;
            v57 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&buf[12] = 2114;
              *&buf[14] = v56;
              _os_log_impl(&dword_225E12000, v57, OS_LOG_TYPE_DEFAULT, "%s Using asset %{public}@ provided by caller", buf, 0x16u);
            }
          }

          else
          {
            v58 = +[SSRAssetManager sharedManager];
            v59 = [v58 installedAssetOfType:3 forLanguage:v102];

            v56 = v59;
            if (!v59)
            {
              v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get asset for locale %@", v102];
              v69 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                *&buf[12] = 2112;
                *&buf[14] = v102;
                _os_log_error_impl(&dword_225E12000, v69, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
              }

              v70 = MEMORY[0x277CCA9B8];
              v162 = @"reason";
              v163[0] = v102;
              v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:&v162 count:1];
              v72 = [v70 errorWithDomain:@"com.apple.speakerrecognition" code:802 userInfo:v71];
              (v21)[2](v21, v72);
              route3 = v102;
              v99 = v71;
              v55 = 0;

              goto LABEL_98;
            }
          }

          v55 = v56;
          if (([v56 satImplicitTrainingEnabled] & 1) == 0)
          {
            v62 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&buf[12] = 2114;
              *&buf[14] = v102;
              v61 = "%s Implicit training not enabled for %{public}@";
              v63 = v62;
              v64 = 22;
LABEL_63:
              _os_log_impl(&dword_225E12000, v63, OS_LOG_TYPE_DEFAULT, v61, buf, v64);
              goto LABEL_64;
            }

            goto LABEL_64;
          }

          if (CSIsCommunalDevice())
          {
            if (!v19)
            {
              v60 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v61 = "%s sharedSiriId is nil - Bailing out";
LABEL_62:
                v63 = v60;
                v64 = 12;
                goto LABEL_63;
              }

              goto LABEL_64;
            }
          }

          else if ([MEMORY[0x277D018F8] isIOSDeviceSupportingBargeIn])
          {
            v65 = [triggerCtxtCopy objectForKeyedSubscript:*MEMORY[0x277D01DC8]];
            v66 = [v65 isEqualToString:*MEMORY[0x277D01BA0]];

            if (v66)
            {
              v60 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v61 = "%s Rejecting barge-in utterance from adding to voice profile";
                goto LABEL_62;
              }

LABEL_64:
              v21[2](v21, 0);
              goto LABEL_99;
            }
          }

          if (infoCopy)
          {
            route2 = [infoCopy route];
            if (route2)
            {
              route3 = [infoCopy route];
            }

            else
            {
              route3 = @"unknown";
            }
          }

          else
          {
            route3 = @"unknown";
          }

          v73 = MEMORY[0x277CCACA8];
          type2 = ctxtCopy;
          if (ctxtCopy)
          {
            type2 = [ctxtCopy type];
          }

          v99 = [v73 stringWithFormat:@"%lld", type2];
          v101 = +[SSRVoiceProfileStore sharedInstance];
          v75 = [SSRUtils getVoiceProfileForSiriProfileId:v19 forLanguageCode:v102];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v159 = __Block_byref_object_copy__6714;
          v160 = __Block_byref_object_dispose__6715;
          v161 = 0;
          v98 = v75;
          if (!v75)
          {
            v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile not found for %@ - Bailing out", v19];
            v81 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *v150 = 136315394;
              *&v150[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&v150[12] = 2114;
              *&v150[14] = v96;
              _os_log_error_impl(&dword_225E12000, v81, OS_LOG_TYPE_ERROR, "%s %{public}@", v150, 0x16u);
            }

            v82 = MEMORY[0x277CCA9B8];
            v156 = *MEMORY[0x277CCA450];
            v157 = v96;
            v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
            v84 = [v82 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v83];
            (v21)[2](v21, v84);

            goto LABEL_97;
          }

          locale = [v75 locale];
          v77 = [locale isEqualToString:v102];

          if ((v77 & 1) == 0)
          {
            v85 = MEMORY[0x277CCACA8];
            locale2 = [v98 locale];
            v1022 = [v85 stringWithFormat:@"ERR: Voice Profile locale %@ not matching with %@ - Bailing out", locale2, v102];

            v87 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *v150 = 136315394;
              *&v150[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&v150[12] = 2114;
              *&v150[14] = v1022;
              _os_log_error_impl(&dword_225E12000, v87, OS_LOG_TYPE_ERROR, "%s %{public}@", v150, 0x16u);
            }

            v88 = MEMORY[0x277CCA9B8];
            v154 = *MEMORY[0x277CCA450];
            v155 = v1022;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
            v90 = [v88 errorWithDomain:@"com.apple.speakerrecognition" code:732 userInfo:v89];
            (v21)[2](v21, v90);

            goto LABEL_97;
          }

          v78 = [otherCtxtCopy objectForKeyedSubscript:@"shouldRecordPayload"];
          bOOLValue2 = [v78 BOOLValue];

          *v150 = 0;
          *&v150[8] = v150;
          *&v150[16] = 0x3032000000;
          v151 = __Block_byref_object_copy__6714;
          v152 = __Block_byref_object_dispose__6715;
          v153 = availableCopy;
          v126[0] = 0;
          v126[1] = v126;
          v126[2] = 0x3032000000;
          v126[3] = __Block_byref_object_copy__6714;
          v126[4] = __Block_byref_object_dispose__6715;
          v127 = 0;
          v120 = 0;
          v121 = &v120;
          v122 = 0x3032000000;
          v123 = __Block_byref_object_copy__6714;
          v124 = __Block_byref_object_dispose__6715;
          v79 = v153;
          v125 = v79;
          if (CSIsCommunalDevice())
          {
            if ((bOOLValue2 & 1) == 0)
            {
              v80 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *v144 = 136315394;
                v145 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v146 = 2114;
                v147 = v79;
                _os_log_impl(&dword_225E12000, v80, OS_LOG_TYPE_DEFAULT, "%s Privacy disallowed implicit utterance %{public}@ - skipping", v144, 0x16u);
              }

              v21[2](v21, 0);
              goto LABEL_96;
            }
          }

          else
          {
            v118[0] = MEMORY[0x277D85DD0];
            v118[1] = 3221225472;
            v118[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_111;
            v118[3] = &unk_278578DE0;
            v119[1] = buf;
            v119[2] = &v120;
            v119[3] = v150;
            v119[4] = v126;
            v119[0] = v98;
            [SSRUtils segmentVoiceTriggerFromAudioFile:v79 withVTEventInfo:triggerCtxtCopy withStorePayloadPortion:bOOLValue2 withCompletion:v118];
            v91 = *(*&buf[8] + 40);
            if (v91)
            {
              v92 = v119;
              v93 = *v22;
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                *v144 = 136315650;
                v145 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v146 = 2114;
                v147 = v79;
                v148 = 2114;
                v149 = v91;
                _os_log_error_impl(&dword_225E12000, v93, OS_LOG_TYPE_ERROR, "%s ERR: Failed to segment %{public}@ with %{public}@ - Bailing out", v144, 0x20u);
                v91 = *(*&buf[8] + 40);
              }

              v21[2](v21, v91);
              goto LABEL_95;
            }
          }

          v94 = v121[5];
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_114;
          v108[3] = &unk_278578E08;
          v115 = buf;
          v109 = triggerCtxtCopy;
          v110 = v79;
          v116 = v150;
          v111 = v99;
          v112 = route3;
          v113 = v98;
          v117 = v126;
          v114 = v21;
          [v101 addImplicitUtterance:v94 toVoiceProfile:v113 withAsset:v55 withTriggerSource:v111 withAudioInput:v112 withCompletion:v108];

          v92 = &v109;
LABEL_95:

LABEL_96:
          _Block_object_dispose(&v120, 8);

          _Block_object_dispose(v126, 8);
          _Block_object_dispose(v150, 8);

LABEL_97:
          _Block_object_dispose(buf, 8);

LABEL_98:
          goto LABEL_99;
        }

LABEL_48:
        v21[2](v21, 0);
LABEL_49:

        goto LABEL_19;
      }

      v47 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v48 = "%s ERR: SAT did not trigger!!! - Bailing out";
    }

    _os_log_error_impl(&dword_225E12000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0xCu);
    goto LABEL_48;
  }

  v29 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
    v30 = "%s Implicit training has been disabled -- Bailing out";
LABEL_9:
    _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
  }

LABEL_18:
  v21[2](v21, 0);
LABEL_19:

  _Block_object_dispose(v141, 8);
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      if (!v5)
      {
        v5 = @"primary";
      }

      v10 = 136315650;
      v11 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: Finished implicit training for %@ with error %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"primary";
    if (a1[4])
    {
      v6 = a1[4];
    }

    v10 = 136315394;
    v11 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Finished implicit training for %@", &v10, 0x16u);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_90(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteDeviceUID];
  v3 = [v2 UUIDString];

  v4 = [[SSRRemoteControlClient alloc] initWithRemoteDeviceUUID:v3];
  v5 = *(a1 + 40);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  if ([*(*(a1 + 40) + 32) waitingForConnection:0 error:3.0])
  {
    v7 = *(*(a1 + 40) + 32);
    v8 = [*(a1 + 48) path];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_2;
    v15[3] = &unk_2785796F8;
    v16 = *(a1 + 48);
    v17 = *(a1 + 88);
    [v7 addImplicitTrainingUtteranceToRemoteFilePath:v8 forVoiceProfileId:v9 withVoiceTriggerCtxt:v10 locale:v11 withOtherCtxt:v12 completion:v15];
  }

  else
  {
    v13 = *(a1 + 88);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1001 userInfo:&unk_283933798];
    (*(v13 + 16))(v13, v14);
  }
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_111(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  if (!*(*(*(a1 + 40) + 8) + 40) && CSIsOSX())
  {
    v11 = [*(*(*(a1 + 56) + 8) + 40) lastPathComponent];
    v12 = [*(a1 + 32) voiceProfileImplicitCacheDirPath];
    v13 = [SSRUtils createDirectoryIfDoesNotExist:v12];
    v14 = MEMORY[0x277CBEBC0];
    v23[0] = v12;
    v23[1] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = [v14 fileURLWithPathComponents:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(*(*(a1 + 56) + 8) + 40) path];
    v20 = [*(*(*(a1 + 48) + 8) + 40) path];
    v21 = *(*(a1 + 40) + 8);
    obj = *(v21 + 40);
    [SSRUtils encryptFileAt:v19 andSaveTo:v20 error:&obj];
    objc_storeStrong((v21 + 40), obj);
  }
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_114(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
  if (v4)
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) code];
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    if (v5 == 757)
    {
      *(v6 + 40) = 0;

      v8 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      v46 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v9 = "%s Voice Profile is full - Ignoring";
LABEL_10:
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if ([v7 code] == 735)
    {
      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = 0;

      v8 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      v46 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v9 = "%s Implicit Policy not satisfied - Ignoring";
      goto LABEL_10;
    }

    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      v22 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 136315650;
      v46 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v47 = 2114;
      v48 = v21;
      v49 = 2114;
      v50 = v22;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: Failed to process implicit utterance %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D01ED0]];
    v11 = [v10 unsignedLongLongValue];

    v12 = +[SSRBiometricMatch sharedInstance];
    v13 = [v12 getLastBiometricMatchForVoiceTriggerTimeStamp:v11];

    v14 = *MEMORY[0x277D01B38];
    v15 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D01B38]];
    if (v15)
    {
      v16 = [*(a1 + 32) objectForKeyedSubscript:v14];
      v17 = [v16 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    v23 = MEMORY[0x277D01970];
    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 136315394;
      v46 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v47 = 2114;
      v48 = v25;
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Processed implicit utterance %{public}@ successfully", buf, 0x16u);
    }

    if ((CSIsCommunalDevice() & 1) == 0)
    {
      v26 = [*(*(*(a1 + 88) + 8) + 40) path];
      LOBYTE(v43) = 0;
      [SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:v26 enrollmentType:@"implicit" isHandheldEnrollment:v17 triggerSource:*(a1 + 48) audioInput:*(a1 + 56) otherBiometricResult:v13 containsPayload:v43];

      v27 = *(a1 + 64);
      v52[0] = *(*(*(a1 + 88) + 8) + 40);
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v29 = [v27 addUtterances:v28 spIdType:1];

      v30 = *(*(*(a1 + 96) + 8) + 40);
      if (v30)
      {
        v31 = [v30 path];
        LOBYTE(v44) = 1;
        [SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:v31 enrollmentType:@"implicit" isHandheldEnrollment:v17 triggerSource:*(a1 + 48) audioInput:*(a1 + 56) otherBiometricResult:v13 containsPayload:v44];

        v32 = *(a1 + 64);
        v51 = *(*(*(a1 + 96) + 8) + 40);
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
        v34 = [v32 addUtterances:v33 spIdType:3];
      }

      v35 = *v23;
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v46 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
        _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Generate profile change notification", buf, 0xCu);
      }

      notify_post("com.apple.voicetrigger.PHSProfileModified");
    }
  }

LABEL_22:
  v36 = *(*(*(a1 + 88) + 8) + 40);
  if (v36)
  {
    v37 = [v36 path];
    [SSRUtils removeItemAtPath:v37];
  }

  v38 = *(*(*(a1 + 96) + 8) + 40);
  if (v38)
  {
    v39 = [v38 path];
    [SSRUtils removeItemAtPath:v39];
  }

  if (CSIsOSX())
  {
    v40 = [*(a1 + 64) voiceProfileImplicitCacheDirPath];
    v41 = [SSRUtils removeItemAtPath:v40];

    v42 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v42 postNotificationName:@"com.apple.voicetrigger.speakermodelUpdated" object:0];
  }

  (*(*(a1 + 72) + 16))();
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v7 = v4;
      v8 = [v3 localizedDescription];
      v9 = 136315394;
      v10 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke_2";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Failed to add implicit training utterance to remote, error: %{public}@", &v9, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 path];
    [SSRUtils removeItemAtPath:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)isImplicitTrainingRequiredForVoiceProfileId:(id)id locale:(id)locale completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  idCopy = id;
  localeCopy = locale;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__SSRVoiceProfileManager_isImplicitTrainingRequiredForVoiceProfileId_locale_completion___block_invoke;
  v23[3] = &unk_278578D60;
  v10 = idCopy;
  v24 = v10;
  v11 = localeCopy;
  v25 = v11;
  v12 = completionCopy;
  v26 = v12;
  v13 = MEMORY[0x22AA71400](v23);
  v14 = +[SSRAssetManager sharedManager];
  v15 = [v14 installedAssetOfType:3 forLanguage:v11];

  v16 = +[SSRVoiceProfileStore sharedInstance];
  v17 = [SSRUtils getVoiceProfileForSiriProfileId:v10 forLanguageCode:v11];
  if (v15 && [v15 satImplicitTrainingEnabled] && v16 && v17 && (objc_msgSend(v17, "locale"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v11), v18, v19))
  {
    [v16 isImplicitTrainingRequiredToVoiceProfile:v17 withAsset:v15 completion:v13];
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      locale = [v17 locale];
      *buf = 136316162;
      v28 = "[SSRVoiceProfileManager isImplicitTrainingRequiredForVoiceProfileId:locale:completion:]";
      v29 = 2114;
      v30 = v15;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      v35 = 2114;
      v36 = locale;
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Implicit training not needed since: asset(%{public}@), profileStore(%{public}@), profile(%{public}@), profile locale(%{public}@)", buf, 0x34u);
    }

    v13[2](v13, 0, 0);
  }
}

void __88__SSRVoiceProfileManager_isImplicitTrainingRequiredForVoiceProfileId_locale_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[4];
    v9 = a1[5];
    if (a2)
    {
      v7 = @"YES";
    }

    v11 = 136315906;
    v12 = "[SSRVoiceProfileManager isImplicitTrainingRequiredForVoiceProfileId:locale:completion:]_block_invoke";
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s isImplicitTraining required for profileId %{public}@, locale(%{public}@) ? %{public}@", &v11, 0x2Au);
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

- (void)addUtterances:(id)utterances toProfile:(id)profile withContext:(id)context doUtteranceDonation:(BOOL)donation withCompletion:(id)completion
{
  donationCopy = donation;
  v60[1] = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  v16 = +[SSRVoiceProfileStore sharedInstance];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__6714;
  v49 = __Block_byref_object_dispose__6715;
  v50 = 0;
  if (!profileCopy)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: profile is nil - Bailing out"];
    v28 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_17;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_17;
    }

    v29 = MEMORY[0x277CCA9B8];
    v59 = @"reason";
    v60[0] = v23;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v31 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v30];
    completionCopy[2](completionCopy, v31);

    goto LABEL_17;
  }

  if (!contextCopy)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Context is nil - Bailing out"];
    v32 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_17;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_17;
    }

    v33 = MEMORY[0x277CCA9B8];
    v57 = @"reason";
    v58 = v23;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v35 = [v33 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v34];
    completionCopy[2](completionCopy, v35);

    goto LABEL_17;
  }

  v17 = [profileCopy addUtterances:utterancesCopy spIdType:{objc_msgSend(contextCopy, "spIdType")}];
  v18 = v46[5];
  v46[5] = v17;

  v19 = v46;
  if (v46[5])
  {
    v20 = MEMORY[0x277CCACA8];
    profileID = [profileCopy profileID];
    localizedDescription = [v46[5] localizedDescription];
    v23 = [v20 stringWithFormat:@"ERR: Failed to copy %@ to %@, error: %@", utterancesCopy, profileID, localizedDescription];

    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    if (completionCopy)
    {
LABEL_6:
      v25 = MEMORY[0x277CCA9B8];
      v55 = @"reason";
      v56 = v23;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v27 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v26];
      completionCopy[2](completionCopy, v27);
    }
  }

  else
  {
    if (donationCopy)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v52 = __Block_byref_object_copy__6714;
      v53 = __Block_byref_object_dispose__6715;
      v54 = 0;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke;
      v42[3] = &unk_278578D10;
      v44 = buf;
      v43 = profileCopy;
      [utterancesCopy enumerateObjectsUsingBlock:v42];

      _Block_object_dispose(buf, 8);
      v19 = v46;
      v36 = v46[5];
    }

    else
    {
      v36 = 0;
    }

    v19[5] = 0;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_3;
    v37[3] = &unk_278578D38;
    v41 = &v45;
    v40 = completionCopy;
    v38 = profileCopy;
    selfCopy = self;
    [v16 addUserVoiceProfile:v38 withContext:contextCopy withCompletion:v37];

    v23 = v40;
  }

LABEL_17:

  _Block_object_dispose(&v45, 8);
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB28];
  v6 = a2;
  v7 = [v5 data];
  objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_2;
  v13[3] = &unk_278578CE8;
  v15 = *(a1 + 40);
  v8 = v7;
  v14 = v8;
  [SSRUtils streamAudioFromFileUrl:v6 audioStreamBasicDescriptor:v16 samplesPerStreamChunk:640 audioDataAvailableHandler:v13];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = +[SSRVoiceProfileComposer sharedTrainer];
    v11 = [v8 copy];
    v12 = [*(a1 + 32) locale];
    [v10 logEnrollmentUtterance:v11 locale:v12 utteranceId:a3 mhUUID:v9 phId:0];
  }
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (a2)
  {
    v7 = [*(a1 + 32) appDomain];
    v8 = [v7 isEqualToString:@"com.apple.siri"];

    if (v8)
    {
      if ([*(a1 + 32) markSATEnrollmentSuccess])
      {
        if (CSIsIOS() && (CSIsCommunalDevice() & 1) == 0)
        {
          v9 = *(a1 + 40);
          v10 = [*(a1 + 32) locale];
          [v9 _markVoiceProfileTrainingSyncForLanguage:v10];
        }

        v11 = *(a1 + 48);
        if (v11)
        {
          (*(v11 + 16))(v11, 0);
        }

        notify_post("com.apple.voicetrigger.PHSProfileModified");
      }

      else
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [*(a1 + 32) profileID];
        v16 = [v14 stringWithFormat:@"ERR: Failed in marking Enrollment as Successful for profile %@", v15];

        v17 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]_block_invoke";
          v26 = 2114;
          v27 = v16;
          _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

        v18 = *(a1 + 48);
        if (v18)
        {
          v19 = MEMORY[0x277CCA9B8];
          v22 = *MEMORY[0x277CCA450];
          v23 = v16;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v21 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:723 userInfo:v20];
          (*(v18 + 16))(v18, v21);
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]_block_invoke_3";
      v26 = 2114;
      v27 = v6;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: Failed to add profile into the store with error %{public}@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(*(a1 + 56) + 8) + 40));
  }

LABEL_19:
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    if (v8)
    {
      [*(a1 + 32) appendData:v8];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"dataChunk being nil";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:0 userInfo:v10];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

- (id)updateVoiceProfile:(id)profile withUserName:(id)name
{
  nameCopy = name;
  profileCopy = profile;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 updateVoiceProfile:profileCopy withUserName:nameCopy];

  return v8;
}

- (id)newVoiceProfileWithLocale:(id)locale withAppDomain:(id)domain
{
  domainCopy = domain;
  localeCopy = locale;
  v7 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:localeCopy withAppDomain:domainCopy];

  return v7;
}

- (id)_getVoiceProfilesForSiriProfileId:(id)id withLanguageCode:(id)code
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = [(SSRVoiceProfileManager *)self provisionedVoiceProfilesForAppDomain:@"com.apple.siri" withLocale:code];
  if ([v7 count])
  {
    if (CSIsCommunalDevice())
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = v10;
      v12 = *v25;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          siriProfileId = [v14 siriProfileId];
          if ([siriProfileId isEqualToString:idCopy])
          {
          }

          else
          {
            profileID = [v14 profileID];
            v17 = [profileID isEqualToString:idCopy];

            if (!v17)
            {
              continue;
            }
          }

          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (!v11)
        {
LABEL_14:

          if ([v8 count])
          {
            v18 = v8;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          v7 = v23;
          goto LABEL_25;
        }
      }
    }

    if ([v7 count] >= 2)
    {
      v21 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[SSRVoiceProfileManager _getVoiceProfilesForSiriProfileId:withLanguageCode:]";
        v31 = 2114;
        v32 = v7;
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: More than one Siri Voice Profiles - %{public}@", buf, 0x16u);
      }
    }

    v19 = v7;
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[SSRVoiceProfileManager _getVoiceProfilesForSiriProfileId:withLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: No configured Siri Profiles", buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_25:

  return v19;
}

- (id)discardSiriEnrollmentForProfileId:(id)id forLanguageCode:(id)code
{
  v35 = *MEMORY[0x277D85DE8];
  idCopy = id;
  codeCopy = code;
  v8 = [(SSRVoiceProfileManager *)self _getVoiceProfilesForSiriProfileId:idCopy withLanguageCode:codeCopy];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
      v31 = 2112;
      v32 = idCopy;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Discarding voice profiles for siriSharedUserId: %@", buf, 0x16u);
    }

    v22 = codeCopy;
    v23 = idCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v17 = v14;
          if (*v25 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v14 = [(SSRVoiceProfileManager *)self deleteUserVoiceProfile:v18];

          if (v14)
          {
            v19 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v30 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
              v31 = 2114;
              v32 = v18;
              v33 = 2114;
              v34 = v14;
              _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x20u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    codeCopy = v22;
    idCopy = v23;
    v8 = v21;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
      v31 = 2114;
      v32 = idCopy;
      v33 = 2114;
      v34 = codeCopy;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Profile not available for %{public}@ & %{public}@ - Bailing out", buf, 0x20u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)SSRBasePathForAppDomain:(id)domain
{
  domainCopy = domain;
  v4 = +[SSRUtils baseDir];
  v5 = [v4 stringByAppendingPathComponent:@"VoiceTrigger/SAT"];
  v6 = [v5 stringByAppendingPathComponent:domainCopy];

  return v6;
}

- (id)SSRSpeakerProfilesBasePath
{
  v2 = +[SSRUtils baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"VoiceTrigger/SAT"];

  return v3;
}

- (id)getSATEnrollmentPath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  sSRSpeakerProfilesBasePath = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v5 = [defaultManager fileExistsAtPath:sSRSpeakerProfilesBasePath isDirectory:0];

  v6 = 0;
  if (v5)
  {
    v7 = MEMORY[0x277CBEA60];
    sSRSpeakerProfilesBasePath2 = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
    v6 = [v7 arrayWithObjects:{sSRSpeakerProfilesBasePath2, 0}];
  }

  return v6;
}

- (SSRVoiceProfileManager)initWithEndpointId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = SSRVoiceProfileManager;
  v5 = [(SSRVoiceProfileManager *)&v13 init];
  if (v5)
  {
    deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
    v5->_currentDeviceCategory = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];

    v7 = dispatch_queue_create("com.apple.cs.profileManager", 0);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [idCopy copy];
    endpointUUID = v5->_endpointUUID;
    v5->_endpointUUID = v9;

    lastRepromptedDate = v5->_lastRepromptedDate;
    v5->_lastRepromptedDate = @"<unset>";
  }

  return v5;
}

+ (void)clearVTEnableAfterProfileSyncFlag
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[SSRVoiceProfileManager clearVTEnableAfterProfileSyncFlag]";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Clearing the VT enable flag upon profile sync", &v3, 0xCu);
  }

  _CSNotBackedupPreferencesSetValueForKey();
  CSNotBackedupInternalPreferencesSynchronize();
}

+ (id)sharedInstanceWithEndpointId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (idCopy && sharedInstanceWithEndpointId__sharedVoiceProfileManager && ([sharedInstanceWithEndpointId__sharedVoiceProfileManager endpointUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != idCopy))
  {
    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = sharedInstanceWithEndpointId__sharedVoiceProfileManager;
      v9 = v5;
      endpointUUID = [v8 endpointUUID];
      *buf = 136315650;
      v14 = "+[SSRVoiceProfileManager sharedInstanceWithEndpointId:]";
      v15 = 2112;
      v16 = endpointUUID;
      v17 = 2112;
      v18 = idCopy;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s sharedVoiceProfileManager already instantiated with a different endpointUUID. existing-endpointUUID:%@ requested-endpointUUID:%@", buf, 0x20u);
    }

    v6 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SSRVoiceProfileManager_sharedInstanceWithEndpointId___block_invoke;
    block[3] = &unk_2785797A8;
    v12 = idCopy;
    if (sharedInstanceWithEndpointId__onceToken != -1)
    {
      dispatch_once(&sharedInstanceWithEndpointId__onceToken, block);
    }

    v6 = sharedInstanceWithEndpointId__sharedVoiceProfileManager;
  }

  return v6;
}

uint64_t __55__SSRVoiceProfileManager_sharedInstanceWithEndpointId___block_invoke(uint64_t a1, uint64_t a2)
{
  SSRLogInitIfNeeded();
  sharedInstanceWithEndpointId__sharedVoiceProfileManager = [[SSRVoiceProfileManager alloc] initWithEndpointId:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

@end