@interface ATXScoreNormalizationDriver
+ (void)deleteArchiveFile;
- (ATXScoreNormalizationDriver)init;
- (BOOL)addScoreForModelWithClientModelId:(id)id clientModelVersion:(id)version score:(id)score;
- (BOOL)registerModelWithClientModelId:(id)id clientModelVersion:(id)version normalizationParameters:(id)parameters;
- (id)_normalizeScoreHelper:(id)helper modelKey:(id)key;
- (id)getNormalizationModelWithClientModelId:(id)id clientModelVersion:(id)version;
- (id)getOrMakeScoreNormalizationModelsDictionary;
- (id)getPayloadFromArchiveAtPath:(id)path;
- (id)normalizeScore:(id)score clientModelId:(id)id clientModelVersion:(id)version;
- (void)initStreamBookmark;
- (void)modelScoreHarvesting;
- (void)persistBookmark;
- (void)writeArchive:(id)archive toFilePath:(id)path;
- (void)writeArchiveFromDict:(id)dict;
@end

@implementation ATXScoreNormalizationDriver

- (ATXScoreNormalizationDriver)init
{
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationDriver;
  v2 = [(ATXScoreNormalizationDriver *)&v9 init];
  v3 = v2;
  if (v2)
  {
    getOrMakeScoreNormalizationModelsDictionary = [(ATXScoreNormalizationDriver *)v2 getOrMakeScoreNormalizationModelsDictionary];
    v5 = getOrMakeScoreNormalizationModelsDictionary;
    if (getOrMakeScoreNormalizationModelsDictionary)
    {
      v6 = [getOrMakeScoreNormalizationModelsDictionary mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = v6;
    [(ATXScoreNormalizationDriver *)v3 setScoreNormalizationModelsDict:v6];

    [(ATXScoreNormalizationDriver *)v3 setScoreHarvestingStreamBookmark:0];
  }

  return v3;
}

- (BOOL)registerModelWithClientModelId:(id)id clientModelVersion:(id)version normalizationParameters:(id)parameters
{
  parametersCopy = parameters;
  v9 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:id clientModelVersion:version];
  scoreNormalizationModelsDict = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v11 = [scoreNormalizationModelsDict objectForKey:v9];

  scoreNormalizationModelsDict2 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v13 = scoreNormalizationModelsDict2;
  if (v11)
  {
    v14 = [scoreNormalizationModelsDict2 objectForKeyedSubscript:v9];
    [(ATXScoreNormalizationModel *)v14 setParameters:parametersCopy];
  }

  else
  {
    v14 = [[ATXScoreNormalizationModel alloc] initWithParameters:parametersCopy circularBuffer:0 bufferHead:0 isBufferSorted:1];

    [v13 setValue:v14 forKey:v9];
  }

  return 1;
}

- (BOOL)addScoreForModelWithClientModelId:(id)id clientModelVersion:(id)version score:(id)score
{
  idCopy = id;
  versionCopy = version;
  scoreCopy = score;
  v11 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:idCopy clientModelVersion:versionCopy];
  scoreNormalizationModelsDict = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v13 = [scoreNormalizationModelsDict objectForKey:v11];

  if (v13)
  {
    scoreNormalizationModelsDict2 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v16 = [scoreNormalizationModelsDict2 objectForKeyedSubscript:v11];

    [v16 addScore:scoreCopy];
  }

  else
  {
    v17 = __atxlog_handle_blending(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXScoreNormalizationDriver addScoreForModelWithClientModelId:idCopy clientModelVersion:versionCopy score:v17];
    }
  }

  return v13 != 0;
}

- (id)normalizeScore:(id)score clientModelId:(id)id clientModelVersion:(id)version
{
  v23 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  idCopy = id;
  versionCopy = version;
  v11 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:idCopy clientModelVersion:versionCopy];
  v12 = [(ATXScoreNormalizationDriver *)self _normalizeScoreHelper:scoreCopy modelKey:v11];
  v13 = __atxlog_handle_blending(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = scoreCopy;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = idCopy;
    v21 = 2112;
    v22 = versionCopy;
    _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: score normalized(score : %@, normalized: %@) with model %@ with version %@", &v15, 0x2Au);
  }

  return v12;
}

- (id)_normalizeScoreHelper:(id)helper modelKey:(id)key
{
  helperCopy = helper;
  keyCopy = key;
  scoreNormalizationModelsDict = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v9 = [scoreNormalizationModelsDict objectForKey:keyCopy];

  if (v9)
  {
    scoreNormalizationModelsDict2 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v11 = [scoreNormalizationModelsDict2 objectForKeyedSubscript:keyCopy];

    v12 = [v11 normalizeScore:helperCopy];
  }

  else
  {
    v12 = &unk_1F5A41278;
  }

  return v12;
}

- (id)getNormalizationModelWithClientModelId:(id)id clientModelVersion:(id)version
{
  v5 = [(ATXScoreNormalizationDriver *)self getUniqueModelKeyForClientModelId:id clientModelVersion:version];
  scoreNormalizationModelsDict = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
  v7 = [scoreNormalizationModelsDict objectForKeyedSubscript:v5];

  return v7;
}

- (id)getPayloadFromArchiveAtPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v15 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:2 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = __atxlog_handle_blending(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Error with reading from archived ATXScoreNormalizationArtifacts file with possible error %@", buf, 0xCu);
    }

LABEL_11:
    scoreNormalizationModelsDict = 0;
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  v14 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v14];
  v7 = v14;
  objc_autoreleasePoolPop(v9);
  if (v7)
  {
    v11 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Error with unarchiving ATXScoreNormalizationArtifacts file.", buf, 2u);
    }

    goto LABEL_11;
  }

  scoreNormalizationModelsDict = [v8 scoreNormalizationModelsDict];
LABEL_12:

  return scoreNormalizationModelsDict;
}

- (id)getOrMakeScoreNormalizationModelsDictionary
{
  v3 = +[ATXScoreNormalizationDriver defaultArchivePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [(ATXScoreNormalizationDriver *)self getPayloadFromArchiveAtPath:v3];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [(ATXScoreNormalizationDriver *)self writeArchiveFromDict:v6];
  }

  return v6;
}

- (void)writeArchiveFromDict:(id)dict
{
  dictCopy = dict;
  v6 = [[ATXScoreNormalizationArtifactsArchive alloc] initWithScoreNormalizationModelsDictionary:dictCopy];

  v5 = +[ATXScoreNormalizationDriver defaultArchivePath];
  [(ATXScoreNormalizationDriver *)self writeArchive:v6 toFilePath:v5];
}

- (void)writeArchive:(id)archive toFilePath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  pathCopy = path;
  v7 = pathCopy;
  if (archiveCopy && pathCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v19 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v19];
    v10 = v19;
    objc_autoreleasePoolPop(v8);
    if (v10)
    {
LABEL_17:

      goto LABEL_18;
    }

    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v18];
    v10 = v18;

    if (v10)
    {
      v14 = __atxlog_handle_blending(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v10;
        v15 = "ATXScoreNormalizationDriver: Archiving fails with error %@";
LABEL_12:
        _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else
    {
      v17 = 0;
      [v9 writeToFile:v7 options:1 error:&v17];
      v10 = v17;
      v14 = __atxlog_handle_blending(v10);
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        if (v16)
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Successfully persisted dictionary: %@", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_16;
      }

      if (v16)
      {
        *buf = 138412290;
        v21 = v10;
        v15 = "ATXScoreNormalizationDriver: Persisting dictionary fails with error %@";
        goto LABEL_12;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = __atxlog_handle_blending(pathCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Empty archive or filePath when trying to persist ATXScoreNormalizationArtifactsArchive.", buf, 2u);
  }

LABEL_18:
}

+ (void)deleteArchiveFile
{
  v15 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[ATXScoreNormalizationDriver defaultArchivePath];
  if ([defaultManager fileExistsAtPath:v3])
  {
    v10 = 0;
    [defaultManager removeItemAtPath:v3 error:&v10];
    v4 = v10;
    v5 = __atxlog_handle_blending(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 138412546;
        v12 = v3;
        v13 = 2112;
        v14 = v4;
        v7 = "ATXScoreNormalizationDriver: Error in deleting file %@: %@";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else if (v6)
    {
      *buf = 138412290;
      v12 = v3;
      v7 = "ATXScoreNormalizationDriver: File deleted: %@";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }
}

- (void)initStreamBookmark
{
  v7 = [MEMORY[0x1E698B010] scoreNormalizationModelFileWithFilename:@"clientModelStreamBookmark"];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7];
  v4 = [MEMORY[0x1E698AFE0] bookmarkFromURLPath:v3 maxFileSize:1000000 versionNumber:&unk_1F5A41290];
  [(ATXScoreNormalizationDriver *)self setScoreHarvestingStreamBookmark:v4];

  scoreHarvestingStreamBookmark = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];

  if (!scoreHarvestingStreamBookmark)
  {
    v6 = [objc_alloc(MEMORY[0x1E698AFE0]) initWithURLPath:v3 versionNumber:&unk_1F5A41290 bookmark:0 metadata:0];
    [(ATXScoreNormalizationDriver *)self setScoreHarvestingStreamBookmark:v6];
  }
}

- (void)modelScoreHarvesting
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending([(ATXScoreNormalizationDriver *)self initStreamBookmark]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: Model score harvesting, starting...", &buf, 2u);
  }

  v5 = __atxlog_handle_blending(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    scoreHarvestingStreamBookmark = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
    bookmark = [scoreHarvestingStreamBookmark bookmark];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = bookmark;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: scoreHarvestingStreamBookmark %@", &buf, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [v8 publisherFromStartTime:0.0];

  v10 = [[ATXScoreNormalizationParameters alloc] initWithBufferSize:&unk_1F5A412A8];
  v11 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x2020000000;
  v51 = 0;
  objc_initWeak(&location, self);
  scoreHarvestingStreamBookmark2 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
  bookmark2 = [scoreHarvestingStreamBookmark2 bookmark];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke;
  v39[3] = &unk_1E86A4BF0;
  objc_copyWeak(&v42, &location);
  p_buf = &buf;
  v14 = v11;
  v40 = v14;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_68;
  v36[3] = &unk_1E86A4C18;
  v36[4] = self;
  v15 = v10;
  v37 = v15;
  v38 = &buf;
  v16 = [v9 sinkWithBookmark:bookmark2 completion:v39 receiveInput:v36];

  v17 = [MEMORY[0x1E69C5D10] waitForSemaphore:v14 timeoutSeconds:2.0];
  if (v17 == 1)
  {
    scoreNormalizationModelsDict3 = __atxlog_handle_blending(v17);
    if (os_log_type_enabled(scoreNormalizationModelsDict3, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *v45 = 138412290;
      v46 = v20;
      _os_log_impl(&dword_1DEFC4000, scoreNormalizationModelsDict3, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: %@ - event processing timeout", v45, 0xCu);
    }
  }

  else
  {
    v21 = __atxlog_handle_blending(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *(*(&buf + 1) + 24);
      *v45 = 138412546;
      v46 = v23;
      v47 = 2048;
      v48 = v24;
      _os_log_impl(&dword_1DEFC4000, v21, OS_LOG_TYPE_DEFAULT, "ATXScoreNormalizationDriver: %@ - processed %ld events", v45, 0x16u);
    }

    if (*(*(&buf + 1) + 24) >= 1)
    {
      [(ATXScoreNormalizationDriver *)self persistBookmark];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    scoreNormalizationModelsDict = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    v26 = [scoreNormalizationModelsDict countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v26)
    {
      v27 = *v33;
      do
      {
        v28 = 0;
        do
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(scoreNormalizationModelsDict);
          }

          v29 = *(*(&v32 + 1) + 8 * v28);
          scoreNormalizationModelsDict2 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
          v31 = [scoreNormalizationModelsDict2 objectForKeyedSubscript:v29];

          [v31 getStateReadyForNormalization];
          ++v28;
        }

        while (v26 != v28);
        v26 = [scoreNormalizationModelsDict countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }

    scoreNormalizationModelsDict3 = [(ATXScoreNormalizationDriver *)self scoreNormalizationModelsDict];
    [(ATXScoreNormalizationDriver *)self writeArchiveFromDict:scoreNormalizationModelsDict3];
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 24) >= 1)
    {
      v9 = __atxlog_handle_metrics(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "%@ - obtained new bookmark", &v20, 0xCu);
      }

      v12 = objc_alloc(MEMORY[0x1E698AFE0]);
      v13 = [v8[2] urlPath];
      v14 = [v12 initWithURLPath:v13 versionNumber:&unk_1F5A41290 bookmark:v6 metadata:0];
      v15 = v8[2];
      v8[2] = v14;
    }

    v16 = v5;
    v17 = [v16 state];
    v18 = __atxlog_handle_blending(v17);
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_cold_1(v16, v19);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DEFC4000, v19, OS_LOG_TYPE_INFO, "ATXScoreNormalizationDriver: Model score harvesting, stream sink complete.", &v20, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_68(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [a2 eventBody];
  v4 = [v3 suggestions];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = a1[4];
        v10 = [v8 clientModelSpecification];
        v11 = [v10 clientModelId];
        v12 = [v8 clientModelSpecification];
        v13 = [v12 clientModelVersion];
        [v9 registerModelWithClientModelId:v11 clientModelVersion:v13 normalizationParameters:a1[5]];

        v14 = a1[4];
        v15 = [v8 clientModelSpecification];
        v16 = [v15 clientModelId];
        v17 = [v8 clientModelSpecification];
        v18 = [v17 clientModelVersion];
        v19 = MEMORY[0x1E696AD98];
        v20 = [v8 scoreSpecification];
        [v20 rawScore];
        v21 = [v19 numberWithDouble:?];
        [v14 addScoreForModelWithClientModelId:v16 clientModelVersion:v18 score:v21];

        ++*(*(a1[6] + 8) + 24);
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)persistBookmark
{
  v18 = *MEMORY[0x1E69E9840];
  scoreHarvestingStreamBookmark = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
  v11 = 0;
  [scoreHarvestingStreamBookmark saveBookmarkWithError:&v11];
  v4 = v11;

  v6 = __atxlog_handle_blending(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    scoreHarvestingStreamBookmark2 = [(ATXScoreNormalizationDriver *)self scoreHarvestingStreamBookmark];
    urlPath = [scoreHarvestingStreamBookmark2 urlPath];
    *buf = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = urlPath;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1DEFC4000, v6, OS_LOG_TYPE_DEFAULT, "%@ - persisted score normalization bookmark to path %@ with error: %@", buf, 0x20u);
  }
}

- (void)addScoreForModelWithClientModelId:(uint64_t)a1 clientModelVersion:(uint64_t)a2 score:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "ATXScoreNormalizationDriver: addScoreForModelWithClientModelId called with model ID %@ and version %@ that does not map to a registered model key", &v3, 0x16u);
}

void __51__ATXScoreNormalizationDriver_modelScoreHarvesting__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = [v3 description];
  v5 = 136315138;
  v6 = [v4 UTF8String];
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXScoreNormalizationDriver: Model score harvesting, Error: %s", &v5, 0xCu);
}

@end