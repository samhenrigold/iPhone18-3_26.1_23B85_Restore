@interface APCDecoderProcessor
- (APCDecoderProcessor)initWithInputURL:(id)l codecConfig:(id)config resultData:(id)data error:(id *)error;
- (BOOL)getResultData:(id *)data;
- (id)run;
@end

@implementation APCDecoderProcessor

- (APCDecoderProcessor)initWithInputURL:(id)l codecConfig:(id)config resultData:(id)data error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  configCopy = config;
  dataCopy = data;
  v44.receiver = self;
  v44.super_class = APCDecoderProcessor;
  v13 = [(APCDecoderProcessor *)&v44 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = 0;
  if (lCopy && configCopy)
  {
    +[AUPasscodeDecoder registerAU];
    v15 = [AUPasscodeDecoder alloc];
    objc_msgSend_getAUDesc(AUPasscodeDecoder);
    v16 = [(AUPasscodeDecoder *)v15 initWithComponentDescription:buf options:0 error:error];
    decoderAU = v13->_decoderAU;
    v13->_decoderAU = v16;

    if (v13->_decoderAU)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      payloadsReceived = v13->_payloadsReceived;
      v13->_payloadsReceived = v19;

      [configCopy setSampleRate:-1];
      [(AUPasscodeDecoder *)v13->_decoderAU setCodecConfig:configCopy];
      objc_initWeak(&location, v13->_payloadsReceived);
      v21 = dispatch_get_global_queue(0, 0);
      [(AUPasscodeDecoder *)v13->_decoderAU setDispatchQueue:v21];

      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __69__APCDecoderProcessor_initWithInputURL_codecConfig_resultData_error___block_invoke;
      v41 = &unk_278CE1E18;
      objc_copyWeak(&v42, &location);
      [(AUPasscodeDecoder *)v13->_decoderAU setDataHandler:&v38];
      [(AUPasscodeDecoder *)v13->_decoderAU setRenderingOffline:1, v38, v39, v40, v41];
      [(AUPasscodeDecoder *)v13->_decoderAU setResultData:dataCopy];
      resultData = [(AUPasscodeDecoder *)v13->_decoderAU resultData];
      LOBYTE(v21) = resultData == 0;

      if ((v21 & 1) == 0)
      {
        resultData2 = [(AUPasscodeDecoder *)v13->_decoderAU resultData];
        [resultData2 reset];
      }

      v25 = APCLogObject(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = lCopy;
        _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_INFO, "Recording URL: %@", buf, 0xCu);
      }

      v26 = -[AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]([AUAudioUnitOfflineProcessor alloc], "initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:", v13->_decoderAU, lCopy, 0, [configCopy sampleRate]);
      processor = v13->_processor;
      v13->_processor = v26;

      if (v13->_processor)
      {
        inputBusses = [(AUPasscodeDecoder *)v13->_decoderAU inputBusses];
        v30 = [inputBusses objectAtIndexedSubscript:0];
        format = [v30 format];
        [format sampleRate];
        [configCopy setSampleRate:v32];

        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
LABEL_11:
        v14 = v13;
        goto LABEL_19;
      }

      v34 = APCLogObject(v28);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v34, OS_LOG_TYPE_ERROR, "Failed to create the offline processor", buf, 2u);
      }

      v35 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46 = @"Failed to create the offline decoder processor";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [v35 errorWithDomain:@"com.apple.audiopasscode" code:101 userInfo:v36];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

    else
    {
      v33 = APCLogObject(v18);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v33, OS_LOG_TYPE_ERROR, "Failed to create the decoder AU", buf, 2u);
      }
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

void __69__APCDecoderProcessor_initWithInputURL_codecConfig_resultData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addObject:v3];
}

- (id)run
{
  [(AUAudioUnitOfflineProcessor *)self->_processor run];
  payloadsReceived = self->_payloadsReceived;

  return payloadsReceived;
}

- (BOOL)getResultData:(id *)data
{
  resultData = [(AUPasscodeDecoder *)self->_decoderAU resultData];
  if (resultData)
  {
    v6 = resultData;
    resultData2 = [(AUPasscodeDecoder *)self->_decoderAU resultData];
    isValid = [resultData2 isValid];

    if (isValid)
    {
      *data = [(AUPasscodeDecoder *)self->_decoderAU resultData];
      LOBYTE(resultData) = 1;
    }

    else
    {
      LOBYTE(resultData) = 0;
    }
  }

  return resultData;
}

@end