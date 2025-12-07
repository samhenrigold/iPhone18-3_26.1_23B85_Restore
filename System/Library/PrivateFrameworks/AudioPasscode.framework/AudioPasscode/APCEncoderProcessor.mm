@interface APCEncoderProcessor
- (APCEncoderProcessor)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload outputURL:(id)rL error:(id *)error;
- (BOOL)getEmbeddingInfo:(id *)info;
- (float)evaluateAsset:(id)asset;
@end

@implementation APCEncoderProcessor

- (APCEncoderProcessor)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload outputURL:(id)rL error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  configCopy = config;
  payloadCopy = payload;
  rLCopy = rL;
  v43.receiver = self;
  v43.super_class = APCEncoderProcessor;
  v16 = [(APCEncoderProcessor *)&v43 init];
  if (v16)
  {
    if (!lCopy || !configCopy || !payloadCopy || !rLCopy)
    {
      v32 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53[0] = @"Invalid input arguments";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      *error = [v32 errorWithDomain:@"com.apple.audiopasscode" code:100 userInfo:v33];

LABEL_22:
      v38 = 0;
      goto LABEL_23;
    }

    +[AUPasscodeEncoder registerAU];
    v17 = [AUPasscodeEncoder alloc];
    objc_msgSend_getAUDesc(AUPasscodeEncoder);
    v18 = [(AUPasscodeEncoder *)v17 initWithComponentDescription:buf options:0 error:error];
    encoderAU = v16->_encoderAU;
    v16->_encoderAU = v18;

    if (!v16->_encoderAU)
    {
      v34 = APCLogObject(v20);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v34, OS_LOG_TYPE_ERROR, "Failed to create the encoder AU", buf, 2u);
      }

      goto LABEL_22;
    }

    [configCopy setPayloadLengthBytes:{objc_msgSend(payloadCopy, "length")}];
    inputBusses = [(AUPasscodeEncoder *)v16->_encoderAU inputBusses];
    v22 = [inputBusses objectAtIndexedSubscript:0];
    format = [v22 format];
    [format sampleRate];
    [configCopy setSampleRate:v24];

    [(AUPasscodeEncoder *)v16->_encoderAU setPayload:payloadCopy];
    v25 = APCLogObject([(AUPasscodeEncoder *)v16->_encoderAU setCodecConfig:configCopy]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v49 = *&lCopy;
      v50 = 2112;
      v51 = rLCopy;
      _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_INFO, "Asset URL: '%@'\nOutput File URL: '%@'", buf, 0x16u);
    }

    v26 = [(APCEncoderProcessor *)v16 evaluateAsset:lCopy];
    v28 = v27;
    if (v27 < 0.1)
    {
      v29 = APCLogObject(v26);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v49 = v28;
        _os_log_impl(&dword_24158E000, v29, OS_LOG_TYPE_ERROR, "The success rate of the input file is too low: %f", buf, 0xCu);
      }

      v30 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47 = @"The asset score is too low";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *error = [v30 errorWithDomain:@"com.apple.audiopasscode" code:102 userInfo:v31];

      goto LABEL_22;
    }

    v35 = [[AUAudioUnitOfflineProcessor alloc] initWithAudioUnit:v16->_encoderAU inputFileURL:lCopy outputFileURL:rLCopy ioSampleRate:-1];
    processor = v16->_processor;
    v16->_processor = v35;

    v37 = [(AUPasscodeEncoder *)v16->_encoderAU setAssetLength:[(AUAudioUnitOfflineProcessor *)v16->_processor assetLength]];
    if (!v16->_processor)
    {
      v39 = APCLogObject(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v39, OS_LOG_TYPE_ERROR, "Failed to create the offline processor", buf, 2u);
      }

      v40 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Failed to create the offline encoder processor";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *error = [v40 errorWithDomain:@"com.apple.audiopasscode" code:101 userInfo:v41];

      goto LABEL_22;
    }
  }

  v38 = v16;
LABEL_23:

  return v38;
}

- (float)evaluateAsset:(id)asset
{
  v33 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v30 = 0;
  v5 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:assetCopy error:&v30];
  v6 = v30;
  if (v6)
  {
    v7 = v6;
    v8 = APCLogObject(v6);
    v9 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Failed to open input file URL: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CB83C8]);
    processingFormat = [v5 processingFormat];
    v8 = [v10 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v5, "length")];

    v29 = 0;
    [v5 readIntoBuffer:v8 error:&v29];
    v12 = v29;
    v7 = v12;
    if (v12)
    {
      v13 = APCLogObject(v12);
      v9 = 0.0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&dword_24158E000, v13, OS_LOG_TYPE_ERROR, "Failed to read the input file: %@", buf, 0xCu);
      }
    }

    else
    {
      codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      v13 = [codecConfig copy];

      processingFormat2 = [v5 processingFormat];
      [processingFormat2 sampleRate];
      [v13 setSampleRate:(v16 + 0.5)];

      v28 = 0;
      [APCCodecFactory evaluateCarrierWithConfig:v13 carrier:v8 embeddingResult:&v28];
      v9 = v17;
      v18 = v28;
      if (v18)
      {
        [(AUPasscodeEncoder *)self->_encoderAU setPasscodeEmbedInfo:v18];
        v19 = [MEMORY[0x277CCABB0] numberWithInt:108];
        v20 = [v18 objectForKey:v19];
        unsignedIntegerValue = [v20 unsignedIntegerValue];

        v21 = [MEMORY[0x277CCABB0] numberWithInt:1000];
        v22 = [v18 objectForKey:v21];
        unsignedIntegerValue2 = [v22 unsignedIntegerValue];

        v24 = [[APCPlayerEmbedInfo alloc] initWithPasscodeDurationNSec:((unsignedIntegerValue2 + unsignedIntegerValue) / [v13 sampleRate]* 1000000000.0)];
        passcodeEmbedInfo = self->_passcodeEmbedInfo;
        self->_passcodeEmbedInfo = v24;
      }
    }
  }

  return v9;
}

- (BOOL)getEmbeddingInfo:(id *)info
{
  passcodeEmbedInfo = self->_passcodeEmbedInfo;
  if (passcodeEmbedInfo)
  {
    passcodeEmbedInfo = passcodeEmbedInfo;
    *info = passcodeEmbedInfo;
  }

  return passcodeEmbedInfo != 0;
}

@end