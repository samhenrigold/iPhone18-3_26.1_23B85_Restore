@interface APCPlayer
+ (id)carrierAssetIdentifiers;
+ (id)fileNameForCarrierAsset:(unint64_t)asset;
+ (id)urlForCarrierAsset:(unint64_t)asset;
+ (unint64_t)assetIDFromIdentifier:(id)identifier;
- (APCPlayer)init;
- (APCPlayer)initWithCodecConfiguration:(id)configuration;
- (APCPlayer)initWithListenerCapabilityData:(id)data payloadLength:(unint64_t)length;
- (APCPlayerEmbedInfo)embeddingInfo;
- (BOOL)startSendAtTime:(unint64_t)time withBeginning:(id)beginning;
- (float)preparePayload:(id)payload usingCarrierAsset:(unint64_t)asset error:(id *)error;
- (float)preparePayload:(id)payload usingCarrierAtURL:(id)l error:(id *)error;
- (id)createCompatibleConfigForCapabilites:(id)capabilites;
- (void)setCallbackTimingMSec:(unint64_t)sec;
- (void)setDispatchQueue:(id)queue;
- (void)stopSend:(BOOL)send withCompletion:(id)completion;
- (void)stopSendAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion;
- (void)stopSendWithFadeOut:(float)out completion:(id)completion;
@end

@implementation APCPlayer

- (APCPlayer)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v4 = [(APCPlayer *)self initWithListenerCapabilityData:v3 payloadLength:0];

  return v4;
}

- (id)createCompatibleConfigForCapabilites:(id)capabilites
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  capabilitesCopy = capabilites;
  v4 = [capabilitesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(capabilitesCopy);
        }

        v7 = [APCCodecFactory createBestConfigForCapability:*(*(&v12 + 1) + 8 * i)];
        if (v7)
        {
          v9 = capabilitesCopy;
          goto LABEL_13;
        }
      }

      v4 = [capabilitesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = APCLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_ERROR, "Can't find a codec capability data", v11, 2u);
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (APCPlayer)initWithListenerCapabilityData:(id)data payloadLength:(unint64_t)length
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = APCPlayer;
  v7 = [(APCPlayer *)&v31 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v7->_isPlaying = 0;
  if (!dataCopy || ![dataCopy length])
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v15 fromData:dataCopy error:0];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v17 objectForKey:@"version"];
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  if (![v18 unsignedIntegerValue])
  {
    v20 = [v17 objectForKey:@"aupccapability"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [(APCPlayer *)v8 createCompatibleConfigForCapabilites:v20];
        codecConfig = v8->_codecConfig;
        v8->_codecConfig = v21;

        v23 = v8->_codecConfig;
        if (v23)
        {
          v24 = APCLogObject([(AUPasscodeCodecConfiguration *)v23 setPayloadLengthBytes:length]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = v8->_codecConfig;
            *buf = 138412290;
            v33 = v25;
            _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_INFO, "Created codec config from capabilities: %@", buf, 0xCu);
          }

          v26 = objc_alloc(MEMORY[0x277CBEA90]);
          v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8->_codecConfig requiringSecureCoding:0 error:0];
          v28 = [v26 initWithData:v27];
          configurationData = v8->_configurationData;
          v8->_configurationData = v28;

          goto LABEL_9;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_9:
  v8->_callbackTimingMSec = 300;

LABEL_10:
  v19 = v8;
LABEL_21:

  return v19;
}

- (APCPlayer)initWithCodecConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = APCPlayer;
  v6 = [(APCPlayer *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPlaying = 0;
    objc_storeStrong(&v6->_codecConfig, configuration);
    if (!v7->_codecConfig)
    {
      v15 = 0;
      goto LABEL_8;
    }

    v9 = APCLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      codecConfig = v7->_codecConfig;
      *buf = 138412290;
      v19 = codecConfig;
      _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_INFO, "Created codec config from configuration: %@", buf, 0xCu);
    }

    v11 = objc_alloc(MEMORY[0x277CBEA90]);
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7->_codecConfig requiringSecureCoding:0 error:0];
    v13 = [v11 initWithData:v12];
    configurationData = v7->_configurationData;
    v7->_configurationData = v13;
  }

  v15 = v7;
LABEL_8:

  return v15;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_dispatchQueue, queue);
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    [(APCPlayerEngine *)playerEngine setDispatchQueue:queueCopy];
  }
}

- (void)setCallbackTimingMSec:(unint64_t)sec
{
  if (!self->_isPlaying)
  {
    self->_callbackTimingMSec = sec;
  }
}

+ (id)urlForCarrierAsset:(unint64_t)asset
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [APCPlayer fileNameForCarrierAsset:asset];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:v3 withExtension:@"wav"];

    v7 = APCLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      absoluteString = [v5 absoluteString];
      v10 = 136315138;
      uTF8String = [absoluteString UTF8String];
      _os_log_impl(&dword_24158E000, v7, OS_LOG_TYPE_INFO, "Carrier Resource path: %s", &v10, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fileNameForCarrierAsset:(unint64_t)asset
{
  if (asset - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_278CE1E88[asset - 1];
  }
}

+ (id)carrierAssetIdentifiers
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"WOC";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v9[0] = v2;
  v8[1] = @"light";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v9[1] = v3;
  v8[2] = @"pingpong";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v9[2] = v4;
  v8[3] = @"ring";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (unint64_t)assetIDFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[APCPlayer carrierAssetIdentifiers];
  v5 = [v4 objectForKey:identifierCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (float)preparePayload:(id)payload usingCarrierAsset:(unint64_t)asset error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v9 = payloadCopy;
  if (!payloadCopy || (v10 = [payloadCopy length], payloadCopy = -[AUPasscodeCodecConfiguration payloadLengthBytes](self->_codecConfig, "payloadLengthBytes"), v10 != payloadCopy))
  {
    v17 = APCLogObject(payloadCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v9)
      {
        v18 = [v9 length];
      }

      else
      {
        v18 = 0;
      }

      payloadLengthBytes = [(AUPasscodeCodecConfiguration *)self->_codecConfig payloadLengthBytes];
      v21 = 134218240;
      v22 = v18;
      v23 = 2048;
      v24 = payloadLengthBytes;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Payload passed to prepare contains %lu bytes, was told we'd send %ld bytes. These must match!", &v21, 0x16u);
    }

    goto LABEL_13;
  }

  v11 = [APCPlayer urlForCarrierAsset:asset];
  v12 = [APCPlayerEngine playerWithAssetURL:v11 codecConfig:self->_codecConfig payload:v9 error:error];
  playerEngine = self->_playerEngine;
  self->_playerEngine = v12;

  if (self->_dispatchQueue)
  {
    [(APCPlayerEngine *)self->_playerEngine setDispatchQueue:?];
  }

  v14 = self->_playerEngine;
  if (!v14)
  {
LABEL_13:
    v16 = -1.0;
    goto LABEL_14;
  }

  [(APCPlayerEngine *)v14 evaluateAsset];
  v16 = v15;
LABEL_14:

  return v16;
}

- (float)preparePayload:(id)payload usingCarrierAtURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  lCopy = l;
  v10 = lCopy;
  if (!payloadCopy || (v11 = [payloadCopy length], lCopy = -[AUPasscodeCodecConfiguration payloadLengthBytes](self->_codecConfig, "payloadLengthBytes"), v11 != lCopy))
  {
    v17 = APCLogObject(lCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (payloadCopy)
      {
        v18 = [payloadCopy length];
      }

      else
      {
        v18 = 0;
      }

      payloadLengthBytes = [(AUPasscodeCodecConfiguration *)self->_codecConfig payloadLengthBytes];
      v21 = 134218240;
      v22 = v18;
      v23 = 2048;
      v24 = payloadLengthBytes;
      _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Payload passed to prepare contains %lu bytes, was told we'd send %ld bytes. These must match!", &v21, 0x16u);
    }

    goto LABEL_11;
  }

  v12 = [APCPlayerEngine playerWithAssetURL:v10 codecConfig:self->_codecConfig payload:payloadCopy error:error];
  playerEngine = self->_playerEngine;
  self->_playerEngine = v12;

  v14 = self->_playerEngine;
  if (!v14)
  {
LABEL_11:
    v16 = -1.0;
    goto LABEL_12;
  }

  [(APCPlayerEngine *)v14 evaluateAsset];
  v16 = v15;
LABEL_12:

  return v16;
}

- (BOOL)startSendAtTime:(unint64_t)time withBeginning:(id)beginning
{
  beginningCopy = beginning;
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    v8 = [(APCPlayerEngine *)playerEngine startEngineAtTime:time withBeginning:beginningCopy callbackTime:self->_callbackTimingMSec];
    self->_isPlaying = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stopSend:(BOOL)send withCompletion:(id)completion
{
  sendCopy = send;
  completionCopy = completion;
  playerEngine = self->_playerEngine;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__APCPlayer_stopSend_withCompletion___block_invoke;
  v9[3] = &unk_278CE1E68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(APCPlayerEngine *)playerEngine stopEngine:sendCopy withCompletion:v9];
}

- (void)stopSendAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion
{
  completionCopy = completion;
  playerEngine = self->_playerEngine;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__APCPlayer_stopSendAfterMinimumLoops_withCompletion___block_invoke;
  v9[3] = &unk_278CE1E68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(APCPlayerEngine *)playerEngine stopEngineAfterMinimumLoops:loops withCompletion:v9];
}

- (void)stopSendWithFadeOut:(float)out completion:(id)completion
{
  completionCopy = completion;
  playerEngine = self->_playerEngine;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__APCPlayer_stopSendWithFadeOut_completion___block_invoke;
  v10[3] = &unk_278CE1E68;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  *&v9 = out;
  [(APCPlayerEngine *)playerEngine stopEngineWithFadeOut:v10 completion:v9];
}

- (APCPlayerEmbedInfo)embeddingInfo
{
  playerEngine = self->_playerEngine;
  if (playerEngine)
  {
    playerEngine = [playerEngine embeddingInfo];
    v2 = vars8;
  }

  return playerEngine;
}

@end