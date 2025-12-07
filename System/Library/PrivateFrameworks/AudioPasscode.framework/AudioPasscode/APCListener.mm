@interface APCListener
+ (id)capabilityData;
- (APCListener)init;
- (APCListener)initWithCodecConfiguration:(id)configuration;
- (APCListener)initWithConfigurationData:(id)data;
- (BOOL)getResultData:(id *)data;
- (void)startListeningWithError:(id *)error;
- (void)stopListening;
@end

@implementation APCListener

+ (id)capabilityData
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"version";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v9[1] = @"aupccapability";
  v10[0] = v2;
  v3 = +[AUPasscodeDecoder supportedDecoders];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:0 error:0];
  v7 = [v5 initWithData:v6];

  return v7;
}

- (APCListener)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v4 = [(APCListener *)self initWithConfigurationData:v3];

  return v4;
}

- (APCListener)initWithConfigurationData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = APCListener;
  v5 = [(APCListener *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
    codecConfig = v5->_codecConfig;
    v5->_codecConfig = v6;

    v8 = v5->_codecConfig;
    if (v8)
    {
      payloadLengthBytes = [(AUPasscodeCodecConfiguration *)v8 payloadLengthBytes];
      if (payloadLengthBytes > 0)
      {
        v10 = APCLogObject(payloadLengthBytes);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          payloadLengthBytes2 = [(AUPasscodeCodecConfiguration *)v5->_codecConfig payloadLengthBytes];
          algorithmName = [(AUPasscodeCodecConfiguration *)v5->_codecConfig algorithmName];
          *buf = 134218242;
          v20 = payloadLengthBytes2;
          v21 = 2112;
          v22 = algorithmName;
          _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_INFO, "Created with configuration data. Payload length = %ld, codec = %@", buf, 0x16u);
        }

        v13 = objc_alloc_init(APCListenerResultData);
        resultData = v5->_resultData;
        v5->_resultData = v13;

        goto LABEL_7;
      }

      v16 = APCLogObject(payloadLengthBytes);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Codec config has a payload size less than 1, that's not valid!", buf, 2u);
      }
    }

    else
    {
      v16 = APCLogObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Failed to unarchive the configuration data object", buf, 2u);
      }
    }

    v15 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v15 = v5;
LABEL_14:

  return v15;
}

- (APCListener)initWithCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = APCListener;
  v6 = [(APCListener *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_codecConfig, configuration);
  codecConfig = v7->_codecConfig;
  if (!codecConfig)
  {
    v13 = APCLogObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      v14 = "Config is nil, invalid";
LABEL_10:
      _os_log_impl(&dword_24158E000, v13, OS_LOG_TYPE_ERROR, v14, v16, 2u);
    }

LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  payloadLengthBytes = [(AUPasscodeCodecConfiguration *)codecConfig payloadLengthBytes];
  if (payloadLengthBytes <= 0)
  {
    v13 = APCLogObject(payloadLengthBytes);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      v14 = "Codec config has a payload size less than 1, that's not valid!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = objc_alloc_init(APCListenerResultData);
  resultData = v7->_resultData;
  v7->_resultData = v10;

LABEL_5:
  v12 = v7;
LABEL_12:

  return v12;
}

- (void)startListeningWithError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(APCListener *)self dispatchQueue];
  v6 = dispatchQueue;
  if (dispatchQueue)
  {
    v7 = dispatchQueue;
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
  }

  v8 = v7;

  v10 = APCLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    resultData = self->_resultData;
    *buf = 134217984;
    v26 = resultData;
    _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_INFO, "result data pointer: %p", buf, 0xCu);
  }

  codecConfig = self->_codecConfig;
  v23 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__APCListener_startListeningWithError___block_invoke;
  v24[3] = &unk_278CE1E40;
  v24[4] = self;
  v13 = [APCListenerEngine listenerWithCodecConfig:codecConfig queue:v8 dataReceivedHandler:v24 resultData:self->_resultData error:&v23];
  v14 = v23;
  listenerEngine = self->_listenerEngine;
  self->_listenerEngine = v13;

  if (v14)
  {
    v17 = APCLogObject(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Could not crate the APCListener engine: %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = self->_listenerEngine;
    v22 = 0;
    [(APCListenerEngine *)v18 startEngineWithError:&v22];
    v19 = v22;
    v14 = v19;
    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = APCLogObject(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_24158E000, v20, OS_LOG_TYPE_ERROR, "Could not start the APCListener engine: %@", buf, 0xCu);
    }
  }

  if (error)
  {
    v21 = v14;
    *error = v14;
  }

LABEL_16:
}

void __39__APCListener_startListeningWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) retrievedDataHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) retrievedDataHandler];
    (v4)[2](v4, 0, v5);
  }
}

- (void)stopListening
{
  [(APCListenerEngine *)self->_listenerEngine stopEngine];
  if (self->_invalidationHandler)
  {
    dispatchQueue = [(APCListener *)self dispatchQueue];
    v4 = dispatchQueue;
    if (dispatchQueue)
    {
      v5 = dispatchQueue;
    }

    else
    {
      v5 = dispatch_get_global_queue(0, 0);
    }

    queue = v5;

    dispatch_async(queue, self->_invalidationHandler);
  }
}

- (BOOL)getResultData:(id *)data
{
  isValid = [(APCListenerResultData *)self->_resultData isValid];
  if (isValid)
  {
    *data = self->_resultData;
  }

  return isValid;
}

@end