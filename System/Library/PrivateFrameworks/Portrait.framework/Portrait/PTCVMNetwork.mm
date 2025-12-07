@interface PTCVMNetwork
+ (int64_t)depthPrioritizationFromEffectQuality:(int64_t)quality;
- (PTCVMNetwork)initWithMetalContext:(id)context colorSize:(id *)size depthPrioritization:(int64_t)prioritization sharedResources:(id)resources;
- (id)inRGBA;
- (id)networkVersionString;
- (id)outDisparity;
- (unint64_t)getLayoutFromSize:(id *)size;
- (unsigned)executeNetwork:(int64_t)network;
- (void)bindColorInputPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)reset;
@end

@implementation PTCVMNetwork

- (unint64_t)getLayoutFromSize:(id *)size
{
  v3 = 0;
  v4 = 3.4028e38;
  result = 255;
  do
  {
    v6 = vabds_f32(flt_2244A5840[v3], size->var0 / size->var1);
    if (v6 < v4)
    {
      result = qword_2244A5850[v3];
      v4 = v6;
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

- (PTCVMNetwork)initWithMetalContext:(id)context colorSize:(id *)size depthPrioritization:(int64_t)prioritization sharedResources:(id)resources
{
  v120[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  resourcesCopy = resources;
  v103.receiver = self;
  v103.super_class = PTCVMNetwork;
  v13 = [(PTCVMNetwork *)&v103 init];
  if (v13)
  {
    v14 = v13;
    *buf = *&size->var0;
    *&buf[16] = size->var2;
    v15 = [(PTCVMNetwork *)v13 getLayoutFromSize:buf];
    kdebug_trace();
    v102.receiver = v14;
    v102.super_class = PTCVMNetwork;
    v16 = [(PTCVMNetwork *)&v102 init];
    v17 = MGGetBoolAnswer();
    if ((v17 & 1) == 0)
    {
      v26 = _PTLogSystem(v17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

      v27 = 0;
      goto LABEL_65;
    }

    PTKTraceInit(v17, v18);
    objc_storeStrong(&v16->_metalContext, context);
    v16->_depthPrioritization = prioritization;
    effectUtil = [resourcesCopy effectUtil];
    effectUtil = v16->_effectUtil;
    v16->_effectUtil = effectUtil;

    util = [resourcesCopy util];
    util = v16->_util;
    v16->_util = util;

    v16->_frameId = 0;
    *&v16->_outDispIndex = 1;
    Bool = PTDefaultsPublicGetBool(@"harvesting.enabled", 0);
    if (Bool)
    {
      effectNetworkConfig2 = 0;
      inferenceDescriptor = 0;
      v26 = 0;
    }

    else
    {
      effectNetworkConfig2 = objc_opt_new();
      v28 = [objc_alloc(MEMORY[0x277CED000]) initWithInputPrioritization:prioritization andParameters:effectNetworkConfig2];
      if (!v28)
      {
        inferenceDescriptor = _PTLogSystem(0);
        if (os_log_type_enabled(inferenceDescriptor, OS_LOG_TYPE_ERROR))
        {
          [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
        }

        v45 = 0;
        v26 = 0;
        v27 = 0;
        goto LABEL_64;
      }

      v26 = v28;
      inferenceDescriptor = [v28 inferenceDescriptor];
    }

    var1 = size->var1;
    var0 = size->var0;
    v29 = [inferenceDescriptor configurationNameForLayout:v15];
    networkURL = [inferenceDescriptor networkURL];
    absoluteString = [networkURL absoluteString];

    if (!absoluteString)
    {
      name2 = _PTLogSystem(v32);
      if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

      v27 = 0;
      goto LABEL_63;
    }

    v100 = effectNetworkConfig2;
    colorInput = [inferenceDescriptor colorInput];
    name = [colorInput name];
    inRGBAName = v16->_inRGBAName;
    v16->_inRGBAName = name;

    prevDisparityInput = [inferenceDescriptor prevDisparityInput];
    name2 = [prevDisparityInput name];

    disparityOutput = [inferenceDescriptor disparityOutput];
    name3 = [disparityOutput name];

    effectNetworkConfig = [resourcesCopy effectNetworkConfig];
    if (v29 == effectNetworkConfig)
    {
      v91 = Bool;
      v39 = inferenceDescriptor;
      v40 = v26;
      v41 = contextCopy;
      v42 = v29;
    }

    else
    {
      effectNetworkConfig2 = [resourcesCopy effectNetworkConfig];
      if (![v29 isEqualToString:effectNetworkConfig2])
      {
        v94 = 0;
        goto LABEL_26;
      }

      v91 = Bool;
      v39 = inferenceDescriptor;
      v40 = v26;
      v41 = contextCopy;
      v42 = v29;
    }

    effectNetworkPath = [resourcesCopy effectNetworkPath];
    v94 = [absoluteString isEqualToString:effectNetworkPath];

    v29 = v42;
    v44 = v42 == effectNetworkConfig;
    contextCopy = v41;
    v26 = v40;
    inferenceDescriptor = v39;
    Bool = v91;
    if (v44)
    {
LABEL_27:

      effectNetworkConfig2 = v100;
      if ((Bool & 1) == 0)
      {
        if (v94)
        {
          effectNetwork = [resourcesCopy effectNetwork];
          executor = v16->_executor;
          v16->_executor = effectNetwork;
        }

        else
        {
          v48 = [PTEspressoGenericExecutor alloc];
          metalContext = v16->_metalContext;
          v89 = v48;
          v86 = [MEMORY[0x277CBEBC0] fileURLWithPath:absoluteString];
          v120[0] = v16->_inRGBAName;
          v120[1] = name2;
          v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
          v119 = name3;
          [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
          v92 = contextCopy;
          v49 = absoluteString;
          v51 = v50 = v29;
          v118[0] = name2;
          v118[1] = name3;
          v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
          v53 = [(PTEspressoGenericExecutor *)v89 initWithMetalContext:metalContext url:v86 inputNames:v85 outputNames:v51 tensorSwapNames:v52 reshapeNetworkSize:0 configuration:v50];
          v54 = v16->_executor;
          v16->_executor = v53;

          effectNetworkConfig2 = v100;
          v29 = v50;
          absoluteString = v49;
          contextCopy = v92;

          [resourcesCopy setEffectNetwork:v16->_executor];
          [resourcesCopy setEffectNetworkConfig:v29];
          [resourcesCopy setEffectNetworkPath:absoluteString];
        }
      }

      v55 = v16->_executor;
      if (!v55)
      {
        networkVersion = _PTLogSystem(0);
        if (os_log_type_enabled(networkVersion, OS_LOG_TYPE_ERROR))
        {
          [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
        }

        goto LABEL_52;
      }

      networkVersion = [(PTEspressoGenericExecutor *)v55 networkVersion];
      if ([networkVersion isEqualToString:@"bkkidb647v_iteration_105001"])
      {
        v57 = 4;
      }

      else
      {
        if (![networkVersion isEqualToString:@"a9mp7cfxah_iteration_45000"])
        {
          v16->_networkVersionID = 0;
          goto LABEL_40;
        }

        v57 = 7;
      }

      v16->_networkVersionID = v57;
LABEL_40:
      v58 = [(PTEspressoGenericExecutor *)v16->_executor getInputResourceWithName:v16->_inRGBAName];
      inRGBA = v16->_inRGBA;
      v16->_inRGBA = v58;

      if (v16->_inRGBA)
      {
        v61 = [(PTEspressoGenericExecutor *)v16->_executor getInputResourceWithName:name2];
        disparityInOut = v16->_disparityInOut;
        inDispIndex = v16->_inDispIndex;
        v64 = v16->_disparityInOut[inDispIndex];
        v16->_disparityInOut[inDispIndex] = v61;

        if (v16->_disparityInOut[v16->_inDispIndex])
        {
          v66 = [(PTEspressoGenericExecutor *)v16->_executor getOutputResourceWithName:name3];
          outDispIndex = v16->_outDispIndex;
          v68 = disparityInOut[outDispIndex];
          disparityInOut[outDispIndex] = v66;

          if (disparityInOut[v16->_outDispIndex])
          {
            v84 = v29;
            if (var0 >= var1)
            {
              goto LABEL_46;
            }

            textureUtil = [(PTMetalContext *)v16->_metalContext textureUtil];
            v71 = [textureUtil createWithWidth:-[MTLTexture height](v16->_inRGBA height:"height") pixelFormat:-[MTLTexture width](v16->_inRGBA, "width"), -[MTLTexture pixelFormat](v16->_inRGBA, "pixelFormat")];
            inRGBARotated = v16->_inRGBARotated;
            v16->_inRGBARotated = v71;

            if (!v16->_inRGBARotated)
            {
              v80 = _PTLogSystem(v73);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
              }

              v27 = 0;
              goto LABEL_61;
            }

            textureUtil2 = [(PTMetalContext *)v16->_metalContext textureUtil];
            v75 = [textureUtil2 createWithWidth:-[MTLTexture height](v16->_disparityInOut[1] height:"height") pixelFormat:-[MTLTexture width](v16->_disparityInOut[1], "width"), -[MTLTexture pixelFormat](v16->_disparityInOut[1], "pixelFormat")];
            outDisparityRotated = v16->_outDisparityRotated;
            v16->_outDisparityRotated = v75;

            v29 = v84;
            if (v16->_outDisparityRotated)
            {
LABEL_46:
              v77 = _PTLogSystem(v69);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
              {
                v98 = v16->_inRGBAName;
                width = [(MTLTexture *)v16->_inRGBA width];
                height = [(MTLTexture *)v16->_inRGBA height];
                width2 = [(MTLTexture *)v16->_disparityInOut[1] width];
                height2 = [(MTLTexture *)v16->_disparityInOut[1] height];
                width3 = [(MTLTexture *)v16->_disparityInOut[0] width];
                height3 = [(MTLTexture *)v16->_disparityInOut[0] height];
                *buf = 138414338;
                *&buf[4] = v98;
                *&buf[12] = 2048;
                *&buf[14] = width;
                *&buf[22] = 2048;
                v105 = height;
                v106 = 2112;
                v107 = name3;
                v108 = 2048;
                v109 = width2;
                v110 = 2048;
                v111 = height2;
                v112 = 2112;
                v113 = name2;
                v114 = 2048;
                v115 = width3;
                v116 = 2048;
                v117 = height3;
                _os_log_debug_impl(&dword_2243FB000, v77, OS_LOG_TYPE_DEBUG, "Init disparity network: %@ (%lux%lu) %@ (%lux%lu) %@ (%lux%lu)", buf, 0x5Cu);
              }

              [(PTCVMNetwork *)v16 reset];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] width];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] height];
              [(MTLTexture *)disparityInOut[v16->_outDispIndex] pixelFormat];
              kdebug_trace();
              v27 = v16;
LABEL_61:
              effectNetworkConfig2 = v100;
              v29 = v84;
              goto LABEL_62;
            }

            v79 = _PTLogSystem(v69);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
            }
          }

          else
          {
            v79 = _PTLogSystem(v69);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
            }
          }
        }

        else
        {
          v79 = _PTLogSystem(v65);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
          }
        }

        v27 = 0;
        effectNetworkConfig2 = v100;
LABEL_62:

LABEL_63:
        v45 = inferenceDescriptor;
LABEL_64:

LABEL_65:
        goto LABEL_66;
      }

      v78 = _PTLogSystem(v60);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork initWithMetalContext:colorSize:depthPrioritization:sharedResources:];
      }

LABEL_52:
      v27 = 0;
      goto LABEL_62;
    }

LABEL_26:

    goto LABEL_27;
  }

  v27 = 0;
LABEL_66:

  return v27;
}

- (void)bindColorInputPixelBuffer:(__CVBuffer *)buffer
{
  self->_inputPixelBuffer = buffer;
  if (buffer)
  {
    v7 = objc_msgSend_device(self->_metalContext, a2);
    v5 = [PTPixelBufferUtil createTextureFromPixelBuffer:buffer device:v7];
    inRGBA = self->_inRGBA;
    self->_inRGBA = v5;
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_inRGBAAppleDepthRunner);
  CVPixelBufferRelease(self->_outDisparityAppleDepthRunner);
  CVPixelBufferRelease(self->_inTemporalDisparityAppleDepthRunner);
  v3.receiver = self;
  v3.super_class = PTCVMNetwork;
  [(PTCVMNetwork *)&v3 dealloc];
}

- (id)inRGBA
{
  inRGBARotated = self->_inRGBARotated;
  if (!inRGBARotated)
  {
    inRGBARotated = self->_inRGBA;
  }

  v3 = inRGBARotated;

  return v3;
}

- (id)outDisparity
{
  outDisparityRotated = self->_outDisparityRotated;
  if (!outDisparityRotated)
  {
    outDisparityRotated = self->_disparityInOut[self->_outDispIndex];
  }

  v3 = outDisparityRotated;

  return v3;
}

- (unsigned)executeNetwork:(int64_t)network
{
  self->_frameIndex = network;
  if (self->_inputPixelBuffer)
  {
    v4 = [(PTEspressoGenericExecutor *)self->_executor bindInputResourceWithName:self->_inRGBAName to:?];
    if (v4)
    {
      v5 = _PTLogSystem(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PTCVMNetwork executeNetwork:];
      }
    }
  }

  [(PTEspressoGenericExecutor *)self->_executor tensorSwap:self->_frameId];
  frameId = self->_frameId;
  v7 = frameId & 1;
  if (frameId < 0)
  {
    v7 = -v7;
  }

  v8 = __OFADD__(frameId, 1);
  v9 = frameId + 1;
  v10 = v9 & 1;
  if (v9 < 0 != v8)
  {
    v10 = -v10;
  }

  self->_outDispIndex = v10;
  self->_inDispIndex = v7;
  self->_frameId = v9;
  v11 = PTDefaultsGetDictionary();
  [(PTCVMNetwork *)self dumpNetworkInputWithDefaults:v11];
  [(MTLTexture *)self->_disparityInOut[self->_outDispIndex] width];
  [(MTLTexture *)self->_disparityInOut[self->_outDispIndex] height];
  kdebug_trace();
  executor = self->_executor;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __31__PTCVMNetwork_executeNetwork___block_invoke;
  v21[3] = &unk_278522E90;
  v21[4] = self;
  v13 = [(PTEspressoGenericExecutor *)executor executeAsync:v21];
  [(PTCVMNetwork *)self dumpNetworkOutputWithDefaults:v11];
  if (self->_outDisparityRotated)
  {
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer)
    {
      v16 = _PTLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer2 setLabel:@"PTCVMNetwork network outDisparityRotated"];

    util = self->_util;
    commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [(PTUtil *)util rotateTexture:commandBuffer3 inTex:self->_disparityInOut[self->_outDispIndex] outTex:self->_outDisparityRotated rotationDegrees:4294967206];

    [(PTMetalContext *)self->_metalContext commit];
  }

  return v13;
}

- (void)reset
{
  commandQueue = [(PTMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v6 = _PTLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTCVMNetwork network reset"];
  [(PTEffectUtil *)self->_effectUtil clearTexture:commandBuffer outTex:self->_disparityInOut[self->_inDispIndex]];
  [(PTEffectUtil *)self->_effectUtil clearTexture:commandBuffer outTex:self->_disparityInOut[self->_outDispIndex]];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (id)networkVersionString
{
  v2 = MEMORY[0x277CCACA8];
  networkVersionID = self->_networkVersionID;
  networkVersion = [(PTEspressoGenericExecutor *)self->_executor networkVersion];
  v5 = [v2 stringWithFormat:@"CVM %i (%@)", networkVersionID, networkVersion];

  return v5;
}

+ (int64_t)depthPrioritizationFromEffectQuality:(int64_t)quality
{
  v3 = 2;
  if (quality >= 0x65)
  {
    v3 = 3;
  }

  if (quality < 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:colorSize:depthPrioritization:sharedResources:.cold.9()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end