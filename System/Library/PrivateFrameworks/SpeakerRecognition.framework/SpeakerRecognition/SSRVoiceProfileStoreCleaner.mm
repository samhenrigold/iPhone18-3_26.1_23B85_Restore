@interface SSRVoiceProfileStoreCleaner
- (id)_cleanupAppDomain:(id)domain;
- (id)_cleanupContentsOfSatFolder:(id)folder;
- (id)_cleanupImplicitUtteranceCacheForProfile:(id)profile;
- (id)_cleanupInvalidAudioFiles:(id)files;
- (id)_cleanupOrphanedMetafilesAtURL:(id)l;
- (id)_cleanupOrphanedMetafilesForProfile:(id)profile payloadUtteranceLifeTimeInDays:(int64_t)days;
- (id)_cleanupPayloadUtterancesFromProfile:(id)profile forModelType:(unint64_t)type exceedingLifeTimeInDays:(int64_t)days;
- (id)_cleanuplanguageCodePath:(id)path forAppDomain:(id)domain;
- (id)cleanupProfileStore;
- (id)deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain;
- (id)filterDuplicatedSiriProfilesFrom:(id)from;
- (id)filterInvalidSiriProfilesFrom:(id)from;
- (void)_cleanupModelFilesAtDir:(id)dir forAssetArray:(id)array;
- (void)cleanupInvalidModelsForProfile:(id)profile withAssetArray:(id)array;
@end

@implementation SSRVoiceProfileStoreCleaner

- (void)_cleanupModelFilesAtDir:(id)dir forAssetArray:(id)array
{
  v62[1] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  arrayCopy = array;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [dirCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (!v9)
  {
    goto LABEL_35;
  }

  v62[0] = *MEMORY[0x277CBE8E8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v53 = 0;
  v11 = [defaultManager contentsOfDirectoryAtURL:dirCopy includingPropertiesForKeys:v10 options:0 error:&v53];
  v12 = v53;

  if (!v12)
  {
    v40 = dirCopy;
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v39 = arrayCopy;
    v17 = arrayCopy;
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v50;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v17);
          }

          hashFromResourcePath = [*(*(&v49 + 1) + 8 * i) hashFromResourcePath];
          [v15 addObject:hashFromResourcePath];
        }

        v19 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v19);
    }

    v41 = defaultManager;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v11;
    obj = v11;
    v23 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (!v23)
    {
      v43 = 0;
      goto LABEL_33;
    }

    v24 = v23;
    v43 = 0;
    v25 = *v46;
    v26 = 0x277D01000uLL;
    while (1)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v45 + 1) + 8 * j);
        absoluteString = [v28 absoluteString];
        lastPathComponent = [absoluteString lastPathComponent];

        if ([*(v26 + 2296) isExclaveHardware])
        {
          v31 = v25;
          v32 = v26;
          uRLByDeletingPathExtension = [v28 URLByDeletingPathExtension];
          absoluteString2 = [uRLByDeletingPathExtension absoluteString];
          lastPathComponent2 = [absoluteString2 lastPathComponent];

          if ([v15 containsObject:lastPathComponent])
          {
            v26 = v32;
            v25 = v31;
            goto LABEL_29;
          }

          if (lastPathComponent2)
          {
            v26 = v32;
            v25 = v31;
            if ([v15 containsObject:lastPathComponent2])
            {
              goto LABEL_29;
            }
          }

          else
          {
            v26 = v32;
            v25 = v31;
          }
        }

        else
        {
          lastPathComponent2 = 0;
          if ([v15 containsObject:lastPathComponent])
          {
            goto LABEL_29;
          }
        }

        v44 = v43;
        [v41 removeItemAtURL:v28 error:&v44];
        v36 = v44;

        v37 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v55 = "[SSRVoiceProfileStoreCleaner _cleanupModelFilesAtDir:forAssetArray:]";
          v56 = 2114;
          v57 = lastPathComponent;
          v58 = 2114;
          v59 = v36;
          _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Deleting model file %{public}@ with err %{public}@", buf, 0x20u);
        }

        v43 = v36;
LABEL_29:
      }

      v24 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
      if (!v24)
      {
LABEL_33:

        arrayCopy = v39;
        dirCopy = v40;
        defaultManager = v41;
        v11 = v38;
        v12 = v43;
        goto LABEL_34;
      }
    }
  }

  v13 = MEMORY[0x277CCACA8];
  localizedDescription = [v12 localizedDescription];
  v15 = [v13 stringWithFormat:@"Error reading contents of modelDir: %@, err: %@", dirCopy, localizedDescription];

  v16 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "[SSRVoiceProfileStoreCleaner _cleanupModelFilesAtDir:forAssetArray:]";
    v56 = 2114;
    v57 = v15;
    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

LABEL_34:

LABEL_35:
}

- (void)cleanupInvalidModelsForProfile:(id)profile withAssetArray:(id)array
{
  profileCopy = profile;
  arrayCopy = array;
  for (i = 1; i != 6; ++i)
  {
    v8 = [profileCopy voiceProfileModelDirForSpidType:i recognizerType:2];
    v9 = [profileCopy voiceProfileModelDirForSpidType:i recognizerType:1];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    [(SSRVoiceProfileStoreCleaner *)self _cleanupModelFilesAtDir:v10 forAssetArray:arrayCopy];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    [(SSRVoiceProfileStoreCleaner *)self _cleanupModelFilesAtDir:v11 forAssetArray:arrayCopy];
  }
}

- (id)_cleanupPayloadUtterancesFromProfile:(id)profile forModelType:(unint64_t)type exceedingLifeTimeInDays:(int64_t)days
{
  v28[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:days * -86400.0];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      profileID = [profileCopy profileID];
      v19 = 136315906;
      v20 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = profileID;
      v25 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Checking payload utterances prior to %{public}@ for profile %{public}@ and modelType %d", &v19, 0x26u);
    }

    v13 = [profileCopy getImplicitEnrollmentUtterancesPriorTo:v8 forType:type];
    [v13 enumerateObjectsUsingBlock:&__block_literal_global_51];
    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ObsoleteCutOffDate is nil - Bailing out", &v19, 0xCu);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"obsoleteCutOffDate is nil - Bailing out"];
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]";
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", &v19, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v27 = @"reason";
    v28[0] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v16 errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:v17];
  }

  return v14;
}

void __105__SSRVoiceProfileStoreCleaner__cleanupPayloadUtterancesFromProfile_forModelType_exceedingLifeTimeInDays___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 URLByDeletingPathExtension];
  v4 = [v3 URLByAppendingPathExtension:@"json"];

  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]_block_invoke";
    v14 = 2114;
    v15 = v2;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting lifetimeexpired SAT entry %{public}@", &v12, 0x16u);
  }

  v7 = [v2 path];
  v8 = [SSRUtils removeItemAtPath:v7];

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SSRVoiceProfileStoreCleaner _cleanupPayloadUtterancesFromProfile:forModelType:exceedingLifeTimeInDays:]_block_invoke";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleted lifetimeexpired metafile %{public}@", &v12, 0x16u);
  }

  v10 = [v4 path];
  v11 = [SSRUtils removeItemAtPath:v10];
}

- (id)_cleanupOrphanedMetafilesAtURL:(id)l
{
  v71[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager2 fileExistsAtPath:path];

  if (v8)
  {
    v71[0] = *MEMORY[0x277CBE8E8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    v62 = 0;
    v10 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:v9 options:0 error:&v62];
    v11 = v62;

    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      localizedDescription = [v11 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed reading contents of audioDir: %@, err: %@", lCopy, localizedDescription];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
        v65 = 2114;
        v66 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v16 = v11;
    }

    else
    {
      selfCopy = self;
      v51 = defaultManager;
      v52 = lCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      stringByDeletingPathExtension = [@"meta_version.json" stringByDeletingPathExtension];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v50 = v10;
      v19 = v10;
      v20 = [v19 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v59;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v59 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v58 + 1) + 8 * i);
            absoluteString = [v24 absoluteString];
            lastPathComponent = [absoluteString lastPathComponent];
            stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];

            if ([stringByDeletingPathExtension2 compare:@"enrollment_completed"] && (objc_msgSend(stringByDeletingPathExtension2, "isEqualToString:", stringByDeletingPathExtension) & 1) == 0)
            {
              v28 = [dictionary objectForKeyedSubscript:stringByDeletingPathExtension2];

              if (v28)
              {
                [dictionary removeObjectForKey:stringByDeletingPathExtension2];
              }

              else
              {
                [dictionary setObject:v24 forKeyedSubscript:stringByDeletingPathExtension2];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v21);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v14 = dictionary;
      v29 = [v14 countByEnumeratingWithState:&v54 objects:v69 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v55;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v55 != v31)
            {
              objc_enumerationMutation(v14);
            }

            v33 = *(*(&v54 + 1) + 8 * j);
            v34 = [v14 objectForKeyedSubscript:v33];
            pathExtension = [v34 pathExtension];
            v36 = [pathExtension compare:@"json"];

            v37 = *MEMORY[0x277D01970];
            v38 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              if (v38)
              {
                *buf = 136315394;
                v64 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
                v65 = 2114;
                v66 = v34;
                _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Found non-meta file: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (v38)
              {
                *buf = 136315650;
                v64 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
                v65 = 2114;
                v66 = v33;
                v67 = 2114;
                v68[0] = v34;
                _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@ : <%{public}@>", buf, 0x20u);
              }

              path2 = [v34 path];
              v40 = [SSRUtils removeItemAtPath:path2];
            }
          }

          v30 = [v14 countByEnumeratingWithState:&v54 objects:v69 count:16];
        }

        while (v30);
      }

      lCopy = v52;
      v41 = [(SSRVoiceProfileStoreCleaner *)selfCopy _cleanupInvalidAudioFiles:v52];
      v42 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:v52];
        v45 = [v44 count];
        v46 = [SSRUtils getImplicitEnrollmentUtterancesFromDirectory:v52];
        v47 = [v46 count];
        *buf = 136315906;
        v64 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
        v65 = 2114;
        v66 = v52;
        v67 = 1026;
        LODWORD(v68[0]) = v45;
        WORD2(v68[0]) = 1026;
        *(v68 + 6) = v47;
        _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s Processed %{public}@ with %{public}d explicit and %{public}d implicit utterances", buf, 0x22u);
      }

      v16 = v41;

      v10 = v50;
      defaultManager = v51;
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v64 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesAtURL:]";
      v65 = 2114;
      v66 = lCopy;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_cleanupInvalidAudioFiles:(id)files
{
  v63[1] = *MEMORY[0x277D85DE8];
  filesCopy = files;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v53 = 0;
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path = [filesCopy path];
  v7 = [defaultManager2 fileExistsAtPath:path];

  if (v7)
  {
    v63[0] = *MEMORY[0x277CBE8E8];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    v52 = 0;
    v9 = [defaultManager contentsOfDirectoryAtURL:filesCopy includingPropertiesForKeys:v8 options:0 error:&v52];
    v10 = v52;

    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      localizedDescription = [v10 localizedDescription];
      v13 = [v11 stringWithFormat:@"Failed reading contents of audioDir: %@, err: %@", filesCopy, localizedDescription];

      v14 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
        v56 = 2114;
        v57 = v13;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v15 = v10;
    }

    else
    {
      v43 = v9;
      v44 = filesCopy;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v9;
      v17 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v49;
        do
        {
          v21 = 0;
          v45 = v18;
          do
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v48 + 1) + 8 * v21);
            pathExtension = [v22 pathExtension];
            v24 = [pathExtension isEqualToString:@"wav"];

            if (v24)
            {
              path2 = [v22 path];
              v47 = v19;
              v26 = defaultManager;
              v27 = [defaultManager attributesOfItemAtPath:path2 error:&v47];
              v28 = v47;

              fileSize = [v27 fileSize];
              if (v28 || !fileSize)
              {
                v41 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  v55 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
                  v56 = 2114;
                  v57 = v22;
                  v58 = 2114;
                  v59 = v28;
                  v60 = 2050;
                  v61 = fileSize;
                  _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get atrributes of file %{public}@, err %{public}@, size %{public}llu", buf, 0x2Au);
                }

                v19 = v28;
              }

              else
              {
                uRLByDeletingPathExtension = [v22 URLByDeletingPathExtension];
                v31 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

                path3 = [v31 path];
                v33 = [v26 fileExistsAtPath:path3 isDirectory:&v53];

                v34 = @"n/a";
                if (v33)
                {
                  v34 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v31];
                }

                v35 = [(__CFString *)v34 isEqualToString:@"explicit"];
                if (!(fileSize >> 13) && (v35 & 1) == 0)
                {
                  path4 = [v22 path];
                  v37 = [SSRUtils removeItemAtPath:path4];

                  path5 = [v31 path];
                  v39 = [SSRUtils removeItemAtPath:path5];

                  v40 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v55 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
                    v56 = 2114;
                    v57 = v22;
                    v58 = 2114;
                    v59 = v31;
                    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@ %{public}@", buf, 0x20u);
                  }
                }

                v19 = 0;
              }

              defaultManager = v26;
              v18 = v45;
            }

            ++v21;
          }

          while (v18 != v21);
          v18 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v15 = v19;
      v9 = v43;
      filesCopy = v44;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v55 = "[SSRVoiceProfileStoreCleaner _cleanupInvalidAudioFiles:]";
      v56 = 2114;
      v57 = filesCopy;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_cleanupContentsOfSatFolder:(id)folder
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = 0x278577000uLL;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:folder];
  v5 = [SSRUtils getContentsOfDirectory:v4];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 136315394;
    v26 = v8;
    v27 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        lastPathComponent = [v12 lastPathComponent];
        path = [*(v3 + 1160) stringForCSSpIdType:1];
        if ([lastPathComponent isEqualToString:path])
        {
          goto LABEL_11;
        }

        v15 = [*(v3 + 1160) stringForCSSpIdType:3];
        if ([lastPathComponent isEqualToString:v15])
        {
          goto LABEL_10;
        }

        v16 = [*(v3 + 1160) stringForCSSpIdType:4];
        if ([lastPathComponent isEqualToString:v16])
        {

LABEL_10:
LABEL_11:

          goto LABEL_12;
        }

        [*(v3 + 1160) stringForCSSpIdType:5];
        v17 = v9;
        v18 = v6;
        v20 = v19 = v3;
        v28 = [lastPathComponent isEqualToString:v20];

        v3 = v19;
        v6 = v18;
        v9 = v17;
        v10 = v27;

        if ((v28 & 1) == 0 && ([lastPathComponent containsString:@"enrollment_version.json"] & 1) == 0 && (objc_msgSend(lastPathComponent, "containsString:", @"meta_version.json") & 1) == 0 && (objc_msgSend(lastPathComponent, "containsString:", @"enrollment_completed") & 1) == 0 && (objc_msgSend(lastPathComponent, "containsString:", @"enrollment_migrated") & 1) == 0)
        {
          v21 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v34 = "[SSRVoiceProfileStoreCleaner _cleanupContentsOfSatFolder:]";
            v35 = 2114;
            v36 = v12;
            _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid SAT entry: %{public}@", buf, 0x16u);
          }

          v22 = *(v3 + 1160);
          path = [v12 path];
          v23 = [v22 removeItemAtPath:path];
          v10 = v27;
          goto LABEL_11;
        }

LABEL_12:

        ++v11;
      }

      while (v9 != v11);
      v24 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v9 = v24;
    }

    while (v24);
  }

  return 0;
}

- (id)_cleanupOrphanedMetafilesForProfile:(id)profile payloadUtteranceLifeTimeInDays:(int64_t)days
{
  v37 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  voiceProfileIdentity = [profileCopy voiceProfileIdentity];
  voiceProfileVersion = [profileCopy voiceProfileVersion];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    profileID = [profileCopy profileID];
    v29 = 136315906;
    v30 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesForProfile:payloadUtteranceLifeTimeInDays:]";
    v31 = 2114;
    v32 = profileID;
    v33 = 1026;
    v34 = voiceProfileVersion;
    v35 = 2114;
    v36 = voiceProfileIdentity;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Processing profile %{public}@ with version %{public}d and identity %{public}@", &v29, 0x26u);
  }

  if ([profileCopy voiceProfileVersion])
  {
    voiceProfileBasePath = [profileCopy voiceProfileBasePath];
    v14 = [(SSRVoiceProfileStoreCleaner *)self _cleanupContentsOfSatFolder:voiceProfileBasePath];

    if (v14)
    {
      v15 = v14;
    }

    v16 = [profileCopy voiceProfileAudioDirPathForSpidType:1];
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    v18 = [(SSRVoiceProfileStoreCleaner *)self _cleanupOrphanedMetafilesAtURL:v17];

    if (v18)
    {
      v19 = v18;

      v14 = v19;
    }

    v20 = [profileCopy voiceProfileAudioDirPathForSpidType:3];
    v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    v22 = [(SSRVoiceProfileStoreCleaner *)self _cleanupOrphanedMetafilesAtURL:v21];

    if (v22)
    {
      v23 = v22;

      v14 = v23;
    }

    v24 = [(SSRVoiceProfileStoreCleaner *)self _cleanupPayloadUtterancesFromProfile:profileCopy forModelType:3 exceedingLifeTimeInDays:days];

    if (v24)
    {
      v25 = v24;

      v14 = v25;
    }

    v26 = v14;
  }

  else
  {
    v27 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315138;
      v30 = "[SSRVoiceProfileStoreCleaner _cleanupOrphanedMetafilesForProfile:payloadUtteranceLifeTimeInDays:]";
      _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Found legacy voice profile - Skipping", &v29, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

- (id)_cleanupImplicitUtteranceCacheForProfile:(id)profile
{
  v11 = *MEMORY[0x277D85DE8];
  voiceProfileImplicitCacheDirPath = [profile voiceProfileImplicitCacheDirPath];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVoiceProfileStoreCleaner _cleanupImplicitUtteranceCacheForProfile:]";
    v9 = 2114;
    v10 = voiceProfileImplicitCacheDirPath;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing Implicit utterance cache directory at %{public}@", &v7, 0x16u);
  }

  v5 = [SSRUtils removeItemAtPath:voiceProfileImplicitCacheDirPath];

  return v5;
}

- (id)_cleanuplanguageCodePath:(id)path forAppDomain:(id)domain
{
  v65[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  domainCopy = domain;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = *MEMORY[0x277CBE868];
  v65[0] = *MEMORY[0x277CBE8E8];
  v65[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v55 = 0;
  v11 = [defaultManager contentsOfDirectoryAtURL:pathCopy includingPropertiesForKeys:v10 options:0 error:&v55];
  v12 = v55;

  if (!v12)
  {
    selfCopy = self;
    v45 = domainCopy;
    v46 = pathCopy;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v44 = v11;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (!v16)
    {
      v12 = 0;
      goto LABEL_33;
    }

    v17 = v16;
    v18 = v9;
    v12 = 0;
    v19 = *v52;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v51 + 1) + 8 * i);
        v22 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          lastPathComponent = [v21 lastPathComponent];
          *buf = 136315394;
          v58 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
          v59 = 2114;
          v60 = lastPathComponent;
          _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Processing profile - %{public}@", buf, 0x16u);
        }

        v49 = 0;
        v50 = 0;
        [v21 getResourceValue:&v50 forKey:v18 error:&v49];
        v25 = v50;
        v26 = v49;
        if (v26)
        {
          v27 = v26;
          v28 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v58 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
            v59 = 2114;
            v60 = v21;
            v61 = 2114;
            v62 = v27;
            _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", buf, 0x20u);
          }

          lastPathComponent2 = v27;

          v12 = lastPathComponent2;
        }

        else
        {
          if (v25)
          {
            lastPathComponent2 = [v21 lastPathComponent];
            v30 = +[SSRVoiceProfileManager sharedInstance];
            v31 = [v30 voiceProfileForId:lastPathComponent2];

            if (v31)
            {
              v32 = selfCopy;
              v33 = [(SSRVoiceProfileStoreCleaner *)selfCopy _cleanupOrphanedMetafilesForProfile:v31 payloadUtteranceLifeTimeInDays:180];
              v34 = v33;
              if (v33)
              {
                v35 = v33;

                v12 = v35;
                v32 = selfCopy;
              }

              v36 = [(SSRVoiceProfileStoreCleaner *)v32 _cleanupImplicitUtteranceCacheForProfile:v31];

              if (v36)
              {
                path = v36;

                v12 = path;
                goto LABEL_27;
              }
            }

            else
            {
              v40 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v58 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
                v59 = 2114;
                v60 = v21;
                _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid profile %{public}@", buf, 0x16u);
              }

              path = [v21 path];
              v41 = [SSRUtils removeItemAtPath:path];
LABEL_27:
            }

            goto LABEL_29;
          }

          v38 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v58 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
            v59 = 2114;
            v60 = v21;
            _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", buf, 0x16u);
          }

          lastPathComponent2 = [v21 path];
          v39 = [SSRUtils removeItemAtPath:lastPathComponent2];
        }

LABEL_29:
      }

      v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (!v17)
      {
LABEL_33:

        domainCopy = v45;
        pathCopy = v46;
        v11 = v44;
        goto LABEL_34;
      }
    }
  }

  v13 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    localizedDescription = [v12 localizedDescription];
    *buf = 136315906;
    v58 = "[SSRVoiceProfileStoreCleaner _cleanuplanguageCodePath:forAppDomain:]";
    v59 = 2114;
    v60 = domainCopy;
    v61 = 2114;
    v62 = pathCopy;
    v63 = 2114;
    v64 = localizedDescription;
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading AppDomain %{public}@ at %{public}@ with %{public}@", buf, 0x2Au);
  }

LABEL_34:
  v42 = v12;

  return v42;
}

- (id)_cleanupAppDomain:(id)domain
{
  v60[2] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v4 = +[SSRVoiceProfileManager sharedInstance];
  v5 = [v4 SSRBasePathForAppDomain:@"com.apple.siri"];

  v42 = AFPreferencesSupportedLanguages();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v8 = *MEMORY[0x277CBE868];
  v60[0] = *MEMORY[0x277CBE8E8];
  v60[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v50 = 0;
  v10 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:0 error:&v50];
  v11 = v50;

  if (!v11)
  {
    v38 = v10;
    v39 = v5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v10;
    v15 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (!v15)
    {
      v11 = 0;
      goto LABEL_36;
    }

    v16 = v15;
    selfCopy = self;
    v11 = 0;
    v17 = *v47;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v46 + 1) + 8 * v18);
        v20 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          lastPathComponent = [v19 lastPathComponent];
          *buf = 136315394;
          v53 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
          v54 = 2114;
          v55 = lastPathComponent;
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Processing locale - %{public}@", buf, 0x16u);
        }

        v44 = 0;
        v45 = 0;
        [v19 getResourceValue:&v45 forKey:v8 error:{&v44, v38, v39}];
        v23 = v45;
        v24 = v44;
        if (v24)
        {
          v25 = v24;
          v26 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v53 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
            v54 = 2114;
            v55 = v19;
            v56 = 2114;
            v57 = v25;
            _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", buf, 0x20u);
          }

          lastPathComponent2 = v25;

          v11 = lastPathComponent2;
        }

        else
        {
          if (v23)
          {
            lastPathComponent2 = [v19 lastPathComponent];
            v28 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
            if (v42 && [v42 count] && v28 && (objc_msgSend(lastPathComponent2, "isEqualToString:", v28) & 1) == 0 && (objc_msgSend(v42, "containsObject:", lastPathComponent2) & 1) == 0)
            {
              v33 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v53 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
                v54 = 2114;
                v55 = v19;
                v56 = 2114;
                v57 = v42;
                v58 = 2114;
                v59 = v28;
                _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid locale %{public}@ not supported in set %{public}@ and current language %{public}@", buf, 0x2Au);
              }

              path = [v19 path];
              v34 = [SSRUtils removeItemAtPath:path];
LABEL_23:
            }

            else
            {
              v29 = [(SSRVoiceProfileStoreCleaner *)selfCopy _cleanuplanguageCodePath:v19 forAppDomain:domainCopy];
              if (v29)
              {
                path = v29;

                v11 = path;
                goto LABEL_23;
              }
            }

            goto LABEL_28;
          }

          v31 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v53 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
            v54 = 2114;
            v55 = v19;
            _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", buf, 0x16u);
          }

          lastPathComponent2 = [v19 path];
          v32 = [SSRUtils removeItemAtPath:lastPathComponent2];
        }

LABEL_28:

        ++v18;
      }

      while (v16 != v18);
      v35 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      v16 = v35;
      if (!v35)
      {
LABEL_36:

        v10 = v38;
        v5 = v39;
        goto LABEL_37;
      }
    }
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    localizedDescription = [v11 localizedDescription];
    *buf = 136315906;
    v53 = "[SSRVoiceProfileStoreCleaner _cleanupAppDomain:]";
    v54 = 2114;
    v55 = domainCopy;
    v56 = 2114;
    v57 = v5;
    v58 = 2114;
    v59 = localizedDescription;
    _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading AppDomain %{public}@ at %{public}@ with %{public}@", buf, 0x2Au);
  }

LABEL_37:
  v36 = v11;

  return v36;
}

- (id)deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain
{
  v37 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  domainCopy = domain;
  if (CSIsCommunalDevice())
  {
    v7 = 0;
  }

  else
  {
    v8 = +[SSRVoiceProfileStore sharedInstance];
    v9 = [v8 userVoiceProfilesForAppDomain:domainCopy forLocale:languageCopy];
    if ([v9 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v26 = domainCopy;
      v27 = languageCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = v9;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v7 = 0;
        v13 = *v29;
        v14 = MEMORY[0x277D01970];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = [v16 getEnrollmentUtterancesForModelType:1];
            v18 = v17;
            if (!v17 || ![v17 count])
            {
              v19 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v33 = "[SSRVoiceProfileStoreCleaner deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
                v34 = 2112;
                v35 = v16;
                _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Found profile %@ with no enrollment utts. Deleting..", buf, 0x16u);
              }

              v20 = [v8 deleteUserVoiceProfile:v16];

              v21 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                localizedDescription = [v20 localizedDescription];
                *buf = 136315394;
                v33 = "[SSRVoiceProfileStoreCleaner deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
                v34 = 2114;
                v35 = localizedDescription;
                _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Deleted voiceprofile with error %{public}@", buf, 0x16u);
              }

              v7 = v20;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v12);
      }

      else
      {
        v7 = 0;
      }

      domainCopy = v26;
      languageCopy = v27;
      v9 = v25;
    }
  }

  return v7;
}

- (id)cleanupProfileStore
{
  v61[2] = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileManager sharedInstance];
  v38 = [v2 provisionedVoiceProfilesForAppDomain:0 withLocale:0];

  v3 = +[SSRVoiceProfileManager sharedInstance];
  sSRSpeakerProfilesBasePath = [v3 SSRSpeakerProfilesBasePath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:sSRSpeakerProfilesBasePath];

  if ((v5 & 1) == 0)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
      *&buf[12] = 2114;
      *&buf[14] = sSRSpeakerProfilesBasePath;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s File path doesnt exist - %{public}@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_38;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:sSRSpeakerProfilesBasePath];
  v8 = *MEMORY[0x277CBE868];
  v61[0] = *MEMORY[0x277CBE8E8];
  v61[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v49 = 0;
  v37 = [defaultManager2 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:0 error:&v49];
  v10 = v49;

  if (!v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__3854;
    v59 = __Block_byref_object_dispose__3855;
    v60 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:5];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __50__SSRVoiceProfileStoreCleaner_cleanupProfileStore__block_invoke;
    v48[3] = &unk_2785784F8;
    v48[4] = buf;
    [v38 enumerateObjectsUsingBlock:v48];
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v50 = 136315394;
      v51 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
      v52 = 2114;
      v53 = v15;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s App domains in use - %{public}@", v50, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v16 = v37;
    v17 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (!v17)
    {
      v41 = 0;
      goto LABEL_36;
    }

    v41 = 0;
    v18 = *v45;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v42 = 0;
        v43 = 0;
        [v20 getResourceValue:&v43 forKey:v8 error:&v42];
        v21 = v43;
        v22 = v42;
        if (v22)
        {
          lastPathComponent = v22;
          v24 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *v50 = 136315650;
            v51 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v52 = 2114;
            v53 = v20;
            v54 = 2114;
            v55 = lastPathComponent;
            _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: Failed determining if file is dir-entry url=%{public}@ with %{public}@", v50, 0x20u);
          }
        }

        else if (v21)
        {
          lastPathComponent = [v20 lastPathComponent];
          v25 = [*(*&buf[8] + 40) containsObject:lastPathComponent];
          v26 = *MEMORY[0x277D01970];
          v27 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
          if ((v25 & 1) == 0)
          {
            if (v27)
            {
              v32 = *(*&buf[8] + 40);
              *v50 = 136315650;
              v51 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
              v52 = 2114;
              v53 = v20;
              v54 = 2114;
              v55 = v32;
              _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid domain %{public}@ not part of domains %{public}@", v50, 0x20u);
            }

            path = [v20 path];
            v33 = [SSRUtils removeItemAtPath:path];
            goto LABEL_31;
          }

          if (v27)
          {
            *v50 = 136315394;
            v51 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v52 = 2114;
            v53 = lastPathComponent;
            _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Processing domain - %{public}@", v50, 0x16u);
          }

          v28 = [(SSRVoiceProfileStoreCleaner *)self _cleanupAppDomain:lastPathComponent];
          if (v28)
          {
            path = v28;

            v41 = path;
LABEL_31:
          }
        }

        else
        {
          v30 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *v50 = 136315394;
            v51 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
            v52 = 2114;
            v53 = v20;
            _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Deleting invalid file %{public}@", v50, 0x16u);
          }

          lastPathComponent = [v20 path];
          v31 = [SSRUtils removeItemAtPath:lastPathComponent];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (!v17)
      {
LABEL_36:

        v12 = v41;
        _Block_object_dispose(buf, 8);

        goto LABEL_37;
      }
    }
  }

  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v35 = v11;
    localizedDescription = [v10 localizedDescription];
    *buf = 136315650;
    *&buf[4] = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]";
    *&buf[12] = 2114;
    *&buf[14] = sSRSpeakerProfilesBasePath;
    *&buf[22] = 2114;
    v58 = localizedDescription;
    _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: Failed reading contents of SAT root %{public}@ with %{public}@", buf, 0x20u);
  }

  v12 = v10;
LABEL_37:

LABEL_38:

  return v12;
}

void __50__SSRVoiceProfileStoreCleaner_cleanupProfileStore__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appDomain];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v3 appDomain];

    [v5 addObject:v8];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to get appdomain for profile %@", v3];

    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[SSRVoiceProfileStoreCleaner cleanupProfileStore]_block_invoke";
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }
  }
}

- (id)filterInvalidSiriProfilesFrom:(id)from
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_4];
  v18 = fromCopy;
  v4 = [fromCopy filteredArrayUsingPredicate:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v4;
  obj = [v4 reverseObjectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[SSRVoiceProfileStoreCleaner filterInvalidSiriProfilesFrom:]";
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Processing onboarded Siri user: %{public}@", buf, 0x16u);
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke_6;
        v20[3] = &unk_2785784D0;
        v20[4] = v11;
        v21 = v5;
        [SSRUtils getHomeUserIdForVoiceProfile:v11 withCompletion:v20];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

void __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:@"kAFAssistantErrorDomain"])
    {
      if ([v6 code] == 6001)
      {
      }

      else
      {
        v8 = [v6 code];

        if (v8 != 6002)
        {
          goto LABEL_10;
        }
      }

      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 136315394;
        v12 = "[SSRVoiceProfileStoreCleaner filterInvalidSiriProfilesFrom:]_block_invoke";
        v13 = 2114;
        v14 = v10;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Detected invalid user: %{public}@", &v11, 0x16u);
      }

      [*(a1 + 40) addObject:*(a1 + 32)];
    }

    else
    {
    }
  }

LABEL_10:
}

uint64_t __61__SSRVoiceProfileStoreCleaner_filterInvalidSiriProfilesFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appDomain];
  v3 = [v2 isEqualToString:@"com.apple.siri"];

  return v3;
}

- (id)filterDuplicatedSiriProfilesFrom:(id)from
{
  v81 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v52 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3875];
  v53 = fromCopy;
  v4 = [fromCopy filteredArrayUsingPredicate:?];
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v56 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (!v56)
  {
    goto LABEL_47;
  }

  v5 = MEMORY[0x277D01970];
  v55 = *v69;
  do
  {
    v6 = 0;
    do
    {
      if (*v69 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v58 = v6;
      v7 = *(*(&v68 + 1) + 8 * v6);
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v73 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
        v74 = 2114;
        *v75 = v7;
        _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Processing onboarded Siri user: %{public}@", buf, 0x16u);
      }

      v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v9 = obj;
      v10 = [v9 countByEnumeratingWithState:&v64 objects:v79 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v65;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v65 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v64 + 1) + 8 * i);
            locale = [v7 locale];
            locale2 = [v14 locale];
            v17 = [locale isEqualToString:locale2];

            if ((CSIsCommunalDevice() & 1) == 0)
            {
              if ((v17 & 1) == 0)
              {
                continue;
              }

LABEL_17:
              [v59 addObject:v14];
              continue;
            }

            siriProfileId = [v7 siriProfileId];
            siriProfileId2 = [v14 siriProfileId];
            v20 = [siriProfileId isEqualToString:siriProfileId2];

            if ((v17 & v20) == 1)
            {
              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v64 objects:v79 count:16];
        }

        while (v11);
      }

      v21 = [v59 count];
      v5 = MEMORY[0x277D01970];
      if (v21 >= 2)
      {
        v22 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v59 count];
          *buf = 136315650;
          v73 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
          v74 = 1026;
          *v75 = v24;
          *&v75[4] = 2114;
          *&v75[6] = v59;
          _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Detected matching %{public}d users: %{public}@", buf, 0x1Cu);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v25 = v59;
        v26 = [v25 countByEnumeratingWithState:&v60 objects:v78 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v61;
LABEL_25:
          v29 = 0;
          while (1)
          {
            if (*v61 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v60 + 1) + 8 * v29);
            if ([v30 isMarkedSATEnrolled])
            {
              v31 = [v30 getExplicitEnrollmentUtterancesForType:1];
              v32 = [v31 count];

              if (v32 > 3)
              {
                break;
              }
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v60 objects:v78 count:16];
              if (v27)
              {
                goto LABEL_25;
              }

              goto LABEL_32;
            }
          }

          v33 = v30;

          if (v33)
          {
            goto LABEL_38;
          }
        }

        else
        {
LABEL_32:
        }

        v33 = [v25 objectAtIndexedSubscript:0];
        v34 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          locale3 = [v7 locale];
          siriProfileId3 = [v7 siriProfileId];
          v38 = siriProfileId3;
          *buf = 136315906;
          v39 = @"Primary";
          if (siriProfileId3)
          {
            v39 = siriProfileId3;
          }

          v73 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
          v74 = 2114;
          *v75 = locale3;
          *&v75[8] = 2114;
          *&v75[10] = v39;
          v76 = 2114;
          v77 = v33;
          _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Valid profile not found %{public}@ and %{public}@ - defaulting to %{public}@", buf, 0x2Au);
        }

LABEL_38:
        profileID = [v33 profileID];
        profileID2 = [v7 profileID];
        v42 = [profileID isEqualToString:profileID2];

        v43 = *v5;
        v44 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
        if (v42)
        {
          if (v44)
          {
            v45 = v43;
            profileID3 = [v7 profileID];
            *buf = 136315394;
            v73 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
            v74 = 2114;
            *v75 = profileID3;
            _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s Skipping retaining user %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v44)
          {
            v47 = v43;
            profileID4 = [v7 profileID];
            *buf = 136315394;
            v73 = "[SSRVoiceProfileStoreCleaner filterDuplicatedSiriProfilesFrom:]";
            v74 = 2114;
            *v75 = profileID4;
            _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s Adding invalid user for deletion - %{public}@", buf, 0x16u);
          }

          [v54 addObject:v7];
        }
      }

      v6 = v58 + 1;
    }

    while (v58 + 1 != v56);
    v56 = [v9 countByEnumeratingWithState:&v68 objects:v80 count:16];
  }

  while (v56);
LABEL_47:

  if ([v54 count])
  {
    v49 = v54;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  return v49;
}

uint64_t __64__SSRVoiceProfileStoreCleaner_filterDuplicatedSiriProfilesFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appDomain];
  v3 = [v2 isEqualToString:@"com.apple.siri"];

  return v3;
}

@end