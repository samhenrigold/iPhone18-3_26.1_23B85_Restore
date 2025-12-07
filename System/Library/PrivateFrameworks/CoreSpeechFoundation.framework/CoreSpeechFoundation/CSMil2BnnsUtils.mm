@interface CSMil2BnnsUtils
+ (BOOL)_isBnnsIrReadable:(id)readable;
+ (id)compileModelWithMilFile:(id)file bnnsIrCachePath:(id)path compilationFramework:(int64_t)framework;
+ (id)readBnnsIrFromCacheMapWithMilFile:(id)file;
+ (id)readBnnsIrFromModelConfig:(id)config modelType:(int64_t)type;
+ (void)_changePermissionOfBnnsIr:(id)ir;
+ (void)_compileWithExceptionHandlingUsingModelFilePath:(id)path bnnsIrPath:(id)irPath milConfigPath:(id)configPath compilationFramework:(int64_t)framework error:(id *)error;
+ (void)removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:(id)path bnnsIrPath:(id)irPath;
@end

@implementation CSMil2BnnsUtils

+ (void)_changePermissionOfBnnsIr:(id)ir
{
  v15[1] = *MEMORY[0x1E69E9840];
  irCopy = ir;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = *MEMORY[0x1E696A370];
  v15[0] = &unk_1F5916748;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = 0;
  v6 = [defaultManager setAttributes:v5 ofItemAtPath:irCopy error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "+[CSMil2BnnsUtils _changePermissionOfBnnsIr:]";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Error setting file permissions: %@", buf, 0x16u);
    }
  }
}

+ (void)_compileWithExceptionHandlingUsingModelFilePath:(id)path bnnsIrPath:(id)irPath milConfigPath:(id)configPath compilationFramework:(int64_t)framework error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  irPathCopy = irPath;
  configPathCopy = configPath;
  v14 = [[CSOSTransaction alloc] initWithDescription:@"Mil2Bnns compilation"];
  if (framework == 2)
  {
    v15 = [CSFModelComputeBackendUtils compileWithMilFile:pathCopy bnnsIrPath:irPathCopy];
  }

  else if (framework == 1)
  {
    v19 = 0;
    [MEMORY[0x1E699BA40] compileWithModelMilPath:pathCopy bnnsIrOutPath:irPathCopy milConfigPath:configPathCopy errorOut:&v19];
    v15 = v19;
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2251 userInfo:&unk_1F5916568];
  }

  v16 = v15;
  if (v15)
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    *buf = 136315906;
    v21 = "+[CSMil2BnnsUtils _compileWithExceptionHandlingUsingModelFilePath:bnnsIrPath:milConfigPath:compilationFramework:error:]";
    v22 = 2112;
    v23 = pathCopy;
    v24 = 2112;
    v25 = irPathCopy;
    v26 = 2112;
    v27 = v16;
    _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s mil2Bnns compilation error for modelFilePath: %@ to bnnsIrCachePath: %@ with error: %@", buf, 0x2Au);
    if (error)
    {
LABEL_9:
      v18 = v16;
      *error = v16;
    }
  }

LABEL_10:
  if (v14)
  {
  }
}

+ (BOOL)_isBnnsIrReadable:(id)readable
{
  v20 = *MEMORY[0x1E69E9840];
  readableCopy = readable;
  v4 = open([readableCopy UTF8String], 0);
  v5 = v4;
  if (v4 == -1)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v19.st_dev = 136315394;
      *&v19.st_mode = "+[CSMil2BnnsUtils _isBnnsIrReadable:]";
      WORD2(v19.st_ino) = 2080;
      *(&v19.st_ino + 6) = v13;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not read OPEN() BNNSIR: %s", &v19, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v6 = fstat(v4, &v19);
    close(v5);
    v7 = v6 == 0;
    if (v6)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = __error();
        v10 = strerror(*v9);
        v15 = 136315394;
        v16 = "+[CSMil2BnnsUtils _isBnnsIrReadable:]";
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Could not fstat() BNNSIR: %s", &v15, 0x16u);
      }
    }
  }

  return v7;
}

+ (id)readBnnsIrFromCacheMapWithMilFile:(id)file
{
  v3 = [CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:file];

  return v3;
}

+ (id)readBnnsIrFromModelConfig:(id)config modelType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:config modelType:type];
  if ([CSOnDeviceCompilationUtils getBackendTypeFromModelFile:v5]== 1)
  {
    stringByStandardizingPath = [v5 stringByStandardizingPath];
    v7 = [self readBnnsIrFromCacheMapWithMilFile:stringByStandardizingPath];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "+[CSMil2BnnsUtils readBnnsIrFromModelConfig:modelType:]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Only mil2Bnns is supported for prewarm", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (void)removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:(id)path bnnsIrPath:(id)irPath
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  irPathCopy = irPath;
  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  stringByStandardizingPath2 = [irPathCopy stringByStandardizingPath];
  v10 = stringByStandardizingPath2;
  if (stringByStandardizingPath && stringByStandardizingPath2)
  {
    v11 = [self readBnnsIrFromCacheMapWithMilFile:stringByStandardizingPath];
    if ([v11 isEqualToString:v10])
    {
      [CSFBnnsIrLookUp removeBnnsIrFromCacheMapWithMilFile:stringByStandardizingPath];
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "+[CSMil2BnnsUtils removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:bnnsIrPath:]";
        v15 = 2112;
        v16 = pathCopy;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s removing milBnns model file path from cacheMap :%@", &v13, 0x16u);
      }
    }
  }

  MEMORY[0x1E12B97A0](CSModelEngineCacheLookUpHandler);
}

+ (id)compileModelWithMilFile:(id)file bnnsIrCachePath:(id)path compilationFramework:(int64_t)framework
{
  v41 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v36 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
    v37 = 2112;
    v38 = fileCopy;
    v39 = 2112;
    v40 = pathCopy;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Compile MIL: %@ to BNNS IR: %@", buf, 0x20u);
  }

  v27 = [CSOnDeviceCompilationUtils getMilConfigFromMilFilePath:fileCopy];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v32 = 0;
  if ([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v32])
  {
    v12 = 0;
    goto LABEL_6;
  }

  v31 = 0;
  v13 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v31];
  v12 = v31;
  if (v13)
  {
LABEL_6:
    if ([defaultManager fileExistsAtPath:pathCopy])
    {
      v14 = [self _isBnnsIrReadable:pathCopy];
      v15 = CSLogContextFacilityCoreSpeech;
      if (v14)
      {
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v36 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v37 = 2112;
          v38 = pathCopy;
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s bnnsIr already existed, touch file but skipping compilation for: %@", buf, 0x16u);
        }

        v33 = *MEMORY[0x1E696A350];
        date = [MEMORY[0x1E695DF00] date];
        v34 = date;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

        v18 = 0;
        [defaultManager setAttributes:v17 ofItemAtPath:pathCopy error:0];
      }

      else
      {
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v37 = 2112;
          v38 = pathCopy;
          _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s can't open bnnsIr: %@, recompiling to a new bnnsir file", buf, 0x16u);
        }

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v29 = 0;
        [defaultManager2 removeItemAtPath:pathCopy error:&v29];
        v17 = v29;

        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v37 = 2112;
          v38 = v17;
          _os_log_error_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_ERROR, "%s Invalid bnnsIr removal error: %@", buf, 0x16u);
        }

        v28 = 0;
        [self _compileWithExceptionHandlingUsingModelFilePath:fileCopy bnnsIrPath:pathCopy milConfigPath:v27 compilationFramework:framework error:&v28];
        v18 = v28;
      }
    }

    else
    {
      v30 = 0;
      [self _compileWithExceptionHandlingUsingModelFilePath:fileCopy bnnsIrPath:pathCopy milConfigPath:v27 compilationFramework:framework error:&v30];
      v18 = v30;
      if (v18)
      {
LABEL_24:
        v20 = v18;

        goto LABEL_25;
      }
    }

    stringByStandardizingPath = [fileCopy stringByStandardizingPath];
    stringByStandardizingPath2 = [pathCopy stringByStandardizingPath];
    [CSFBnnsIrLookUp setCacheMapWithMilFile:stringByStandardizingPath bnnsIr:stringByStandardizingPath2];

    if (framework == 1)
    {
      MEMORY[0x1E12B97A0](CSModelEngineCacheLookUpHandler);
    }

    goto LABEL_24;
  }

  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Creating model directory not success %@", buf, 0x16u);
  }

  v12 = v12;
  v20 = v12;
LABEL_25:

  return v20;
}

@end