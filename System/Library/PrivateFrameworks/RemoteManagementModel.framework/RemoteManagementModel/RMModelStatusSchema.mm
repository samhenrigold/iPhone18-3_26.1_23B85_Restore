@interface RMModelStatusSchema
+ (id)_processManagedSettingsSchemas;
+ (void)_loadDynamicSchemaFromDictionary:(id)dictionary into:(id)into fileURL:(id)l;
+ (void)_loadDynamicSchemaFromDirectory:(id)directory into:(id)into;
+ (void)_loadDynamicSchemaFromFile:(id)file into:(id)into;
+ (void)loadDynamicSchemaFromDirectory:(id)directory;
+ (void)loadDynamicSchemaFromFiles:(id)files;
- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope;
- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation RMModelStatusSchema

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = RMModelStatusSchema;
  v5 = [(RMModelStatusSchema *)&v17 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 intValue] != 1)
  {
LABEL_11:

    v15 = 0;
    goto LABEL_12;
  }

  objc_storeStrong(&v5->_version, v6);
  v7 = [dictionaryCopy objectForKeyedSubscript:@"status-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  objc_storeStrong(&v5->_statusType, v7);
  v8 = [dictionaryCopy objectForKeyedSubscript:@"managed-setting"];
  v9 = [RMModelStatusSchemaManagedSetting parseJSON:v8];
  managedSetting = v5->_managedSetting;
  v5->_managedSetting = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"array-value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5->_isArrayValue = [v11 BOOLValue], objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"supported-os"), v12 = objc_claimAutoreleasedReturnValue(), +[RMModelSchemaParser loadSupportedOSFromDictionary:](RMModelSchemaParser, "loadSupportedOSFromDictionary:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {

    goto LABEL_10;
  }

  supportedOS = v5->_supportedOS;
  v5->_supportedOS = v13;

LABEL_8:
  v15 = v5;
LABEL_12:

  return v15;
}

- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope
{
  supportedOS = [(RMModelStatusSchema *)self supportedOS];
  LOBYTE(scope) = [RMModelPayloadUtilities isSupportedForPlatform:platform scope:scope supportedOS:supportedOS];

  return scope;
}

- (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type
{
  supportedOS = [(RMModelStatusSchema *)self supportedOS];
  LOBYTE(type) = [RMModelPayloadUtilities isSupportedForPlatform:platform scope:scope enrollmentType:type supportedOS:supportedOS];

  return type;
}

+ (void)loadDynamicSchemaFromDirectory:(id)directory
{
  directoryCopy = directory;
  v9 = objc_opt_new();
  [self _loadDynamicSchemaFromDirectory:directoryCopy into:v9];

  v5 = [v9 copy];
  v6 = _schemas_0;
  _schemas_0 = v5;

  _processManagedSettingsSchemas = [self _processManagedSettingsSchemas];
  v8 = _managedSettingsSchemas_0;
  _managedSettingsSchemas_0 = _processManagedSettingsSchemas;
}

+ (void)loadDynamicSchemaFromFiles:(id)files
{
  v20 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = filesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [self _loadDynamicSchemaFromFile:*(*(&v15 + 1) + 8 * v10++) into:{v5, v15}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  v12 = _schemas_0;
  _schemas_0 = v11;

  _processManagedSettingsSchemas = [self _processManagedSettingsSchemas];
  v14 = _managedSettingsSchemas_0;
  _managedSettingsSchemas_0 = _processManagedSettingsSchemas;
}

+ (void)_loadDynamicSchemaFromDirectory:(id)directory into:(id)into
{
  v26 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  intoCopy = into;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = directoryCopy;
  path = [directoryCopy path];
  v10 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        pathExtension = [v16 pathExtension];
        v18 = [pathExtension isEqualToString:@"json"];

        if (v18)
        {
          v19 = [v8 URLByAppendingPathComponent:v16];
          [self _loadDynamicSchemaFromFile:v19 into:intoCopy];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

+ (void)_loadDynamicSchemaFromFile:(id)file into:(id)into
{
  fileCopy = file;
  intoCopy = into;
  v13 = 0;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:fileCopy options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    v12 = v9;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v12];
    v11 = v12;

    if (v10)
    {
      [self _loadDynamicSchemaFromDictionary:v10 into:intoCopy fileURL:fileCopy];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelStatusSchema _loadDynamicSchemaFromFile:into:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[RMModelStatusSchema _loadDynamicSchemaFromFile:into:];
    }

    v11 = v9;
  }
}

+ (void)_loadDynamicSchemaFromDictionary:(id)dictionary into:(id)into fileURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  lCopy = l;
  dictionaryCopy = dictionary;
  v10 = [[RMModelStatusSchema alloc] initFromDictionary:dictionaryCopy];

  if (v10)
  {
    statusType = [v10 statusType];
    v12 = [intoCopy objectForKeyedSubscript:statusType];

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RMModelStatusSchema _loadDynamicSchemaFromDictionary:v10 into:? fileURL:?];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        statusType2 = [v10 statusType];
        v15 = 138543362;
        v16 = statusType2;
        _os_log_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loaded status item schema: %{public}@", &v15, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [RMModelStatusSchema _loadDynamicSchemaFromDictionary:v10 into:lCopy fileURL:?];
      }

      statusType3 = [v10 statusType];
      [intoCopy setObject:v10 forKeyedSubscript:statusType3];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelStatusSchema _loadDynamicSchemaFromDictionary:lCopy into:? fileURL:?];
  }
}

+ (id)_processManagedSettingsSchemas
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_schemas_0, "count")}];
  v3 = _schemas_0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__RMModelStatusSchema__processManagedSettingsSchemas__block_invoke;
  v6[3] = &unk_279AFE650;
  v4 = v2;
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __53__RMModelStatusSchema__processManagedSettingsSchemas__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v5 managedSetting];

  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:fileURL:.cold.1(void *a1)
{
  v1 = [a1 statusType];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_261DAE000, MEMORY[0x277D86220], v2, "Ignoring duplicate schema for '%{public}@' from JSON data file: %{public}@", v3, v4, v5, v6);
}

+ (void)_loadDynamicSchemaFromDictionary:(void *)a1 into:(uint64_t)a2 fileURL:.cold.2(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusType];
  OUTLINED_FUNCTION_0_0();
  v5 = a2;
  _os_log_debug_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read schema for '%{public}@' from JSON data file: %{public}@", v4, 0x16u);
}

+ (void)_loadDynamicSchemaFromDictionary:(uint64_t)a1 into:fileURL:.cold.3(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not read schema from JSON data file: %{public}@", &v1, 0xCu);
}

@end