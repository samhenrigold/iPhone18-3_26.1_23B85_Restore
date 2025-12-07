@interface SSRVoiceProfileManagerXPCService
- (SSRVoiceProfileManagerXPCService)init;
- (void)importVoiceProfile:(id)profile appDomain:(id)domain withSharedUserId:(id)id withPersonaId:(id)personaId withLocale:(id)locale withAsset:(id)asset trainWithPayload:(BOOL)payload withCompletion:(id)self0;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion;
@end

@implementation SSRVoiceProfileManagerXPCService

- (void)importVoiceProfile:(id)profile appDomain:(id)domain withSharedUserId:(id)id withPersonaId:(id)personaId withLocale:(id)locale withAsset:(id)asset trainWithPayload:(BOOL)payload withCompletion:(id)self0
{
  v73[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  domainCopy = domain;
  idCopy = id;
  personaIdCopy = personaId;
  localeCopy = locale;
  assetCopy = asset;
  completionCopy = completion;
  v21 = MEMORY[0x277D01970];
  v22 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v65 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
    _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke;
  v62[3] = &unk_278579690;
  v23 = completionCopy;
  v63 = v23;
  v24 = MEMORY[0x22AA71400](v62);
  v52 = domainCopy;
  v25 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:localeCopy withAppDomain:domainCopy];
  v51 = idCopy;
  [v25 setSharedSiriProfileId:idCopy];
  [v25 setPersonaId:personaIdCopy];
  if (assetCopy)
  {
    v72[0] = @"SSRVoiceRetrainingVoiceProfile";
    v72[1] = @"SSRVoiceRetrainingAsset";
    v73[0] = v25;
    v73[1] = assetCopy;
    v26 = MEMORY[0x277CBEAC0];
    v27 = v73;
    v28 = v72;
    v29 = 2;
  }

  else
  {
    v70 = @"SSRVoiceRetrainingVoiceProfile";
    v71 = v25;
    v26 = MEMORY[0x277CBEAC0];
    v27 = &v71;
    v28 = &v70;
    v29 = 1;
  }

  v30 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
  v31 = v30;
  if (payload)
  {
    v32 = [v30 mutableCopy];
    [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SSRVoiceRetrainingPayloadProfile"];
    v33 = [v32 copy];

    v31 = v33;
  }

  v61 = 0;
  v34 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v31 error:&v61];
  v35 = v61;
  if (v35)
  {
    v36 = v35;
    v37 = *v21;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
      v66 = 2112;
      v67 = v36;
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s ERR: Retraining context failed to init with error: %@", buf, 0x16u);
    }

    (v24)[2](v24, v36);
  }

  else
  {
    v49 = personaIdCopy;
    v48 = +[SSRVoiceProfileManager sharedInstance];
    [MEMORY[0x277CCAA00] defaultManager];
    v39 = v38 = v21;
    v60 = 0;
    v50 = [v39 subpathsOfDirectoryAtPath:profileCopy error:&v60];
    v36 = v60;

    v40 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v65 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
      v66 = 2112;
      v67 = v50;
      _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s fileList - %@", buf, 0x16u);
    }

    v47 = localeCopy;
    if (v36)
    {
      v41 = *MEMORY[0x277D01970];
      personaIdCopy = v49;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v65 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
        v66 = 2112;
        v67 = profileCopy;
        v68 = 2112;
        v69 = v36;
        _os_log_impl(&dword_225E12000, v41, OS_LOG_TYPE_DEFAULT, "%s ERR: Fetching contents of %@ failed with error - %@", buf, 0x20u);
      }

      (v24)[2](v24, v36);
      v42 = v48;
    }

    else
    {
      v46 = v23;
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_10;
      v57[3] = &unk_2785796D0;
      v58 = profileCopy;
      v44 = v43;
      v59 = v44;
      [v50 enumerateObjectsUsingBlock:v57];
      v45 = *MEMORY[0x277D01970];
      personaIdCopy = v49;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v65 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
        v66 = 2112;
        v67 = v44;
        _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s wavList - %@", buf, 0x16u);
      }

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_25;
      v54[3] = &unk_2785796F8;
      v55 = v25;
      v56 = v24;
      v42 = v48;
      [v48 addUtterances:v44 toProfile:v55 withContext:v34 doUtteranceDonation:0 withCompletion:v54];

      v23 = v46;
    }

    localeCopy = v47;
  }
}

void __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Completion called with error: %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = v3;
    if ([v3 hasSuffix:@".wav"])
    {
      if ([*(a1 + 32) isAbsolutePath])
      {
        v4 = *(a1 + 32);
      }

      else
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        v7 = [v6 currentDirectoryPath];
        v4 = [v5 stringWithFormat:@"%@/%@", v7, *(a1 + 32)];
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"file://%@/%@", v4, v15];
      v9 = v8;
      v10 = &stru_283923FC0;
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = *(a1 + 40);
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];

      [v12 addObject:v13];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 profileID];
    v8 = 136315650;
    v9 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Adding utterances to profileID: %@ finished with err: %@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)profile completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  completionCopy = completion;
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SSRVoiceProfileManagerXPCService markSATEnrollmentSuccessForVoiceProfile:completion:]";
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__SSRVoiceProfileManagerXPCService_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke;
  v14[3] = &unk_278579668;
  v8 = completionCopy;
  v15 = v8;
  v9 = MEMORY[0x22AA71400](v14);
  if (!profileCopy)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v11 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v12];

    (v9)[2](v9, 0, v13);
  }
}

void __87__SSRVoiceProfileManagerXPCService_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[SSRVoiceProfileManagerXPCService markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Completion called with result: %i, error: %@", &v8, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (SSRVoiceProfileManagerXPCService)init
{
  v4.receiver = self;
  v4.super_class = SSRVoiceProfileManagerXPCService;
  v2 = [(SSRVoiceProfileManagerXPCService *)&v4 init];
  if (v2)
  {
    SSRLogInitIfNeeded();
  }

  return v2;
}

@end