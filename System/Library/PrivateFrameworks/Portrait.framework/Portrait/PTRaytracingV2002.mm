@interface PTRaytracingV2002
- (PTRaytracingV2002)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV2002

- (PTRaytracingV2002)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  height = disparitySize.height;
  width = disparitySize.width;
  v256 = size.height;
  v257 = size.width;
  contextCopy = context;
  optionsCopy = options;
  v263.receiver = self;
  v263.super_class = PTRaytracingV2002;
  v18 = [(PTRaytracingV2002 *)&v263 init];
  v20 = v18;
  if (!v18)
  {
    goto LABEL_56;
  }

  PTKTraceInit(v18, v19);
  objc_storeStrong(&v20->_metalContext, context);
  v20->_debugRendering = rendering;
  objc_storeStrong(&v20->_options, options);
  v21 = [PTQualitySettings createWithQuality:v9 options:optionsCopy];
  qualitySettings = v20->_qualitySettings;
  v20->_qualitySettings = v21;

  if (v20->_qualitySettings)
  {
    +[PTRaytracingUtilsV2 createFocusEdge];
    v20->_focusEdge.width = v24;
    v20->_focusEdge.gradientThreshold = v25;
    v20->_focusEdge.gradientWeight = v26;
    v20->_focusEdge.minMaxThreshold = v27;
    v262 = [(PTQualitySettings *)v20->_qualitySettings quality]< 100;
    v28 = [optionsCopy objectForKeyedSubscript:&unk_2837F2E00];
    v20->_injectedRGBAPyramid = v28 != 0;

    if (v20->_injectedRGBAPyramid)
    {
      v29 = [optionsCopy objectForKeyedSubscript:&unk_2837F2E00];
      rgbaPyramid = v20->_rgbaPyramid;
      v20->_rgbaPyramid = v29;

      goto LABEL_8;
    }

    v256 = [[PTPyramid alloc] initWithMetalContext:v20->_metalContext colorSize:115 pixelFormat:v262 skipFullSizeLayer:[(PTQualitySettings *)v20->_qualitySettings doFirstLevelGaussianDownsample] doFirstLevelGaussianDownsample:4 mipmapLevelCount:v257, v256];
    v40 = v20->_rgbaPyramid;
    v20->_rgbaPyramid = v256;

    if (v20->_rgbaPyramid)
    {
LABEL_8:
      v42 = [[PTRaytracingUtilsV2 alloc] initWithMetalContext:v20->_metalContext];
      raytracingUtils = v20->_raytracingUtils;
      v20->_raytracingUtils = v42;

      if (v20->_raytracingUtils)
      {
        v45 = [[PTRaytracingInterpolateResultV2 alloc] initWithMetalContext:v20->_metalContext useExportQualityNoise:[(PTQualitySettings *)v20->_qualitySettings useExportQualityNoise]];
        raytracingInterpolateResult = v20->_raytracingInterpolateResult;
        v20->_raytracingInterpolateResult = v45;

        if (v20->_raytracingInterpolateResult)
        {
          v48 = [PTPrecomputeRandom computeUnitDiskPoints:v20->_metalContext numberOfPatternCircles:[(PTQualitySettings *)v20->_qualitySettings numberOfPatternCircles]];
          v50 = v49;
          xy = v20->_aperturePoints.xy;
          v20->_aperturePoints.xy = v48;

          *(&v20->_aperturePoints.rayCount + 2) = WORD2(v50);
          v20->_aperturePoints.rayCount = v50;
          if (v20->_aperturePoints.xy)
          {
            v53 = [PTPrecomputeRandom computeRandomUChars:v20->_metalContext rayCount:v50];
            randomUChars = v20->_randomUChars;
            v20->_randomUChars = v53;

            if (v20->_randomUChars)
            {
              v20->_kRayCount = v20->_aperturePoints.rayCount;
              v20->_doVisualization = 0;
              _H0 = *(&v20->_aperturePoints.rayCount + 2);
              __asm { FCVT            S10, H0 }

              v62.f64[0] = v257;
              v62.f64[1] = v256;
              *v20->_colorSize = vcvt_f32_f64(v62);
              *&v20->_kPyramidSamplingFraction = xmmword_2244A55E0;
              rayMarch = [(PTQualitySettings *)v20->_qualitySettings rayMarch];
              [(PTQualitySettings *)v20->_qualitySettings renderDownscale];
              v63 = 3.0;
              if (v64 <= 3.0)
              {
                [(PTQualitySettings *)v20->_qualitySettings renderDownscale];
                v63 = 1.0;
                if (v65 >= 2.0)
                {
                  v63 = 2.0;
                }
              }

              [(PTQualitySettings *)v20->_qualitySettings renderDownscale];
              v67 = fmaxf(v66, 2.0) + 0.5;
              *&v68 = 1.0 / (0.5 - v67);
              *(&v68 + 1) = -v67;
              v255 = v68;
              v69 = objc_opt_new();
              [v69 setConstantValue:&v20->_kRayCount type:29 withName:@"kRaycount"];
              [v69 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
              [v69 setConstantValue:&v262 type:53 withName:@"kSkipFullSizeLayer"];
              LODWORD(v70) = _S10;
              [v69 setConstantFloat:@"kRadiusLocal_float" withName:v70];
              LODWORD(v71) = 0.25;
              [v69 setConstantFloat:@"kRadiusLocalFraction_float" withName:v71];
              *&v72 = v63;
              [v69 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v72];
              [v69 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v255];
              *&v73 = v20->_kPyramidSamplingFraction;
              [v69 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v73];
              LODWORD(v74) = 6.0;
              [v69 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v74];
              v75 = [(PTMetalContext *)v20->_metalContext computePipelineStateFor:@"raytracingV2002" withConstants:v69];
              raytracingSDOF = v20->_raytracingSDOF;
              v20->_raytracingSDOF = v75;

              if (!v20->_raytracingSDOF)
              {
                v140 = _PTLogSystem(v77);
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v140 initWithMetalContext:v178 colorSize:v179 disparitySize:v180 debugRendering:v181 verbose:v182 options:v183 quality:v184];
                }

                goto LABEL_80;
              }

              if ([(PTQualitySettings *)v20->_qualitySettings rayMarch])
              {
                height = [[PTGlobalReduction alloc] initWithMetalContext:v20->_metalContext textureSize:width, height];
                globalReduction = v20->_globalReduction;
                v20->_globalReduction = height;

                if (!v20->_globalReduction)
                {
                  v140 = _PTLogSystem(v80);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v185 colorSize:v186 disparitySize:v187 debugRendering:v188 verbose:v189 options:v190 quality:v191];
                  }

                  goto LABEL_80;
                }

                v81 = objc_msgSend_device(v20->_metalContext);
                v82 = [v81 newBufferWithLength:8 options:0];
                disparityDiffGlobalMinMax = v20->_disparityDiffGlobalMinMax;
                v20->_disparityDiffGlobalMinMax = v82;

                if (!v20->_disparityDiffGlobalMinMax)
                {
                  v140 = _PTLogSystem(v84);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v192 colorSize:v193 disparitySize:v194 debugRendering:v195 verbose:v196 options:v197 quality:v198];
                  }

                  goto LABEL_80;
                }

                textureUtil = [(PTMetalContext *)v20->_metalContext textureUtil];
                height2 = [textureUtil createWithSize:10 pixelFormat:width, height];
                disparityEdges = v20->_disparityEdges;
                v20->_disparityEdges = height2;

                if (!v20->_disparityEdges)
                {
                  v140 = _PTLogSystem(v88);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v220 colorSize:v221 disparitySize:v222 debugRendering:v223 verbose:v224 options:v225 quality:v226];
                  }

                  goto LABEL_80;
                }

                textureUtil2 = [(PTMetalContext *)v20->_metalContext textureUtil];
                height3 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
                disparityEdgesTemp = v20->_disparityEdgesTemp;
                v20->_disparityEdgesTemp = height3;

                if (!v20->_disparityEdgesTemp)
                {
                  v140 = _PTLogSystem(v92);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v241 colorSize:v242 disparitySize:v243 debugRendering:v244 verbose:v245 options:v246 quality:v247];
                  }

                  goto LABEL_80;
                }
              }

              [(PTQualitySettings *)v20->_qualitySettings disparityUpsampleFactor];
              v94 = width * v93;
              [(PTQualitySettings *)v20->_qualitySettings disparityUpsampleFactor];
              v96 = height * v95;
              [(PTQualitySettings *)v20->_qualitySettings disparityUpsampleFactor];
              if (v97 > 1.0 && v94 < v257 && v96 < v256)
              {
                v98 = [PTGuidedFilter alloc];
                metalContext = v20->_metalContext;
                v258 = width;
                v259 = height;
                v260 = 1;
                LODWORD(v100) = 1028443341;
                v101 = [(PTGuidedFilter *)v98 initWithMetalContext:metalContext inputSize:&v258 epsilon:v100];
                guidedFilter = v20->_guidedFilter;
                v20->_guidedFilter = v101;

                if (!v20->_guidedFilter)
                {
                  v140 = _PTLogSystem(v103);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v199 colorSize:v200 disparitySize:v201 debugRendering:v202 verbose:v203 options:v204 quality:v205];
                  }

                  goto LABEL_80;
                }

                textureUtil3 = [(PTMetalContext *)v20->_metalContext textureUtil];
                v105 = [textureUtil3 createWithSize:25 pixelFormat:v94, v96];
                disparityDiffUpscaled = v20->_disparityDiffUpscaled;
                v20->_disparityDiffUpscaled = v105;

                v107 = v20->_disparityDiffUpscaled;
                if (!v107)
                {
                  v140 = _PTLogSystem(0);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v227 colorSize:v228 disparitySize:v229 debugRendering:v230 verbose:v231 options:v232 quality:v233];
                  }

                  goto LABEL_80;
                }

                v108 = v20->_rgbaPyramid;
                width = [(MTLTexture *)v107 width];
                height4 = [(MTLTexture *)v20->_disparityDiffUpscaled height];
                v258 = width;
                v259 = height4;
                v260 = 1;
                v111 = [(PTPyramid *)v108 findMipmapLevelLargerThan:&v258];
                guideRGBAUpscale = v20->_guideRGBAUpscale;
                v20->_guideRGBAUpscale = v111;

                v113 = v20->_rgbaPyramid;
                v258 = width;
                v259 = height;
                v260 = 1;
                v114 = [(PTPyramid *)v113 findMipmapLevelLargerThan:&v258];
                guideRGBACoefficients = v20->_guideRGBACoefficients;
                v20->_guideRGBACoefficients = v114;
              }

              if (-[PTQualitySettings doCenterDisparity](v20->_qualitySettings, "doCenterDisparity") && (-[PTMetalContext textureUtil](v20->_metalContext, "textureUtil"), v116 = objc_claimAutoreleasedReturnValue(), [v116 createWithSize:25 pixelFormat:width, height], v117 = objc_claimAutoreleasedReturnValue(), disparityDiff = v20->_disparityDiff, v20->_disparityDiff = v117, disparityDiff, v116, !v20->_disparityDiff))
              {
                v140 = _PTLogSystem(v119);
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v140 initWithMetalContext:v213 colorSize:v214 disparitySize:v215 debugRendering:v216 verbose:v217 options:v218 quality:v219];
                }
              }

              else if (-[PTQualitySettings doFocusEdgeMask](v20->_qualitySettings, "doFocusEdgeMask") && ((-[PTMetalContext textureUtil](v20->_metalContext, "textureUtil"), v120 = objc_claimAutoreleasedReturnValue(), v121 = v120, (v122 = v20->_disparityDiffUpscaled) != 0) ? (v123 = v96) : (v123 = height), v122 ? (v124 = v94) : (v124 = width), [v120 createWithSize:25 pixelFormat:v124, v123], v125 = objc_claimAutoreleasedReturnValue(), focusEdgeMask = v20->_focusEdgeMask, v20->_focusEdgeMask = v125, focusEdgeMask, v121, !v20->_focusEdgeMask))
              {
                v140 = _PTLogSystem(v127);
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v140 initWithMetalContext:v234, v235, v236, v237, v238, v239, v240];
                }
              }

              else
              {
                textureUtil4 = [(PTMetalContext *)v20->_metalContext textureUtil];
                [(PTQualitySettings *)v20->_qualitySettings renderDownscale];
                v130 = (v257 / v129);
                [(PTQualitySettings *)v20->_qualitySettings renderDownscale];
                v132 = [textureUtil4 createWithWidth:v130 height:(v256 / v131) pixelFormat:-[PTQualitySettings intermediatePixelFormat](v20->_qualitySettings, "intermediatePixelFormat")];
                raytracedRGBWeight = v20->_raytracedRGBWeight;
                v20->_raytracedRGBWeight = v132;

                if (v20->_raytracedRGBWeight)
                {
                  if (!-[PTQualitySettings doIntermediate2XUpscale](v20->_qualitySettings, "doIntermediate2XUpscale") || (-[PTMetalContext textureUtil](v20->_metalContext, "textureUtil"), v135 = objc_claimAutoreleasedReturnValue(), [v135 createWithWidth:2 * -[MTLTexture width](v20->_raytracedRGBWeight height:"width") pixelFormat:2 * -[MTLTexture height](v20->_raytracedRGBWeight, "height"), -[PTQualitySettings intermediatePixelFormat](v20->_qualitySettings, "intermediatePixelFormat")], v136 = objc_claimAutoreleasedReturnValue(), raytracedRGBWeightUpscaled = v20->_raytracedRGBWeightUpscaled, v20->_raytracedRGBWeightUpscaled = v136, raytracedRGBWeightUpscaled, v135, v20->_raytracedRGBWeightUpscaled))
                  {
                    v139 = [MEMORY[0x277CBEB18] arrayWithObjects:{v20->_raytracedRGBWeight, v20->_disparityEdges, v20->_disparityEdgesTemp, 0}];
                    v140 = v139;
                    if (v20->_disparityDiffUpscaled)
                    {
                      [v139 addObject:?];
                    }

                    if (v20->_focusEdgeMask)
                    {
                      [v140 addObject:?];
                    }

                    v141 = v20;
                    goto LABEL_81;
                  }

                  v140 = _PTLogSystem(v138);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v248 colorSize:v249 disparitySize:v250 debugRendering:v251 verbose:v252 options:v253 quality:v254];
                  }
                }

                else
                {
                  v140 = _PTLogSystem(v134);
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV2002 *)v140 initWithMetalContext:v206 colorSize:v207 disparitySize:v208 debugRendering:v209 verbose:v210 options:v211 quality:v212];
                  }
                }
              }

LABEL_80:
              v141 = 0;
LABEL_81:

              goto LABEL_57;
            }

            v31 = _PTLogSystem(v55);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v31 initWithMetalContext:v170 colorSize:v171 disparitySize:v172 debugRendering:v173 verbose:v174 options:v175 quality:v176];
            }
          }

          else
          {
            v31 = _PTLogSystem(v52);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v31 initWithMetalContext:v163 colorSize:v164 disparitySize:v165 debugRendering:v166 verbose:v167 options:v168 quality:v169];
            }
          }
        }

        else
        {
          v31 = _PTLogSystem(v47);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV2002 *)v31 initWithMetalContext:v149 colorSize:v150 disparitySize:v151 debugRendering:v152 verbose:v153 options:v154 quality:v155];
          }
        }
      }

      else
      {
        v31 = _PTLogSystem(v44);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV2002 *)v31 initWithMetalContext:v142 colorSize:v143 disparitySize:v144 debugRendering:v145 verbose:v146 options:v147 quality:v148];
        }
      }

      goto LABEL_55;
    }

    v31 = _PTLogSystem(v41);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV2002 *)v31 initWithMetalContext:v156 colorSize:v157 disparitySize:v158 debugRendering:v159 verbose:v160 options:v161 quality:v162];
    }
  }

  else
  {
    v31 = _PTLogSystem(v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV2002 *)v31 initWithMetalContext:v32 colorSize:v33 disparitySize:v34 debugRendering:v35 verbose:v36 options:v37 quality:v38];
    }
  }

LABEL_55:

LABEL_56:
  v141 = 0;
LABEL_57:

  return v141;
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

  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  kPyramidSamplingFraction = self->_kPyramidSamplingFraction;
  anamorphicFactor = self->_anamorphicFactor;
  v11 = *self->_colorSize;
  [(PTQualitySettings *)self->_qualitySettings doMacroApertureLimit];
  *&v12 = kPyramidSamplingFraction;
  *&v13 = anamorphicFactor;
  objc_msgSend_createFocusObject_pyramidSamplingFraction_anamorphicFactor_rayCount_colorSize_doMacroApertureLimit_(PTRaytracingUtilsV2, v12, v13, v11);
  v88 = 0u;
  v89 = 0u;
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  if (!self->_injectedRGBAPyramid)
  {
    rgbaPyramid = self->_rgbaPyramid;
    sourceColor = [requestCopy sourceColor];
    [(PTPyramid *)rgbaPyramid updatePyramid:sourceCopy inPTTexture:sourceColor];
  }

  if ([(PTQualitySettings *)self->_qualitySettings doCenterDisparity])
  {
    raytracingUtils = self->_raytracingUtils;
    sourceDisparity = [requestCopy sourceDisparity];
    disparityDiff = self->_disparityDiff;
    *&v19 = self->_foregroundBlurLimitingFactor;
    v85 = v90;
    v86 = v91;
    v87 = v92;
    [(PTRaytracingUtilsV2 *)raytracingUtils centerDisparityOnFocus:sourceCopy inDisparity:sourceDisparity outDisparity:disparityDiff focusObject:&v85 foregroundBlurLimitingFactor:v19];

    sourceDisparity2 = self->_disparityDiff;
  }

  else
  {
    sourceDisparity2 = [requestCopy sourceDisparity];
  }

  v23 = sourceDisparity2;
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:sourceCopy inTexture:v23 globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];
    v25 = self->_raytracingUtils;
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v29 = self->_edgeTolerance;
    v85 = v90;
    v86 = v91;
    v87 = v92;
    [(PTRaytracingUtilsV2 *)v25 detectDilatedEdges:sourceCopy inDisparity:v23 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v85 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v29];
  }

  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    renderState2 = [requestCopy renderState];
    -[PTGuidedFilter guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:](guidedFilter, "guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:", sourceCopy, v23, guideRGBACoefficients, guideRGBAUpscale, disparityDiffUpscaled, [renderState2 sourceColorBitDepth], 0);

    v35 = self->_disparityDiffUpscaled;
    v23 = v35;
  }

  if (self->_focusEdgeMask)
  {
    v36 = self->_raytracingUtils;
    HIDWORD(v37) = DWORD1(v91);
    v85 = v90;
    v86 = v91;
    HIDWORD(v38) = DWORD1(v92);
    v87 = v92;
    *&v38 = self->_focusEdge.width;
    *&v37 = self->_focusEdge.gradientThreshold;
    *&v21 = self->_focusEdge.gradientWeight;
    *&v22 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtilsV2 *)v36 focusEdgeMask:sourceCopy inDisparityDiff:v23 focusObject:&v85 focusEdge:v38 outFocusEdgeMask:v37, v21, v22];
  }

  sourceDisparity3 = [requestCopy sourceDisparity];
  width = [sourceDisparity3 width];
  sourceDisparity4 = [requestCopy sourceDisparity];
  height = [sourceDisparity4 height];
  *v42.i32 = width;
  *&v42.i32[1] = height;
  v79 = v42;

  v43 = v79;
  v84 = v79;
  v43.i16[0] = v88;
  v77 = v43;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v79.i32[0] = v44;
  v45 = v77;
  v45.i16[2] = WORD4(v88);
  v46 = vcvt_f32_u32(vand_s8(v45, 0xFFFF0000FFFFLL));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v48 = vcvt_s32_f32(vdiv_f32(v46, __PAIR64__(v47, v79.u32[0])));
  v83[1] = v48.i16[2];
  v83[0] = v48.i16[0];
  v46.f32[0] = v89;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v50 = vcvtps_u32_f32(v46.f32[0] / v49);
  v46.f32[0] = *(&v89 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v52 = vcvtps_u32_f32(v46.f32[0] / v51);
  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v54 = _PTLogSystem(0);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v54 disparityApplyPostModifier:v55 inDisparity:v56 outDisparity:v57 postModifier:v58, v59, v60, v61];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_raytracingSDOF];
  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  [computeCommandEncoder setTexture:v23 atIndex:1];
  [computeCommandEncoder setTexture:self->_disparityEdges atIndex:2];
  [computeCommandEncoder setTexture:self->_raytracedRGBWeight atIndex:3];
  [computeCommandEncoder setTexture:self->_focusEdgeMask atIndex:4];
  [computeCommandEncoder setBytes:&v90 length:48 atIndex:0];
  [computeCommandEncoder setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_randomUChars offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [computeCommandEncoder setBytes:&v84 length:8 atIndex:4];
  [computeCommandEncoder setBytes:v83 length:4 atIndex:5];
  *&v85 = v50;
  *(&v85 + 1) = v52;
  *&v86 = 1;
  v81 = vdupq_n_s64(8uLL);
  v82 = 1;
  [computeCommandEncoder dispatchThreads:&v85 threadsPerThreadgroup:&v81];
  [computeCommandEncoder endEncoding];
  v63 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    [textureUtil copy:sourceCopy inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v65 = self->_raytracedRGBWeightUpscaled;
    v63 = v65;
  }

  computeCommandEncoder2 = [sourceCopy computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    v68 = _PTLogSystem(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v68 disparityApplyPostModifier:v69 inDisparity:v70 outDisparity:v71 postModifier:v72, v73, v74, v75];
    }
  }

  [(PTRaytracingInterpolateResultV2 *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:computeCommandEncoder2 renderRequest:requestCopy inRGBWeight:v63];
  [computeCommandEncoder2 endEncoding];
  if (kdebug_is_enabled())
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __62__PTRaytracingV2002_renderContinuousWithSource_renderRequest___block_invoke;
    v80[3] = &unk_278522E68;
    v80[4] = self;
    [sourceCopy addCompletedHandler:v80];
  }

  return 0;
}

void __62__PTRaytracingV2002_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 72) renderDownscale];
  kdebug_trace();
  v4 = [v3 status];
  if (v4 != 4)
  {
    v5 = _PTLogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(v3, v5);
    }

    v6 = [v3 status];
    if (v6 != 4)
    {
      v7 = _PTLogSystem(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(v3, v7);
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
  *(&v8 + 4) = "_raytracedRGBWeightUpscaled";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracedRGBWeight";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiff";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiffUpscaled";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_guidedFilter";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdgesTemp";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdges";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiffGlobalMinMax";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_globalReduction";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingSDOF";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_randomUChars";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_aperturePoints.xy";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingInterpolateResult";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingUtils";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_qualitySettings";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end