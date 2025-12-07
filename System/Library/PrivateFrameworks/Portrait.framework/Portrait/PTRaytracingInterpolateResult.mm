@interface PTRaytracingInterpolateResult
+ (PTNoiseValues)calculateVarReadNoise:(id)noise;
- (PTRaytracingInterpolateResult)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise;
- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a;
- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight;
@end

@implementation PTRaytracingInterpolateResult

- (PTRaytracingInterpolateResult)initWithMetalContext:(id)context useExportQualityNoise:(BOOL)noise
{
  noiseCopy = noise;
  contextCopy = context;
  v101.receiver = self;
  v101.super_class = PTRaytracingInterpolateResult;
  v8 = [(PTRaytracingInterpolateResult *)&v101 init];
  v9 = v8;
  if (!v8)
  {
    v50 = 0;
    goto LABEL_29;
  }

  objc_storeStrong(&v8->_metalContext, context);
  if (noiseCopy)
  {
    v10 = 512;
  }

  else
  {
    v10 = 256;
  }

  v100 = v10;
  v11 = [PTPrecomputeRandom computeGaussian:v9->_metalContext sideLength:?];
  precomputedGaussian = v9->_precomputedGaussian;
  v9->_precomputedGaussian = v11;

  v9->_precomputedGaussianOffsetMaxValue = 0x7FFF;
  v13 = objc_opt_new();
  [v13 setConstantValue:&v100 type:29 withName:@"kSizePrecomputedGaussian"];
  LODWORD(v14) = 2.0;
  [v13 setConstantFloat:@"kSizeNoiseGrain_float" withName:v14];
  imageblocksSupported = [contextCopy imageblocksSupported];
  v16 = @"NoImageblocks";
  if (imageblocksSupported)
  {
    v16 = &stru_2837D16E8;
  }

  v17 = v16;
  v18 = 0;
  interpolateRGBWeightSourceYUVDestRGBA = v9->_interpolateRGBWeightSourceYUVDestRGBA;
  interpolateRGBWeightSourceYUVDestYUV = v9->_interpolateRGBWeightSourceYUVDestYUV;
  interpolateRGBWeightRGBALinearDestRGBA = v9->_interpolateRGBWeightRGBALinearDestRGBA;
  interpolateRGBWeightSourceRGBADestRGBA = v9->_interpolateRGBWeightSourceRGBADestRGBA;
  interpolateRGBWeightSourceYUVDestYUVPostProcess = v9->_interpolateRGBWeightSourceYUVDestYUVPostProcess;
  interpolateRGBWeightRGBALinearDestYUV = v9->_interpolateRGBWeightRGBALinearDestYUV;
  while (1)
  {
    v21 = contextCopy;
    v99 = supportedColorTransferFunctions_2[v18];
    [v13 setConstantValue:&v99 type:29 withName:@"kColorTransferFunctionToLinear"];
    metalContext = v9->_metalContext;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceYUVDestRGBA%@", v17];
    v24 = [(PTMetalContext *)metalContext computePipelineStateFor:v23 withConstants:v13];
    v25 = interpolateRGBWeightSourceYUVDestRGBA[v99];
    interpolateRGBWeightSourceYUVDestRGBA[v99] = v24;

    if (!interpolateRGBWeightSourceYUVDestRGBA[v99])
    {
      v51 = _PTLogSystem(v26);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v52 useExportQualityNoise:v53, v54, v55, v56, v57, v58];
      }

      goto LABEL_26;
    }

    v27 = v9->_metalContext;
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceYUVDestYUV%@", v17];
    v29 = [(PTMetalContext *)v27 computePipelineStateFor:v28 withConstants:v13];
    v30 = interpolateRGBWeightSourceYUVDestYUV[v99];
    interpolateRGBWeightSourceYUVDestYUV[v99] = v29;

    if (!interpolateRGBWeightSourceYUVDestYUV[v99])
    {
      v51 = _PTLogSystem(v31);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v59 useExportQualityNoise:v60, v61, v62, v63, v64, v65];
      }

      goto LABEL_26;
    }

    v32 = v9->_metalContext;
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightSourceRGBADestRGBA%@", v17];
    v34 = [(PTMetalContext *)v32 computePipelineStateFor:v33 withConstants:v13];
    v35 = interpolateRGBWeightSourceRGBADestRGBA[v99];
    interpolateRGBWeightSourceRGBADestRGBA[v99] = v34;

    if (!interpolateRGBWeightSourceRGBADestRGBA[v99])
    {
      v51 = _PTLogSystem(v36);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v66 useExportQualityNoise:v67, v68, v69, v70, v71, v72];
      }

      goto LABEL_26;
    }

    v37 = v9->_metalContext;
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightRGBALinearDestRGBA%@", v17];
    v39 = [(PTMetalContext *)v37 computePipelineStateFor:v38 withConstants:v13];
    v40 = interpolateRGBWeightRGBALinearDestRGBA[v99];
    interpolateRGBWeightRGBALinearDestRGBA[v99] = v39;

    if (!interpolateRGBWeightRGBALinearDestRGBA[v99])
    {
      v51 = _PTLogSystem(v41);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v73 useExportQualityNoise:v74, v75, v76, v77, v78, v79];
      }

LABEL_26:
      contextCopy = v21;
      goto LABEL_27;
    }

    v42 = v9->_metalContext;
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolateRGBWeightRGBALinearDestYUV%@", v17];
    v44 = [(PTMetalContext *)v42 computePipelineStateFor:v43 withConstants:v13];
    v45 = interpolateRGBWeightRGBALinearDestYUV[v99];
    interpolateRGBWeightRGBALinearDestYUV[v99] = v44;

    if (!interpolateRGBWeightRGBALinearDestYUV[v99])
    {
      v51 = _PTLogSystem(v46);
      contextCopy = v21;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v81 useExportQualityNoise:v82, v83, v84, v85, v86, v87];
      }

      goto LABEL_27;
    }

    contextCopy = v21;
    if ([v21 imageblocksSupported])
    {
      v47 = [(PTMetalContext *)v9->_metalContext computePipelineStateFor:@"interpolateRGBWeightSourceYUVDestYUVPostModify" withConstants:v13];
      v48 = interpolateRGBWeightSourceYUVDestYUVPostProcess[v99];
      interpolateRGBWeightSourceYUVDestYUVPostProcess[v99] = v47;

      if (!interpolateRGBWeightSourceYUVDestYUVPostProcess[v99])
      {
        break;
      }
    }

    if (++v18 == 5)
    {
      v50 = v9;
      goto LABEL_28;
    }
  }

  v51 = _PTLogSystem(v49);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    [(PTRaytracingInterpolateResult *)v51 initWithMetalContext:v88 useExportQualityNoise:v89, v90, v91, v92, v93, v94];
  }

LABEL_27:

  v50 = 0;
LABEL_28:

LABEL_29:
  return v50;
}

- (void)interpolateRGBWeightUsingSourceToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight
{
  requestCopy = request;
  weightCopy = weight;
  computeCommandEncoder = [dest computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v71[1] = v11;
  v71[0] = v12;
  [PTRaytracingInterpolateResult calculateVarReadNoise:requestCopy];
  v70[0] = v13;
  v70[1] = v14;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v62 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v17 = [PTImageblockConfig alloc];
  destinationColor = [requestCopy destinationColor];
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v19 = [(PTImageblockConfig *)v17 initWithPTTexture:destinationColor scissorRect:&v68];

  [(PTImageblockConfig *)v19 scissorRectOffset];
  v67[1] = v20;
  v67[0] = v21;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  }

  sourceColor2 = [requestCopy sourceColor];
  if (([sourceColor2 isRGB] & 1) == 0)
  {

LABEL_11:
    v29 = weightCopy;
    v68 = 0uLL;
    *&v69 = 0;
    sourceColor3 = [requestCopy sourceColor];
    objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);

    sourceColor4 = [requestCopy sourceColor];
    texLuma = [sourceColor4 texLuma];
    sourceColor5 = [requestCopy sourceColor];
    texChroma = [sourceColor5 texChroma];
    v66 = [PTColorConversion getChromaSubsampledFromLuma:texLuma texChroma:texChroma];

    destinationColor2 = [requestCopy destinationColor];
    isRGB = [destinationColor2 isRGB];

    if (isRGB)
    {
      destinationColor3 = [requestCopy destinationColor];
      transferFunction2 = [destinationColor3 transferFunction];
      v39 = [PTColorConversion getTransferFunction:transferFunction2 toLinear:1];

      LODWORD(v63) = v39;
      [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestRGBA[v62]];
      weightCopy = v29;
      [computeCommandEncoder setTexture:v29 atIndex:0];
      [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
      sourceColor6 = [requestCopy sourceColor];
      texLuma2 = [sourceColor6 texLuma];
      [computeCommandEncoder setTexture:texLuma2 atIndex:2];

      sourceColor7 = [requestCopy sourceColor];
      texChroma2 = [sourceColor7 texChroma];
      [computeCommandEncoder setTexture:texChroma2 atIndex:3];

      destinationColor4 = [requestCopy destinationColor];
      texRGBA = [destinationColor4 texRGBA];
      [computeCommandEncoder setTexture:texRGBA atIndex:4];

      [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
      [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
      [computeCommandEncoder setBytes:&v68 length:24 atIndex:2];
      [computeCommandEncoder setBytes:&v66 length:2 atIndex:3];
      v46 = &v63;
      v47 = computeCommandEncoder;
      v48 = 4;
      goto LABEL_18;
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    sourceColor8 = [requestCopy sourceColor];
    objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);

    integratedStyleCoefficientsTextureArray = [requestCopy integratedStyleCoefficientsTextureArray];
    weightCopy = v29;
    if (integratedStyleCoefficientsTextureArray)
    {
    }

    else
    {
      colorCube = [requestCopy colorCube];

      if (!colorCube)
      {
        [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUV[v62]];
        goto LABEL_17;
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceYUVDestYUVPostProcess[v62]];
    colorCube2 = [requestCopy colorCube];
    [computeCommandEncoder setTexture:colorCube2 atIndex:7];

LABEL_17:
    [computeCommandEncoder setTexture:v29 atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    sourceColor9 = [requestCopy sourceColor];
    texLuma3 = [sourceColor9 texLuma];
    [computeCommandEncoder setTexture:texLuma3 atIndex:2];

    sourceColor10 = [requestCopy sourceColor];
    texChroma3 = [sourceColor10 texChroma];
    [computeCommandEncoder setTexture:texChroma3 atIndex:3];

    destinationColor5 = [requestCopy destinationColor];
    texLuma4 = [destinationColor5 texLuma];
    [computeCommandEncoder setTexture:texLuma4 atIndex:4];

    destinationColor6 = [requestCopy destinationColor];
    texChroma4 = [destinationColor6 texChroma];
    [computeCommandEncoder setTexture:texChroma4 atIndex:5];

    [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&v68 length:24 atIndex:2];
    [computeCommandEncoder setBytes:&v63 length:24 atIndex:3];
    v46 = &v66;
    v47 = computeCommandEncoder;
    v48 = 2;
LABEL_18:
    [v47 setBytes:v46 length:v48 atIndex:4];
    [computeCommandEncoder setBytes:v67 length:4 atIndex:5];
    v19 = v61;
    if (!v61)
    {
      goto LABEL_9;
    }

LABEL_19:
    objc_msgSend_threads(v19);
    objc_msgSend_threadsPerGroup(v19);
    goto LABEL_20;
  }

  destinationColor7 = [requestCopy destinationColor];
  isRGB2 = [destinationColor7 isRGB];

  if (!isRGB2)
  {
    goto LABEL_11;
  }

  [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightSourceRGBADestRGBA[v62]];
  [computeCommandEncoder setTexture:weightCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
  sourceColor11 = [requestCopy sourceColor];
  texRGBA2 = [sourceColor11 texRGBA];
  [computeCommandEncoder setTexture:texRGBA2 atIndex:2];

  destinationColor8 = [requestCopy destinationColor];
  texRGBA3 = [destinationColor8 texRGBA];
  [computeCommandEncoder setTexture:texRGBA3 atIndex:3];

  [computeCommandEncoder setBytes:v70 length:8 atIndex:0];
  [computeCommandEncoder setBytes:v71 length:4 atIndex:1];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:2];
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_9:
  v68 = 0uLL;
  *&v69 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
LABEL_20:
  [computeCommandEncoder dispatchThreads:&v68 threadsPerThreadgroup:&v63];
  [computeCommandEncoder endEncoding];
}

- (void)interpolateRGBWeightUsingRGBALinearToDest:(id)dest renderRequest:(id)request inRGBWeight:(id)weight inRGBA:(id)a
{
  requestCopy = request;
  weightCopy = weight;
  aCopy = a;
  computeCommandEncoder = [dest computeCommandEncoder];
  +[PTRandom nextUshort2:seed:](PTRandom, "nextUshort2:seed:", self->_precomputedGaussianOffsetMaxValue, [requestCopy frameId]);
  v51[1] = v14;
  v51[0] = v15;
  [PTRaytracingInterpolateResult calculateVarReadNoise:requestCopy];
  v50[0] = v16;
  v50[1] = v17;
  sourceColor = [requestCopy sourceColor];
  transferFunction = [sourceColor transferFunction];
  v20 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v21 = [PTImageblockConfig alloc];
  destinationColor = [requestCopy destinationColor];
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v23 = [(PTImageblockConfig *)v21 initWithPTTexture:destinationColor scissorRect:&v48];

  [(PTImageblockConfig *)v23 scissorRectOffset];
  v47[1] = v24;
  v47[0] = v25;
  if ([(PTMetalContext *)self->_metalContext imageblocksSupported])
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v23 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v23, "imageblockSize")}];
  }

  destinationColor2 = [requestCopy destinationColor];
  isRGB = [destinationColor2 isRGB];

  if (isRGB)
  {
    [computeCommandEncoder setComputePipelineState:self->_interpolateRGBWeightRGBALinearDestRGBA[v20]];
    [computeCommandEncoder setTexture:weightCopy atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    [computeCommandEncoder setTexture:aCopy atIndex:2];
    destinationColor3 = [requestCopy destinationColor];
    texRGBA = [destinationColor3 texRGBA];
    [computeCommandEncoder setTexture:texRGBA atIndex:3];

    [computeCommandEncoder setBytes:v50 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v51 length:4 atIndex:1];
    v30 = computeCommandEncoder;
    v31 = 2;
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
    sourceColor2 = [requestCopy sourceColor];
    objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);

    sourceColor3 = [requestCopy sourceColor];
    [sourceColor3 texLuma];
    v44 = v23;
    v34 = v20;
    v36 = v35 = weightCopy;
    sourceColor4 = [requestCopy sourceColor];
    [sourceColor4 texChroma];
    v38 = v45 = aCopy;
    LOWORD(v46[0]) = [PTColorConversion getChromaSubsampledFromLuma:v36 texChroma:v38];

    weightCopy = v35;
    v39 = &self->super.isa + v34;
    v23 = v44;
    [computeCommandEncoder setComputePipelineState:v39[37]];
    [computeCommandEncoder setTexture:v35 atIndex:0];
    [computeCommandEncoder setTexture:self->_precomputedGaussian atIndex:1];
    [computeCommandEncoder setTexture:v45 atIndex:2];
    destinationColor4 = [requestCopy destinationColor];
    texLuma = [destinationColor4 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:3];

    destinationColor5 = [requestCopy destinationColor];
    texChroma = [destinationColor5 texChroma];
    [computeCommandEncoder setTexture:texChroma atIndex:4];

    aCopy = v45;
    [computeCommandEncoder setBytes:v50 length:8 atIndex:0];
    [computeCommandEncoder setBytes:v51 length:4 atIndex:1];
    [computeCommandEncoder setBytes:&v48 length:24 atIndex:2];
    [computeCommandEncoder setBytes:v46 length:2 atIndex:3];
    v30 = computeCommandEncoder;
    v31 = 4;
  }

  [v30 setBytes:v47 length:4 atIndex:v31];
  if (v23)
  {
    objc_msgSend_threads(v23);
    objc_msgSend_threadsPerGroup(v23);
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 0;
    memset(v46, 0, sizeof(v46));
  }

  [computeCommandEncoder dispatchThreads:&v48 threadsPerThreadgroup:v46];
  [computeCommandEncoder endEncoding];
}

+ (PTNoiseValues)calculateVarReadNoise:(id)noise
{
  noiseCopy = noise;
  v4 = [noiseCopy AGC];
  conversionGain = [noiseCopy conversionGain];
  readNoise_1x = [noiseCopy readNoise_1x];
  readNoise_8x = [noiseCopy readNoise_8x];
  renderState = [noiseCopy renderState];
  +[PTTuningParameters noiseScaleFactorForHwModelID:sensorID:](PTTuningParameters, "noiseScaleFactorForHwModelID:sensorID:", [renderState hwModelID], objc_msgSend(noiseCopy, "sensorID"));
  v10 = v9;

  renderState2 = [noiseCopy renderState];
  sourceColorBitDepth = [renderState2 sourceColorBitDepth];

  renderState3 = [noiseCopy renderState];
  *&v14 = v10;
  [renderState3 setNoiseScaleFactor:v14];

  [noiseCopy totalSensorCropRectSize];
  v16 = v15;
  sourceColor = [noiseCopy sourceColor];
  width = [sourceColor width];
  [noiseCopy visCropFactor];
  v20 = v16 / (width * v19);
  [noiseCopy totalSensorCropRectSize];
  v22 = v21 * v20;
  sourceColor2 = [noiseCopy sourceColor];
  height = [sourceColor2 height];
  [noiseCopy visCropFactor];
  v34 = v25;

  v26 = v10 / (v22 / vmuls_lane_f32(height, v34, 1));
  v27 = v26 / 1023.0;
  if (sourceColorBitDepth == 10)
  {
    v27 = (v26 / 1023.0) * 12.0;
  }

  v28 = v4 / 255.0;
  v29 = (conversionGain / 65535.0) * v27;
  v30 = (readNoise_1x / 65535.0) * (readNoise_1x / 65535.0);
  v31 = (v30 - ((readNoise_8x / 65535.0) * (readNoise_8x / 65535.0))) / 0.98438;
  v32 = v29 * ((v31 + ((v28 * (v30 - v31)) * v28)) * v29);
  v33 = v28 * v29;
  result.var1 = v33;
  result.var0 = v32;
  return result;
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightSourceYUVDestYUVPostProcess[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightRGBALinearDestYUV[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightRGBALinearDestRGBA[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightSourceRGBADestRGBA[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightSourceYUVDestYUV[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 useExportQualityNoise:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolateRGBWeightSourceYUVDestRGBA[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end