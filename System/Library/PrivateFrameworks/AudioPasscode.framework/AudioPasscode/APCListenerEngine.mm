@interface APCListenerEngine
+ (id)listenerWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler error:(id *)error;
+ (id)listenerWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler resultData:(id)data error:(id *)error;
- (APCListenerEngine)initWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler resultData:(id)data error:(id *)error;
- (BOOL)validateInputNodeWithFormat:(id)format;
- (id)createAU:(AudioComponentDescription *)u;
- (void)createEngineAndAttachNodes;
- (void)makeEngineConnectionsWithError:(id *)error;
- (void)setupAudioSession;
- (void)startEngineWithError:(id *)error;
- (void)stopEngine;
@end

@implementation APCListenerEngine

- (id)createAU:(AudioComponentDescription *)u
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  buf = *u;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__APCListenerEngine_createAU___block_invoke;
  v12[3] = &unk_278CE1CE0;
  v12[4] = &v13;
  v12[5] = &v25;
  v12[6] = &v19;
  [MEMORY[0x277CB8430] instantiateWithComponentDescription:&buf options:0 completionHandler:v12];
  v4 = v20[5];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v26[5] || v6)
  {
    v8 = APCLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v26[5];
      if (v9)
      {
        localizedDescription = [v26[5] localizedDescription];
      }

      else
      {
        localizedDescription = @"AVAudioUnit instantiateWithComponentDescription timed out";
      }

      buf.componentType = 138412290;
      *&buf.componentSubType = localizedDescription;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "AU instatiation failed with %@", &buf, 0xCu);
      if (v9)
      {
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v7;
}

void __30__APCListenerEngine_createAU___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

+ (id)listenerWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler error:(id *)error
{
  configCopy = config;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = [[APCListenerEngine alloc] initWithCodecConfig:configCopy queue:queueCopy dataReceivedHandler:handlerCopy resultData:0 error:error];

  return v12;
}

+ (id)listenerWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler resultData:(id)data error:(id *)error
{
  configCopy = config;
  queueCopy = queue;
  handlerCopy = handler;
  dataCopy = data;
  v15 = [[APCListenerEngine alloc] initWithCodecConfig:configCopy queue:queueCopy dataReceivedHandler:handlerCopy resultData:dataCopy error:error];

  return v15;
}

- (APCListenerEngine)initWithCodecConfig:(id)config queue:(id)queue dataReceivedHandler:(id)handler resultData:(id)data error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  queueCopy = queue;
  handlerCopy = handler;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = APCListenerEngine;
  v17 = [(APCListenerEngine *)&v38 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    if (configCopy)
    {
      objc_storeStrong(&v17->_codecConfig, config);
      +[AUPasscodeDecoder registerAU];
      objc_msgSend_getAUDesc(AUPasscodeDecoder);
      v19 = [p_isa createAU:buf];
      v20 = p_isa[3];
      p_isa[3] = v19;

      v21 = p_isa[3];
      if (v21)
      {
        aUAudioUnit = [v21 AUAudioUnit];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          aUAudioUnit2 = [p_isa[3] AUAudioUnit];
          v25 = p_isa[4];
          p_isa[4] = aUAudioUnit2;

          [p_isa[4] setCodecConfig:configCopy];
          v26 = queueCopy;
          if (!queueCopy)
          {
            v26 = dispatch_get_global_queue(0, 0);
          }

          [p_isa[4] setDispatchQueue:v26];
          if (!queueCopy)
          {
          }

          [p_isa[4] setDataHandler:handlerCopy];
          [p_isa[4] setResultData:dataCopy];
          resultData = [p_isa[4] resultData];
          v28 = resultData == 0;

          if (!v28)
          {
            resultData2 = [p_isa[4] resultData];
            [resultData2 reset];
          }

          [p_isa setupAudioSession];
          [p_isa createEngineAndAttachNodes];

          goto LABEL_12;
        }

        v34 = APCLogObject(isKindOfClass);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          *buf = 138412290;
          v40 = v36;
          _os_log_impl(&dword_24158E000, v34, OS_LOG_TYPE_ERROR, "Encoder AU is not the expected class, it's a %@", buf, 0xCu);
        }

        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
        }

LABEL_27:
        v30 = 0;
        goto LABEL_28;
      }

      v33 = APCLogObject(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v33, OS_LOG_TYPE_ERROR, "Failed to create the decoder AU", buf, 2u);
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
    }

    else
    {
      v31 = APCLogObject(v17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v31, OS_LOG_TYPE_ERROR, "Bad arguments to APCListenerEngine", buf, 2u);
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:1 userInfo:0];
    }

    v30 = 0;
    *error = v32;
    goto LABEL_28;
  }

LABEL_12:
  v30 = p_isa;
LABEL_28:

  return v30;
}

- (void)setupAudioSession
{
  v112 = *MEMORY[0x277D85DE8];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  session = self->_session;
  self->_session = auxiliarySession;

  [(AVAudioSession *)self->_session setEligibleForBTSmartRoutingConsideration:0 error:0];
  v4 = self->_session;
  v5 = *MEMORY[0x277CB8028];
  v104 = 0;
  [(AVAudioSession *)v4 setCategory:v5 withOptions:41 error:&v104];
  v6 = v104;
  v7 = v6;
  if (v6)
  {
    v8 = APCLogObject(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v107 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Error setting session category to record: %@", buf, 0xCu);
    }
  }

  v9 = self->_session;
  v103 = v7;
  [(AVAudioSession *)v9 preferDecoupledIO:1 error:&v103];
  v10 = v103;

  if (v10)
  {
    v12 = APCLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v107 = v10;
      _os_log_impl(&dword_24158E000, v12, OS_LOG_TYPE_ERROR, "Error setting preferDecoupledIO on session: %@", buf, 0xCu);
    }
  }

  [(AVAudioSession *)self->_session availableInputs];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  obj = v100 = 0u;
  v13 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v13)
  {
    v14 = *v100;
    v15 = *MEMORY[0x277CB8190];
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v100 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v82 = *(*(&v99 + 1) + 8 * i);
        portType = [v82 portType];
        v18 = [portType isEqualToString:v15];

        if (v18)
        {
          v20 = self->_session;
          v98 = v10;
          [(AVAudioSession *)v20 setPreferredInput:v82 error:&v98];
          v19 = v98;

          if (v19)
          {
            v22 = APCLogObject(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v107 = v19;
              _os_log_impl(&dword_24158E000, v22, OS_LOG_TYPE_ERROR, "Failed to set preferred input to built-in mic: %@", buf, 0xCu);
            }
          }

          else
          {
            v83 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v82 dataSources];
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v84 = v95 = 0u;
            v23 = [v84 countByEnumeratingWithState:&v94 objects:v110 count:16];
            v24 = v23;
            if (v23)
            {
              v25 = *v95;
              v26 = *MEMORY[0x277CB80F8];
              do
              {
                v27 = 0;
                do
                {
                  if (*v95 != v25)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v28 = *(*(&v94 + 1) + 8 * v27);
                  v29 = APCLogObject(v23);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    location = [v28 location];
                    orientation = [v28 orientation];
                    *buf = 138412546;
                    v107 = location;
                    v108 = 2112;
                    v109 = orientation;
                    _os_log_impl(&dword_24158E000, v29, OS_LOG_TYPE_INFO, "Mic location/orientation is %@ %@", buf, 0x16u);
                  }

                  orientation2 = [v28 orientation];
                  v33 = [orientation2 isEqualToString:v26];

                  if (v33)
                  {
                    v23 = [v83 addObject:v28];
                  }

                  ++v27;
                }

                while (v24 != v27);
                v23 = [v84 countByEnumeratingWithState:&v94 objects:v110 count:16];
                v24 = v23;
              }

              while (v23);
            }

            if ([v83 count])
            {
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v34 = v83;
              v35 = [v34 countByEnumeratingWithState:&v90 objects:v105 count:16];
              if (v35)
              {
                v36 = *v91;
                v37 = *MEMORY[0x277CB8090];
                while (2)
                {
                  for (j = 0; j != v35; ++j)
                  {
                    if (*v91 != v36)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = *(*(&v90 + 1) + 8 * j);
                    location2 = [v39 location];
                    v41 = [location2 isEqualToString:v37];

                    if (v41)
                    {
                      v51 = APCLogObject(v42);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                      {
                        location3 = [v39 location];
                        orientation3 = [v39 orientation];
                        *buf = 138412546;
                        v107 = location3;
                        v108 = 2112;
                        v109 = orientation3;
                        _os_log_impl(&dword_24158E000, v51, OS_LOG_TYPE_INFO, "Setting preferred microphone as '%@ %@'", buf, 0x16u);
                      }

                      v89 = 0;
                      [v82 setPreferredDataSource:v39 error:&v89];
                      v54 = v89;
                      v19 = v54;
                      if (v54)
                      {
                        v55 = APCLogObject(v54);
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v107 = v19;
                          _os_log_impl(&dword_24158E000, v55, OS_LOG_TYPE_ERROR, "Failed to set preferred mic source: %@", buf, 0xCu);
                        }
                      }

                      goto LABEL_52;
                    }
                  }

                  v35 = [v34 countByEnumeratingWithState:&v90 objects:v105 count:16];
                  if (v35)
                  {
                    continue;
                  }

                  break;
                }
              }

              v44 = APCLogObject(v43);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = [v34 objectAtIndexedSubscript:0];
                location4 = [v45 location];
                v47 = [v34 objectAtIndexedSubscript:0];
                orientation4 = [v47 orientation];
                *buf = 138412546;
                v107 = location4;
                v108 = 2112;
                v109 = orientation4;
                _os_log_impl(&dword_24158E000, v44, OS_LOG_TYPE_INFO, "Choosing first available back microphone: '%@ %@'", buf, 0x16u);
              }

              v49 = [v34 objectAtIndexedSubscript:0];
              v88 = 0;
              [v82 setPreferredDataSource:v49 error:&v88];
              v19 = v88;

              if (v19)
              {
                v34 = APCLogObject(v50);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v107 = v19;
                  _os_log_impl(&dword_24158E000, v34, OS_LOG_TYPE_ERROR, "Failed to set preferred mic source: %@", buf, 0xCu);
                }

LABEL_52:
              }
            }

            else
            {
              v19 = 0;
            }

            v22 = v83;
          }

          goto LABEL_56;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = v10;
LABEL_56:

  v56 = self->_session;
  codecConfig = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
  v87 = 0;
  -[AVAudioSession setPreferredSampleRate:error:](v56, "setPreferredSampleRate:error:", &v87, [codecConfig sampleRate]);
  v58 = v87;

  if (v58)
  {
    v60 = APCLogObject(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      codecConfig2 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
      sampleRate = [codecConfig2 sampleRate];
      *buf = 134218242;
      v107 = llround(sampleRate);
      v108 = 2112;
      v109 = v58;
      _os_log_impl(&dword_24158E000, v60, OS_LOG_TYPE_ERROR, "Error setting preferred sample rate to %ld: %@", buf, 0x16u);
    }
  }

  inputNumberOfChannels = [(AVAudioSession *)self->_session inputNumberOfChannels];
  codecConfig3 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
  LOBYTE(inputNumberOfChannels) = inputNumberOfChannels == [codecConfig3 numChannels];

  if (inputNumberOfChannels)
  {
    v65 = v58;
  }

  else
  {
    v66 = self->_session;
    codecConfig4 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
    v86 = v58;
    -[AVAudioSession setPreferredInputNumberOfChannels:error:](v66, "setPreferredInputNumberOfChannels:error:", [codecConfig4 numChannels], &v86);
    v65 = v86;

    if (v65)
    {
      v69 = APCLogObject(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        codecConfig5 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
        numChannels = [codecConfig5 numChannels];
        *buf = 134218242;
        v107 = numChannels;
        v108 = 2112;
        v109 = v65;
        _os_log_impl(&dword_24158E000, v69, OS_LOG_TYPE_ERROR, "Couldn't set preferred number of input channels to %ld (AU will handle the mapping): %@", buf, 0x16u);
      }
    }
  }

  [(AVAudioSession *)self->_session sampleRate];
  v72 = self->_session;
  v85 = v65;
  v74 = 256.0 / v73;
  v75 = [(AVAudioSession *)v72 setPreferredIOBufferDuration:&v85 error:256.0 / v73];
  v76 = v85;

  if (!v75)
  {
    v78 = APCLogObject(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v76 localizedDescription];
      *buf = 134218242;
      v107 = *&v74;
      v108 = 2112;
      v109 = localizedDescription;
      _os_log_impl(&dword_24158E000, v78, OS_LOG_TYPE_ERROR, "Error setting preferred io buffer duration to %0.3f seconds: %@", buf, 0x16u);
    }
  }
}

- (void)createEngineAndAttachNodes
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8388]);
  engine = self->_engine;
  self->_engine = v3;

  [(AVAudioEngine *)self->_engine attachNode:self->_decoderAUNode];
  inData = [(AVAudioSession *)self->_session opaqueSessionID];
  inputNode = [(AVAudioEngine *)self->_engine inputNode];
  audioUnit = [inputNode audioUnit];

  v7 = AudioUnitSetProperty(audioUnit, 0x7E7u, 0, 0, &inData, 4u);
  v8 = v7;
  if (v7)
  {
    v9 = APCLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v8;
      _os_log_impl(&dword_24158E000, v9, OS_LOG_TYPE_ERROR, "Setting the audio session ID for the listener's input node failed: %d", buf, 8u);
    }
  }
}

- (BOOL)validateInputNodeWithFormat:(id)format
{
  formatCopy = format;
  v4 = formatCopy;
  v6 = formatCopy && ([formatCopy sampleRate], v5 > 0.0) && objc_msgSend(v4, "channelCount") != 0;

  return v6;
}

- (void)makeEngineConnectionsWithError:(id *)error
{
  [(AVAudioUnit *)self->_decoderAUNode removeTapOnBus:0];
  inputNode = [(AVAudioEngine *)self->_engine inputNode];
  v9 = [inputNode inputFormatForBus:0];

  if ([(APCListenerEngine *)self validateInputNodeWithFormat:v9])
  {
    engine = self->_engine;
    inputNode2 = [(AVAudioEngine *)engine inputNode];
    [(AVAudioEngine *)engine connect:inputNode2 to:self->_decoderAUNode format:v9];

    [(AVAudioUnit *)self->_decoderAUNode installTapOnBus:0 bufferSize:0x2000 format:v9 block:&__block_literal_global_0];
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10868 userInfo:0];
  }

  *error = v8;
}

- (void)startEngineWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(AVAudioEngine *)self->_engine isRunning])
  {
    session = self->_session;
    v19 = 0;
    v6 = [(AVAudioSession *)session setActive:1 error:&v19];
    v7 = v19;
    if (v7 == 0 && v6)
    {
      v18 = 0;
      [(APCListenerEngine *)self makeEngineConnectionsWithError:&v18];
      v8 = v18;
      if (v8)
      {
        v9 = v8;
        v10 = APCLogObject(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, "Error making engine connection: %@", buf, 0xCu);
        }
      }

      else
      {
        [(AUPasscodeDecoder *)self->_decoderAU startAudioLogCapture];
        engine = self->_engine;
        v17 = 0;
        v14 = [(AVAudioEngine *)engine startAndReturnError:&v17];
        v15 = v17;
        if (v15 == 0 && v14)
        {
          v9 = 0;
LABEL_12:

          return;
        }

        v9 = v15;
        v16 = APCLogObject(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Error starting engine: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = v7;
      v11 = APCLogObject(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_24158E000, v11, OS_LOG_TYPE_ERROR, "Error activating session: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }

    goto LABEL_12;
  }
}

- (void)stopEngine
{
  [(AVAudioEngine *)self->_engine stop];
  [(AUPasscodeDecoder *)self->_decoderAU stopAudioLogCapture];
  session = self->_session;

  [(AVAudioSession *)session setActive:0 error:0];
}

@end