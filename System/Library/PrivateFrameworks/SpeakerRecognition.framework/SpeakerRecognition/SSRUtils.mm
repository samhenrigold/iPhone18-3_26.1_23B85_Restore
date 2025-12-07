@interface SSRUtils
+ (BOOL)isCurrentDeviceCompatibleWithNewerVoiceProfileAt:(id)at;
+ (BOOL)isCurrentDeviceCompatibleWithVoiceProfileAt:(id)at;
+ (BOOL)isMphVTUIKeywordDetectorSupportedPlatform;
+ (BOOL)isSpeakerRecognitionSupportedInLocale:(id)locale;
+ (BOOL)ssrAudioLogsCountWithinPrivacyLimit;
+ (id)_getUtterancesFromDirectory:(id)directory;
+ (id)baseDir;
+ (id)combineScoreFromPSR:(id)r fromSAT:(id)t withCombinedWt:(float)wt;
+ (id)concatenateDonationId:(id)id triggerPhraseId:(unint64_t)phraseId;
+ (id)convertSchemaTypeWithLocale:(id)locale;
+ (id)createAVAudioPCMBufferWithNSData:(id)data audioFormat:(unint64_t)format sampleRate:(float)rate numOfChannel:(unsigned int)channel isInterleaved:(BOOL)interleaved;
+ (id)createDirectoryIfDoesNotExist:(id)exist;
+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)type;
+ (id)generateEnrollmentId;
+ (id)getContentsOfDirectory:(id)directory;
+ (id)getEmbeddingFileName:(id)name;
+ (id)getEnrollmentUtterancesFromDirectory:(id)directory;
+ (id)getExplicitEnrollmentUtterancesFromDirectory:(id)directory;
+ (id)getExplicitMarkedEnrollmentUtterancesFromDirectory:(id)directory;
+ (id)getImplicitEnrollmentUtterancesFromDirectory:(id)directory;
+ (id)getImplicitUtteranceCacheDirectory;
+ (id)getVoiceEnrollmentDownloadBaseDir;
+ (id)getVoiceProfileForSiriProfileId:(id)id forLanguageCode:(id)code;
+ (id)getVoiceProfileIdentityFromVersionFilePath:(id)path;
+ (id)getVoiceProfilesForSiriProfileId:(id)id;
+ (id)moveContentsOfSrcDirectory:(id)directory toDestDirectory:(id)destDirectory;
+ (id)psrConfigFileNameForCSSpIdType:(unint64_t)type;
+ (id)readJsonFileAtPath:(id)path;
+ (id)removeItemAtPath:(id)path;
+ (id)satConfigFileNameForCSSpIdType:(unint64_t)type;
+ (id)satConfigFileNameForCSSpIdType:(unint64_t)type forModelType:(unint64_t)modelType forAssetType:(unint64_t)assetType;
+ (id)spIdVoiceProfileImportRootDir;
+ (id)spidAudioTrainUtterancesDir;
+ (id)ssrAudioLogsDir;
+ (id)stringForCSSpIdType:(unint64_t)type;
+ (id)stringForInvocationStyle:(unint64_t)style;
+ (id)stringForSpeakerRecognizerType:(unint64_t)type;
+ (id)stringForVoiceProfileRetrainerType:(unint64_t)type;
+ (id)timeStampString;
+ (int)convertToSchemaEnumWithPhId:(unint64_t)id;
+ (int64_t)getNumberOfAudioFilesInDirectory:(id)directory;
+ (unint64_t)convertToEnrollmentTriggerPhraseWithPhId:(unint64_t)id;
+ (unint64_t)deviceCategoryForDeviceProductType:(id)type;
+ (unint64_t)deviceCategoryFromString:(id)string;
+ (unint64_t)explicitSpIdTypeForSpId:(unint64_t)id;
+ (unint64_t)getCurrentDeviceCategoryType;
+ (unint64_t)getVoiceProfileProductCategoryFromVersionFilePath:(id)path;
+ (unint64_t)spIdTypeForString:(id)string;
+ (void)cleanupOrphanedVoiceIdGradingFiles;
+ (void)dumpFilesInDirectory:(id)directory;
+ (void)getEnrollmentUtterancesCountFromDirectory:(id)directory withCountBlock:(id)block;
+ (void)getHomeUserIdForVoiceProfile:(id)profile withCompletion:(id)completion;
+ (void)logSpeakerRecognitionGradingMetadataAtFilepath:(id)filepath withScoreInfo:(id)info;
+ (void)segmentVoiceTriggerFromAudioFile:(id)file withVTEventInfo:(id)info withStorePayloadPortion:(BOOL)portion withCompletion:(id)completion;
+ (void)streamAudioFromFileUrl:(id)url audioStreamBasicDescriptor:(AudioStreamBasicDescription *)descriptor samplesPerStreamChunk:(unint64_t)chunk audioDataAvailableHandler:(id)handler;
@end

@implementation SSRUtils

+ (id)getEmbeddingFileName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  assetHash = [nameCopy assetHash];
  assetVersion = [nameCopy assetVersion];

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"nil";
    if (assetHash)
    {
      v8 = assetHash;
    }

    else
    {
      v8 = @"nil";
    }

    *buf = 136315650;
    v16 = "+[SSRUtils getEmbeddingFileName:]";
    v17 = 2112;
    v18 = v8;
    if (assetVersion)
    {
      v7 = assetVersion;
    }

    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s asset hash is %@, asset version is %@", buf, 0x20u);
  }

  v9 = @"nohash";
  if (assetHash)
  {
    v9 = assetHash;
  }

  v10 = v9;

  v11 = @"0.0";
  if (assetVersion)
  {
    v11 = assetVersion;
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v10, v12];

  return v13;
}

+ (unint64_t)convertToEnrollmentTriggerPhraseWithPhId:(unint64_t)id
{
  if (id)
  {
    return 2 * (id == 1);
  }

  else
  {
    return 1;
  }
}

+ (int)convertToSchemaEnumWithPhId:(unint64_t)id
{
  if (id)
  {
    return 2 * (id == 1);
  }

  else
  {
    return 1;
  }
}

+ (id)convertSchemaTypeWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_alloc_init(MEMORY[0x277D5A908]);
  if (localeCopy)
  {
    v5 = [MEMORY[0x277D5ACF8] convertLanguageCodeToSchemaLocale:localeCopy];
    if (v5 <= 0x3E)
    {
      v6 = dword_225EA9F7C[v5];
      [v4 setCountryCode:dword_225EA9E80[v5]];
      [v4 setLanguageCode:v6];
    }
  }

  return v4;
}

+ (id)concatenateDonationId:(id)id triggerPhraseId:(unint64_t)phraseId
{
  v5 = MEMORY[0x277CCACA8];
  idCopy = id;
  phraseId = [v5 stringWithFormat:@"%lu", phraseId];
  v8 = [idCopy stringByAppendingFormat:@"%@%@", @"-TriggerPhrase-", phraseId];

  return v8;
}

+ (id)createAVAudioPCMBufferWithNSData:(id)data audioFormat:(unint64_t)format sampleRate:(float)rate numOfChannel:(unsigned int)channel isInterleaved:(BOOL)interleaved
{
  interleavedCopy = interleaved;
  v8 = *&channel;
  v11 = MEMORY[0x277CB83A0];
  dataCopy = data;
  v13 = [[v11 alloc] initWithCommonFormat:format sampleRate:v8 channels:interleavedCopy interleaved:rate];
  v14 = [objc_alloc(MEMORY[0x277CB83C0]) initWithPCMFormat:v13 frameCapacity:objc_msgSend(dataCopy, "length") >> 1];
  memcpy(*([v14 mutableAudioBufferList] + 16), objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"));
  LODWORD(format) = [dataCopy length];
  *([v14 mutableAudioBufferList] + 12) = format;
  LODWORD(format) = [dataCopy length];

  [v14 setFrameLength:format >> 1];

  return v14;
}

+ (id)generateEnrollmentId
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

+ (BOOL)isMphVTUIKeywordDetectorSupportedPlatform
{
  if (CSIsIOS())
  {
    return 1;
  }

  return CSIsAppleSiliconMac();
}

+ (id)combineScoreFromPSR:(id)r fromSAT:(id)t withCombinedWt:(float)wt
{
  v49 = *MEMORY[0x277D85DE8];
  rCopy = r;
  tCopy = t;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v9;
  if (rCopy && !tCopy)
  {
    [v9 addEntriesFromDictionary:rCopy];
    v11 = @"spIdKnownUserPSRScores";
    v12 = rCopy;
LABEL_7:
    v13 = [v12 objectForKeyedSubscript:v11];
    [v10 setObject:v13 forKeyedSubscript:@"spIdKnownUserScores"];

    goto LABEL_8;
  }

  if (!rCopy && tCopy)
  {
    [v9 addEntriesFromDictionary:tCopy];
    v11 = @"spIdKnownUserSATScores";
    v12 = tCopy;
    goto LABEL_7;
  }

  if (rCopy && tCopy)
  {
    [v9 addEntriesFromDictionary:tCopy];
    v37 = v10;
    [v10 addEntriesFromDictionary:rCopy];
    v15 = [rCopy objectForKeyedSubscript:@"spIdKnownUserPSRScores"];
    v36 = tCopy;
    v16 = [tCopy objectForKeyedSubscript:@"spIdKnownUserSATScores"];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      v22 = MEMORY[0x277D01970];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v16 objectForKeyedSubscript:v24];

          if (v25)
          {
            v26 = [v16 objectForKeyedSubscript:v24];
            [v26 floatValue];
            v28 = v27;

            v29 = [v18 objectForKeyedSubscript:v24];
            [v29 floatValue];
            v31 = v30;

            *&v32 = (v31 * wt) + ((1.0 - wt) * v28);
            v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
            [v17 setObject:v33 forKey:v24];
          }

          else
          {
            v34 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v43 = "+[SSRUtils combineScoreFromPSR:fromSAT:withCombinedWt:]";
              v44 = 2114;
              v45 = v24;
              v46 = 2114;
              v47 = v16;
              _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Scores for profileId %{public}@ not present in %{public}@ - Skipping", buf, 0x20u);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v20);
    }

    v35 = [v17 copy];
    v10 = v37;
    [v37 setObject:v35 forKeyedSubscript:@"spIdKnownUserScores"];

    tCopy = v36;
  }

LABEL_8:

  return v10;
}

+ (id)moveContentsOfSrcDirectory:(id)directory toDestDirectory:(id)destDirectory
{
  v47 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  destDirectoryCopy = destDirectory;
  v7 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    localizedDescription = [v10 localizedDescription];
    obj = [v11 stringWithFormat:@"Failed to get contents of %@ with error %@", directoryCopy, localizedDescription];

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "+[SSRUtils moveContentsOfSrcDirectory:toDestDirectory:]";
      v45 = 2114;
      v46 = obj;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v14 = v10;
    v15 = v14;
  }

  else
  {
    v16 = [SSRUtils createDirectoryIfDoesNotExist:destDirectoryCopy];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v17 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v35 = destDirectoryCopy;
      v33 = v9;
      v14 = 0;
      v19 = *v38;
      do
      {
        v20 = 0;
        v21 = v14;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * v20);
          v23 = directoryCopy;
          v24 = [directoryCopy stringByAppendingPathComponent:v22];
          v25 = [v35 stringByAppendingPathComponent:v22];
          v26 = v7;
          defaultManager2 = [*(v7 + 2560) defaultManager];
          v36 = v21;
          [defaultManager2 moveItemAtPath:v24 toPath:v25 error:&v36];
          v14 = v36;

          if (v14)
          {
            v28 = MEMORY[0x277CCACA8];
            localizedDescription2 = [v14 localizedDescription];
            v30 = [v28 stringWithFormat:@"Failed to move %@ to %@ with error %@", v24, v25, localizedDescription2];

            v31 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v44 = "+[SSRUtils moveContentsOfSrcDirectory:toDestDirectory:]";
              v45 = 2114;
              v46 = v30;
              _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }
          }

          ++v20;
          v21 = v14;
          v7 = v26;
          directoryCopy = v23;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v18);
      v15 = 0;
      v9 = v33;
      destDirectoryCopy = v35;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  return v15;
}

+ (id)removeItemAtPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v12];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v7 = [defaultManager2 removeItemAtPath:pathCopy error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v14 = "+[SSRUtils removeItemAtPath:]";
        v15 = 2114;
        v16 = pathCopy;
        v17 = 2114;
        v18 = v8;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_getUtterancesFromDirectory:(id)directory
{
  v20[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (directoryCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v20[0] = *MEMORY[0x277CBE8E8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v13 = 0;
    v6 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v5 options:0 error:&v13];
    v7 = v13;

    if (v7)
    {
      v8 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v15 = "+[SSRUtils _getUtterancesFromDirectory:]";
        v16 = 2114;
        v17 = directoryCopy;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: Fetching contents of %{public}@ failed with error - %{public}@", buf, 0x20u);
      }
    }

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self.absoluteString ENDSWITH '.wav'"];
    v10 = [v6 filteredArrayUsingPredicate:v9];
  }

  else
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "+[SSRUtils _getUtterancesFromDirectory:]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s satAudioDirectory is nil - Bailing out", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)getImplicitEnrollmentUtterancesFromDirectory:(id)directory
{
  v3 = [self _getUtterancesFromDirectory:directory];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_408];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_411];

  return v6;
}

uint64_t __57__SSRUtils_getImplicitEnrollmentUtterancesFromDirectory___block_invoke_409(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [SSRVoiceProfileMetadataManager recordedTimeStampOfFile:v4];
  v7 = [SSRVoiceProfileMetadataManager recordedTimeStampOfFile:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v14 = 1;
    }

    else
    {
      if (v6)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 == 0;
      }

      if (v11)
      {
        v12 = [v4 absoluteString];
        v13 = [v5 absoluteString];
        v14 = [v12 compare:v13 options:1];
      }

      else
      {
        v14 = -1;
      }
    }
  }

  else
  {
    v14 = [v6 compare:v7];
  }

  return v14;
}

uint64_t __57__SSRUtils_getImplicitEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "+[SSRUtils getImplicitEnrollmentUtterancesFromDirectory:]_block_invoke";
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s metaVersionFile %{public}@ doesnt exist - Skipping", &v10, 0x16u);
    }

    goto LABEL_6;
  }

  if (![SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:v3])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

+ (void)getEnrollmentUtterancesCountFromDirectory:(id)directory withCountBlock:(id)block
{
  directoryCopy = directory;
  blockCopy = block;
  v8 = [self _getUtterancesFromDirectory:directoryCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SSRUtils_getEnrollmentUtterancesCountFromDirectory_withCountBlock___block_invoke;
  v9[3] = &unk_278578810;
  v9[4] = &v10;
  v9[5] = &v14;
  [v8 enumerateObjectsUsingBlock:v9];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v15[3], v11[3]);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __69__SSRUtils_getEnrollmentUtterancesCountFromDirectory_withCountBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:a2];
  v3 = [v5 isEqualToString:@"implicit"];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
}

+ (id)getExplicitMarkedEnrollmentUtterancesFromDirectory:(id)directory
{
  v3 = [self _getUtterancesFromDirectory:directory];
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_406];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

uint64_t __63__SSRUtils_getExplicitMarkedEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v3];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v3 lastPathComponent];
      v13 = 136315394;
      v14 = "+[SSRUtils getExplicitMarkedEnrollmentUtterancesFromDirectory:]_block_invoke";
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s metaVersionFile %{public}@ doesnt exist - Skipping", &v13, 0x16u);
    }

    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"explicit"] & 1) == 0)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

+ (id)getExplicitEnrollmentUtterancesFromDirectory:(id)directory
{
  v38 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v5 = [self _getUtterancesFromDirectory:directoryCopy];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4803;
  v32 = __Block_byref_object_dispose__4804;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (CSIsCommunalDevice())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4803;
    v25 = __Block_byref_object_dispose__4804;
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__4803;
    v19 = __Block_byref_object_dispose__4804;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2;
    v14[3] = &unk_278578810;
    v14[4] = &v21;
    v14[5] = &v15;
    [v5 enumerateObjectsUsingBlock:v14];
    [v29[5] addObjectsFromArray:v16[5]];
    if ([v22[5] count] && objc_msgSend(v29[5], "count") <= 4)
    {
      v6 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v22[5] count];
        *buf = 136315394;
        v35 = "+[SSRUtils getExplicitEnrollmentUtterancesFromDirectory:]";
        v36 = 1026;
        v37 = v7;
        _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Found %{public}d ambiguous explicit utterances", buf, 0x12u);
      }

      v8 = [v22[5] sortedArrayUsingComparator:&__block_literal_global_403];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2_404;
      v13[3] = &unk_2785787E8;
      v13[4] = &v28;
      [v8 enumerateObjectsUsingBlock:v13];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_393];
    v10 = [v5 filteredArrayUsingPredicate:v9];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_398;
    v27[3] = &unk_2785787E8;
    v27[4] = &v28;
    [v10 enumerateObjectsUsingBlock:v27];
  }

  v11 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_398(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:?];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"explicit"] & 1) != 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) insertObject:v5 atIndex:0];
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:?];
  v4 = v3;
  if (v3)
  {
    if (![v3 isEqualToString:@"explicit"])
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  else
  {
    v5 = 32;
  }

  [*(*(*(a1 + v5) + 8) + 40) addObject:v6];
LABEL_6:
}

void __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_2_404(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) count] > 4)
  {
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

uint64_t __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke_400(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:v4];
  v7 = [SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v14 = -1;
    }

    else
    {
      if (v6)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 == 0;
      }

      if (v11)
      {
        v12 = [v4 absoluteString];
        v13 = [v5 absoluteString];
        v14 = [v12 compare:v13 options:1];
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = [v6 compare:v7];
  }

  return v14;
}

uint64_t __57__SSRUtils_getExplicitEnrollmentUtterancesFromDirectory___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a2 URLByDeletingPathExtension];
  v3 = [v2 URLByAppendingPathExtension:@"json"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:v3]^ 1;
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v3 lastPathComponent];
      v12 = 136315394;
      v13 = "+[SSRUtils getExplicitEnrollmentUtterancesFromDirectory:]_block_invoke";
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s metaVersionFile %{public}@ doesnt exist", &v12, 0x16u);
    }

    v7 = 1;
  }

  return v7;
}

+ (id)getEnrollmentUtterancesFromDirectory:(id)directory
{
  v12 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (directoryCopy)
  {
    v5 = [self getExplicitEnrollmentUtterancesFromDirectory:directoryCopy];
    v6 = [self getImplicitEnrollmentUtterancesFromDirectory:directoryCopy];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "+[SSRUtils getEnrollmentUtterancesFromDirectory:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s satAudioDirectory is nil - Bailing out", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (void)segmentVoiceTriggerFromAudioFile:(id)file withVTEventInfo:(id)info withStorePayloadPortion:(BOOL)portion withCompletion:(id)completion
{
  portionCopy = portion;
  v89[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  infoCopy = info;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v50 = [uUIDString stringByAppendingString:@".wav"];

  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v14 = [uUIDString2 stringByAppendingString:@".wav"];

  uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  v17 = [path stringByAppendingPathComponent:v50];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277D01830]);
    v19 = [MEMORY[0x277CBEBC0] URLWithString:v17];
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    v20 = [v18 initWithURL:v19 inputFormat:buf outputFormat:v79];

    if (portionCopy)
    {
      v21 = [path stringByAppendingPathComponent:v14];
      v22 = objc_alloc(MEMORY[0x277D01830]);
      v23 = [MEMORY[0x277CBEBC0] URLWithString:v21];
      objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
      objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
      v24 = [v22 initWithURL:v23 inputFormat:buf outputFormat:v79];
    }

    else
    {
      v24 = 0;
      v21 = 0;
    }

    if (v20 | v24)
    {
      v79[0] = 0;
      v79[1] = v79;
      v79[2] = 0x2020000000;
      v79[3] = 0xFFFFFFFFLL;
      v78[0] = 0;
      v78[1] = v78;
      v78[2] = 0x2020000000;
      v78[3] = 0xFFFFFFFFLL;
      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x2020000000;
      v77[3] = 0xFFFFFFFFLL;
      v76[0] = 0;
      v76[1] = v76;
      v76[2] = 0x2020000000;
      v76[3] = 0;
      v75[0] = 0;
      v75[1] = v75;
      v75[2] = 0x2020000000;
      v75[3] = 0;
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x2020000000;
      v74[3] = 0;
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x2020000000;
      v73[3] = 0;
      v72[0] = 0;
      v72[1] = v72;
      v72[2] = 0x2020000000;
      v72[3] = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v71 = 0;
      v29 = *MEMORY[0x277D01E80];
      v30 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D01E80]];

      if (v30)
      {
        v31 = [infoCopy objectForKeyedSubscript:v29];
        integerValue = [v31 integerValue];
        v69[3] = integerValue;

        v33 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v14;
          v34 = v69[3];
          v35 = [infoCopy objectForKeyedSubscript:v29];
          integerValue2 = [v35 integerValue];
          [MEMORY[0x277D016E0] inputRecordingSampleRate];
          *buf = 136315650;
          v83 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
          v84 = 2048;
          v85 = v34;
          v86 = 2048;
          v87 = (integerValue2 / v37);
          _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Setting payloadstartSample %lu for trigger duration of %fsecs", buf, 0x20u);

          v14 = v47;
        }
      }

      else
      {
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v41 = v14;
        v43 = v69;
        v69[3] = vcvtd_n_u64_f64(v42, 2uLL);
        v33 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v44 = v43[3];
          v48 = [infoCopy objectForKeyedSubscript:v29];
          integerValue3 = [v48 integerValue];
          [MEMORY[0x277D016E0] inputRecordingSampleRate];
          *buf = 136315650;
          v83 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
          v84 = 2048;
          v85 = v44;
          v86 = 2048;
          v87 = (integerValue3 / v46);
          _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s ERR: Setting max payloadstartSample %lu for trigger duration of %fsecs", buf, 0x20u);
        }

        v14 = v41;
      }

      objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __100__SSRUtils_segmentVoiceTriggerFromAudioFile_withVTEventInfo_withStorePayloadPortion_withCompletion___block_invoke;
      v52[3] = &unk_2785787A0;
      v53 = fileCopy;
      v58 = completionCopy;
      v54 = v17;
      v21 = v21;
      v55 = v21;
      v59 = v79;
      v60 = v75;
      v61 = v78;
      v62 = v74;
      v63 = v77;
      v64 = v73;
      v65 = v76;
      v66 = v72;
      v27 = v20;
      v56 = v27;
      v28 = v24;
      v57 = v28;
      v67 = &v68;
      [SSRUtils streamAudioFromFileUrl:v53 audioStreamBasicDescriptor:buf samplesPerStreamChunk:640 audioDataAvailableHandler:v52];

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(v72, 8);
      _Block_object_dispose(v73, 8);
      _Block_object_dispose(v74, 8);
      _Block_object_dispose(v75, 8);
      _Block_object_dispose(v76, 8);
      _Block_object_dispose(v77, 8);
      _Block_object_dispose(v78, 8);
      _Block_object_dispose(v79, 8);
    }

    else
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed initializing loggers at %@ and %@", v17, v21];
      v38 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v83 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
        v84 = 2114;
        v85 = v27;
        _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        if (!completionCopy)
        {
          goto LABEL_20;
        }
      }

      else if (!completionCopy)
      {
LABEL_20:

        goto LABEL_21;
      }

      v39 = MEMORY[0x277CCA9B8];
      v80 = *MEMORY[0x277CCA450];
      v81 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v40 = [v39 errorWithDomain:@"com.apple.speakerrecognition" code:744 userInfo:v28];
      (*(completionCopy + 2))(completionCopy, v40, 0, 0);
    }

LABEL_19:

    goto LABEL_20;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Audio path is nil - Bailing out"];
  v25 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v83 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]";
    v84 = 2114;
    v85 = v21;
    _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    v26 = MEMORY[0x277CCA9B8];
    v88 = *MEMORY[0x277CCA450];
    v89[0] = v21;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];
    v28 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:715 userInfo:v27];
    (*(completionCopy + 2))(completionCopy, v28, 0, 0);
    goto LABEL_19;
  }

LABEL_21:
}

void __100__SSRUtils_segmentVoiceTriggerFromAudioFile_withVTEventInfo_withStorePayloadPortion_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x277D01970];
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v48 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to read file: %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to read file: %@", *(a1 + 32)];
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
      v49 = 2112;
      v50 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    if (*(a1 + 72))
    {
      v13 = [SSRUtils removeItemAtPath:*(a1 + 40)];

      if (!v13)
      {
        v14 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          *buf = 136315394;
          v48 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
          v49 = 2114;
          v50 = v15;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Deleted file %{public}@", buf, 0x16u);
        }
      }

      v16 = [SSRUtils removeItemAtPath:*(a1 + 48)];

      if (!v16)
      {
        v17 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 48);
          *buf = 136315394;
          v48 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
          v49 = 2114;
          v50 = v18;
          _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Deleted file %{public}@", buf, 0x16u);
        }
      }

      v19 = *(a1 + 72);
      v20 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA450];
      v58[0] = v11;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:716 userInfo:v21];
      (*(v19 + 16))(v19, v22, 0, 0);
    }

    goto LABEL_32;
  }

  if (!a3)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    v40 = [v11 length];
    objc_msgSend_lpcmInt16ASBD(MEMORY[0x277D01748]);
    v41 = v40 / v46;
    *(*(*(a1 + 88) + 8) + 24) += v41;
    if (*(a1 + 56))
    {
      v42 = *(*(a1 + 104) + 8);
      v43 = *(v42 + 24);
      if (v43 < *(*(*(a1 + 144) + 8) + 24))
      {
        *(v42 + 24) = v43 + v41;
        [*(a1 + 56) addSamples:objc_msgSend(v11 numSamples:{"bytes"), v41}];
      }
    }

    if (*(a1 + 64) && (v44 = *(*(*(a1 + 120) + 8) + 24), [MEMORY[0x277D016E0] inputRecordingSampleRate], v45 * 4.0 > v44))
    {
      *(*(*(a1 + 120) + 8) + 24) += v41;
      [*(a1 + 64) addSamples:objc_msgSend(v11 numSamples:{"bytes"), v41}];
    }

    else
    {
      *(*(*(a1 + 136) + 8) + 24) += v41;
    }

    goto LABEL_32;
  }

  v23 = *(*(*(a1 + 88) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 80) + 8) + 24) = ((v23 / v24) * 1000.0);
  v25 = *(*(*(a1 + 104) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 96) + 8) + 24) = ((v25 / v26) * 1000.0);
  v27 = *(*(*(a1 + 120) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 112) + 8) + 24) = ((v27 / v28) * 1000.0);
  v29 = *(*(*(a1 + 136) + 8) + 24);
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(*(a1 + 128) + 8) + 24) = ((v29 / v30) * 1000.0);
  v31 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(*(*(a1 + 80) + 8) + 24);
    v33 = *(*(*(a1 + 96) + 8) + 24);
    v34 = *(*(*(a1 + 112) + 8) + 24);
    v35 = *(*(*(a1 + 128) + 8) + 24);
    *buf = 136316162;
    v48 = "+[SSRUtils segmentVoiceTriggerFromAudioFile:withVTEventInfo:withStorePayloadPortion:withCompletion:]_block_invoke";
    v49 = 2048;
    v50 = v32;
    v51 = 2048;
    v52 = v33;
    v53 = 2048;
    v54 = v34;
    v55 = 2048;
    v56 = v35;
    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s EOF: utteranceLength: %lums, tdlength: %lums tdtiLength: %lums tdtiDiscardedLength: %lums", buf, 0x34u);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    [v36 endAudio];
  }

  v37 = *(a1 + 64);
  if (v37)
  {
    [v37 endAudio];
  }

  v38 = *(a1 + 72);
  if (v38)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 40)];
    if (*(a1 + 48))
    {
      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      (*(v38 + 16))(v38, 0, v11, v39);
    }

    else
    {
      (*(v38 + 16))(v38, 0, v11, 0);
    }

LABEL_32:
  }
}

+ (void)logSpeakerRecognitionGradingMetadataAtFilepath:(id)filepath withScoreInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  filepathCopy = filepath;
  infoCopy = info;
  v7 = infoCopy;
  if (filepathCopy)
  {
    if (infoCopy)
    {
      v17 = 0;
      v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:infoCopy options:1 error:&v17];
      v9 = v17;
      if (v9)
      {
        v10 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
LABEL_16:

          goto LABEL_17;
        }

        *buf = 136315394;
        v19 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
        v20 = 2112;
        v21 = v9;
        v11 = "%s Error creating uttMetaJsonData: %@";
        v12 = v10;
        v13 = 22;
      }

      else
      {
        if (v8)
        {
          [v8 writeToFile:filepathCopy atomically:0];
          goto LABEL_16;
        }

        v16 = *MEMORY[0x277D015C8];
        if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136315138;
        v19 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
        v11 = "%s Failed to create UttMeta...";
        v12 = v16;
        v13 = 12;
      }

      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_16;
    }

    v14 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
      v15 = "%s scoreCard is nil!";
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "+[SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:withScoreInfo:]";
      v15 = "%s uttMetaPath is nil!";
LABEL_11:
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }

LABEL_17:
}

+ (id)getVoiceProfileForSiriProfileId:(id)id forLanguageCode:(id)code
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  codeCopy = code;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:codeCopy];
  if (!idCopy && ((CSIsIOS() & 1) != 0 || CSIsOSX()) && [v8 count])
  {
    if ([v8 count] >= 2)
    {
      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "+[SSRUtils getVoiceProfileForSiriProfileId:forLanguageCode:]";
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Seeing more than one voice profiles for Siri App Domain", buf, 0xCu);
      }
    }

    v17 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v20 = codeCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (idCopy)
          {
            v14 = *(*(&v21 + 1) + 8 * i);
            siriProfileId = [v14 siriProfileId];
            v16 = [siriProfileId isEqualToString:idCopy];

            if (v16)
            {
              v17 = v14;

              goto LABEL_13;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:
    codeCopy = v20;
  }

  return v17;
}

+ (id)getVoiceProfilesForSiriProfileId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfilesForAppDomain:@"com.apple.siri"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (CSIsIOS())
  {
    if (!idCopy)
    {
LABEL_6:
      v8 = v5;
      goto LABEL_20;
    }
  }

  else
  {
    v7 = CSIsOSX();
    if (!idCopy && (v7 & 1) != 0)
    {
      goto LABEL_6;
    }
  }

  v18 = v4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        siriProfileId = [v14 siriProfileId];
        v16 = [siriProfileId isEqualToString:idCopy];

        if (v16)
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v8 = [v6 copy];
  }

  else
  {
    v8 = 0;
  }

  v4 = v18;
LABEL_20:

  return v8;
}

+ (void)getHomeUserIdForVoiceProfile:(id)profile withCompletion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  completionCopy = completion;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4803;
  v37 = __Block_byref_object_dispose__4804;
  v38 = 0;
  v7 = objc_alloc_init(MEMORY[0x277D01710]);
  v8 = objc_alloc_init(MEMORY[0x277CEF310]);
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    siriProfileId = [profileCopy siriProfileId];
    *buf = 136315394;
    v42 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]";
    v43 = 2114;
    v44 = siriProfileId;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Fetching homeUserId for siriProfileId %{public}@", buf, 0x16u);
  }

  [v7 enter];
  siriProfileId2 = [profileCopy siriProfileId];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __56__SSRUtils_getHomeUserIdForVoiceProfile_withCompletion___block_invoke;
  v27 = &unk_278578778;
  v13 = v8;
  v28 = v13;
  v32 = &v33;
  v14 = profileCopy;
  v29 = v14;
  v15 = v7;
  v30 = v15;
  v16 = completionCopy;
  v31 = v16;
  [v13 getHomeUserIdForSharedUserId:siriProfileId2 completion:&v24];

  if ([v15 waitWithTimeout:{dispatch_time(0, 100000000)}])
  {
    v17 = MEMORY[0x277CCACA8];
    siriProfileId3 = [v14 siriProfileId];
    v19 = [v17 stringWithFormat:@"homeUserId query for siriProfileId %@ timedout !", siriProfileId3, v24, v25, v26, v27, v28, v29, v30];

    v20 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40 = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:749 userInfo:v21];

    v23 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]";
      v43 = 2112;
      v44 = v19;
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    else if (!v16)
    {
LABEL_7:

      goto LABEL_8;
    }

    (*(v16 + 2))(v16, v34[5], v22);
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v33, 8);
}

void __56__SSRUtils_getHomeUserIdForVoiceProfile_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 40);
    v11 = v9;
    v12 = [v10 siriProfileId];
    v17 = 136315651;
    v18 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]_block_invoke";
    v19 = 2114;
    v20 = v12;
    v21 = 2113;
    v22 = v7;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: Home User Id erred %{public}@ for Siri Profile Id %{private}@", &v17, 0x20u);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v13 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 40);
    v11 = v13;
    v12 = [v14 siriProfileId];
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v17 = 136315650;
    v18 = "+[SSRUtils getHomeUserIdForVoiceProfile:withCompletion:]_block_invoke";
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s siriProfileId %{public}@ maps to homeUserId %{public}@", &v17, 0x20u);
  }

LABEL_7:
  [*(a1 + 48) leave];
  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, *(*(*(a1 + 64) + 8) + 40), v7);
  }
}

+ (id)getContentsOfDirectory:(id)directory
{
  v22[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22[0] = *MEMORY[0x277CBE8E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v15 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v5 options:0 error:&v15];
  v7 = v15;

  if (v7)
  {
    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }

    *buf = 136315650;
    v17 = "+[SSRUtils getContentsOfDirectory:]";
    v18 = 2112;
    v19 = directoryCopy;
    v20 = 2112;
    v21 = v7;
    v12 = "%s Error reading directory at %@: err: %@";
    v13 = v8;
    v14 = 32;
LABEL_12:
    _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    goto LABEL_3;
  }

  if (![v6 count])
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315394;
    v17 = "+[SSRUtils getContentsOfDirectory:]";
    v18 = 2112;
    v19 = directoryCopy;
    v12 = "%s %@ is empty";
    v13 = v11;
    v14 = 22;
    goto LABEL_12;
  }

  v9 = v6;
LABEL_6:

  return v9;
}

+ (void)dumpFilesInDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (!directoryCopy)
  {
    v16 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "+[SSRUtils dumpFilesInDirectory:]";
    v17 = "%s ERR: Directory is nil - Bailing out";
    v18 = v16;
    v19 = 12;
LABEL_18:
    _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_16;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:directoryCopy];

  if ((v5 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v26 = "+[SSRUtils dumpFilesInDirectory:]";
    v27 = 2114;
    v28 = directoryCopy;
    v17 = "%s ERR: %{public}@ doesnt exist - Bailing out";
    v18 = v20;
    v19 = 22;
    goto LABEL_18;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager2 enumeratorAtPath:directoryCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(&v21 + 1) + 8 * i);
          *buf = 136315650;
          v26 = "+[SSRUtils dumpFilesInDirectory:]";
          v27 = 2114;
          v28 = directoryCopy;
          v29 = 2114;
          v30 = v15;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Dump content of %{public}@ - %{public}@", buf, 0x20u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);
  }

LABEL_16:
}

+ (int64_t)getNumberOfAudioFilesInDirectory:(id)directory
{
  v22 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "+[SSRUtils getNumberOfAudioFilesInDirectory:]";
      v18 = 2114;
      v19 = directoryCopy;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: fetching contents of %{public}@ failed with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SSRUtils_getNumberOfAudioFilesInDirectory___block_invoke;
    v10[3] = &unk_278578750;
    v10[4] = &v12;
    [v5 enumerateObjectsUsingBlock:v10];
  }

  v8 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __45__SSRUtils_getNumberOfAudioFilesInDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pathExtension];
  v4 = [v3 isEqualToString:@"wav"];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

+ (id)getImplicitUtteranceCacheDirectory
{
  baseDir = [self baseDir];
  v3 = [baseDir stringByAppendingPathComponent:@"Caches/VoiceTrigger/ImplicitUtterences"];

  return v3;
}

+ (BOOL)isCurrentDeviceCompatibleWithVoiceProfileAt:(id)at
{
  v73 = *MEMORY[0x277D85DE8];
  atCopy = at;
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (deviceProductType)
  {
    v5 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
    v61 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [atCopy stringByAppendingPathComponent:@"audio"];
    if ([defaultManager fileExistsAtPath:v7 isDirectory:&v61] && v61 == 1)
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      if (!v8)
      {
        v15 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v64 = 2114;
          v65 = v7;
          _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Malformed audio-dir URL for string <%{public}@>:url", buf, 0x16u);
        }

        goto LABEL_55;
      }

      v9 = v8;
      v60 = 0;
      v10 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v60];
      v11 = v60;
      if (v11)
      {
        v12 = v11;
        v13 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v64 = 2114;
          v65 = v12;
          _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: reading contents of audioDir: %{public}@", buf, 0x16u);
        }

LABEL_55:
        LOBYTE(v9) = 0;
LABEL_56:

        goto LABEL_57;
      }

      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension='json'"];
      v17 = [v10 filteredArrayUsingPredicate:v16];
      v52 = v7;
      v53 = defaultManager;
      v50 = v10;
      v51 = v9;
      v49 = v17;
      if ([v17 count])
      {
        v48 = v16;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v17;
        v18 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v46 = v5;
          v47 = atCopy;
          v20 = 0;
          v21 = *v57;
          v9 = MEMORY[0x277D01970];
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v57 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v56 + 1) + 8 * i);
              v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:{v23, v46}];
              if (v24)
              {
                v25 = v24;
                v55 = v20;
                v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:0 error:&v55];
                v27 = v55;

                if (v27)
                {
                  v28 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    v64 = 2114;
                    v65 = v23;
                    _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Error reading metaDict at path: %{public}@", buf, 0x16u);
                  }

                  v20 = v27;
                }

                else
                {
                  v30 = [v26 objectForKeyedSubscript:@"productType"];
                  v31 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    v64 = 2114;
                    v65 = v30;
                    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s metaProductType: %{public}@", buf, 0x16u);
                  }

                  if (v30)
                  {
                    v35 = [SSRUtils deviceCategoryForDeviceProductType:v30];
                    v36 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                    {
                      v37 = v36;
                      v9 = v46;
                      v38 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v46];
                      v39 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v35];
                      *buf = 136316162;
                      v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                      v64 = 2114;
                      v65 = deviceProductType;
                      v66 = 2114;
                      v67 = v38;
                      v68 = 2114;
                      v69 = v30;
                      v70 = 2114;
                      v71 = v39;
                      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s vtprofile: currDevice=[%{public}@:%{public}@] ; vpDirDevice=[%{public}@:%{public}@]", buf, 0x34u);

                      v36 = *MEMORY[0x277D01970];
                    }

                    else
                    {
                      v9 = v46;
                    }

                    atCopy = v47;
                    v40 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                    LOBYTE(v9) = v9 == v35;
                    if (v9)
                    {
                      if (v40)
                      {
                        *buf = 136315138;
                        v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                        v41 = "%s VoiceProfile MATCH";
                        goto LABEL_49;
                      }
                    }

                    else if (v40)
                    {
                      *buf = 136315138;
                      v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                      v41 = "%s VoiceProfile MIS-MATCH";
LABEL_49:
                      _os_log_impl(&dword_225E12000, v36, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
                    }

                    v20 = 0;
                    v33 = 0;
                    goto LABEL_51;
                  }

                  v32 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Could not find productType in VT-Meta file, trying next one", buf, 0xCu);
                  }

                  v20 = 0;
                }
              }

              else
              {
                v29 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
                  v64 = 2114;
                  v65 = v23;
                  _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s Unexpected: empty JSON data for file: %{public}@", buf, 0x16u);
                }
              }
            }

            v19 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v33 = 1;
          atCopy = v47;
        }

        else
        {
          v20 = 0;
          v33 = 1;
        }

LABEL_51:

        v16 = v48;
      }

      else
      {
        v34 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v44 = v34;
          v45 = [v17 count];
          *buf = 136315650;
          v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
          v64 = 2114;
          v65 = v9;
          v66 = 2050;
          v67 = v45;
          _os_log_error_impl(&dword_225E12000, v44, OS_LOG_TYPE_ERROR, "%s No jsonFiles found in %{public}@: jsonFiles.count=%{public}lu", buf, 0x20u);
        }

        v20 = 0;
        v33 = 0;
        LOBYTE(v9) = 0;
      }

      v7 = v52;
      defaultManager = v53;
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    v42 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
      v64 = 2114;
      v65 = deviceProductType;
      _os_log_impl(&dword_225E12000, v42, OS_LOG_TYPE_DEFAULT, "%s No compatible VT profile found for CurrDevice: %{public}@", buf, 0x16u);
    }

    goto LABEL_55;
  }

  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "+[SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:]";
    v64 = 2114;
    v65 = 0;
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device. returning false: %{public}@", buf, 0x16u);
  }

  LOBYTE(v9) = 0;
LABEL_57:

  return v9 & 1;
}

+ (BOOL)isCurrentDeviceCompatibleWithNewerVoiceProfileAt:(id)at
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D018F8];
  atCopy = at;
  deviceProductType = [v3 deviceProductType];
  v6 = [atCopy stringByAppendingPathComponent:@"enrollment_version.json"];

  if (!deviceProductType)
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v23 = 2114;
      v24 = 0;
      v11 = "%s ERR: Unknown device. returning false: %{public}@";
      v12 = v10;
      v13 = 22;
LABEL_9:
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, v11, &v21, v13);
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (!v6)
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v11 = "%s ERR: satLanguagePath is nil. returning false";
      v12 = v14;
      v13 = 12;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  v8 = [SSRUtils getVoiceProfileProductCategoryFromVersionFilePath:v6];
  if (v7 != v8)
  {
    v15 = v8;
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v7];
      v19 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v15];
      v21 = 136315650;
      v22 = "+[SSRUtils isCurrentDeviceCompatibleWithNewerVoiceProfileAt:]";
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Voice Profile Mismatch - CurrentDeviceCategory %@ VoiceProfileCategory %@", &v21, 0x20u);
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

+ (unint64_t)getCurrentDeviceCategoryType
{
  v10 = *MEMORY[0x277D85DE8];
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  if (deviceProductType)
  {
    v3 = [SSRUtils deviceCategoryForDeviceProductType:deviceProductType];
  }

  else
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[SSRUtils getCurrentDeviceCategoryType]";
      v8 = 2114;
      v9 = 0;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: Unknown device: %{public}@", &v6, 0x16u);
    }

    v3 = 0;
  }

  return v3;
}

+ (unint64_t)deviceCategoryFromString:(id)string
{
  v11 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_Unknown"])
  {
    if (![stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_iOS_NonAop"])
    {
      v5 = 1;
      goto LABEL_15;
    }

    if (![stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_iOS_Aop"])
    {
      v5 = 2;
      goto LABEL_15;
    }

    if (![stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_macOS"])
    {
      v5 = 3;
      goto LABEL_15;
    }

    if (![stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_AudioAccessory"])
    {
      v5 = 4;
      goto LABEL_15;
    }

    if (![stringCopy caseInsensitiveCompare:@"kCSDeviceCategory_iOS_Aop_Explicit"])
    {
      v5 = 5;
      goto LABEL_15;
    }

    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[SSRUtils deviceCategoryFromString:]";
      v9 = 2112;
      v10 = stringCopy;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s %@ didn't match to any device category name. Returning unknown", &v7, 0x16u);
    }
  }

  v5 = 0;
LABEL_15:

  return v5;
}

+ (unint64_t)deviceCategoryForDeviceProductType:(id)type
{
  v12 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = typeCopy;
  if (deviceCategoryForDeviceProductType__onceToken == -1)
  {
    if (!typeCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&deviceCategoryForDeviceProductType__onceToken, &__block_literal_global_246);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (([deviceCategoryForDeviceProductType__nonAopDeviceSet containsObject:v4] & 1) == 0 && (objc_msgSend(v4, "containsString:", @"iPod") & 1) == 0)
  {
    if ([v4 containsString:@"Mac"])
    {
      v5 = 3;
      goto LABEL_17;
    }

    if ([v4 containsString:@"iPad"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"iPhone"))
    {
      v5 = 2;
      goto LABEL_17;
    }

    if ([v4 containsString:@"AudioAccessory"] & 1) != 0 || (objc_msgSend(v4, "containsString:", @"AppleTV"))
    {
      v5 = 4;
      goto LABEL_17;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[SSRUtils deviceCategoryForDeviceProductType:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Unknown Device category for deviceProduceType: %@", &v8, 0x16u);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v5 = 1;
LABEL_17:

  return v5;
}

uint64_t __47__SSRUtils_deviceCategoryForDeviceProductType___block_invoke()
{
  deviceCategoryForDeviceProductType__nonAopDeviceSet = [MEMORY[0x277CBEB98] setWithObjects:{@"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 7", @"iPad6, 8", @"iPad6, 11", @"iPad6, 12", @"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)deviceCategoryStringRepresentationForCategoryType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return @"kCSDeviceCategory_Unknown";
  }

  else
  {
    return off_2785788B8[type - 1];
  }
}

+ (id)getVoiceProfileIdentityFromVersionFilePath:(id)path
{
  v3 = [SSRUtils readJsonFileAtPath:path];
  v4 = [v3 objectForKeyedSubscript:@"VoiceProfileIdentifier"];

  return v4;
}

+ (unint64_t)getVoiceProfileProductCategoryFromVersionFilePath:(id)path
{
  v3 = [SSRUtils readJsonFileAtPath:path];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 objectForKeyedSubscript:@"VoiceProfileCategoryType"];

    if (intValue)
    {
      v6 = [v4 objectForKeyedSubscript:@"VoiceProfileCategoryType"];
      intValue = [v6 intValue];
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (id)readJsonFileAtPath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = defaultManager;
  v20 = 0;
  if (!pathCopy)
  {
    v8 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "+[SSRUtils readJsonFileAtPath:]";
      v7 = "%s ERR: filePath passed as nil - Bailing out";
      v9 = v8;
      v10 = 12;
LABEL_11:
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, v7, buf, v10);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![defaultManager fileExistsAtPath:pathCopy isDirectory:&v20])
  {
    v6 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "+[SSRUtils readJsonFileAtPath:]";
      v23 = 2112;
      v24 = pathCopy;
      v7 = "%s ERR: file do not exist - %@";
      goto LABEL_10;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v20)
  {
    v6 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "+[SSRUtils readJsonFileAtPath:]";
      v23 = 2112;
      v24 = pathCopy;
      v7 = "%s ERR: %@ is a directory";
LABEL_10:
      v9 = v6;
      v10 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy];
  if (!v13)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "+[SSRUtils readJsonFileAtPath:]";
      v23 = 2112;
      v24 = pathCopy;
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v14 = v13;
  v19 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v19];
  v15 = v19;
  v16 = v15;
  if (!v11 || v15)
  {
    v18 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "+[SSRUtils readJsonFileAtPath:]";
      v23 = 2112;
      v24 = pathCopy;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s ERR: Could not read existing %@ file: err: %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:

  return v11;
}

+ (BOOL)isSpeakerRecognitionSupportedInLocale:(id)locale
{
  v17 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v4 = +[SSRAssetManager sharedManager];
  v5 = [v4 installedAssetOfType:3 forLanguage:localeCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = +[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:](SSRUtils, "satConfigFileNameForCSSpIdType:forModelType:forAssetType:", 3, 1, [v5 assetProvider]);
  resourcePath = [v5 resourcePath];
  v9 = [resourcePath stringByAppendingPathComponent:v7];

  v10 = [defaultManager fileExistsAtPath:v9];
  if ((v10 & 1) == 0)
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "+[SSRUtils isSpeakerRecognitionSupportedInLocale:]";
      v15 = 2114;
      v16 = localeCopy;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s VoiceId not supported in language %{public}@", &v13, 0x16u);
    }
  }

  return v10;
}

+ (void)streamAudioFromFileUrl:(id)url audioStreamBasicDescriptor:(AudioStreamBasicDescription *)descriptor samplesPerStreamChunk:(unint64_t)chunk audioDataAvailableHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  urlCopy = url;
  handlerCopy = handler;
  v11 = descriptor->mBitsPerChannel * chunk * descriptor->mChannelsPerFrame;
  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:descriptor->mBitsPerChannel * chunk * descriptor->mChannelsPerFrame];
  outAudioFile = 0;
  *&ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  ioData.mBuffers[0].mDataByteSize = v11;
  ioData.mBuffers[0].mData = [v12 mutableBytes];
  outExtAudioFile = 0;
  if (AudioFileOpenURL(urlCopy, kAudioFileReadPermission, 0, &outAudioFile))
  {
    NSLog(&cfstr_Audiofileopenu.isa, urlCopy);
    v13 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    urlCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"AudioFileOpenURL failed: %@", urlCopy];
    v35[0] = urlCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v16 = [v13 errorWithDomain:@"EARTests" code:1001 userInfo:v15];

    v17 = handlerCopy[2];
    v28 = ioData;
    v17(handlerCopy, &v28, 1, v16);
  }

  else if (ExtAudioFileWrapAudioFileID(outAudioFile, 0, &outExtAudioFile))
  {
    NSLog(&cfstr_Extaudiofilewr.isa, urlCopy);
    v18 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    urlCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExtAudioFileWrapAudioFileID failed: %@", urlCopy];
    v33 = urlCopy2;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v18 errorWithDomain:@"EARTests" code:1002 userInfo:v20];

    AudioFileClose(outAudioFile);
    v22 = handlerCopy[2];
    v28 = ioData;
    v22(handlerCopy, &v28, 1, v21);
  }

  else
  {
    ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, descriptor);
    for (i = 0; ; i += ioData.mBuffers[0].mDataByteSize)
    {
      ioNumberFrames = chunk;
      v24 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
      if (v24)
      {
        NSLog(&cfstr_ErrorReadingAu.isa, v24);
        goto LABEL_11;
      }

      if (!ioNumberFrames)
      {
        break;
      }

      v25 = handlerCopy[2];
      v28 = ioData;
      v25(handlerCopy, &v28, 0, 0);
    }

    NSLog(&cfstr_EofNumBytesRea.isa, i);
LABEL_11:
    v26 = handlerCopy[2];
    v28 = ioData;
    v26(handlerCopy, &v28, 1, 0);
    ExtAudioFileDispose(outExtAudioFile);
    AudioFileClose(outAudioFile);
  }
}

+ (id)getVoiceEnrollmentDownloadBaseDir
{
  baseDir = [self baseDir];
  v3 = [baseDir stringByAppendingPathComponent:@"Caches/VoiceTrigger"];

  return v3;
}

+ (id)baseDir
{
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v2 = [@"/var/mobile" stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    v3 = CPSharedResourcesDirectory();
    v2 = [v3 stringByAppendingPathComponent:@"Library"];
  }

  return v2;
}

+ (id)spidAudioTrainUtterancesDir
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"VoiceProfileCache"];
  path = [v5 path];
  v7 = [SSRUtils createDirectoryIfDoesNotExist:path];

  path2 = [v5 path];

  return path2;
}

+ (void)cleanupOrphanedVoiceIdGradingFiles
{
  v37[1] = *MEMORY[0x277D85DE8];
  ssrAudioLogsDir = [self ssrAudioLogsDir];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:ssrAudioLogsDir];
  v37[0] = *MEMORY[0x277CBE8E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v29 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v29];
  v7 = v29;

  if (v7)
  {
    domain = [v7 domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      code = [v7 code];

      if (code == 260)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "+[SSRUtils cleanupOrphanedVoiceIdGradingFiles]";
      v33 = 2114;
      v34 = ssrAudioLogsDir;
      v35 = 2114;
      v36 = v7;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: reading contents of gradingDir: %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v23 = defaultManager;
    v24 = ssrAudioLogsDir;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          absoluteString = [v16 absoluteString];
          lastPathComponent = [absoluteString lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          v20 = [dictionary objectForKeyedSubscript:stringByDeletingPathExtension];

          if (v20)
          {
            [dictionary removeObjectForKey:stringByDeletingPathExtension];
          }

          else
          {
            [dictionary setObject:v16 forKeyedSubscript:stringByDeletingPathExtension];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    [dictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4846];
    defaultManager = v23;
    ssrAudioLogsDir = v24;
    v6 = v22;
  }

LABEL_19:
}

void __46__SSRUtils_cleanupOrphanedVoiceIdGradingFiles__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[SSRUtils cleanupOrphanedVoiceIdGradingFiles]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_INFO, "%s Deleting orphaned grading file %{public}@", &v7, 0x16u);
  }

  v5 = [v3 path];
  v6 = [SSRUtils removeItemAtPath:v5];
}

+ (BOOL)ssrAudioLogsCountWithinPrivacyLimit
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[SSRUtils ssrAudioLogsDir];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v4 = [defaultManager contentsOfDirectoryAtPath:v2 error:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'"];
    v7 = [v4 filteredArrayUsingPredicate:v6];

    v8 = [v7 count];
    v9 = v8 < 0x65;
    if (v8 >= 0x65)
    {
      v10 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v7 count];
        *buf = 136315650;
        v16 = "+[SSRUtils ssrAudioLogsCountWithinPrivacyLimit]";
        v17 = 2048;
        v18 = v12;
        v19 = 1024;
        v20 = 100;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Exceeded privacy limit for grading utterances : %ld (%d)", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)ssrAudioLogsDir
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Logs/CrashReporter/ssr"];

  return v3;
}

+ (id)createDirectoryIfDoesNotExist:(id)exist
{
  v23 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = defaultManager;
  v18 = 0;
  if (existCopy)
  {
    v6 = [defaultManager fileExistsAtPath:existCopy isDirectory:&v18];
    v7 = MEMORY[0x277D015C8];
    if (v6)
    {
      if (v18)
      {
        v8 = 0;
        goto LABEL_18;
      }

      v10 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
        v21 = 2112;
        v22 = existCopy;
        _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Directory with same name exists, this will be removed: %@", buf, 0x16u);
      }

      [v5 removeItemAtPath:existCopy error:0];
    }

    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
      v21 = 2112;
      v22 = existCopy;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Creating Directory : %@", buf, 0x16u);
    }

    v17 = 0;
    [v5 createDirectoryAtPath:existCopy withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;
    if (v8)
    {
      v12 = *v7;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v20 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
        v21 = 2112;
        v22 = localizedDescription;
        _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Creating Directory failed : %@", buf, 0x16u);
      }

      v15 = v8;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "+[SSRUtils createDirectoryIfDoesNotExist:]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s path is nil - Bailing out", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:764 userInfo:&unk_283933630];
  }

LABEL_18:

  return v8;
}

+ (id)spIdVoiceProfileImportRootDir
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLsForDirectory:9 inDomains:1];
  lastObject = [v3 lastObject];

  path = [lastObject path];
  v6 = [path stringByAppendingPathComponent:@"spid-imported"];

  return v6;
}

+ (id)satConfigFileNameForCSSpIdType:(unint64_t)type forModelType:(unint64_t)modelType forAssetType:(unint64_t)assetType
{
  v16 = *MEMORY[0x277D85DE8];
  if (CSIsCommunalDevice())
  {
    if (type - 1 < 5)
    {
      v7 = off_278578890[type - 1];
      goto LABEL_17;
    }

    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v12 = 136315394;
    v13 = "+[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:]";
    v14 = 2048;
    typeCopy2 = type;
    v9 = "%s ERR: Unknown CSSpIdType: %lu";
    goto LABEL_21;
  }

  if (type > 3)
  {
    if (type != 4 && type != 5)
    {
      goto LABEL_15;
    }
  }

  else if (type != 1 && type != 3)
  {
LABEL_15:
    v8 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    v12 = 136315394;
    v13 = "+[SSRUtils satConfigFileNameForCSSpIdType:forModelType:forAssetType:]";
    v14 = 2048;
    typeCopy2 = type;
    v9 = "%s Unknown CSSpIdType: %lu";
LABEL_21:
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0x16u);
    goto LABEL_16;
  }

  v10 = @"config.txt";
  if (modelType == 1)
  {
    v10 = @"config_sr_sat.txt";
  }

  v7 = v10;
LABEL_17:

  return v7;
}

+ (id)psrConfigFileNameForCSSpIdType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  if (type > 3)
  {
    if (type == 4)
    {
LABEL_8:
      v4 = CSIsCommunalDevice();
      v5 = @"config_sr_sat.txt";
      v6 = @"config_tdti_spid.txt";
      goto LABEL_9;
    }

    if (type != 5)
    {
LABEL_15:
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "+[SSRUtils psrConfigFileNameForCSSpIdType:]";
        v12 = 2048;
        typeCopy = type;
        _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unknown CSSpIdType: %lu", &v10, 0x16u);
      }

      v7 = 0;
      goto LABEL_12;
    }
  }

  else if (type != 1)
  {
    if (type != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v4 = CSIsCommunalDevice();
  v5 = @"config_sr_sat.txt";
  v6 = @"config_td_spid.txt";
LABEL_9:
  if (v4)
  {
    v5 = v6;
  }

  v7 = v5;
LABEL_12:

  return v7;
}

+ (id)satConfigFileNameForCSSpIdType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  if (type == 5)
  {
    v6 = CSIsCommunalDevice();
    v5 = @"config_sr_sat.txt";
    if (v6)
    {
      v5 = @"config_td_spid.txt";
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
    v4 = CSIsCommunalDevice();
    v5 = @"config.txt";
    if (v4)
    {
      v5 = 0;
    }

LABEL_8:
    v7 = v5;
    goto LABEL_12;
  }

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "+[SSRUtils satConfigFileNameForCSSpIdType:]";
    v12 = 2048;
    typeCopy = type;
    _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: Unknown CSSpIdType: %lu", &v10, 0x16u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (id)stringForVoiceProfileRetrainerType:(unint64_t)type
{
  if (type == 1)
  {
    type = @"SAT";
  }

  else if (type == 2)
  {
    type = @"PSR";
  }

  else
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown VoiceProfileRetrainerType: %lu", type];
  }

  return type;
}

+ (id)stringForSpeakerRecognizerType:(unint64_t)type
{
  if (type == 2)
  {
    type = @"SAT";
  }

  else if (type == 1)
  {
    type = @"PSR";
  }

  else
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown SpeakerRecognizerType: %lu", type];
  }

  return type;
}

+ (unint64_t)spIdTypeForString:(id)string
{
  v11 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy isEqualToString:@"td"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"ti"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"tdti"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"tdtiexplicit"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"tdexplicit"])
  {
    v4 = 5;
  }

  else
  {
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[SSRUtils spIdTypeForString:]";
      v9 = 2112;
      v10 = stringCopy;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Unknown CSSpIdType string: %@", &v7, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

+ (unint64_t)explicitSpIdTypeForSpId:(unint64_t)id
{
  if (id - 3 < 2)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

+ (id)stringForCSSpIdType:(unint64_t)type
{
  if (type - 1 >= 5)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown CSSpIdType: %lu", type];
  }

  else
  {
    type = off_278578868[type - 1];
  }

  return type;
}

+ (id)stringForInvocationStyle:(unint64_t)style
{
  if (style >= 3)
  {
    style = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown InvocationStyle: %lu", style];
  }

  else
  {
    style = off_278578850[style];
  }

  return style;
}

@end