@interface PTDisparityPostProcessing
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithDescriptor:(id)descriptor;
- (PTDisparityPostProcessing)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (PTDisparityPostProcessing)initWithDescriptor:(id)descriptor;
- (int)computeOpticalFlow:(id)flow inRGBA:(id)a outDisplacement:(id)displacement;
- (int)computeOpticalFlow:(id)flow outDisplacement:(id)displacement;
- (int)temporalDisparityFilter:(id)filter inDisparity:(id)disparity inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state;
- (int)temporalDisparityFilter:(id)filter inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state;
@end

@implementation PTDisparityPostProcessing

- (PTDisparityPostProcessing)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  commandQueue = [descriptorCopy commandQueue];
  if (descriptorCopy)
  {
    objc_msgSend_disparitySize(descriptorCopy);
    objc_msgSend_filteredDisparitySize(descriptorCopy);
    disparityPixelFormat = [descriptorCopy disparityPixelFormat];
    objc_msgSend_colorSize(descriptorCopy);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    disparityPixelFormat = [0 disparityPixelFormat];
    memset(v11, 0, sizeof(v11));
  }

  colorPixelFormat = [descriptorCopy colorPixelFormat];
  sensorPort = [descriptorCopy sensorPort];
  v9 = [(PTDisparityPostProcessing *)self initWithCommandQueue:commandQueue disparitySize:v13 filteredDisparitySize:v12 disparityPixelFormat:disparityPixelFormat colorSize:v11 colorPixelFormat:colorPixelFormat sensorPort:sensorPort];

  return v9;
}

- (PTDisparityPostProcessing)initWithCommandQueue:(id)queue disparitySize:(id *)size filteredDisparitySize:(id *)disparitySize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  queueCopy = queue;
  portCopy = port;
  v40.receiver = self;
  v40.super_class = PTDisparityPostProcessing;
  v17 = [(PTDisparityPostProcessing *)&v40 init];
  v19 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  PTKTraceInit(v17, v18);
  kdebug_trace();
  v20 = *&disparitySize->var0;
  v19->_filteredDisparitySize.depth = disparitySize->var2;
  *&v19->_filteredDisparitySize.width = v20;
  var2 = size->var2;
  *&v19->_disparitySize.width = *&size->var0;
  v19->_disparitySize.depth = var2;
  v22 = colorSize->var2;
  *&v19->_colorSize.width = *&colorSize->var0;
  v19->_colorSize.depth = v22;
  v23 = [[PTMetalContext alloc] initWithCommandQueue:queueCopy bundleClass:objc_opt_class()];
  metalContext = v19->_metalContext;
  v19->_metalContext = v23;

  if (!v19->_metalContext)
  {
    v32 = _PTLogSystem(v25);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_9;
  }

  v26 = [PTDisparityFilterDEMA_LKT alloc];
  v27 = v19->_metalContext;
  v38 = *&size->var0;
  v39 = size->var2;
  v36 = *&disparitySize->var0;
  v37 = disparitySize->var2;
  v34 = *&colorSize->var0;
  v35 = colorSize->var2;
  v28 = [(PTDisparityFilterDEMA_LKT *)v26 initWithMetalContext:v27 disparitySize:&v38 disparityFilteredSize:&v36 disparityPixelFormat:format colorSize:&v34 colorPixelFormat:pixelFormat sensorPort:portCopy];
  disparityFilter = v19->_disparityFilter;
  v19->_disparityFilter = v28;

  if (!v19->_disparityFilter)
  {
    v32 = _PTLogSystem(v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing initWithCommandQueue:disparitySize:filteredDisparitySize:disparityPixelFormat:colorSize:colorPixelFormat:sensorPort:];
    }

LABEL_9:

LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

  kdebug_trace();
  v31 = v19;
LABEL_11:

  return v31;
}

+ (int)prewarmWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[PTDisparityPostProcessing alloc] initWithDescriptor:descriptorCopy];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

+ (int)prewarmForCameraCaptured
{
  v2 = MTLCreateSystemDefaultDevice();
  newCommandQueue = [v2 newCommandQueue];
  v13 = xmmword_2244A57C0;
  v14 = 1;
  v11 = xmmword_2244A57C0;
  v12 = 1;
  v9 = xmmword_2244A57C0;
  v10 = 1;
  v4 = [[PTDisparityPostProcessingDescriptor alloc] initWithCommandQueue:newCommandQueue disparitySize:&v13 filteredDisparitySize:&v11 disparityPixelFormat:25 colorSize:&v9 colorPixelFormat:71 sensorPort:@"PortTypeBackSuperWide"];
  v5 = [PTDisparityPostProcessing prewarmWithDescriptor:v4];
  v6 = v5;
  if (v5)
  {
    v7 = _PTLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTDisparityPostProcessing prewarmForCameraCaptured];
    }
  }

  return v6;
}

- (int)computeOpticalFlow:(id)flow outDisplacement:(id)displacement
{
  metalContext = self->_metalContext;
  displacementCopy = displacement;
  flowCopy = flow;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v12 = _PTLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTDisparityPostProcessing computeOpticalFlow"];
  v13 = [(PTDisparityPostProcessing *)self computeOpticalFlow:commandBuffer inRGBA:flowCopy outDisplacement:displacementCopy];

  [commandBuffer commit];
  return v13;
}

- (int)computeOpticalFlow:(id)flow inRGBA:(id)a outDisplacement:(id)displacement
{
  flowCopy = flow;
  aCopy = a;
  displacementCopy = displacement;
  colorSize = self->_colorSize;
  v11 = isExpectedSize(displacementCopy, &colorSize, @"Invalid size of outDisplacement");
  if (v11)
  {
    if (!flowCopy)
    {
      v12 = _PTLogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [flowCopy setLabel:@"PTDisparityPostProcessing prepare filter"];
    v13 = [(PTAbstractDisparityFilter *)self->_disparityFilter prepareFilter:flowCopy inRGBA:aCopy outDisplacement:displacementCopy];
  }

  else
  {
    v13 = -10;
  }

  return v13;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias
{
  metalContext = self->_metalContext;
  filteredCopy = filtered;
  prevCopy = prev;
  displacementCopy = displacement;
  filterCopy = filter;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v20 = _PTLogSystem(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTDisparityPostProcessing temporalDisparityFilter"];
  *&v21 = bias;
  v22 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:commandBuffer inDisparity:filterCopy inDisplacement:displacementCopy inDisparityFilteredPrev:prevCopy outDisparityFiltered:filteredCopy disparityBias:v21];

  [commandBuffer commit];
  return v22;
}

- (int)temporalDisparityFilter:(id)filter inDisparity:(id)disparity inDisplacement:(id)displacement inDisparityFilteredPrev:(id)prev outDisparityFiltered:(id)filtered disparityBias:(float)bias
{
  v37 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  disparityCopy = disparity;
  displacementCopy = displacement;
  prevCopy = prev;
  filteredCopy = filtered;
  disparitySize = self->_disparitySize;
  v19 = isExpectedSize(disparityCopy, &disparitySize, @"Invalid size of inDisparity");
  if (v19 && (disparitySize = self->_colorSize, v19 = isExpectedSize(displacementCopy, &disparitySize, @"Invalid size of inDisplacement"), v19) && (disparitySize = self->_filteredDisparitySize, v19 = isExpectedSize(filteredCopy, &disparitySize, @"Invalid size of outDisparity"), (v19 & 1) != 0))
  {
    if (!filterCopy)
    {
      v20 = _PTLogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [filterCopy setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    *&v21 = bias;
    v22 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inDisparityPrev:prevCopy inDisparity:disparityCopy outDisparity:filteredCopy disparityBias:v21];
  }

  else
  {
    v23 = _PTLogSystem(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      width = [disparityCopy width];
      height = [disparityCopy height];
      LODWORD(disparitySize.width) = 134218752;
      *(&disparitySize.width + 4) = width;
      WORD2(disparitySize.height) = 2048;
      *(&disparitySize.height + 6) = height;
      HIWORD(disparitySize.depth) = 2048;
      v34 = width;
      v35 = 2048;
      v36 = height;
      _os_log_error_impl(&dword_2243FB000, v23, OS_LOG_TYPE_ERROR, "disparity size expected (%zu x %zu) was (%zu x %zu)", &disparitySize, 0x2Au);
    }

    v25 = _PTLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v27 = _PTLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v22 = -10;
  }

  return v22;
}

- (int)temporalDisparityFilter:(id)filter inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state
{
  metalContext = self->_metalContext;
  stateCopy = state;
  filteredCopy = filtered;
  disparityCopy = disparity;
  prevCopy = prev;
  filterCopy = filter;
  commandQueue = [(PTMetalContext *)metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    v21 = _PTLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  [commandBuffer setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
  v22 = [(PTDisparityPostProcessing *)self temporalDisparityFilter:commandBuffer inDisplacement:filterCopy inStatePrev:prevCopy inDisparity:disparityCopy outDisparityFiltered:filteredCopy outState:stateCopy];

  [commandBuffer commit];
  return v22;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparityFiltered:(id)filtered outState:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  filteredCopy = filtered;
  stateCopy = state;
  buf = self->_disparitySize;
  v20 = isExpectedSize(disparityCopy, &buf, @"Invalid size of inDisparity");
  if (v20 && (buf = self->_colorSize, v20 = isExpectedSize(displacementCopy, &buf, @"Invalid size of inDisplacement"), v20) && (buf = self->_filteredDisparitySize, v20 = isExpectedSize(filteredCopy, &buf, @"Invalid size of outDisparityFiltered"), (v20 & 1) != 0))
  {
    if (!filterCopy)
    {
      v21 = _PTLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    [filterCopy setLabel:@"PTEffectTemporalFilter temporalDisparityFilter"];
    v22 = [(PTAbstractDisparityFilter *)self->_disparityFilter temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inStatePrev:prevCopy inDisparity:disparityCopy outDisparity:filteredCopy outState:stateCopy];
  }

  else
  {
    v23 = _PTLogSystem(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      width = self->_disparitySize.width;
      height = self->_disparitySize.height;
      width = [disparityCopy width];
      height = [disparityCopy height];
      LODWORD(buf.width) = 134218752;
      *(&buf.width + 4) = width;
      WORD2(buf.height) = 2048;
      *(&buf.height + 6) = height;
      HIWORD(buf.depth) = 2048;
      v34 = width;
      v35 = 2048;
      v36 = height;
      _os_log_error_impl(&dword_2243FB000, v23, OS_LOG_TYPE_ERROR, "disparity size expected (%zu x %zu) was (%zu x %zu)", &buf, 0x2Au);
    }

    v25 = _PTLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v27 = _PTLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTDisparityPostProcessing temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:];
    }

    v22 = -10;
  }

  return v22;
}

- (void)temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  [v0 width];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_2243FB000, v1, v2, "inDisplacement size expected (%zu x %zu) was (%zu x %zu)", v3, v4, v5, v6);
}

- (void)temporalDisparityFilter:inDisparity:inDisplacement:inDisparityFilteredPrev:outDisparityFiltered:disparityBias:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  [v0 width];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_2243FB000, v1, v2, "outDisparity size expected (%zu x %zu) was (%zu x %zu)", v3, v4, v5, v6);
}

@end