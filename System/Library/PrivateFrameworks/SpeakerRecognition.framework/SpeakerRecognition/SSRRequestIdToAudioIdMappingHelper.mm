@interface SSRRequestIdToAudioIdMappingHelper
+ (id)_convertNestedDictionaryToMutable:(id)mutable;
+ (id)_loadRequestIdToAudioIdMappingFromPlist;
+ (id)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date error:(id *)error;
+ (id)getRequestIdsForLocale:(id)locale date:(id)date error:(id *)error;
+ (void)_writeMappingIntoPlist:(id)plist;
+ (void)purgeAllEntriesInSpkeakerIdBiome;
+ (void)removeMapping;
+ (void)removeMappingOnAndBefore:(id)before completion:(id)completion;
+ (void)removeMappingWithLocale:(id)locale completion:(id)completion;
+ (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion;
+ (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion;
@end

@implementation SSRRequestIdToAudioIdMappingHelper

+ (void)purgeAllEntriesInSpkeakerIdBiome
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = BiomeLibrary();
  siri = [v2 Siri];
  onDeviceAnalytics = [siri OnDeviceAnalytics];
  speakerIdSampling = [onDeviceAnalytics SpeakerIdSampling];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  pruner = [speakerIdSampling pruner];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SSRRequestIdToAudioIdMappingHelper_purgeAllEntriesInSpkeakerIdBiome__block_invoke;
  v9[3] = &unk_278577FB8;
  v9[4] = &v10;
  [pruner deleteWithPolicy:@"Delete all SpeakerId data" eventsPassingTest:v9];

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v11[3];
    *buf = 136315394;
    v15 = "+[SSRRequestIdToAudioIdMappingHelper purgeAllEntriesInSpkeakerIdBiome]";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleaned up %lu entries", buf, 0x16u);
  }

  _Block_object_dispose(&v10, 8);
}

+ (id)_convertNestedDictionaryToMutable:(id)mutable
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [mutable mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v3 objectForKeyedSubscript:v9];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v12 = [v3 objectForKeyedSubscript:v9];
      v13 = [SSRRequestIdToAudioIdMappingHelper _convertNestedDictionaryToMutable:v12];
      [v3 setObject:v13 forKeyedSubscript:v9];

      if (v6 == ++v8)
      {
        v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

+ (void)_writeMappingIntoPlist:(id)plist
{
  plistCopy = plist;
  v4 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v4 saveRequestIdsToAudioIdsMapping:plistCopy];
}

+ (id)_loadRequestIdToAudioIdMappingFromPlist
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  loadRequestIdsToAudioIdsMapping = [v2 loadRequestIdsToAudioIdsMapping];

  v4 = [SSRRequestIdToAudioIdMappingHelper _convertNestedDictionaryToMutable:loadRequestIdsToAudioIdsMapping];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v4;
}

+ (void)removeMappingOnAndBefore:(id)before completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  completionCopy = completion;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __74__SSRRequestIdToAudioIdMappingHelper_removeMappingOnAndBefore_completion___block_invoke;
  v60[3] = &unk_2785796F8;
  v7 = beforeCopy;
  v61 = v7;
  v8 = completionCopy;
  v62 = v8;
  v9 = MEMORY[0x22AA71400](v60);
  v10 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
  if (v10)
  {
    v41 = v9;
    v42 = v8;
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v40 = v10;
    obj = v10;
    v44 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v44)
    {
      v43 = *v57;
      do
      {
        v11 = 0;
        do
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v11;
          v12 = *(*(&v56 + 1) + 8 * v11);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v13 = [obj objectForKeyedSubscript:{v12, v40}];
          v14 = [v13 countByEnumeratingWithState:&v52 objects:v69 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v53;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v53 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v52 + 1) + 8 * i);
                defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
                v20 = [defaultDateFormatter dateFromString:v18];

                if (([v20 compare:v7] + 1) <= 1)
                {
                  v68[0] = v12;
                  v68[1] = v18;
                  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
                  [v47 addObject:v21];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v52 objects:v69 count:16];
            }

            while (v15);
          }

          v11 = v45 + 1;
        }

        while (v45 + 1 != v44);
        v44 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v44);
    }

    v22 = v47;
    if ([v47 count])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = v47;
      v24 = [v23 countByEnumeratingWithState:&v48 objects:v63 count:16];
      v8 = v42;
      if (v24)
      {
        v25 = v24;
        v26 = *v49;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v49 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v48 + 1) + 8 * j);
            v29 = [v28 objectAtIndexedSubscript:{0, v40}];
            v30 = [v28 objectAtIndexedSubscript:1];
            v31 = [obj objectForKeyedSubscript:v29];
            [v31 removeObjectForKey:v30];

            v32 = [obj objectForKeyedSubscript:v29];
            v33 = [v32 count];

            if (!v33)
            {
              [obj removeObjectForKey:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v48 objects:v63 count:16];
        }

        while (v25);
      }

      [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:obj];
      v10 = v40;
      v22 = v47;
    }

    else
    {
      v35 = *MEMORY[0x277D01970];
      v8 = v42;
      v10 = v40;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v36 = MEMORY[0x277D018F8];
        v37 = v35;
        defaultDateFormatter2 = [v36 defaultDateFormatter];
        v39 = [defaultDateFormatter2 stringFromDate:v7];
        *buf = 136315394;
        v65 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:completion:]";
        v66 = 2112;
        v67 = v39;
        _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s mapping before date: %@ not found", buf, 0x16u);
      }
    }

    v34 = 0;
    v9 = v41;
  }

  else
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_2839334A0];
  }

  (v9)[2](v9, v34);
}

void __74__SSRRequestIdToAudioIdMappingHelper_removeMappingOnAndBefore_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping before and On date: %@ with error: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (id)getRequestIdsForLocale:(id)locale date:(id)date error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  dateCopy = date;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (localeCopy)
  {
    v10 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:localeCopy];

      if (v12)
      {
        defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
        v14 = [defaultDateFormatter stringFromDate:dateCopy];

        if (v14 && ([v11 objectForKeyedSubscript:localeCopy], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", v14), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v17 = [v11 objectForKeyedSubscript:localeCopy];
          localeCopy = [v17 objectForKeyedSubscript:v14];

          v19 = [localeCopy countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v19)
          {
            v20 = *v31;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(localeCopy);
                }

                [v9 addObject:*(*(&v30 + 1) + 8 * i)];
              }

              v19 = [localeCopy countByEnumeratingWithState:&v30 objects:v36 count:16];
            }

            while (v19);
          }
        }

        else
        {
          localeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"requests for date: %@ and locale: %@ cannot be found", v14, localeCopy];
          v25 = MEMORY[0x277CCA9B8];
          v34 = @"reason";
          v35 = localeCopy;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v19 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:1259 userInfo:v26];
        }

LABEL_21:
        if (!error)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = &unk_283933478;
      v24 = 113;
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = &unk_283933450;
      v24 = 1258;
    }

    v19 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:v24 userInfo:v23];
    goto LABEL_21;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933428];
  if (error)
  {
LABEL_22:
    v27 = v19;
    *error = v19;
  }

LABEL_23:
  v28 = [v9 copy];

  return v28;
}

+ (void)removeMappingWithLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __73__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_completion___block_invoke;
  v20 = &unk_2785796F8;
  v7 = localeCopy;
  v21 = v7;
  v8 = completionCopy;
  v22 = v8;
  v9 = MEMORY[0x22AA71400](&v17);
  if (v7)
  {
    v10 = [SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist:v17];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:v7];

      if (v12)
      {
        [v11 removeObjectForKey:v7];
        [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v11];
        v13 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = &unk_283933400;
      v16 = 113;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = &unk_2839333D8;
      v16 = 1258;
    }

    v13 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:v16 userInfo:v15];
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:{&unk_2839333B0, v17, v18, v19, v20, v21}];
LABEL_10:
  (v9)[2](v9, v13);
}

void __73__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingWithLocale:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping locale: %@ with error: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (void)removeMapping
{
  v5 = *MEMORY[0x277D85DE8];
  [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:0];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[SSRRequestIdToAudioIdMappingHelper removeMapping]";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Deleting all RPI audioId to requestId mapping", &v3, 0xCu);
  }
}

+ (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion
{
  localeCopy = locale;
  dateCopy = date;
  completionCopy = completion;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_date_completion___block_invoke;
  v24[3] = &unk_278577F90;
  v10 = localeCopy;
  v25 = v10;
  v11 = dateCopy;
  v26 = v11;
  v12 = completionCopy;
  v27 = v12;
  v13 = MEMORY[0x22AA71400](v24);
  if (v10 && v11)
  {
    defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
    v15 = [defaultDateFormatter stringFromDate:v11];

    if (v15)
    {
      v16 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
      if (!v16)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_283933338];
        (v13)[2](v13, v22);

        v17 = 0;
        goto LABEL_14;
      }

      v17 = v16;
      v18 = [v16 objectForKeyedSubscript:v10];

      if (v18)
      {
        v19 = [v17 objectForKeyedSubscript:v10];
        v20 = [v19 objectForKeyedSubscript:v15];

        v21 = [v17 objectForKeyedSubscript:v10];
        [v21 removeObjectForKey:v15];

        if (v20)
        {
          [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v17];
          v13[2](v13, 0);
LABEL_14:

          goto LABEL_15;
        }

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933388];
        (v13)[2](v13, v23);
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933360];
        (v13)[2](v13, v23);
      }

      goto LABEL_14;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933310];
    (v13)[2](v13, v17);
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839332E8];
  (v13)[2](v13, v15);
LABEL_15:
}

void __78__SSRRequestIdToAudioIdMappingHelper_removeMappingWithLocale_date_completion___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 136315906;
    v9 = "+[SSRRequestIdToAudioIdMappingHelper removeMappingWithLocale:date:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s remove mapping locale: %@ and date: %@ with error: %@", &v8, 0x2Au);
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion
{
  idCopy = id;
  audioIdCopy = audioId;
  dateCopy = date;
  localeCopy = locale;
  completionCopy = completion;
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __99__SSRRequestIdToAudioIdMappingHelper_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke;
  v37 = &unk_278577F68;
  v16 = idCopy;
  v38 = v16;
  v17 = audioIdCopy;
  v39 = v17;
  v18 = localeCopy;
  v40 = v18;
  v19 = completionCopy;
  v41 = v19;
  v20 = MEMORY[0x22AA71400](&v34);
  if (dateCopy && v16 && v17 && v18)
  {
    defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
    v22 = [defaultDateFormatter stringFromDate:dateCopy];

    if (v22)
    {
      v23 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 objectForKeyedSubscript:v18];

        if (!v25)
        {
          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v24 setObject:v26 forKeyedSubscript:v18];
        }

        v27 = [v24 objectForKeyedSubscript:v18];
        v28 = [v27 objectForKeyedSubscript:v22];

        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v30 = [v24 objectForKeyedSubscript:v18];
          [v30 setObject:v29 forKeyedSubscript:v22];
        }

        v31 = [v24 objectForKeyedSubscript:v18];
        v32 = [v31 objectForKeyedSubscript:v22];
        [v32 setObject:v17 forKeyedSubscript:v16];

        [SSRRequestIdToAudioIdMappingHelper _writeMappingIntoPlist:v24];
        v33 = 0;
      }

      else
      {
        v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_2839332C0];
      }

      (v20)[2](v20, v33);
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933298];
      (v20)[2](v20, v24);
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:{&unk_283933270, v34, v35, v36, v37, v38, v39, v40}];
    (v20)[2](v20, v22);
  }
}

void __99__SSRRequestIdToAudioIdMappingHelper_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = 136316162;
    v10 = "+[SSRRequestIdToAudioIdMappingHelper writeIntoMappingWithRequestId:audioId:date:locale:completion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s write into mapping for requestId: %@, audioId: %@, locale: %@ with error: %@", &v9, 0x34u);
  }

  v5 = a1[7];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (id)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  codeCopy = code;
  dateCopy = date;
  v12 = dateCopy;
  if (codeCopy && idCopy && dateCopy)
  {
    defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
    v14 = [defaultDateFormatter stringFromDate:v12];

    if (!v14)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_283933220];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_20;
    }

    v15 = +[SSRRequestIdToAudioIdMappingHelper _loadRequestIdToAudioIdMappingFromPlist];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:codeCopy];
      v18 = [v17 objectForKeyedSubscript:v14];
      v19 = [v18 objectForKeyedSubscript:idCopy];

      if (v19)
      {
        v20 = [v16 objectForKeyedSubscript:codeCopy];
        v21 = [v20 objectForKeyedSubscript:v14];
        v22 = [v21 objectForKeyedSubscript:idCopy];

        if (v22)
        {
          goto LABEL_19;
        }
      }

      idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"requestId: %@ not found in map", idCopy];
      v24 = idCopy;
      if (error)
      {
        v25 = MEMORY[0x277CCA9B8];
        v28 = @"reason";
        v29[0] = idCopy;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        *error = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:1257 userInfo:v26];
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1258 userInfo:&unk_283933248];
      *error = v22 = 0;
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v22 = 0;
    goto LABEL_19;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839331F8];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_21:

  return v22;
}

@end