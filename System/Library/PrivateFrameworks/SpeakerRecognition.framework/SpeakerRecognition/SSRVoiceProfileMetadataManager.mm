@interface SSRVoiceProfileMetadataManager
+ (BOOL)isUtteranceImplicitlyTrained:(id)trained;
+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)dict;
+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path;
+ (id)getUtteranceEnrollmentType:(id)type;
+ (id)getUtterancePhIdFromMetaDict:(id)dict;
+ (id)loadMetadataJsonObjectFromMetadataFile:(id)file;
+ (id)readVoiceTriggerRePromptMetadata:(id)metadata;
+ (id)recordedTimeStampFromFileName:(id)name;
+ (id)recordedTimeStampOfFile:(id)file;
+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path;
+ (void)saveUtteranceMetadataForUtterance:(id)utterance enrollmentType:(id)type isHandheldEnrollment:(BOOL)enrollment triggerSource:(id)source audioInput:(id)input otherBiometricResult:(unint64_t)result containsPayload:(BOOL)payload;
+ (void)saveVoiceTriggeRePromptMetadata:(id)metadata;
@end

@implementation SSRVoiceProfileMetadataManager

+ (id)loadMetadataJsonObjectFromMetadataFile:(id)file
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy];
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "+[SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:]";
        v14 = 2114;
        v15 = fileCopy;
        v16 = 2114;
        v17 = v6;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Json-Err reading metaVersionFile: %{public}@: err: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "+[SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:]";
      v14 = 2114;
      v15 = fileCopy;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)recordedTimeStampFromFileName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    lastPathComponent = [nameCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v7 setLocale:v8];

    [v7 setDateFormat:@"yyyyMMdd-HHmmss"];
    v9 = [v7 dateFromString:stringByDeletingPathExtension];
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "+[SSRVoiceProfileMetadataManager recordedTimeStampFromFileName:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: filePath is nil!", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)recordedTimeStampOfFile:(id)file
{
  v20 = *MEMORY[0x277D85DE8];
  path = [file path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"json"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(stringByDeletingPathExtension) = [defaultManager fileExistsAtPath:v6];

  if (stringByDeletingPathExtension)
  {
    v8 = [self loadMetadataJsonObjectFromMetadataFile:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"grainedDate"];
      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CCA968]);
        v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v11 setLocale:v12];

        [v11 setDateFormat:@"yyyyMMdd"];
        v13 = [v11 dateFromString:v10];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "+[SSRVoiceProfileMetadataManager recordedTimeStampOfFile:]";
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@ is not present", &v16, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)getUtteranceEnrollmentType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    uRLByDeletingPathExtension = [typeCopy URLByDeletingPathExtension];
    v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

    path = [v6 path];
    v8 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:path];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"trainingType"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        goto LABEL_14;
      }

      v13 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315650;
        v17 = "+[SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:]";
        v18 = 2114;
        v19 = v4;
        v20 = 2114;
        v21 = v8;
        _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: metaDict from file %{public}@ isnt a dictionary - %{public}@", &v16, 0x20u);
      }

      mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
      [mEMORY[0x277D01708] submitVoiceIdIssueReport:*MEMORY[0x277D01A88]];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v16 = 136315138;
    v17 = "+[SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:]";
    _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: uttMetaURL is nil - Bailing out", &v16, 0xCu);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

+ (BOOL)isUtteranceImplicitlyTrained:(id)trained
{
  v13 = *MEMORY[0x277D85DE8];
  trainedCopy = trained;
  v5 = trainedCopy;
  if (trainedCopy)
  {
    path = [trainedCopy path];
    v7 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:path];

    if (v7)
    {
      v8 = [self isUtteranceImplicitlyTrainedFromMetaDict:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "+[SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrained:]";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: uttMetaURL is nil, defaulting to NO", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)getUtterancePhIdFromMetaDict:(id)dict
{
  if (dict)
  {
    v4 = [dict objectForKeyedSubscript:@"phId"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isUtteranceImplicitlyTrainedFromMetaDict:(id)dict
{
  if (!dict)
  {
    return 0;
  }

  v3 = [dict objectForKeyedSubscript:@"trainingType"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"implicit"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_writeMetaDict:(id)dict forUtterancePath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  pathCopy = path;
  if (pathCopy)
  {
    if (dictCopy)
    {
      v14 = 0;
      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictCopy options:1 error:&v14];
      v8 = v14;
      if (v8)
      {
        v9 = *MEMORY[0x277D01970];
        if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
LABEL_13:

          goto LABEL_14;
        }

        v10 = v9;
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v16 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
        v17 = 2114;
        v18 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ::: Error creating json Metadata: %{public}@", buf, 0x16u);
      }

      else
      {
        v10 = [pathCopy stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
        [v7 writeToFile:v10 atomically:0];
      }

      goto LABEL_13;
    }

    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
      v13 = "%s ERR: uttMeta is nil - Bailing out";
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "+[SSRVoiceProfileMetadataManager _writeMetaDict:forUtterancePath:]";
      v13 = "%s ERR: uttPath is nil - Bailing out";
LABEL_10:
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    }
  }

LABEL_14:
}

+ (id)_getBaseMetaDictionaryForUtterancePath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
    v11[0] = deviceProductType;
    v10[1] = @"productVersion";
    deviceProductVersion = [MEMORY[0x277D018F8] deviceProductVersion];
    v11[1] = deviceProductVersion;
    v10[2] = @"buildVersion";
    deviceBuildVersion = [MEMORY[0x277D018F8] deviceBuildVersion];
    v10[3] = @"utteranceWav";
    v11[2] = deviceBuildVersion;
    v11[3] = pathCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "+[SSRVoiceProfileMetadataManager _getBaseMetaDictionaryForUtterancePath:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s ERR: uttPath is nil - Bailing out", buf, 0xCu);
    }

    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

+ (void)saveUtteranceMetadataForUtterance:(id)utterance enrollmentType:(id)type isHandheldEnrollment:(BOOL)enrollment triggerSource:(id)source audioInput:(id)input otherBiometricResult:(unint64_t)result containsPayload:(BOOL)payload
{
  enrollmentCopy = enrollment;
  v30 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  typeCopy = type;
  sourceCopy = source;
  inputCopy = input;
  if (utteranceCopy)
  {
    v19 = MEMORY[0x277CBEB38];
    v20 = [self _getBaseMetaDictionaryForUtterancePath:utteranceCopy];
    v21 = [v19 dictionaryWithDictionary:v20];

    if (typeCopy)
    {
      v22 = typeCopy;
    }

    else
    {
      v22 = @"explicit";
    }

    [v21 setObject:v22 forKeyedSubscript:@"trainingType"];
    if (enrollmentCopy)
    {
      v23 = @"near-field";
    }

    else
    {
      v23 = @"far-field";
    }

    [v21 setObject:v23 forKeyedSubscript:@"handheld"];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:result];
    [v21 setObject:v24 forKeyedSubscript:@"otherSourceProfileMatch"];

    [v21 setObject:sourceCopy forKeyedSubscript:@"triggerSource"];
    [v21 setObject:inputCopy forKeyedSubscript:@"audioInputSource"];
    timeStampWithSaltGrain = [MEMORY[0x277D018F8] timeStampWithSaltGrain];
    [v21 setObject:timeStampWithSaltGrain forKeyedSubscript:@"grainedDate"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:payload];
    [v21 setObject:v26 forKeyedSubscript:@"containsPayload"];

    [self _writeMetaDict:v21 forUtterancePath:utteranceCopy];
  }

  else
  {
    v27 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v28 = 136315138;
      v29 = "+[SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:enrollmentType:isHandheldEnrollment:triggerSource:audioInput:otherBiometricResult:containsPayload:]";
      _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s ERR: uttPath is nil -  Bailing out", &v28, 0xCu);
    }
  }
}

+ (id)readVoiceTriggerRePromptMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:metadataCopy];
  if (v4)
  {
    v13 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v13];
    v6 = v13;
    if (v6)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v15 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
        v16 = 2114;
        v17 = metadataCopy;
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Json-Err reading metaVersionDict: %{public}@: err: %{public}@", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:@"RePrompt_Date"];
      if (v8)
      {
        v10 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v15 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
          v16 = 2112;
          v17 = v8;
          _os_log_debug_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEBUG, "%s RePrompted on %@", buf, 0x16u);
        }

        v11 = v8;
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[SSRVoiceProfileMetadataManager readVoiceTriggerRePromptMetadata:]";
      v16 = 2114;
      v17 = metadataCopy;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Unexpected. metaVersionFileData is empty while the file exists at: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)saveVoiceTriggeRePromptMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v4 setLocale:v5];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"TRUE" forKeyedSubscript:@"RePrompt_Finished"];
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [v4 stringFromDate:v7];
    [dictionary setObject:v8 forKeyedSubscript:@"RePrompt_Date"];

    v15 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:1 error:&v15];
    v10 = v15;
    if (v10)
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        localizedDescription = [v10 localizedDescription];
        *buf = 136315394;
        v17 = "+[SSRVoiceProfileMetadataManager saveVoiceTriggeRePromptMetadata:]";
        v18 = 2114;
        v19 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ::: Error creating json RePrompt Metadata: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v9 writeToFile:metadataCopy atomically:0];
    }
  }

  else
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[SSRVoiceProfileMetadataManager saveVoiceTriggeRePromptMetadata:]";
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: path is nil - Bailing out", buf, 0xCu);
    }
  }
}

@end