@interface PTRaytracingV14
- (PTRaytracingV14)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV14

- (PTRaytracingV14)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  height = disparitySize.height;
  width = disparitySize.width;
  v14 = size.height;
  v15 = size.width;
  contextCopy = context;
  optionsCopy = options;
  v96.receiver = self;
  v96.super_class = PTRaytracingV14;
  v20 = [(PTRaytracingV14 *)&v96 init];
  v22 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

  PTKTraceInit(v20, v21);
  v22->_disparitySize.width = width;
  v22->_disparitySize.height = height;
  objc_storeStrong(&v22->_metalContext, context);
  v22->_debugRendering = rendering;
  objc_storeStrong(&v22->_options, options);
  +[PTRaytracingUtilsV1 createFocusEdge];
  v22->_focusEdge.width = v23;
  v22->_focusEdge.gradientThreshold = v24;
  v22->_focusEdge.gradientWeight = v25;
  v22->_focusEdge.minMaxThreshold = v26;
  v27 = [[PTColorConversion alloc] initWithMetalContext:contextCopy];
  colorConversion = v22->_colorConversion;
  v22->_colorConversion = v27;

  if (!v22->_colorConversion)
  {
    v39 = _PTLogSystem(v29);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [(PTApplyHomographies *)v39 initWithMetalContext:v40 colorSize:v41 disparitySize:v42, v43, v44, v45, v46];
    }

    goto LABEL_20;
  }

  v30 = [[PTRaytracingUtilsV1 alloc] initWithMetalContext:v22->_metalContext];
  raytracingUtils = v22->_raytracingUtils;
  v22->_raytracingUtils = v30;

  if (!v22->_raytracingUtils)
  {
    v39 = _PTLogSystem(v32);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v39 initWithMetalContext:v47 colorSize:v48 disparitySize:v49 debugRendering:v50 verbose:v51 options:v52 quality:v53];
    }

    goto LABEL_20;
  }

  v33 = [[PTUtil alloc] initWithMetalContext:v22->_metalContext];
  util = v22->_util;
  v22->_util = v33;

  if (!v22->_util)
  {
    v39 = _PTLogSystem(v35);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v39 initWithMetalContext:v54 colorSize:v55 disparitySize:v56 debugRendering:v57 verbose:v58 options:v59 quality:v60];
    }

    goto LABEL_20;
  }

  v22->_bicubicUpscale = 0;
  v36 = [optionsCopy objectForKeyedSubscript:&unk_2837F3208];
  v22->_injectedRGBAPyramid = v36 != 0;

  if (v22->_injectedRGBAPyramid)
  {
    v37 = [optionsCopy objectForKeyedSubscript:&unk_2837F3208];
    rgbaPyramid = v22->_rgbaPyramid;
    v22->_rgbaPyramid = v37;
  }

  else
  {
    v61 = [PTPyramid alloc];
    metalContext = v22->_metalContext;
    qualitySettings = [(PTRaytracingV14RenderState *)v22->_renderState qualitySettings];
    v64 = -[PTPyramid initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:](v61, "initWithMetalContext:colorSize:pixelFormat:skipFullSizeLayer:doFirstLevelGaussianDownsample:mipmapLevelCount:", metalContext, 115, 0, [qualitySettings doFirstLevelGaussianDownsample], 4, v15, v14);
    v65 = v22->_rgbaPyramid;
    v22->_rgbaPyramid = v64;

    if (!v22->_rgbaPyramid)
    {
      v39 = _PTLogSystem(v66);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV14 *)v39 initWithMetalContext:v85 colorSize:v86 disparitySize:v87 debugRendering:v88 verbose:v89 options:v90 quality:v91];
      }

      goto LABEL_20;
    }
  }

  v67 = [PTRaytracingV14RenderState alloc];
  v94 = v22->_metalContext;
  v95 = v67;
  v93 = v22->_util;
  mipmapTexture = [(PTPyramid *)v22->_rgbaPyramid mipmapTexture];
  pixelFormat = [mipmapTexture pixelFormat];
  options = v22->_options;
  v71 = objc_alloc(MEMORY[0x277CBEA60]);
  mipmapTexture2 = [(PTPyramid *)v22->_rgbaPyramid mipmapTexture];
  v73 = [v71 initWithObjects:{mipmapTexture2, 0}];
  v74 = [(PTRaytracingV14RenderState *)v95 initWithMetalContext:v94 util:v93 quality:v9 colorSize:rendering disparitySize:pixelFormat debugRendering:options pyramidPixelFormat:v15 options:v14 debugTextures:v22->_disparitySize.width, v22->_disparitySize.height, v73];
  renderState = v22->_renderState;
  v22->_renderState = v74;

  if (!v22->_renderState)
  {
    v39 = _PTLogSystem(v76);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV14 *)v39 initWithMetalContext:v78 colorSize:v79 disparitySize:v80 debugRendering:v81 verbose:v82 options:v83 quality:v84];
    }

LABEL_20:

LABEL_21:
    v77 = 0;
    goto LABEL_22;
  }

  v77 = v22;
LABEL_22:

  return v77;
}

- (int)renderContinuousWithSource:(id)source renderRequest:(id)request
{
  sourceCopy = source;
  requestCopy = request;
  renderState = [requestCopy renderState];
  [renderState quality];
  [requestCopy fNumber];
  [requestCopy focusDisparity];
  [requestCopy alphaLowLight];
  kdebug_trace();

  v144 = 0u;
  v145 = 0u;
  v143 = 0u;
  [(PTRaytracingV14RenderState *)self->_renderState pyramidSamplingFraction];
  v10 = v9;
  [(PTRaytracingV14RenderState *)self->_renderState anamorphicFactor];
  v12 = v11;
  [(PTRaytracingV14RenderState *)self->_renderState raytracingRadiusLocal];
  v14 = v13;
  [(PTRaytracingV14RenderState *)self->_renderState rayCount];
  objc_msgSend_colorSize(self->_renderState);
  v16 = v15;
  qualitySettings = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings doMacroApertureLimit];
  LODWORD(v18) = v10;
  LODWORD(v19) = v12;
  LODWORD(v20) = v14;
  objc_msgSend_createFocusObject_pyramidSamplingFraction_anamorphicFactor_raytracingRadiusLocal_rayCount_colorSize_doMacroApertureLimit_(PTRaytracingUtilsV1, v18, v19, v20, v16);

  v141 = 0u;
  v142 = 0u;
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  if (self->_injectedRGBAPyramid)
  {
    v21 = 0;
    goto LABEL_21;
  }

  qualitySettings2 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doFirstLevelGaussianDownsample = [qualitySettings2 doFirstLevelGaussianDownsample];

  if (doFirstLevelGaussianDownsample)
  {
    colorConversion = self->_colorConversion;
    sourceColor = [requestCopy sourceColor];
    mipmapLevels = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v27 = [mipmapLevels objectAtIndexedSubscript:0];
    LODWORD(colorConversion) = [(PTColorConversion *)colorConversion convertRGBLinearFromPTTexture:sourceCopy inPTTexture:sourceColor outRGBA:v27];

    if (colorConversion)
    {
      v29 = _PTLogSystem(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v30 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:sourceCopy offset:0];
    v21 = v30;
    if (v30)
    {
      v31 = _PTLogSystem(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
    raytracingUtils = self->_raytracingUtils;
    mipmapLevels2 = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    LODWORD(raytracingUtils) = [(PTRaytracingUtilsV1 *)raytracingUtils convertRGBPyramidFromSource:sourceCopy renderRequest:requestCopy rgbaPyramidArray:mipmapLevels2 skipLevel0:1];

    if (raytracingUtils)
    {
      v35 = _PTLogSystem(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }
    }

    v36 = [(PTPyramid *)self->_rgbaPyramid updatePyramid:sourceCopy offset:1];
    v21 = v36;
    if (v36)
    {
      v31 = _PTLogSystem(v36);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        [PTEffect render:];
      }

LABEL_20:
    }
  }

LABEL_21:
  qualitySettings3 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doCenterDisparity = [qualitySettings3 doCenterDisparity];

  if (doCenterDisparity)
  {
    v39 = self->_raytracingUtils;
    sourceDisparity = [requestCopy sourceDisparity];
    disparityDiff = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
    v138 = v143;
    v139 = v144;
    v140 = v145;
    [(PTRaytracingUtilsV1 *)v39 centerDisparityOnFocus:sourceCopy inDisparity:sourceDisparity outDisparity:disparityDiff focusObject:&v138];

    disparityDiff2 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiff];
  }

  else
  {
    disparityDiff2 = [requestCopy sourceDisparity];
  }

  v43 = disparityDiff2;
  globalReduction = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];

  if (globalReduction)
  {
    globalReduction2 = [(PTRaytracingV14RenderState *)self->_renderState globalReduction];
    disparityDiffGlobalMinMax = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [globalReduction2 parallelReductionMinMax:sourceCopy inTexture:v43 globalMinMaxBuffer:disparityDiffGlobalMinMax];

    v47 = self->_raytracingUtils;
    disparityEdgesTemp = [(PTRaytracingV14RenderState *)self->_renderState disparityEdgesTemp];
    disparityEdges = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
    disparityDiffGlobalMinMax2 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
    [(PTRaytracingV14RenderState *)self->_renderState edgeTolerance];
    v138 = v143;
    v139 = v144;
    v140 = v145;
    [(PTRaytracingUtilsV1 *)v47 detectDilatedEdges:sourceCopy inDisparity:v43 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v138 disparityDiffMinMax:disparityDiffGlobalMinMax2 edgeTolerance:?];
  }

  v129 = v21;
  disparityUpscale = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];

  if (disparityUpscale)
  {
    rgbaPyramid = self->_rgbaPyramid;
    disparityUpscale2 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    upscaledTexture = [disparityUpscale2 upscaledTexture];
    width = [upscaledTexture width];
    [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    v56 = v43;
    v58 = v57 = sourceCopy;
    upscaledTexture2 = [v58 upscaledTexture];
    height = [upscaledTexture2 height];
    *&v138 = width;
    *(&v138 + 1) = height;
    *&v139 = 0;
    qualitySettings4 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
    v62 = -[PTPyramid findMipmapLevelLargerThan:fromLevel:](rgbaPyramid, "findMipmapLevelLargerThan:fromLevel:", &v138, [qualitySettings4 doFirstLevelGaussianDownsample] ^ 1);

    sourceCopy = v57;
    disparityUpscale3 = [(PTRaytracingV14RenderState *)self->_renderState disparityUpscale];
    sourceColor2 = [requestCopy sourceColor];
    v43 = [disparityUpscale3 guidedUpsampling:v57 inDisparity:v56 inRGBA:v62 colorDepth:{objc_msgSend(sourceColor2, "YCbCrColorDepth")}];
  }

  focusEdgeMask = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];

  if (focusEdgeMask)
  {
    v66 = self->_raytracingUtils;
    focusEdgeMask2 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
    HIDWORD(v68) = DWORD1(v144);
    v138 = v143;
    v139 = v144;
    HIDWORD(v69) = DWORD1(v145);
    v140 = v145;
    *&v69 = self->_focusEdge.width;
    *&v68 = self->_focusEdge.gradientThreshold;
    *&v70 = self->_focusEdge.gradientWeight;
    *&v71 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtilsV1 *)v66 focusEdgeMask:sourceCopy inDisparityDiff:v43 focusObject:&v138 focusEdge:focusEdgeMask2 outFocusEdgeMask:v69, v68, v70, v71];
  }

  sourceDisparity2 = [requestCopy sourceDisparity];
  width2 = [sourceDisparity2 width];
  sourceDisparity3 = [requestCopy sourceDisparity];
  height2 = [sourceDisparity3 height];
  *v75.i32 = width2;
  *&v75.i32[1] = height2;
  v131 = v75;

  v76 = v131;
  v137 = v131;
  v76.i16[0] = v141;
  v128 = v76;
  qualitySettings5 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings5 renderDownscale];
  v131.i32[0] = v78;
  v79 = v128;
  v79.i16[2] = WORD4(v141);
  v80 = vcvt_f32_u32(vand_s8(v79, 0xFFFF0000FFFFLL));
  qualitySettings6 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings6 renderDownscale];
  v132 = vcvt_s32_f32(vdiv_f32(v80, __PAIR64__(v82, v131.u32[0])));

  v136[1] = v132.i16[2];
  v136[0] = v132.i16[0];
  v80.f32[0] = v142;
  qualitySettings7 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings7 renderDownscale];
  v85 = vcvtps_u32_f32(v80.f32[0] / v84);
  v80.f32[0] = *(&v142 + 1);
  qualitySettings8 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  [qualitySettings8 renderDownscale];
  v88 = vcvtps_u32_f32(v80.f32[0] / v87);

  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v90 = _PTLogSystem(0);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v90 disparityApplyPostModifier:v91 inDisparity:v92 outDisparity:v93 postModifier:v94, v95, v96, v97];
    }
  }

  raytracingSDOF = [(PTRaytracingV14RenderState *)self->_renderState raytracingSDOF];
  [computeCommandEncoder setComputePipelineState:raytracingSDOF];

  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  [computeCommandEncoder setTexture:v43 atIndex:1];
  disparityEdges2 = [(PTRaytracingV14RenderState *)self->_renderState disparityEdges];
  [computeCommandEncoder setTexture:disparityEdges2 atIndex:2];

  raytracedRGBRadius = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  [computeCommandEncoder setTexture:raytracedRGBRadius atIndex:3];

  focusEdgeMask3 = [(PTRaytracingV14RenderState *)self->_renderState focusEdgeMask];
  [computeCommandEncoder setTexture:focusEdgeMask3 atIndex:4];

  [computeCommandEncoder setBytes:&v143 length:48 atIndex:0];
  aperturePointsXY = [(PTRaytracingV14RenderState *)self->_renderState aperturePointsXY];
  [computeCommandEncoder setBuffer:aperturePointsXY offset:0 atIndex:1];

  randomUChars = [(PTRaytracingV14RenderState *)self->_renderState randomUChars];
  [computeCommandEncoder setBuffer:randomUChars offset:0 atIndex:2];

  disparityDiffGlobalMinMax3 = [(PTRaytracingV14RenderState *)self->_renderState disparityDiffGlobalMinMax];
  [computeCommandEncoder setBuffer:disparityDiffGlobalMinMax3 offset:0 atIndex:3];

  [computeCommandEncoder setBytes:&v137 length:8 atIndex:4];
  [computeCommandEncoder setBytes:v136 length:4 atIndex:5];
  *&v138 = v85;
  *(&v138 + 1) = v88;
  *&v139 = 1;
  v134 = vdupq_n_s64(8uLL);
  v135 = 1;
  [computeCommandEncoder dispatchThreads:&v138 threadsPerThreadgroup:&v134];
  [computeCommandEncoder endEncoding];
  raytracedRGBRadius2 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
  raytracedRGBRadiusUpscaled = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

  if (raytracedRGBRadiusUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    raytracedRGBRadius3 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadius];
    raytracedRGBRadiusUpscaled2 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];
    [textureUtil copy:sourceCopy inTex:raytracedRGBRadius3 outTex:raytracedRGBRadiusUpscaled2];

    raytracedRGBRadiusUpscaled3 = [(PTRaytracingV14RenderState *)self->_renderState raytracedRGBRadiusUpscaled];

    raytracedRGBRadius2 = raytracedRGBRadiusUpscaled3;
  }

  computeCommandEncoder2 = [sourceCopy computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    v114 = _PTLogSystem(v113);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v114 disparityApplyPostModifier:v115 inDisparity:v116 outDisparity:v117 postModifier:v118, v119, v120, v121];
    }
  }

  qualitySettings9 = [(PTRaytracingV14RenderState *)self->_renderState qualitySettings];
  doFirstLevelGaussianDownsample2 = [qualitySettings9 doFirstLevelGaussianDownsample];

  v124 = self->_raytracingUtils;
  if (doFirstLevelGaussianDownsample2)
  {
    mipmapTexture2 = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
    randomGaussNoise = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v124 interpolateRGBRadiusToDest:computeCommandEncoder2 renderRequest:requestCopy inRGBA:mipmapTexture2 inRGBRadius:raytracedRGBRadius2 inRandomGauss:randomGaussNoise bicubicSampling:self->_bicubicUpscale];
  }

  else
  {
    mipmapTexture2 = [(PTRaytracingV14RenderState *)self->_renderState randomGaussNoise];
    [(PTRaytracingUtilsV1 *)v124 interpolateRGBRadiusUsingSourceToDest:computeCommandEncoder2 renderRequest:requestCopy inRGBRadius:raytracedRGBRadius2 inRandomGauss:mipmapTexture2 bicubicSampling:self->_bicubicUpscale];
  }

  [computeCommandEncoder2 endEncoding];
  if (kdebug_is_enabled())
  {
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __60__PTRaytracingV14_renderContinuousWithSource_renderRequest___block_invoke;
    v133[3] = &unk_278522E68;
    v133[4] = self;
    [sourceCopy addCompletedHandler:v133];
  }

  return v129;
}

void __60__PTRaytracingV14_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) disparityUpscale];
  v5 = [*(*(a1 + 32) + 8) qualitySettings];
  [v5 renderDownscale];
  kdebug_trace();

  v6 = [v3 status];
  if (v6 != 4)
  {
    v7 = _PTLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(v3, v7);
    }

    v8 = [v3 status];
    if (v8 != 4)
    {
      v9 = _PTLogSystem(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(v3, v9);
      }
    }
  }
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_rgbaPyramid";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_renderState";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_util";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingUtils";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end