@interface AFSamplingUtilities
+ (BOOL)deleteItemAtFilePath:(id)path error:(id *)error;
+ (BOOL)fileExistsAndNotEmpty:(id)empty samplingComponent:(id)component;
+ (BOOL)isFileNameValid:(id)valid;
+ (BOOL)isFileOlderThanAgeInSeconds:(double)seconds filePath:(id)path samplingComponent:(id)component;
+ (id)createSamplingDirectory;
+ (id)dateFormatter;
+ (id)deleteItemAtFilePath:(id)path;
+ (id)sampledLibraryDirectoryPath;
+ (int64_t)calculateFileNameAgeInDays:(id)days;
+ (void)deleteAllSamplingData;
@end

@implementation AFSamplingUtilities

+ (BOOL)fileExistsAndNotEmpty:(id)empty samplingComponent:(id)component
{
  v28 = *MEMORY[0x1E69E9840];
  emptyCopy = empty;
  componentCopy = component;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:emptyCopy])
  {
    v19 = 0;
    v8 = [defaultManager attributesOfItemAtPath:emptyCopy error:&v19];
    v9 = v19;
    if (v8)
    {
      v10 = [v8 objectForKey:*MEMORY[0x1E696A3B8]];
      unsignedLongLongValue = [v10 unsignedLongLongValue];
      v12 = unsignedLongLongValue != 0;
      if (!unsignedLongLongValue)
      {
        v13 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v21 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
          v22 = 2112;
          v23 = componentCopy;
          v24 = 2112;
          v25 = emptyCopy;
          _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s %@ Sampling: File is empty: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = v15;
        localizedDescription = [v9 localizedDescription];
        *buf = 136315906;
        v21 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
        v22 = 2112;
        v23 = componentCopy;
        v24 = 2112;
        v25 = emptyCopy;
        v26 = 2112;
        v27 = localizedDescription;
        _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to resolve attributes for file: %@, error: %@", buf, 0x2Au);
      }

      v12 = 0;
    }
  }

  else
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[AFSamplingUtilities fileExistsAndNotEmpty:samplingComponent:]";
      v22 = 2112;
      v23 = componentCopy;
      v24 = 2112;
      v25 = emptyCopy;
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s %@ Sampling: No file at path: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)dateFormatter
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = MEMORY[0x1E695DFE8];
  timezone = [self timezone];
  v6 = [v4 timeZoneWithAbbreviation:timezone];
  [v3 setTimeZone:v6];

  sampledSubDirectoryNameFormat = [self sampledSubDirectoryNameFormat];
  [v3 setDateFormat:sampledSubDirectoryNameFormat];

  return v3;
}

+ (int64_t)calculateFileNameAgeInDays:(id)days
{
  daysCopy = days;
  dateFormatter = [objc_opt_class() dateFormatter];
  v5 = [dateFormatter dateFromString:daysCopy];

  if (v5)
  {
    date = [MEMORY[0x1E695DF00] date];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [currentCalendar components:16 fromDate:v5 toDate:date options:0];
    v9 = [v8 day];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isFileNameValid:(id)valid
{
  validCopy = valid;
  v4 = [validCopy length];
  sampledSubDirectoryNameFormat = [objc_opt_class() sampledSubDirectoryNameFormat];
  v6 = [sampledSubDirectoryNameFormat length];

  if (v4 == v6)
  {
    dateFormatter = [objc_opt_class() dateFormatter];
    v8 = [dateFormatter dateFromString:validCopy];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isFileOlderThanAgeInSeconds:(double)seconds filePath:(id)path samplingComponent:(id)component
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  componentCopy = component;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v10 = [defaultManager attributesOfItemAtPath:pathCopy error:&v20];
  v11 = v20;

  if (!v10)
  {
    v16 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    *buf = 136315906;
    v22 = "+[AFSamplingUtilities isFileOlderThanAgeInSeconds:filePath:samplingComponent:]";
    v23 = 2112;
    v24 = componentCopy;
    v25 = 2112;
    v26 = pathCopy;
    v27 = 2112;
    v28 = v11;
    v17 = "%s %@ Sampling: Failed to resolve attributes for file: %@, error: %@";
LABEL_10:
    _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x2Au);
    goto LABEL_7;
  }

  fileCreationDate = [v10 fileCreationDate];
  [fileCreationDate timeIntervalSinceNow];
  v14 = fabs(v13);

  if (v14 <= seconds)
  {
    v16 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v19 = v14 / 60.0;
    *buf = 136315906;
    v22 = "+[AFSamplingUtilities isFileOlderThanAgeInSeconds:filePath:samplingComponent:]";
    v23 = 2112;
    v24 = componentCopy;
    v25 = 2048;
    v26 = rintf(v19);
    v27 = 2112;
    v28 = pathCopy;
    v17 = "%s %@ Sampling: File ineligible for upload as it is only %ld minutes old: %@";
    goto LABEL_10;
  }

  v15 = 1;
LABEL_8:

  return v15;
}

+ (void)deleteAllSamplingData
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    component = [self component];
    v20 = 136315394;
    v21 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v22 = 2112;
    v23 = component;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Deleting all sampling data.", &v20, 0x16u);
  }

  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v6 firstObject];

  sampledCachesSubDirectoryPath = [self sampledCachesSubDirectoryPath];
  v9 = [firstObject stringByAppendingPathComponent:sampledCachesSubDirectoryPath];

  v10 = [self deleteItemAtFilePath:v9 error:0];
  v11 = AFSiriLogContextUtility;
  if (v10)
  {
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v12 = v11;
    component2 = [self component];
    v20 = 136315650;
    v21 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v22 = 2112;
    v23 = component2;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted sampling cache: %@", &v20, 0x20u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    component2 = [self component];
    v20 = 136315650;
    v21 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v22 = 2112;
    v23 = component2;
    v24 = 2112;
    v25 = v9;
    _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete sampling cache: %@", &v20, 0x20u);
LABEL_6:
  }

LABEL_8:
  sampledLibraryDirectoryPath = [self sampledLibraryDirectoryPath];
  v15 = [self deleteItemAtFilePath:sampledLibraryDirectoryPath error:0];

  v16 = AFSiriLogContextUtility;
  if ((v15 & 1) == 0)
  {
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = v16;
    component3 = [self component];
    sampledLibraryDirectoryPath2 = [self sampledLibraryDirectoryPath];
    v20 = 136315650;
    v21 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v22 = 2112;
    v23 = component3;
    v24 = 2112;
    v25 = sampledLibraryDirectoryPath2;
    _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete sampling directory: %@", &v20, 0x20u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    component3 = [self component];
    sampledLibraryDirectoryPath2 = [self sampledLibraryDirectoryPath];
    v20 = 136315650;
    v21 = "+[AFSamplingUtilities deleteAllSamplingData]";
    v22 = 2112;
    v23 = component3;
    v24 = 2112;
    v25 = sampledLibraryDirectoryPath2;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted sampling directory: %@", &v20, 0x20u);
LABEL_11:
  }

LABEL_13:
}

+ (id)deleteItemAtFilePath:(id)path
{
  v5 = 0;
  [self deleteItemAtFilePath:path error:&v5];
  v3 = v5;

  return v3;
}

+ (BOOL)deleteItemAtFilePath:(id)path error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v8 = [defaultManager removeItemAtPath:pathCopy error:&v20];
  v9 = v20;
  v10 = v9;
  if ((v8 & 1) == 0 && !AFIsFileNotFoundError(v9))
  {
    v15 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      component = [self component];
      *buf = 136315906;
      v22 = "+[AFSamplingUtilities deleteItemAtFilePath:error:]";
      v23 = 2112;
      v24 = component;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete file: %@, error: %@", buf, 0x2Au);

      if (error)
      {
        goto LABEL_7;
      }
    }

    else if (error)
    {
LABEL_7:
      v16 = v10;
      v12 = 0;
      *error = v10;
      goto LABEL_10;
    }

    v12 = 0;
    goto LABEL_10;
  }

  v11 = AFSiriLogContextUtility;
  v12 = 1;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    component2 = [self component];
    *buf = 136315650;
    v22 = "+[AFSamplingUtilities deleteItemAtFilePath:error:]";
    v23 = 2112;
    v24 = component2;
    v25 = 2112;
    v26 = pathCopy;
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted file: %@", buf, 0x20u);
  }

LABEL_10:

  return v12;
}

+ (id)createSamplingDirectory
{
  v21 = *MEMORY[0x1E69E9840];
  sampledLibraryDirectoryPath = [self sampledLibraryDirectoryPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v5 = [defaultManager createDirectoryAtPath:sampledLibraryDirectoryPath withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = sampledLibraryDirectoryPath;
  }

  else
  {
    v8 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      component = [self component];
      *buf = 136315906;
      v14 = "+[AFSamplingUtilities createSamplingDirectory]";
      v15 = 2112;
      v16 = component;
      v17 = 2112;
      v18 = sampledLibraryDirectoryPath;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to create sampling directory (%@), error: %@", buf, 0x2Au);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)sampledLibraryDirectoryPath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];

  sampledSubDirectoryPath = [self sampledSubDirectoryPath];
  v6 = [firstObject stringByAppendingPathComponent:sampledSubDirectoryPath];

  return v6;
}

@end