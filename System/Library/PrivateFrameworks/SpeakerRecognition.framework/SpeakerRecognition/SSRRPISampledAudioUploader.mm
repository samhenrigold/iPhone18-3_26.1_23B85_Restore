@interface SSRRPISampledAudioUploader
+ (BOOL)audioFileExist:(id)exist date:(id)date;
+ (id)_convertToMetadataWithRequestId:(id)id audioUUId:(id)uId audioMetadata:(id)metadata;
+ (id)_getAudioFileMetadata:(id)metadata;
+ (void)_uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId metadataDict:(id)dict completion:(id)completion;
+ (void)cleanUpAudioOnAndBeforeDate:(id)date error:(id *)error;
+ (void)purgeOldAudioData;
+ (void)removeAllAudioDataWithError:(id *)error;
+ (void)uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId completion:(id)completion;
+ (void)uploadAudioFileWithRequestId:(id)id audioId:(id)audioId date:(id)date completion:(id)completion;
@end

@implementation SSRRPISampledAudioUploader

+ (id)_convertToMetadataWithRequestId:(id)id audioUUId:(id)uId audioMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = MEMORY[0x277D571E8];
  uIdCopy = uId;
  v9 = objc_alloc_init(v7);
  v10 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AF8]];
  longLongValue = [v10 longLongValue];

  v12 = MEMORY[0x277CCABB0];
  v13 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AF0]];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];

  v15 = @"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE";
  if (v14 && [v14 intValue] == 8000)
  {
    v15 = @"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE";
  }

  [v9 setCodec:v15];
  v16 = [objc_alloc(MEMORY[0x277D5AC70]) initWithNSUUID:uIdCopy];

  [v9 setInteractionId:v16];
  v17 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AD0]];
  [v9 setLanguage:v17];

  [v9 setAudioCreatedTimestampMs:1000 * longLongValue];

  return v9;
}

+ (void)_uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId metadataDict:(id)dict completion:(id)completion
{
  v41[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  idCopy = id;
  audioIdCopy = audioId;
  dictCopy = dict;
  completionCopy = completion;
  if (!dictCopy)
  {
    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot get metadata for requestId: %@", idCopy];
    v26 = MEMORY[0x277CCA9B8];
    v40 = @"reason";
    v41[0] = idCopy;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v18 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v27];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, pathCopy, v18);
      goto LABEL_7;
    }
  }

  idCopy = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:audioIdCopy];
  v18 = [self _convertToMetadataWithRequestId:idCopy audioUUId:idCopy audioMetadata:dictCopy];
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:idCopy];
  v20 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    [v19 UUIDString];
    v22 = v28 = audioIdCopy;
    uUIDString = [idCopy UUIDString];
    *buf = 136315906;
    v33 = "+[SSRRPISampledAudioUploader _uploadAudioFilePath:requestId:audioId:metadataDict:completion:]";
    v34 = 2112;
    v35 = pathCopy;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = uUIDString;
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Uploading audioFilePath: %@ with requestId: %@ <-> audioId: %@", buf, 0x2Au);

    audioIdCopy = v28;
  }

  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552B8] defaultMessageStream];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __93__SSRRPISampledAudioUploader__uploadAudioFilePath_requestId_audioId_metadataDict_completion___block_invoke;
  v29[3] = &unk_278579050;
  v31 = completionCopy;
  v30 = pathCopy;
  [defaultMessageStream enqueueLargeMessageObjectFromPath:v30 assetIdentifier:idCopy requestIdentifier:v19 messageMetadata:v18 completion:v29];

LABEL_7:
}

uint64_t __93__SSRRPISampledAudioUploader__uploadAudioFilePath_requestId_audioId_metadataDict_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32), a3);
  }

  return result;
}

+ (id)_getAudioFileMetadata:(id)metadata
{
  stringByDeletingPathExtension = [metadata stringByDeletingPathExtension];
  v4 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"plist"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)purgeOldAudioData
{
  v13 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];
  v8 = 0;
  [self cleanUpAudioOnAndBeforeDate:v5 error:&v8];
  v6 = v8;
  [SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:v5 completion:&__block_literal_global_5057];
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "+[SSRRPISampledAudioUploader purgeOldAudioData]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Purged audio data prior to %@", buf, 0x16u);
  }
}

void __47__SSRRPISampledAudioUploader_purgeOldAudioData__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "+[SSRRPISampledAudioUploader purgeOldAudioData]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Purged mapping with err: %@", &v4, 0x16u);
  }
}

+ (void)removeAllAudioDataWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  getRPIAssistantAudioSamplingDirectory = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:getRPIAssistantAudioSamplingDirectory error:error];

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[SSRRPISampledAudioUploader removeAllAudioDataWithError:]";
    v10 = 2114;
    v11 = getRPIAssistantAudioSamplingDirectory;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting all items in path: %{public}@", &v8, 0x16u);
  }
}

+ (void)cleanUpAudioOnAndBeforeDate:(id)date error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  getRPIAssistantAudioSamplingDirectory = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  errorCopy = error;
  v9 = [defaultManager contentsOfDirectoryAtPath:getRPIAssistantAudioSamplingDirectory error:error];

  if (v9)
  {
    v22 = getRPIAssistantAudioSamplingDirectory;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
          v17 = [defaultDateFormatter dateFromString:v15];

          mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
          getRPIAssistantAudioSamplingDirectory2 = [mEMORY[0x277D01788]2 getRPIAssistantAudioSamplingDirectory];
          v20 = [getRPIAssistantAudioSamplingDirectory2 stringByAppendingPathComponent:v15];

          if (([v17 compare:dateCopy] + 1) <= 1)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 removeItemAtPath:v20 error:errorCopy];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    getRPIAssistantAudioSamplingDirectory = v22;
  }
}

+ (BOOL)audioFileExist:(id)exist date:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  dateCopy = date;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDateSubDirectory:dateCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager contentsOfDirectoryAtPath:v8 error:0];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v21 = v8;
    v22 = dateCopy;
    v14 = 0;
    v15 = 0;
    v16 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if ([v18 containsString:{existCopy, v21, v22, v23}])
        {
          v15 |= [v18 hasSuffix:@"pcm"];
        }

        if ([v18 containsString:existCopy])
        {
          v14 |= [v18 hasSuffix:@"plist"];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
    v19 = v15 & v14;
    v8 = v21;
    dateCopy = v22;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

+ (void)uploadAudioFileWithRequestId:(id)id audioId:(id)audioId date:(id)date completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  idCopy = id;
  audioIdCopy = audioId;
  dateCopy = date;
  completionCopy = completion;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v15 = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDateSubDirectory:dateCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v53 = v15;
  v17 = [defaultManager contentsOfDirectoryAtPath:v15 error:&v59];
  v18 = v59;

  if (v17)
  {
    selfCopy = self;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v20)
    {
      v47 = v18;
      v48 = completionCopy;
      v49 = audioIdCopy;
      v54 = 0;
      v21 = 0;
      v22 = *v56;
      v51 = idCopy;
      v52 = v19;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v55 + 1) + 8 * i);
          if ([v24 hasSuffix:@"pcm"] && objc_msgSend(v24, "rangeOfString:", idCopy) != 0x7FFFFFFFFFFFFFFFLL)
          {
            stringByDeletingPathExtension = [v24 stringByDeletingPathExtension];
            v26 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"plist"];
            v27 = [v53 stringByAppendingPathComponent:v26];

            v28 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v27];

            v29 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"pcm"];
            v21 = [v53 stringByAppendingPathComponent:v29];

            if (!v28)
            {
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"metadata cannot be loaded with plist: %@", v27];
              v38 = MEMORY[0x277CCA9B8];
              v64 = @"reason";
              v65 = v37;
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
              v33 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:1261 userInfo:v39];

              completionCopy = v48;
              if (v48)
              {
                (*(v48 + 2))(v48, 0, 0, v33);
              }

              v17 = v50;
              idCopy = v51;
              audioIdCopy = v49;
              v32 = v52;
              goto LABEL_27;
            }

            v54 = v21;
            v21 = v28;
            idCopy = v51;
            v19 = v52;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      if (!v54)
      {
        v20 = v21;
        audioIdCopy = v49;
        v18 = v47;
        completionCopy = v48;
        goto LABEL_24;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = [defaultManager2 fileExistsAtPath:v54];

      v17 = v50;
      if (v31)
      {
        audioIdCopy = v49;
        completionCopy = v48;
        [selfCopy _uploadAudioFilePath:v54 requestId:idCopy audioId:v49 metadataDict:v21 completion:v48];
        v32 = v54;
        v33 = v47;
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"file does not exists: %@", v54];
        v44 = MEMORY[0x277CCA9B8];
        v60 = @"reason";
        v61 = v43;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v33 = [v44 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v45];

        completionCopy = v48;
        if (v48)
        {
          (*(v48 + 2))(v48, 0, 0, v33);
        }

        v32 = v54;
        audioIdCopy = v49;
      }
    }

    else
    {

LABEL_24:
      v17 = v50;
      idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"no audio file is found for requestId: %@", idCopy];
      v41 = MEMORY[0x277CCA9B8];
      v62 = @"reason";
      v63 = idCopy;
      v32 = idCopy;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v33 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v42];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, v33);
      }

      v21 = v20;
    }

LABEL_27:

    v18 = v33;
  }

  else if (completionCopy)
  {
    v34 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      localizedDescription = [v18 localizedDescription];
      *buf = 136315394;
      v68 = "+[SSRRPISampledAudioUploader uploadAudioFileWithRequestId:audioId:date:completion:]";
      v69 = 2112;
      v70 = localizedDescription;
      _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Failed with error: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v18);
  }
}

+ (void)uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId completion:(id)completion
{
  completionCopy = completion;
  audioIdCopy = audioId;
  idCopy = id;
  pathCopy = path;
  v14 = [SSRRPISampledAudioUploader _getAudioFileMetadata:pathCopy];
  [self _uploadAudioFilePath:pathCopy requestId:idCopy audioId:audioIdCopy metadataDict:v14 completion:completionCopy];
}

@end