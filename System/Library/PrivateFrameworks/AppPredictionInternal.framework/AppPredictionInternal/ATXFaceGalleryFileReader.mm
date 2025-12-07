@interface ATXFaceGalleryFileReader
+ (id)_loadConfigurationFromPath:(id)path;
+ (id)_pathForSource:(int64_t)source;
- (ATXFaceGalleryConfiguration)configuration;
- (ATXFaceGalleryFileReader)initWithSource:(int64_t)source;
- (BOOL)writeConfiguration:(id)configuration error:(id *)error;
- (void)configuration;
@end

@implementation ATXFaceGalleryFileReader

- (ATXFaceGalleryFileReader)initWithSource:(int64_t)source
{
  v5.receiver = self;
  v5.super_class = ATXFaceGalleryFileReader;
  result = [(ATXFaceGalleryFileReader *)&v5 init];
  if (result)
  {
    result->_source = source;
  }

  return result;
}

- (ATXFaceGalleryConfiguration)configuration
{
  v2 = [ATXFaceGalleryFileReader _pathForSource:self->_source];
  v3 = [ATXFaceGalleryFileReader _loadConfigurationFromPath:v2];
  if (!v3)
  {
    v4 = __atxlog_handle_lock_screen(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryFileReader configuration];
    }
  }

  return v3;
}

- (BOOL)writeConfiguration:(id)configuration error:(id *)error
{
  source = self->_source;
  configurationCopy = configuration;
  v7 = [ATXFaceGalleryFileReader _pathForSource:source];
  v8 = MEMORY[0x277CCAAA0];
  jsonDictionary = [configurationCopy jsonDictionary];

  v10 = [v8 dataWithJSONObject:jsonDictionary options:1 error:error];

  if (!v10)
  {
    v14 = __atxlog_handle_lock_screen(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceGalleryFileReader *)error writeConfiguration:v14 error:v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_8;
  }

  v12 = [v10 writeToFile:v7 options:0 error:error];
  if ((v12 & 1) == 0)
  {
    v14 = __atxlog_handle_lock_screen(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryFileReader writeConfiguration:v14 error:?];
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

+ (id)_loadConfigurationFromPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v15];
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v14 = v5;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v14];
    v8 = v14;

    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v11 = [MEMORY[0x277CEB518] configurationFromJSONDictionary:v7];
        goto LABEL_13;
      }

      v12 = __atxlog_handle_lock_screen(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceGalleryFileReader _loadConfigurationFromPath:];
      }
    }

    else
    {
      v12 = __atxlog_handle_lock_screen(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceGalleryFileReader _loadConfigurationFromPath:];
      }
    }

    v11 = 0;
  }

  else
  {
    v7 = __atxlog_handle_lock_screen(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXFaceGalleryFileReader _loadConfigurationFromPath:];
    }

    v11 = 0;
    v8 = v6;
  }

LABEL_13:

  return v11;
}

+ (id)_pathForSource:(int64_t)source
{
  if (source)
  {
  }

  else
  {
    self = [MEMORY[0x277CEBCB0] faceGalleryDemoConfigurationFilePath];
  }

  return self;
}

- (void)configuration
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: failed to parse configuration from path: %@", v2, v3, v4, v5, v6);
}

- (void)writeConfiguration:(os_log_t)log error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXFaceGalleryFileReader writeConfiguration:error:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: could not write data to file", &v1, 0xCu);
}

- (void)writeConfiguration:(uint64_t)a3 error:(uint64_t)a4 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[ATXFaceGalleryFileReader writeConfiguration:error:]";
  *&v8[12] = 2112;
  *&v8[14] = *a1;
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, a2, a3, "%s: could not serialize json, error: %@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

+ (void)_loadConfigurationFromPath:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: parsed JSON is not a dictionary at path: %@", v2, v3, v4, v5, v6);
}

+ (void)_loadConfigurationFromPath:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, v0, v1, "%s: could not parse JSON from contents of path: %@; error: %@", v2);
}

+ (void)_loadConfigurationFromPath:.cold.3()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, v0, v1, "%s: could not load data from path: %@; error: %@", v2);
}

@end