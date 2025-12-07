@interface UARPDynamicAssetCrashLogEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (BOOL)expandToDirectory:(id)directory forRemoteEndpoint:(id)endpoint;
- (BOOL)findMatchingCMAP;
- (BOOL)getCoreName:(id)name inPayload:(id)payload;
- (BOOL)processCrashAdditionalInfo;
- (BOOL)processCrashInstance;
- (UARPDynamicAssetCrashLogEvent)init;
- (UARPDynamicAssetCrashLogEvent)initWithURL:(id)l;
- (id)description;
- (void)sendSpeedTracer;
@end

@implementation UARPDynamicAssetCrashLogEvent

- (UARPDynamicAssetCrashLogEvent)init
{
  [(UARPDynamicAssetCrashLogEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetCrashLogEvent)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetCrashLogEvent;
  v6 = [(UARPDynamicAssetCrashLogEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  processedCrashInstance = self->_processedCrashInstance;
  if (!processedCrashInstance)
  {
    processedCrashInstance = self->_preProcessedCrashLogs;
  }

  [v3 appendFormat:@"Crash Analytics Event %@\n", processedCrashInstance];

  return v4;
}

- (void)sendSpeedTracer
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D36B68];
  v14 = *MEMORY[0x277D36C40];
  v15[0] = @"AccessoryCrash";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10[4] = self;
  v11 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__UARPDynamicAssetCrashLogEvent_sendSpeedTracer__block_invoke;
  v10[3] = &unk_278EC26F8;
  v5 = [v3 createForSubmission:@"305" metadata:0 options:v4 error:&v11 writing:v10];
  v6 = v11;

  if ((!v5 || v6) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCrashLogEvent sendSpeedTracer];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    filepath = [v5 filepath];
    *buf = 138412290;
    v13 = filepath;
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "Submitted crash to analytics: %@", buf, 0xCu);
  }
}

- (BOOL)expandToDirectory:(id)directory forRemoteEndpoint:(id)endpoint
{
  v26 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  endpointCopy = endpoint;
  appleModelNumber = [endpointCopy appleModelNumber];
  serialNumber = [endpointCopy serialNumber];

  v11 = UARPStringCrashAnalyticsDirectoryFilePath(v10);
  v12 = UARPUniqueFilename(appleModelNumber, serialNumber, v11, @"CRSH", @".json");

  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
  v14 = UARPWriteFile(self->_processedCrashInstanceData, v13);
  if (v14)
  {
    log = self->_log;
    v16 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (v16)
    {
      v17 = log;
      path = [v13 path];
      v22 = 136315394;
      v23 = "[UARPDynamicAssetCrashLogEvent expandToDirectory:forRemoteEndpoint:]";
      v24 = 2112;
      v25 = path;
      _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "%s: Successfully Expanded CRSH to File: %@", &v22, 0x16u);
    }

    if (directoryCopy)
    {
      v19 = UARPStringCrashAnalyticsDirectoryFilePath(v16);
      path2 = [directoryCopy path];
      UARPCopyFile(v19, path2, v12);
    }
  }

  return v14;
}

- (BOOL)decomposeUARP
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if (![(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0]|| ![(UARPDynamicAssetCrashLogEvent *)self processCrashAdditionalInfo])
  {
    return 0;
  }

  v5 = objc_opt_new();
  preProcessedCrashLogs = self->_preProcessedCrashLogs;
  self->_preProcessedCrashLogs = v5;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  payloads = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v24 = [payloads countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v8 = *v26;
    v23 = payloads;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(payloads);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = +[UARPDynamicAssetCrashLogEvent tag];
        payloadTag = [v10 payloadTag];
        v13 = [payloadTag isEqual:v11];

        if (v13)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
          if ([(UARPDynamicAssetCrashLogEvent *)self getCoreName:v15 inPayload:v10])
          {
            v16 = [v15 copy];
            [dictionary setObject:v16 forKeyedSubscript:@"core"];

            [v10 rangePayload];
            v18 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v17, 0];
            if (!v18)
            {
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                [UARPDynamicAssetCrashLogEvent decomposeUARP];
              }

              v21 = 0;
              payloads = v23;
              goto LABEL_20;
            }

            v19 = v18;
            v20 = [v18 copy];
            [(NSMutableDictionary *)self->_preProcessedCrashLogs setObject:v20 forKeyedSubscript:v15];

            payloads = v23;
          }
        }
      }

      v24 = [payloads countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_20:

  return v21;
}

- (BOOL)processCrashInstance
{
  v23 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v3 = MEMORY[0x277CFE068];
    preProcessedCrashLogs = self->_preProcessedCrashLogs;
    testMode = self->_testMode;
    productId = self->_productId;
    lastPathComponent = [(NSURL *)self->_url lastPathComponent];
    v8 = [v3 generateReportWithBinary:preProcessedCrashLogs testMode:testMode productId:productId applicationInfo:&unk_2859CACE8 description:lastPathComponent];

    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_processedCrashInstance, v9);
        processedCrashInstance = self->_processedCrashInstance;
        v20 = 0;
        v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:processedCrashInstance options:1 error:&v20];
        v12 = v20;
        processedCrashInstanceData = self->_processedCrashInstanceData;
        self->_processedCrashInstanceData = v11;

        if (self->_processedCrashInstanceData)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        log = self->_log;
        if (v14)
        {
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v17 = self->_processedCrashInstance;
            *buf = 138412290;
            v22 = v17;
            _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Successfully expanded CRSH Dynamic Asset: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashInstance];
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogEvent processCrashInstance];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent processCrashInstance];
    }

    v15 = 0;
LABEL_25:

    return v15;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCrashLogEvent processCrashInstance];
  }

  return 0;
}

- (BOOL)getCoreName:(id)name inPayload:(id)payload
{
  nameCopy = name;
  tlvs = [payload tlvs];
  v7 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160640 tlvs:tlvs];

  if (v7)
  {
    valueAsString = [v7 valueAsString];
    v9 = valueAsString != 0;
    if (valueAsString)
    {
      [nameCopy setString:valueAsString];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent getCoreName:inPayload:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent getCoreName:inPayload:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)processCrashAdditionalInfo
{
  tlvs = [(UARPSuperBinaryAsset *)self->_asset tlvs];
  v4 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160641 tlvs:tlvs];

  if (v4)
  {
    valueAsString = [v4 valueAsString];
    v6 = valueAsString;
    if (valueAsString)
    {
      v7 = [valueAsString copy];
      appleModelNumber = self->_appleModelNumber;
      self->_appleModelNumber = v7;

      v9 = [UARPSupportedAccessory findByAppleModelNumber:self->_appleModelNumber];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        hardwareID = [v9 hardwareID];
        self->_productId = [hardwareID productID];
      }

      else
      {
        self->_productId = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
        }
      }

      tlvs2 = [(UARPSuperBinaryAsset *)self->_asset tlvs];
      v13 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160643 tlvs:tlvs2];

      if (v13)
      {
        valueAsNumber = [v13 valueAsNumber];
        v15 = valueAsNumber;
        v11 = valueAsNumber != 0;
        if (valueAsNumber)
        {
          if ([valueAsNumber unsignedIntValue])
          {
            self->_testMode = 1;
          }

          else
          {
            self->_testMode = 0;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
        }

        v11 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)findMatchingCMAP
{
  v3 = [[UARPDynamicAssetCmapDatabase alloc] initCmapDatabase:0];
  cmapDatabase = self->_cmapDatabase;
  self->_cmapDatabase = v3;

  v5 = self->_cmapDatabase;
  if (v5)
  {
    v6 = [(UARPDynamicAssetCmapDatabase *)v5 findCmapforAppleModel:self->_appleModelNumber];
    v7 = v6 != 0;
    if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent findMatchingCMAP];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent findMatchingCMAP];
    }

    return 0;
  }

  return v7;
}

+ (id)tag
{
  v2 = uarpAssetTagStructCrashAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

@end