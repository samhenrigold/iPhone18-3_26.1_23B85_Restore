@interface PTDisparityFilterDEMA_LKT
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context sensorPort:(id)port;
- (int)copyDisparity:(id)disparity inDisparity:(id)inDisparity outDisparity:(id)outDisparity;
- (int)exponentialMovingAverageFilter:(id)filter inDisplacement:(id)displacement inDemaPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outDEMA:(id)a;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTDisparityFilterDEMA_LKT

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context sensorPort:(id)port
{
  contextCopy = context;
  portCopy = port;
  v53.receiver = self;
  v53.super_class = PTDisparityFilterDEMA_LKT;
  v9 = [(PTDisparityFilterDEMA_LKT *)&v53 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, context);
    v10->_direction = -1.0;
    if (([@"PortTypeFrontInfrared" isEqual:portCopy] & 1) == 0 && (objc_msgSend(@"PortTypeFront", "isEqual:", portCopy) & 1) == 0 && (objc_msgSend(@"PortTypeBackTelephoto", "isEqual:", portCopy) & 1) == 0)
    {
      [@"PortTypeBack" isEqual:portCopy];
    }

    v52 = 0;
    v10->_erodeMonocularDisparity = 0.0;
    v10->_motionVisualization = 0;
    v11 = [@"PortTypeFrontSuperWide" isEqual:portCopy];
    if (v11)
    {
      v10->_erodeMonocularDisparity = 0.75;
      v12 = _PTLogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PTDisparityFilterDEMA_LKT initWithMetalContext:v12 sensorPort:?];
      }
    }

    v13 = objc_opt_new();
    [v13 setNormalizedCoordinates:1];
    [v13 setMinFilter:1];
    [v13 setMagFilter:1];
    v14 = objc_msgSend_device(contextCopy);
    v15 = [v14 newSamplerStateWithDescriptor:v13];
    samplerState = v10->_samplerState;
    v10->_samplerState = v15;

    v17 = objc_opt_new();
    [v17 setConstantFloat2:@"kIIRUpdateCoefficients_float2" withName:0.00029296876];
    [v17 setConstantFloat2:@"kMotionThresholdMinMax_float2" withName:524288.125];
    *&v18 = v10->_direction;
    [v17 setConstantFloat:@"kDirection_float" withName:v18];
    [v17 setConstantValue:&v52 type:29 withName:@"kMotionCorrectionFunction"];
    v19 = [contextCopy computePipelineStateFor:@"temporalFilterDEMA_LKT" withConstants:v17];
    temporalFilterDEMA_LKT = v10->_temporalFilterDEMA_LKT;
    v10->_temporalFilterDEMA_LKT = v19;

    if (v10->_temporalFilterDEMA_LKT)
    {
      v22 = [contextCopy computePipelineStateFor:@"temporalFilterDEMA_LKT_VisualizeMotion" withConstants:v17];
      temporalFilterDEMA_LKT_VisualizeMotion = v10->_temporalFilterDEMA_LKT_VisualizeMotion;
      v10->_temporalFilterDEMA_LKT_VisualizeMotion = v22;

      if (v10->_temporalFilterDEMA_LKT_VisualizeMotion)
      {
        v25 = [contextCopy computePipelineStateFor:@"resampleDisparity" withConstants:v17];
        resampleDisparity = v10->_resampleDisparity;
        v10->_resampleDisparity = v25;

        if (v10->_resampleDisparity)
        {
          v28 = v10;
LABEL_22:

          goto LABEL_23;
        }

        v29 = _PTLogSystem(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(PTDisparityFilterDEMA_LKT *)v29 initWithMetalContext:v44 sensorPort:v45, v46, v47, v48, v49, v50];
        }
      }

      else
      {
        v29 = _PTLogSystem(v24);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(PTDisparityFilterDEMA_LKT *)v29 initWithMetalContext:v37 sensorPort:v38, v39, v40, v41, v42, v43];
        }
      }
    }

    else
    {
      v29 = _PTLogSystem(v21);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v29 initWithMetalContext:v30 sensorPort:v31, v32, v33, v34, v35, v36];
      }
    }

    v28 = 0;
    goto LABEL_22;
  }

  v28 = 0;
LABEL_23:

  return v28;
}

- (PTDisparityFilterDEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  contextCopy = context;
  v14 = [(PTDisparityFilterDEMA_LKT *)self initWithMetalContext:contextCopy sensorPort:port];
  v15 = v14;
  if (v14)
  {
    v14->_frameCount = 0;
    v16 = *&size->var0;
    v14->_disparitySize.depth = size->var2;
    *&v14->_disparitySize.width = v16;
    v17 = *&filteredSize->var0;
    v14->_disparityFilteredSize.depth = filteredSize->var2;
    *&v14->_disparityFilteredSize.width = v17;
    v18 = [PTOpticalFlow alloc];
    v19 = v15->_direction == 1.0;
    v60 = *&colorSize->var0;
    var2 = colorSize->var2;
    v20 = [(PTOpticalFlow *)v18 initWithMetalContext:contextCopy colorSize:&v60 lktPreset:1 allocateDisplacementFWD:0 needConversionBGRA2YUVA:0 inverseFlow:v19];
    opticalFlow = v15->_opticalFlow;
    v15->_opticalFlow = v20;

    if (!v15->_opticalFlow)
    {
      v30 = _PTLogSystem(v22);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v30 initWithMetalContext:v38 disparitySize:v39 disparityFilteredSize:v40 disparityPixelFormat:v41 colorSize:v42 colorPixelFormat:v43 sensorPort:v44];
      }

      goto LABEL_14;
    }

    v23 = [[PTGlobalReduction alloc] initWithMetalContext:contextCopy textureSize:65 pixelFormat:size->var0, size->var1];
    globalReduction = v15->_globalReduction;
    v15->_globalReduction = v23;

    if (!v15->_globalReduction)
    {
      v30 = _PTLogSystem(v25);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV2002 *)v30 initWithMetalContext:v45 colorSize:v46 disparitySize:v47 debugRendering:v48 verbose:v49 options:v50 quality:v51];
      }

      goto LABEL_14;
    }

    v26 = objc_msgSend_device(contextCopy);
    v27 = [v26 newBufferWithLength:16 options:0];
    avgDisplacement = v15->_avgDisplacement;
    v15->_avgDisplacement = v27;

    if (!v15->_avgDisplacement)
    {
      v30 = _PTLogSystem(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v30 initWithMetalContext:v52 disparitySize:v53 disparityFilteredSize:v54 disparityPixelFormat:v55 colorSize:v56 colorPixelFormat:v57 sensorPort:v58];
      }

      goto LABEL_14;
    }

    if (!v15->_globalReduction)
    {
      v30 = _PTLogSystem(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityFilterDEMA_LKT *)v30 initWithMetalContext:v31 disparitySize:v32 disparityFilteredSize:v33 disparityPixelFormat:v34 colorSize:v35 colorPixelFormat:v36 sensorPort:v37];
      }

LABEL_14:

      v15 = 0;
    }
  }

  return v15;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  outDisparityCopy = outDisparity;
  stateCopy = state;
  v20 = stateCopy;
  if (prevCopy == outDisparityCopy)
  {
    v22 = _PTLogSystem(stateCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterDEMA_LKT *)v22 temporalDisparityFilter:v23 inDisplacement:v24 inStatePrev:v25 inDisparity:v26 outDisparity:v27 outState:v28, v29];
    }

    v21 = -10;
  }

  else
  {
    if (self->_frameCount)
    {
      v21 = [(PTDisparityFilterDEMA_LKT *)self exponentialMovingAverageFilter:filterCopy inDisplacement:displacementCopy inDemaPrev:prevCopy inDisparity:disparityCopy outDisparity:outDisparityCopy outDEMA:stateCopy];
    }

    else
    {
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:filterCopy inDisparity:disparityCopy outDisparity:outDisparityCopy];
      [(PTDisparityFilterDEMA_LKT *)self copyDisparity:filterCopy inDisparity:disparityCopy outDisparity:v20];
      v21 = 0;
    }

    ++self->_frameCount;
  }

  return v21;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  disparityCopy = disparity;
  outDisparityCopy = outDisparity;
  v19 = outDisparityCopy;
  if (bias == 0.0)
  {
    demaStates = self->_demaStates;
    if (!demaStates)
    {
      v44 = MEMORY[0x277CBEA60];
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v31 = [textureUtil createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
      textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
      v33 = [textureUtil2 createWithWidth:self->_disparityFilteredSize.width height:self->_disparityFilteredSize.height pixelFormat:65];
      v34 = [v44 arrayWithObjects:{v31, v33, 0}];
      v35 = self->_demaStates;
      self->_demaStates = v34;

      demaStates = self->_demaStates;
    }

    if (self->_frameCount >= 0)
    {
      v36 = self->_frameCount & 1;
    }

    else
    {
      v36 = -(self->_frameCount & 1);
    }

    v37 = [(NSArray *)demaStates objectAtIndexedSubscript:v36];
    frameCount = self->_frameCount;
    v39 = __OFADD__(frameCount++, 1);
    v40 = (frameCount < 0) ^ v39;
    v41 = frameCount & 1;
    if (v40)
    {
      v41 = -v41;
    }

    v42 = [(NSArray *)self->_demaStates objectAtIndexedSubscript:v41];
    v28 = [(PTDisparityFilterDEMA_LKT *)self temporalDisparityFilter:filterCopy inDisplacement:displacementCopy inStatePrev:v37 inDisparity:disparityCopy outDisparity:v19 outState:v42];
  }

  else
  {
    v20 = _PTLogSystem(outDisparityCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterDEMA_LKT *)v20 temporalDisparityFilter:v21 inDisplacement:v22 inDisparityPrev:v23 inDisparity:v24 outDisparity:v25 disparityBias:v26, v27];
    }

    v28 = -10;
  }

  return v28;
}

- (int)exponentialMovingAverageFilter:(id)filter inDisplacement:(id)displacement inDemaPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outDEMA:(id)a
{
  globalReduction = self->_globalReduction;
  avgDisplacement = self->_avgDisplacement;
  aCopy = a;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  prevCopy = prev;
  displacementCopy = displacement;
  filterCopy = filter;
  [(PTGlobalReduction *)globalReduction parallelReductionAverage:filterCopy inTexture:displacementCopy outGlobalAverage:avgDisplacement];
  computeCommandEncoder = [filterCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v24 = _PTLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v24 disparityApplyPostModifier:v25 inDisparity:v26 outDisparity:v27 postModifier:v28, v29, v30, v31];
    }
  }

  v32 = 16;
  if (self->_motionVisualization)
  {
    v32 = 24;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v32)];
  [computeCommandEncoder setTexture:displacementCopy atIndex:0];

  [computeCommandEncoder setTexture:prevCopy atIndex:1];
  [computeCommandEncoder setTexture:disparityCopy atIndex:2];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:3];
  [computeCommandEncoder setTexture:aCopy atIndex:4];

  [computeCommandEncoder setBuffer:self->_avgDisplacement offset:0 atIndex:0];
  [computeCommandEncoder setBytes:&self->_erodeMonocularDisparity length:4 atIndex:1];
  [computeCommandEncoder setSamplerState:self->_samplerState atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v38[0] = width;
  v38[1] = height;
  v38[2] = 1;
  v36 = xmmword_2244A5230;
  v37 = 1;
  [computeCommandEncoder dispatchThreads:v38 threadsPerThreadgroup:&v36];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)copyDisparity:(id)disparity inDisparity:(id)inDisparity outDisparity:(id)outDisparity
{
  outDisparityCopy = outDisparity;
  inDisparityCopy = inDisparity;
  computeCommandEncoder = [disparity computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_resampleDisparity];
  [computeCommandEncoder setTexture:inDisparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setSamplerState:self->_samplerState atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v24[0] = width;
  v24[1] = height;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (double)initWithMetalContext:(float *)a1 sensorPort:(NSObject *)a2 .cold.1(float *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "PTDisparityFilterDEMA_LKT enabling disparity erosion with strength: %.2f", &v4, 0xCu);
  return result;
}

- (void)initWithMetalContext:(uint64_t)a3 sensorPort:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_resampleDisparity";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 sensorPort:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_temporalFilterDEMA_LKT_VisualizeMotion";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 sensorPort:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_temporalFilterDEMA_LKT";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 disparityFilteredSize:(uint64_t)a5 disparityPixelFormat:(uint64_t)a6 colorSize:(uint64_t)a7 colorPixelFormat:(uint64_t)a8 sensorPort:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_avgDisplacement";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 disparityFilteredSize:(uint64_t)a5 disparityPixelFormat:(uint64_t)a6 colorSize:(uint64_t)a7 colorPixelFormat:(uint64_t)a8 sensorPort:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_opticalFlow";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end