@interface UARPDynamicAssetCmapDatabase
- (BOOL)addCmapMapping:(id)mapping;
- (BOOL)cleanUpCmapDatabaseFiles;
- (BOOL)cmapDatabaseFileExists;
- (BOOL)createCmapDatabaseFile;
- (BOOL)decomposeUARP;
- (BOOL)flushToDisk;
- (UARPDynamicAssetCmapDatabase)init;
- (UARPDynamicAssetCmapDatabase)initWithCoder:(id)coder;
- (id)expandCrshData:(id)data withAppleModelNumber:(id)number;
- (id)findCmapDatabaseFileUrl;
- (id)findCmapforAppleModel:(id)model;
- (id)initCmapDatabase:(id)database;
- (void)cleanUpCmapDatabaseFiles;
- (void)createCmapDatabaseFile;
@end

@implementation UARPDynamicAssetCmapDatabase

- (UARPDynamicAssetCmapDatabase)init
{
  [(UARPDynamicAssetCmapDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initCmapDatabase:(id)database
{
  databaseCopy = database;
  v19.receiver = self;
  v19.super_class = UARPDynamicAssetCmapDatabase;
  v6 = [(UARPDynamicAssetCmapDatabase *)&v19 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
  v8 = *(v6 + 4);
  *(v6 + 4) = v7;

  if (![v6 cmapDatabaseFileExists])
  {
LABEL_7:
    if (!*(v6 + 3))
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = *(v6 + 3);
      *(v6 + 3) = v14;
    }

    if (databaseCopy)
    {
      objc_storeStrong(v6 + 1, database);
    }

    v6 = v6;
    v16 = v6;
    goto LABEL_12;
  }

  findCmapDatabaseFileUrl = [v6 findCmapDatabaseFileUrl];
  if (findCmapDatabaseFileUrl)
  {
    v10 = findCmapDatabaseFileUrl;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:findCmapDatabaseFileUrl];
    v18 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v18];
    v13 = v18;

    if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase initCmapDatabase:];
    }

    v6 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(*(v6 + 4), OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCmapDatabase initCmapDatabase:];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (UARPDynamicAssetCmapDatabase)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UARPDynamicAssetCmapDatabase;
  v5 = [(UARPDynamicAssetCmapDatabase *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cmap"];

    v10 = [v9 mutableCopy];
    cmapDatabase = v5->_cmapDatabase;
    v5->_cmapDatabase = v10;

    v12 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v5->_log;
    v5->_log = v12;
  }

  return v5;
}

- (BOOL)flushToDisk
{
  findCmapDatabaseFileUrl = [(UARPDynamicAssetCmapDatabase *)self findCmapDatabaseFileUrl];
  if (findCmapDatabaseFileUrl)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (!v4 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase flushToDisk];
    }

    v6 = [v4 writeToURL:findCmapDatabaseFileUrl atomically:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)decomposeUARP
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if (![(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    return 0;
  }

  v5 = +[UARPDynamicAssetCmapMapping tag];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v26 = v5;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        payloadTag = [v10 payloadTag];
        v12 = [payloadTag tag];
        v13 = [v5 tag];

        if (v12 == v13)
        {
          [v10 rangePayload];
          v15 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v14, 0];
          if (!v15)
          {
            goto LABEL_19;
          }

          v16 = v15;
          v17 = MEMORY[0x277CBEB98];
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v25 = objc_opt_class();
          v20 = [v17 setWithObjects:{v18, v19, v25, objc_opt_class(), 0}];
          v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v20 fromData:v16 error:0];
          if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

            v5 = v26;
LABEL_19:

            v23 = 0;
            goto LABEL_20;
          }

          v22 = [(UARPDynamicAssetCmapDatabase *)self addCmapMapping:v21];

          v5 = v26;
          if (!v22)
          {
            goto LABEL_19;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (self->_cmapDatabase)
  {
    [(UARPDynamicAssetCmapDatabase *)self flushToDisk];
  }

  v23 = 1;
LABEL_20:

  return v23;
}

- (BOOL)addCmapMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = [mappingCopy objectForKeyedSubscript:@"AppleModelNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UARPDynamicAssetCmapDatabase *)self findCmapforAppleModel:v5];
    v7 = [mappingCopy objectForKeyedSubscript:@"sections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v6)
      {
LABEL_6:
        v8 = [[UARPDynamicAssetCmapMapping alloc] initWithEventsArray:v7 appleModelNumber:v5];
        if (v8)
        {
          [(NSMutableArray *)self->_cmapDatabase addObject:v8];
        }

        goto LABEL_9;
      }

      if (MGGetBoolAnswer())
      {
        [(NSMutableArray *)self->_cmapDatabase removeObject:v6];
        goto LABEL_6;
      }

      if ([v6 appendCmapEventsArray:v7])
      {
LABEL_9:
        v9 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCmapDatabase addCmapMapping:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase addCmapMapping:];
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCmapDatabase addCmapMapping:];
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)findCmapforAppleModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cmapDatabase;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualAppleModel:{modelCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)expandCrshData:(id)data withAppleModelNumber:(id)number
{
  dataCopy = data;
  numberCopy = number;
  v8 = [(UARPDynamicAssetCmapDatabase *)self findCmapforAppleModel:numberCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 expandCrshDictionary:dataCopy];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapDatabase expandCrshData:withAppleModelNumber:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)findCmapDatabaseFileUrl
{
  cmapDatabaseFileExists = [(UARPDynamicAssetCmapDatabase *)self cmapDatabaseFileExists];
  if ((cmapDatabaseFileExists & 1) != 0 || (cmapDatabaseFileExists = [(UARPDynamicAssetCmapDatabase *)self createCmapDatabaseFile], cmapDatabaseFileExists))
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = UARPStringCmapDatabaseFilePath(cmapDatabaseFileExists);
    v6 = [v4 fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createCmapDatabaseFile
{
  cmapDatabaseFileExists = [(UARPDynamicAssetCmapDatabase *)self cmapDatabaseFileExists];
  if (cmapDatabaseFileExists)
  {
    return 1;
  }

  v5 = UARPStringCmapDirectoryPath(cmapDatabaseFileExists);
  UARPUtilsCreateTemporaryFolder(v5);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = UARPStringCmapDatabaseFilePath(defaultManager);
  v4 = [defaultManager createFileAtPath:v7 contents:0 attributes:0];

  if ((v4 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetCmapDatabase *)log createCmapDatabaseFile];
    }
  }

  return v4;
}

- (BOOL)cmapDatabaseFileExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = UARPStringCmapDatabaseFilePath(defaultManager);
  v4 = [defaultManager fileExistsAtPath:v3];

  return v4;
}

- (BOOL)cleanUpCmapDatabaseFiles
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = UARPStringCmapDirectoryPath(defaultManager);
  v9 = 0;
  v5 = [defaultManager removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetCmapDatabase *)log cleanUpCmapDatabaseFiles];
    }
  }

  return v5;
}

- (void)initCmapDatabase:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addCmapMapping:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addCmapMapping:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addCmapMapping:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createCmapDatabaseFile
{
  v4 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = UARPStringCmapDatabaseFilePath(selfCopy);
  v3[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, selfCopy, OS_LOG_TYPE_ERROR, "%s: Unable to create file at %@", v3, 0x16u);
}

- (void)cleanUpCmapDatabaseFiles
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = UARPStringCmapDirectoryPath(selfCopy);
  v6[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v7 = v5;
  v8 = a2;
  _os_log_error_impl(&dword_247AA7000, selfCopy, OS_LOG_TYPE_ERROR, "%s: Unable to remove files at %@ (%@)", v6, 0x20u);
}

@end