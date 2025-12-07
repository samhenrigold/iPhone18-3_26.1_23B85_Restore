@interface SIModel
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIModel)initWithNetworkConfiguration:(id)configuration;
- (id)colletSubloggerTable;
- (id)subLoggers;
- (int64_t)addPrewiringBuffersToStreamWithInputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer;
- (int64_t)evaluateWithInput:(id)input outputs:(id)outputs;
- (int64_t)switchNetworkConfiguration:(int64_t)configuration;
- (int64_t)unwirePrewiringBuffers;
@end

@implementation SIModel

- (SIModel)initWithNetworkConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = SIModel;
  v6 = [(SIModel *)&v21 init];
  v8 = v6;
  v9 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  if ((SISupportANE(v6, v7) & 1) == 0 && [configurationCopy engineType] == 1)
  {
    v10 = __SceneIntelligenceLogSharedInstance(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
      v23 = 1025;
      v24 = 39;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** ANE is not available on this device. Initializing by MPS instead ***", buf, 0x12u);
    }

    [configurationCopy setEngineType:0];
    [configurationCopy setRunByE5RT:0];
  }

  v11 = ([configurationCopy engineType] == 1 && (objc_msgSend(configurationCopy, "runByE5RT") & 1) != 0 ? off_27833B9E8 : off_27833B9F0);
  v12 = [objc_alloc(*v11) initWithNetworkConfiguration:configurationCopy];
  network = v9->_network;
  v9->_network = v12;

  [(SIModel *)v9 setPolarisHandle:0];
  networkName = [configurationCopy networkName];
  *buf = 0;
  v15 = [networkName getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(networkName, "length"), 0}] ? *buf : 0;

  v9->_algorithmNameHash = v15;
  if ([(SINetworkProtocol *)v9->_network prepare])
  {
    objc_storeStrong(&v8->_config, configuration);
    colletSubloggerTable = [(SIModel *)v9 colletSubloggerTable];
    subLoggerTable = v9->_subLoggerTable;
    v9->_subLoggerTable = colletSubloggerTable;

    subLoggers = [(SIModel *)v9 subLoggers];
    SIVLRegisterSubloggers(subLoggers);

    v19 = v9;
  }

  else
  {
LABEL_16:
    v19 = 0;
  }

  return v19;
}

- (CGSize)getOutputResolution
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
    v7 = 1025;
    v8 = 85;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** output resolution method must be overriden ***", &v5, 0x12u);
  }

  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)getInputResolution
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
    v7 = 1025;
    v8 = 91;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** input resolution method must be overriden ***", &v5, 0x12u);
  }

  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)switchNetworkConfiguration:(int64_t)configuration
{
  configurationCopy = configuration;
  v4 = NSSelectorFromString(&cfstr_Setnetworkmode.isa);
  v5 = [(SINetworkConfiguration *)self->_config methodSignatureForSelector:v4];
  v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
  [v6 setSelector:v4];
  [v6 invokeWithTarget:self->_config];
  [v6 setArgument:&configurationCopy atIndex:2];
  [v6 invoke];
  network = self->_network;
  networkMode = [(SINetworkConfiguration *)self->_config networkMode];
  v9 = [(SINetworkProtocol *)network switchConfiguration:networkMode];

  return v9;
}

- (int64_t)evaluateWithInput:(id)input outputs:(id)outputs
{
  v110 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputsCopy = outputs;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = inputCopy;
  v7 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v7)
  {
    v8 = 0;
    v79 = *v92;
    v80 = 0;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v91 + 1) + 8 * i);
        v11 = [obj objectForKeyedSubscript:v10];
        surface = [v11 surface];

        if (surface)
        {
          width = [surface width];
          height = [surface height];
          v15 = [(SINetworkProtocol *)self->_network getInputWidth:v10];
          v16 = [(SINetworkProtocol *)self->_network getInputHeight:v10];
          if ([surface pixelFormat] == 1278226488 && height == 1)
          {
            v23 = [(SINetworkProtocol *)self->_network getInputSizeInBytes:v10];
            v24 = v23;
            if (width < v23)
            {
              v73 = __SceneIntelligenceLogSharedInstance(v23);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 136381443;
                v98 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                v99 = 1025;
                v100 = 153;
                v101 = 2048;
                v102 = width;
                v103 = 2049;
                v104 = v24;
                v69 = " %{private}s:%{private}d *** Unexpected image input size (%zu bytes). (Expected at least: %{private}zu bytes) ***";
                v70 = v73;
                v71 = 38;
                goto LABEL_79;
              }

LABEL_80:
              v68 = 1;
              goto LABEL_81;
            }
          }

          else if ([surface planes] == 1)
          {
            v78 = surface;
            v18 = v8;
            v19 = v7;
            v20 = [(SINetworkProtocol *)self->_network getInputChannels:v10];
            blendChannelWidthHeight = [(SINetworkConfiguration *)self->_config blendChannelWidthHeight];
            if (blendChannelWidthHeight)
            {
              v22 = v16 * v15 * v20;
              v7 = v19;
              v8 = v18;
              surface = v78;
              if (height * width != v22)
              {
                v73 = __SceneIntelligenceLogSharedInstance(blendChannelWidthHeight);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136381955;
                  v98 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                  v99 = 1025;
                  v100 = 160;
                  v101 = 2048;
                  v102 = width;
                  v103 = 2048;
                  v104 = height;
                  v105 = 2049;
                  v106 = v15;
                  v107 = 2049;
                  v108 = v16;
                  v69 = " %{private}s:%{private}d *** Unexpected image input resolution (%zu, %zu). (Expected: %{private}zu %{private}zu) ***";
                  goto LABEL_78;
                }

                goto LABEL_80;
              }
            }

            else
            {
              v42 = height == 1 && width == v16 * v15 * v20;
              v43 = height == v16 && width == v15;
              v7 = v19;
              v8 = v18;
              surface = v78;
              if (!v43 && !v42)
              {
                v73 = __SceneIntelligenceLogSharedInstance(blendChannelWidthHeight);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136381955;
                  v98 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                  v99 = 1025;
                  v100 = 167;
                  v101 = 2048;
                  v102 = width;
                  v103 = 2048;
                  v104 = height;
                  v105 = 2049;
                  v106 = v15;
                  v107 = 2049;
                  v108 = v16;
                  v69 = " %{private}s:%{private}d *** Unexpected image input resolution (%zu, %zu). (Expected: %{private}zu %{private}zu) ***";
LABEL_78:
                  v70 = v73;
                  v71 = 58;
LABEL_79:
                  _os_log_impl(&dword_21DE0D000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
                }

                goto LABEL_80;
              }
            }
          }

          v25 = v80;
          v26 = height * width > v8 * v80;
          if (height * width > v8 * v80)
          {
            v25 = height;
          }

          v80 = v25;
          if (v26)
          {
            v8 = width;
          }

          v27 = [(SINetworkProtocol *)self->_network setInput:v10 fromSurface:surface];
          if (v27)
          {
            v73 = __SceneIntelligenceLogSharedInstance(v27);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              identifier = [surface identifier];
              *buf = 136381443;
              v98 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
              v99 = 1025;
              v100 = 183;
              v101 = 2113;
              v102 = v10;
              v103 = 2048;
              v104 = identifier;
              _os_log_impl(&dword_21DE0D000, v73, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to set the input for blob= %{private}@ buffer_id= %lld. Inference interrupted. ***", buf, 0x26u);
            }

            v68 = 4;
LABEL_81:
            v81 = v68;
            v47 = obj;
LABEL_82:

            goto LABEL_83;
          }

          v28 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
          v29 = SIVLIsSubloggerEnabled(v28);

          if (v29)
          {
            kdebug_trace();
            v30 = [obj objectForKeyedSubscript:v10];
            pixelBuffer = [v30 pixelBuffer];

            if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 875836518)
            {
              v32 = SICreatePixelBufferWithNewFormatFromExistingBuffer(pixelBuffer, 0x42475241u);
              v33 = SICreateRGBFromBGRAPixelBuffer(v32);
              [(SIModel *)self frameTimestamp];
              v35 = v34;
              v36 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(v33, v36, @"input", v35);

              CVPixelBufferRelease(v32);
              CVPixelBufferRelease(v33);
            }

            else if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1111970369)
            {
              v37 = SICreateRGBFromBGRAPixelBuffer(pixelBuffer);
              [(SIModel *)self frameTimestamp];
              v39 = v38;
              v40 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(v37, v40, @"input", v39);

              CVPixelBufferRelease(v37);
            }

            else
            {
              [(SIModel *)self frameTimestamp];
              v45 = v44;
              v46 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(pixelBuffer, v46, @"input", v45);
            }

            kdebug_trace();
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([(SINetworkProtocol *)self->_network supportZeroCopyOutput])
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v47 = outputsCopy;
    v48 = [v47 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v48)
    {
      v49 = *v88;
      while (2)
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v88 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v87 + 1) + 8 * j);
          v52 = [v47 objectForKeyedSubscript:v51];
          surface = [v52 surface];

          if (surface)
          {
            v53 = [(SINetworkProtocol *)self->_network setOutputBlob:v51 forOutputSurface:surface];
            if (v53)
            {
              v73 = __SceneIntelligenceLogSharedInstance(v53);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                identifier2 = [surface identifier];
                *buf = 136381443;
                v98 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                v99 = 1025;
                v100 = 221;
                v101 = 2113;
                v102 = v51;
                v103 = 2048;
                v104 = identifier2;
                _os_log_impl(&dword_21DE0D000, v73, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to set the output for blob= %{private}@ buffer_id= %lld. Inference interrupted. ***", buf, 0x26u);
              }

              v81 = 4;
              goto LABEL_82;
            }
          }
        }

        v48 = [v47 countByEnumeratingWithState:&v87 objects:v96 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }
  }

  kdebug_trace();
  v81 = [(SINetworkProtocol *)self->_network runNetwork:[(SIModel *)self polarisHandle]];
  [(SIModel *)self setPolarisHandle:0];
  kdebug_trace();
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v47 = outputsCopy;
  v54 = [v47 countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v54)
  {
    v55 = *v84;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v84 != v55)
        {
          objc_enumerationMutation(v47);
        }

        v57 = *(*(&v83 + 1) + 8 * k);
        v58 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v57];
        v59 = SIVLIsSubloggerEnabled(v58);

        if (v59)
        {
          kdebug_trace();
          v60 = [v47 objectForKeyedSubscript:v57];
          pixelBuffer2 = [v60 pixelBuffer];

          if (pixelBuffer2)
          {
            v62 = [[SIIOSurface alloc] initFromPixelBuffer:pixelBuffer2];
          }

          else
          {
            network = [(SIModel *)self network];
            v62 = [network getOutputSurface:v57];
          }

          [(SIModel *)self frameTimestamp];
          v65 = v64;
          v66 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v57];
          SIVLLogSurface(v62, v66, @"output", v65);

          kdebug_trace();
        }
      }

      v54 = [v47 countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v54);
  }

LABEL_83:

  return v81;
}

- (int64_t)addPrewiringBuffersToStreamWithInputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  v21 = *MEMORY[0x277D85DE8];
  poolsCopy = pools;
  outputPoolsCopy = outputPools;
  network = [(SIModel *)self network];
  networkMode = [(SINetworkConfiguration *)self->_config networkMode];
  v12 = [network addPrewiringBuffersToStreamForFunctionName:networkMode inputPools:poolsCopy outputPools:outputPoolsCopy clearWiredBuffer:bufferCopy];

  if (v12)
  {
    v14 = __SceneIntelligenceLogSharedInstance(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
      v19 = 1025;
      v20 = 279;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to complete ANEP. release all ANEP buffers to prevent unexpected behavior. ***", &v17, 0x12u);
    }

    [(SIModel *)self unwirePrewiringBuffers];
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)unwirePrewiringBuffers
{
  network = [(SIModel *)self network];
  unwirePrewiringBuffers = [network unwirePrewiringBuffers];

  return unwirePrewiringBuffers;
}

- (id)colletSubloggerTable
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  network = [(SIModel *)self network];
  networkInputNames = [network networkInputNames];

  obj = networkInputNames;
  v6 = [networkInputNames countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = SIVLFrameworkPrefix();
        defaultVisualLoggerName = [(SINetworkConfiguration *)self->_config defaultVisualLoggerName];
        v13 = [v10 initWithFormat:@"%@.%@.ML.input_%@", v11, defaultVisualLoggerName, v9];

        [v3 setObject:v13 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  network2 = [(SIModel *)self network];
  obja = [network2 networkOutputNames];

  v15 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = SIVLFrameworkPrefix();
        defaultVisualLoggerName2 = [(SINetworkConfiguration *)self->_config defaultVisualLoggerName];
        v22 = [v19 initWithFormat:@"%@.%@.ML.output_%@", v20, defaultVisualLoggerName2, v18];

        [v3 setObject:v22 forKey:v18];
      }

      v15 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  return v3;
}

- (id)subLoggers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_subLoggerTable;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i), v10];
        [v3 addObject:v8];
      }

      v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

@end