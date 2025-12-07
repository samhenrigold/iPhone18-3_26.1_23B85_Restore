@interface CSFBnnsIrLookUp
+ (id)_generateHashBnnsIrPathForMilFile:(id)file;
+ (id)getBnnsIrPathFromMilFile:(id)file;
+ (id)readBnnsIrFromCacheMapWithMilFile:(id)file;
+ (void)initialize;
+ (void)removeBnnsIrFromCacheMapWithMilFile:(id)file;
+ (void)setCacheMapWithMilFile:(id)file bnnsIr:(id)ir;
@end

@implementation CSFBnnsIrLookUp

+ (id)_generateHashBnnsIrPathForMilFile:(id)file
{
  v3 = [CSFHashUtils sha256HashStringFromInputString:file];
  v4 = [v3 substringWithRange:{0, 10}];

  v5 = +[CSFPreferences sharedPreferences];
  getOnDeviceCompilationCacheDirectoryForBenchmark = [v5 getOnDeviceCompilationCacheDirectoryForBenchmark];

  v7 = [getOnDeviceCompilationCacheDirectoryForBenchmark stringByAppendingPathComponent:v4];
  v8 = [v7 stringByAppendingPathExtension:@"bnnsir"];

  return v8;
}

+ (void)removeBnnsIrFromCacheMapWithMilFile:(id)file
{
  fileCopy = file;
  if (fileCopy)
  {
    v4 = fileCopy;
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    [modelMilBnnsIrCacheMap removeObjectForKey:v4];
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    fileCopy = v4;
  }
}

+ (void)setCacheMapWithMilFile:(id)file bnnsIr:(id)ir
{
  fileCopy = file;
  irCopy = ir;
  if (fileCopy && irCopy)
  {
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    v6 = modelMilBnnsIrCacheMap;
    stringByStandardizingPath = [fileCopy stringByStandardizingPath];
    [v6 setObject:irCopy forKey:stringByStandardizingPath];

    os_unfair_lock_unlock(&milBnnsIrCacheMapLock);
  }
}

+ (id)readBnnsIrFromCacheMapWithMilFile:(id)file
{
  v15 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    v4 = modelMilBnnsIrCacheMap;
    stringByStandardizingPath = [fileCopy stringByStandardizingPath];
    v6 = [v4 objectForKeyedSubscript:stringByStandardizingPath];

    os_unfair_lock_unlock(&milBnnsIrCacheMapLock);
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "+[CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = fileCopy;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s obtained bnnsir : %@ for milFile: %@", &v9, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getBnnsIrPathFromMilFile:(id)file
{
  fileCopy = file;
  if ([fileCopy hasSuffix:@"bnns.mil"])
  {
    v5 = [CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:fileCopy];
    if (!v5)
    {
      v5 = [self _generateHashBnnsIrPathForMilFile:fileCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self && +[CSFBnnsIrLookUp initialize]::onceToken != -1)
  {

    dispatch_once(&+[CSFBnnsIrLookUp initialize]::onceToken, &__block_literal_global_1105);
  }
}

uint64_t __29__CSFBnnsIrLookUp_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = modelMilBnnsIrCacheMap;
  modelMilBnnsIrCacheMap = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end