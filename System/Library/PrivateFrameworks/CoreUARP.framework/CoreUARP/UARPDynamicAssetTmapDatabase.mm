@interface UARPDynamicAssetTmapDatabase
- (BOOL)addTmapMapping:(id)mapping;
- (BOOL)cleanUpTmapDatabaseFiles;
- (BOOL)createTmapDatabaseFile;
- (BOOL)decomposeUARP;
- (BOOL)flushToDisk;
- (BOOL)loadPlist;
- (BOOL)tmapDatabaseFileExists;
- (UARPDynamicAssetTmapDatabase)init;
- (UARPDynamicAssetTmapDatabase)initWithCoder:(id)coder;
- (UARPDynamicAssetTmapDatabase)initWithUrl:(id)url;
- (id)description;
- (id)expandMticData:(id)data withEventID:(unsigned int)d appleModelNumber:(id)number serialNumber:(id)serialNumber;
- (id)findTmapDatabaseFileUrl;
- (id)findTmapforAppleModel:(id)model;
- (id)initTmapDatabase:(id)database;
- (id)initTmapDatabaseWithPlist:(id)plist;
- (void)cleanUpTmapDatabaseFiles;
- (void)createTmapDatabaseFile;
- (void)decomposeUARP;
@end

@implementation UARPDynamicAssetTmapDatabase

- (UARPDynamicAssetTmapDatabase)init
{
  [(UARPDynamicAssetTmapDatabase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initTmapDatabase:(id)database
{
  databaseCopy = database;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetTmapDatabase;
  v6 = [(UARPDynamicAssetTmapDatabase *)&v18 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  v8 = *(v6 + 5);
  *(v6 + 5) = v7;

  if ([v6 tmapDatabaseFileExists])
  {
    findTmapDatabaseFileUrl = [v6 findTmapDatabaseFileUrl];
    if (!findTmapDatabaseFileUrl)
    {
      if (os_log_type_enabled(*(v6 + 5), OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase initTmapDatabase:];
      }

      goto LABEL_12;
    }

    v10 = findTmapDatabaseFileUrl;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:findTmapDatabaseFileUrl];
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];

    v6 = v12;
  }

  v13 = *(v6 + 4);
  if (!(databaseCopy | v13))
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(v6 + 4);
    *(v6 + 4) = v14;
  }

  if (databaseCopy)
  {
    objc_storeStrong(v6 + 1, database);
  }

  v6 = v6;
  v16 = v6;
LABEL_13:

  return v16;
}

- (id)initTmapDatabaseWithPlist:(id)plist
{
  plistCopy = plist;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetTmapDatabase;
  v6 = [(UARPDynamicAssetTmapDatabase *)&v18 init];
  v7 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  v8 = *(v6 + 5);
  *(v6 + 5) = v7;

  if ([v6 tmapDatabaseFileExists])
  {
    findTmapDatabaseFileUrl = [v6 findTmapDatabaseFileUrl];
    if (!findTmapDatabaseFileUrl)
    {
      if (os_log_type_enabled(*(v6 + 5), OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase initTmapDatabase:];
      }

      goto LABEL_12;
    }

    v10 = findTmapDatabaseFileUrl;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:findTmapDatabaseFileUrl];
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];

    v6 = v12;
  }

  v13 = *(v6 + 4);
  if (!(plistCopy | v13))
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(v6 + 4);
    *(v6 + 4) = v14;
  }

  if (plistCopy)
  {
    objc_storeStrong(v6 + 2, plist);
  }

  v6 = v6;
  v16 = v6;
LABEL_13:

  return v16;
}

- (UARPDynamicAssetTmapDatabase)initWithUrl:(id)url
{
  urlCopy = url;
  v5 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  log = self->_log;
  self->_log = v5;

  if (urlCopy)
  {
    v7 = urlCopy;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];

    self = v9;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetTmapDatabase initWithUrl:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPDynamicAssetTmapDatabase)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UARPDynamicAssetTmapDatabase;
  v5 = [(UARPDynamicAssetTmapDatabase *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tmap"];

    v10 = [v9 mutableCopy];
    tmapDatabase = v5->_tmapDatabase;
    v5->_tmapDatabase = v10;

    v12 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v12;
  }

  return v5;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  tmapDatabase = self->_tmapDatabase;
  if (tmapDatabase)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = tmapDatabase;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 appendFormat:@"TMAP Mapping %@\n", *(*(&v12 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendFormat:@"No TMAP Database"];
  }

  return v4;
}

- (BOOL)flushToDisk
{
  findTmapDatabaseFileUrl = [(UARPDynamicAssetTmapDatabase *)self findTmapDatabaseFileUrl];
  if (findTmapDatabaseFileUrl)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v5 = [v4 writeToURL:findTmapDatabaseFileUrl atomically:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)decomposeUARP
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if (![(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    return 0;
  }

  v5 = +[UARPDynamicAssetTmapMapping tag];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        payloadTag = [v10 payloadTag];
        v12 = [payloadTag tag];
        v13 = [v5 tag];

        if (v12 == v13)
        {
          [v10 rangePayload];
          v15 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v14, 0];
          if (!v15)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetTmapDatabase decomposeUARP];
            }

            goto LABEL_24;
          }

          v16 = v15;
          v17 = MEMORY[0x277CBEB98];
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [v17 setWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
          v31 = 0;
          v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v21 fromData:v16 error:&v31];
          v23 = v31;
          if (!v22)
          {
            v30 = 0;
            v22 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:&v30];
            v24 = v30;

            v23 = v24;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              [(UARPDynamicAssetTmapDatabase *)v22 decomposeUARP];
            }

LABEL_24:
            v26 = 0;
            goto LABEL_25;
          }

          v25 = [(UARPDynamicAssetTmapDatabase *)self addTmapMapping:v22];

          if (!v25)
          {
            goto LABEL_24;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (self->_tmapDatabase)
  {
    [(UARPDynamicAssetTmapDatabase *)self flushToDisk];
  }

  v26 = 1;
LABEL_25:

  return v26;
}

- (BOOL)loadPlist
{
  v3 = MEMORY[0x277CBEAC0];
  path = [(NSURL *)self->_plistURL path];
  v5 = [v3 dictionaryWithContentsOfFile:path];

  v6 = [(UARPDynamicAssetTmapDatabase *)self addTmapMapping:v5];
  if (v6 && self->_tmapDatabase)
  {
    [(UARPDynamicAssetTmapDatabase *)self flushToDisk];
  }

  return v6;
}

- (BOOL)addTmapMapping:(id)mapping
{
  v16 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Adding TMAP Mapping", &v14, 2u);
  }

  v6 = [mappingCopy objectForKeyedSubscript:@"AppleModelNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [mappingCopy objectForKeyedSubscript:@"Endian"];
    if (!v7)
    {
      v7 = @"BigEndian";
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase addTmapMapping:];
      }

      v12 = 0;
      goto LABEL_28;
    }

    v8 = [mappingCopy objectForKeyedSubscript:@"Events"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetTmapDatabase addTmapMapping:];
      }

      v12 = 0;
      goto LABEL_27;
    }

    v9 = [(UARPDynamicAssetTmapDatabase *)self findTmapforAppleModel:v6];
    if (v9)
    {
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if (([v9 appendTmapEvents:v8 endian:v7] & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetTmapDatabase addTmapMapping:];
          }

          v12 = 0;
          goto LABEL_17;
        }

LABEL_16:
        v12 = 1;
LABEL_17:

LABEL_27:
LABEL_28:

        goto LABEL_29;
      }

      [(NSMutableArray *)self->_tmapDatabase removeObject:v9];
    }

    v10 = [[UARPDynamicAssetTmapMapping alloc] initWithEvents:v8 appleModelNumber:v6 endian:v7];
    if (v10)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "Adding TMAP for Apple Model Number: %@", &v14, 0xCu);
      }

      [(NSMutableArray *)self->_tmapDatabase addObject:v10];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetTmapDatabase addTmapMapping:];
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)findTmapforAppleModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_tmapDatabase;
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

- (id)expandMticData:(id)data withEventID:(unsigned int)d appleModelNumber:(id)number serialNumber:(id)serialNumber
{
  v8 = *&d;
  dataCopy = data;
  serialNumberCopy = serialNumber;
  v12 = [(UARPDynamicAssetTmapDatabase *)self findTmapforAppleModel:number];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 expandMticData:dataCopy withEventID:v8 serialNumber:serialNumberCopy];
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(UARPDynamicAssetTmapDatabase *)v15 expandMticData:v16 withEventID:v17 appleModelNumber:v18 serialNumber:v19, v20, v21, v22];
    }

    v14 = 0;
  }

  return v14;
}

- (id)findTmapDatabaseFileUrl
{
  tmapDatabaseFileExists = [(UARPDynamicAssetTmapDatabase *)self tmapDatabaseFileExists];
  if ((tmapDatabaseFileExists & 1) != 0 || (tmapDatabaseFileExists = [(UARPDynamicAssetTmapDatabase *)self createTmapDatabaseFile], tmapDatabaseFileExists))
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = UARPStringTmapDatabaseFilePath(tmapDatabaseFileExists);
    v6 = [v4 fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createTmapDatabaseFile
{
  tmapDatabaseFileExists = [(UARPDynamicAssetTmapDatabase *)self tmapDatabaseFileExists];
  if (tmapDatabaseFileExists)
  {
    return 1;
  }

  v5 = UARPStringTmapDirectoryPath(tmapDatabaseFileExists);
  UARPUtilsCreateTemporaryFolder(v5);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = UARPStringTmapDatabaseFilePath(defaultManager);
  v4 = [defaultManager createFileAtPath:v7 contents:0 attributes:0];

  if ((v4 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapDatabase *)log createTmapDatabaseFile];
    }
  }

  return v4;
}

- (BOOL)tmapDatabaseFileExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = UARPStringTmapDatabaseFilePath(defaultManager);
  v4 = [defaultManager fileExistsAtPath:v3];

  return v4;
}

- (BOOL)cleanUpTmapDatabaseFiles
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = UARPStringTmapDirectoryPath(defaultManager);
  v9 = 0;
  v5 = [defaultManager removeItemAtPath:v4 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapDatabase *)log cleanUpTmapDatabaseFiles];
    }
  }

  return v5;
}

- (void)decomposeUARP
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "TMAP Data is nil or not a dictionary: TMAP Value: %@, Error: %@", &v3, 0x16u);
}

- (void)createTmapDatabaseFile
{
  v4 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = UARPStringTmapDatabaseFilePath(selfCopy);
  v3[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, selfCopy, OS_LOG_TYPE_ERROR, "%s: Unable to create file at %@", v3, 0x16u);
}

- (void)cleanUpTmapDatabaseFiles
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = UARPStringTmapDirectoryPath(selfCopy);
  v6[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v7 = v5;
  v8 = a2;
  _os_log_error_impl(&dword_247AA7000, selfCopy, OS_LOG_TYPE_ERROR, "%s: Unable to remove files at %@ (%@)", v6, 0x20u);
}

@end