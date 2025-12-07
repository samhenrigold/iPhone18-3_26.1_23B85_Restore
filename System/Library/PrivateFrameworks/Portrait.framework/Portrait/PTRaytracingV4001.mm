@interface PTRaytracingV4001
- (PTRaytracingV4001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV4001

- (PTRaytracingV4001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  width = disparitySize.width;
  height = disparitySize.height;
  v269 = size.height;
  v270 = size.width;
  contextCopy = context;
  optionsCopy = options;
  v275.receiver = self;
  v275.super_class = PTRaytracingV4001;
  v16 = [(PTRaytracingV4001 *)&v275 init];
  v18 = v16;
  if (!v16)
  {
    goto LABEL_48;
  }

  PTKTraceInit(v16, v17);
  objc_storeStrong(&v18->_metalContext, context);
  v18->_debugRendering = rendering;
  objc_storeStrong(&v18->_options, options);
  v19 = [PTQualitySettings createWithQuality:v9 options:optionsCopy];
  qualitySettings = v18->_qualitySettings;
  v18->_qualitySettings = v19;

  if (v18->_qualitySettings)
  {
    +[PTRaytracingUtils createFocusEdge];
    v18->_focusEdge.width = v22;
    v18->_focusEdge.gradientThreshold = v23;
    v18->_focusEdge.gradientWeight = v24;
    v18->_focusEdge.minMaxThreshold = v25;
    v18->_skipFullSizeLayer = [(PTQualitySettings *)v18->_qualitySettings quality]< 100;
    v26 = [optionsCopy objectForKeyedSubscript:&unk_2837F2CF8];
    v18->_injectedRGBAPyramid = v26 != 0;

    if (v18->_injectedRGBAPyramid)
    {
      v27 = [optionsCopy objectForKeyedSubscript:&unk_2837F2CF8];
      rgbaPyramid = v18->_rgbaPyramid;
      v18->_rgbaPyramid = v27;

      goto LABEL_8;
    }

    v269 = [[PTPyramid alloc] initWithMetalContext:v18->_metalContext colorSize:115 pixelFormat:v18->_skipFullSizeLayer skipFullSizeLayer:[(PTQualitySettings *)v18->_qualitySettings doFirstLevelGaussianDownsample] doFirstLevelGaussianDownsample:4 mipmapLevelCount:v270, v269];
    v38 = v18->_rgbaPyramid;
    v18->_rgbaPyramid = v269;

    if (v18->_rgbaPyramid)
    {
LABEL_8:
      v40 = [[PTRaytracingUtils alloc] initWithMetalContext:v18->_metalContext];
      raytracingUtils = v18->_raytracingUtils;
      v18->_raytracingUtils = v40;

      if (v18->_raytracingUtils)
      {
        v43 = [[PTRaytracingInterpolateResult alloc] initWithMetalContext:v18->_metalContext useExportQualityNoise:[(PTQualitySettings *)v18->_qualitySettings useExportQualityNoise]];
        raytracingInterpolateResult = v18->_raytracingInterpolateResult;
        v18->_raytracingInterpolateResult = v43;

        if (v18->_raytracingInterpolateResult)
        {
          v46 = [PTPrecomputeRandom computeUnitDiskPoints:v18->_metalContext numberOfPatternCircles:[(PTQualitySettings *)v18->_qualitySettings numberOfPatternCircles]];
          v48 = v47;
          xy = v18->_aperturePoints.xy;
          v18->_aperturePoints.xy = v46;

          *(&v18->_aperturePoints.rayCount + 2) = WORD2(v48);
          v18->_aperturePoints.rayCount = v48;
          if (v18->_aperturePoints.xy)
          {
            v51 = [PTPrecomputeRandom computeRandomUChars:v18->_metalContext rayCount:v48];
            randomUChars = v18->_randomUChars;
            v18->_randomUChars = v51;

            if (v18->_randomUChars)
            {
              v18->_doVisualization = 0;
              doMacroApertureLimit = [(PTQualitySettings *)v18->_qualitySettings doMacroApertureLimit];
              v55 = 0.0051429;
              if (doMacroApertureLimit)
              {
                v55 = 0.00043025;
              }

              v18->_circleOfConfusionReference = v55;
              v18->_fNumberLimitWeight = 0.33333;
              *&v18->_circleOfConfusionLimitBgFg[4] = vmul_n_f32(0x3FC0000040800000, v55);
              [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitBackground];
              if ((v56 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitBackground];
                *&v18->_circleOfConfusionLimitBgFg[4] = v57;
              }

              [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitForeground];
              if ((v58 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitForeground];
                *&v18->_circleOfConfusionLimitBgFg[8] = v59;
              }

              v18->_kRayCount = v18->_aperturePoints.rayCount;
              v60.f64[0] = v270;
              v60.f64[1] = v269;
              *v18->_sourceColorSize = vcvt_f32_f64(v60);
              v60.f64[0] = width;
              v60.f64[1] = height;
              _H8 = *(&v18->_aperturePoints.rayCount + 2);
              *v18->_sourceDisparitySize = vcvt_f32_f64(v60);
              *&v18->_anamorphicFactor = 0x3F6666663F99999ALL;
              v62 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D10];

              if (v62)
              {
                v63 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D10];
                [v63 floatValue];
                v18->_anamorphicFactor = v64;
              }

              v65 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D28];

              if (v65)
              {
                v66 = [optionsCopy objectForKeyedSubscript:&unk_2837F2D28];
                [v66 floatValue];
                v18->_radialObstructionFactor = v67;
              }

              __asm { FCVT            S8, H8 }

              v18->_kPyramidSamplingFraction = 0.665;
              v18->_edgeTolerance = 0.025;
              rayMarch = [(PTQualitySettings *)v18->_qualitySettings rayMarch];
              [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
              v73 = 3.0;
              if (v74 <= 3.0)
              {
                [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
                v73 = 1.0;
                if (v75 >= 2.0)
                {
                  v73 = 2.0;
                }
              }

              [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
              v77 = fmaxf(v76, 2.0) + 0.5;
              *&v78 = 1.0 / (0.5 - v77);
              *(&v78 + 1) = -v77;
              v266 = v78;
              v79 = objc_opt_new();
              [v79 setConstantValue:&v18->_kRayCount type:29 withName:@"kRaycount"];
              [v79 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
              [v79 setConstantValue:&v18->_skipFullSizeLayer type:53 withName:@"kSkipFullSizeLayer"];
              LODWORD(v80) = _S8;
              [v79 setConstantFloat:@"kRadiusLocal_float" withName:v80];
              LODWORD(v81) = 0.25;
              [v79 setConstantFloat:@"kRadiusLocalFraction_float" withName:v81];
              *&v82 = v73;
              [v79 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v82];
              [v79 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v266];
              *&v83 = v18->_kPyramidSamplingFraction;
              [v79 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v83];
              LODWORD(v84) = 6.0;
              [v79 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v84];
              LODWORD(v85) = 1017370378;
              [v79 setConstantFloat:@"kHighlightBoostFactor_float" withName:v85];
              v86 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"raytracingV4001" withConstants:v79];
              raytracingSDOF = v18->_raytracingSDOF;
              v18->_raytracingSDOF = v86;

              if (!v18->_raytracingSDOF)
              {
                v164 = _PTLogSystem(v88);
                if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV4001 *)v164 initWithMetalContext:v165 colorSize:v166 disparitySize:v167 debugRendering:v168 verbose:v169 options:v170 quality:v171];
                }

                goto LABEL_87;
              }

              if ([(PTQualitySettings *)v18->_qualitySettings rayMarch])
              {
                height = [[PTGlobalReduction alloc] initWithMetalContext:v18->_metalContext textureSize:width, height];
                globalReduction = v18->_globalReduction;
                v18->_globalReduction = height;

                if (!v18->_globalReduction)
                {
                  v164 = _PTLogSystem(v91);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v196 colorSize:v197 disparitySize:v198 debugRendering:v199 verbose:v200 options:v201 quality:v202];
                  }

                  goto LABEL_87;
                }

                v92 = objc_msgSend_device(v18->_metalContext);
                v93 = [v92 newBufferWithLength:8 options:0];
                disparityDiffGlobalMinMax = v18->_disparityDiffGlobalMinMax;
                v18->_disparityDiffGlobalMinMax = v93;

                if (!v18->_disparityDiffGlobalMinMax)
                {
                  v164 = _PTLogSystem(v95);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v203 colorSize:v204 disparitySize:v205 debugRendering:v206 verbose:v207 options:v208 quality:v209];
                  }

                  goto LABEL_87;
                }

                textureUtil = [(PTMetalContext *)v18->_metalContext textureUtil];
                height2 = [textureUtil createWithSize:10 pixelFormat:width, height];
                disparityEdges = v18->_disparityEdges;
                v18->_disparityEdges = height2;

                if (!v18->_disparityEdges)
                {
                  v164 = _PTLogSystem(v99);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v224 colorSize:v225 disparitySize:v226 debugRendering:v227 verbose:v228 options:v229 quality:v230];
                  }

                  goto LABEL_87;
                }

                textureUtil2 = [(PTMetalContext *)v18->_metalContext textureUtil];
                height3 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
                disparityEdgesTemp = v18->_disparityEdgesTemp;
                v18->_disparityEdgesTemp = height3;

                if (!v18->_disparityEdgesTemp)
                {
                  v164 = _PTLogSystem(v103);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v252 colorSize:v253 disparitySize:v254 debugRendering:v255 verbose:v256 options:v257 quality:v258];
                  }

                  goto LABEL_87;
                }
              }

              [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
              v105 = width * v104;
              [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
              v107 = height * v106;
              [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
              if (v108 <= 1.0 || v105 >= v270 || v107 >= v269)
              {
                if ([(PTQualitySettings *)v18->_qualitySettings doCenterDisparity])
                {
                  textureUtil3 = [(PTMetalContext *)v18->_metalContext textureUtil];
                  height4 = [textureUtil3 createWithSize:25 pixelFormat:width, height];
                  disparityDiff = v18->_disparityDiff;
                  v18->_disparityDiff = height4;

                  if (!v18->_disparityDiff)
                  {
                    v164 = _PTLogSystem(v175);
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                    {
                      [(PTRaytracingV4001 *)v164 initWithMetalContext:v245 colorSize:v246 disparitySize:v247 debugRendering:v248 verbose:v249 options:v250 quality:v251];
                    }

                    goto LABEL_87;
                  }
                }
              }

              else
              {
                v109 = [PTGuidedFilter alloc];
                metalContext = v18->_metalContext;
                HIDWORD(v111) = HIDWORD(height);
                v271 = width;
                v272 = height;
                v273 = 1;
                LODWORD(v111) = 1028443341;
                v112 = [(PTGuidedFilter *)v109 initWithMetalContext:metalContext inputSize:&v271 epsilon:v111];
                guidedFilter = v18->_guidedFilter;
                v18->_guidedFilter = v112;

                if (!v18->_guidedFilter)
                {
                  v164 = _PTLogSystem(v114);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v210 colorSize:v211 disparitySize:v212 debugRendering:v213 verbose:v214 options:v215 quality:v216];
                  }

                  goto LABEL_87;
                }

                textureUtil4 = [(PTMetalContext *)v18->_metalContext textureUtil];
                v107 = [textureUtil4 createWithSize:25 pixelFormat:v105, v107];
                disparityDiffUpscaled = v18->_disparityDiffUpscaled;
                v18->_disparityDiffUpscaled = v107;

                v118 = v18->_disparityDiffUpscaled;
                if (!v118)
                {
                  v164 = _PTLogSystem(0);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v231 colorSize:v232 disparitySize:v233 debugRendering:v234 verbose:v235 options:v236 quality:v237];
                  }

                  goto LABEL_87;
                }

                v119 = v18->_rgbaPyramid;
                width = [(MTLTexture *)v118 width];
                height5 = [(MTLTexture *)v18->_disparityDiffUpscaled height];
                v271 = width;
                v272 = height5;
                v273 = 1;
                v122 = [(PTPyramid *)v119 findMipmapLevelLargerThan:&v271];
                guideRGBAUpscale = v18->_guideRGBAUpscale;
                v18->_guideRGBAUpscale = v122;

                v124 = v18->_rgbaPyramid;
                v271 = width;
                v272 = height;
                v273 = 1;
                v125 = [(PTPyramid *)v124 findMipmapLevelLargerThan:&v271];
                guideRGBACoefficients = v18->_guideRGBACoefficients;
                v18->_guideRGBACoefficients = v125;
              }

              if (![(PTQualitySettings *)v18->_qualitySettings doFocusEdgeMask])
              {
                goto LABEL_61;
              }

              textureUtil5 = [(PTMetalContext *)v18->_metalContext textureUtil];
              v177 = textureUtil5;
              v178 = v18->_disparityDiffUpscaled;
              v179 = width;
              if (v178)
              {
                v180 = v107;
              }

              else
              {
                v180 = height;
              }

              if (v178)
              {
                v179 = v105;
              }

              v180 = [textureUtil5 createWithSize:25 pixelFormat:v179, v180];
              focusEdgeMask = v18->_focusEdgeMask;
              v18->_focusEdgeMask = v180;

              if (!v18->_focusEdgeMask)
              {
                v164 = _PTLogSystem(v183);
                if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v164 initWithMetalContext:v238, v239, v240, v241, v242, v243, v244];
                }
              }

              else
              {
LABEL_61:
                textureUtil6 = [(PTMetalContext *)v18->_metalContext textureUtil];
                [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
                v186 = (v270 / v185);
                [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
                v188 = [textureUtil6 createWithWidth:v186 height:(v269 / v187) pixelFormat:-[PTQualitySettings intermediatePixelFormat](v18->_qualitySettings, "intermediatePixelFormat")];
                raytracedRGBWeight = v18->_raytracedRGBWeight;
                v18->_raytracedRGBWeight = v188;

                if (v18->_raytracedRGBWeight)
                {
                  if (!-[PTQualitySettings doIntermediate2XUpscale](v18->_qualitySettings, "doIntermediate2XUpscale") || (-[PTMetalContext textureUtil](v18->_metalContext, "textureUtil"), v191 = objc_claimAutoreleasedReturnValue(), [v191 createWithWidth:2 * -[MTLTexture width](v18->_raytracedRGBWeight height:"width") pixelFormat:2 * -[MTLTexture height](v18->_raytracedRGBWeight, "height"), -[PTQualitySettings intermediatePixelFormat](v18->_qualitySettings, "intermediatePixelFormat")], v192 = objc_claimAutoreleasedReturnValue(), raytracedRGBWeightUpscaled = v18->_raytracedRGBWeightUpscaled, v18->_raytracedRGBWeightUpscaled = v192, raytracedRGBWeightUpscaled, v191, v18->_raytracedRGBWeightUpscaled))
                  {
                    v195 = [MEMORY[0x277CBEB18] arrayWithObjects:{v18->_raytracedRGBWeight, v18->_disparityEdges, v18->_disparityEdgesTemp, 0}];
                    v164 = v195;
                    if (v18->_focusEdgeMask)
                    {
                      [v195 addObject:?];
                    }

                    v162 = v18;
                    goto LABEL_88;
                  }

                  v164 = _PTLogSystem(v194);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v259 colorSize:v260 disparitySize:v261 debugRendering:v262 verbose:v263 options:v264 quality:v265];
                  }
                }

                else
                {
                  v164 = _PTLogSystem(v190);
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV4001 *)v164 initWithMetalContext:v217 colorSize:v218 disparitySize:v219 debugRendering:v220 verbose:v221 options:v222 quality:v223];
                  }
                }
              }

LABEL_87:
              v162 = 0;
LABEL_88:

              goto LABEL_49;
            }

            v29 = _PTLogSystem(v53);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV4001 *)v29 initWithMetalContext:v155 colorSize:v156 disparitySize:v157 debugRendering:v158 verbose:v159 options:v160 quality:v161];
            }
          }

          else
          {
            v29 = _PTLogSystem(v50);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV4001 *)v29 initWithMetalContext:v148 colorSize:v149 disparitySize:v150 debugRendering:v151 verbose:v152 options:v153 quality:v154];
            }
          }
        }

        else
        {
          v29 = _PTLogSystem(v45);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV4001 *)v29 initWithMetalContext:v134 colorSize:v135 disparitySize:v136 debugRendering:v137 verbose:v138 options:v139 quality:v140];
          }
        }
      }

      else
      {
        v29 = _PTLogSystem(v42);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV4001 *)v29 initWithMetalContext:v127 colorSize:v128 disparitySize:v129 debugRendering:v130 verbose:v131 options:v132 quality:v133];
        }
      }

      goto LABEL_47;
    }

    v29 = _PTLogSystem(v39);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV4001 *)v29 initWithMetalContext:v141 colorSize:v142 disparitySize:v143 debugRendering:v144 verbose:v145 options:v146 quality:v147];
    }
  }

  else
  {
    v29 = _PTLogSystem(v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV4001 *)v29 initWithMetalContext:v30 colorSize:v31 disparitySize:v32 debugRendering:v33 verbose:v34 options:v35 quality:v36];
    }
  }

LABEL_47:

LABEL_48:
  v162 = 0;
LABEL_49:

  return v162;
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

  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  *&v9 = self->_radialObstructionFactor;
  *&v10 = self->_circleOfConfusionReference;
  *&v11 = self->_fNumberLimitWeight;
  objc_msgSend_createFocusObject_anamorphicFactor_radialObstructionFactor_colorSize_circleOfConfusionReference_fNumberLimitWeight_(PTRaytracingUtils, COERCE_DOUBLE(LODWORD(self->_anamorphicFactor)), v9, *self->_sourceColorSize, v10, v11);
  memset(v101, 0, sizeof(v101));
  if (!self->_injectedRGBAPyramid)
  {
    rgbaPyramid = self->_rgbaPyramid;
    sourceColor = [requestCopy sourceColor];
    [(PTPyramid *)rgbaPyramid updatePyramid:sourceCopy inPTTexture:sourceColor];
  }

  v14 = (*&v102 + *&v102) * *(&v102 + 2);
  *&v14 = v14;
  v15 = vdiv_f32(*&self->_circleOfConfusionLimitBgFg[4], vdup_lane_s32(*&v14, 0));
  v16 = -*(&v102 + 1);
  v17 = -v15.f32[0];
  v100[0] = -*(&v102 + 1);
  v100[1] = -v15.f32[0];
  v18 = v15.i32[1];
  v100[2] = v15.f32[1];
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    sourceDisparity = [requestCopy sourceDisparity];
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:sourceCopy inTexture:sourceDisparity globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];

    *&v21 = v16;
    *&v22 = v17;
    LODWORD(v23) = v18;
    [(PTRaytracingUtils *)self->_raytracingUtils disparityMinMaxApplyPostModifier:sourceCopy disparityMinMaxBuffer:self->_disparityDiffGlobalMinMax postModifier:v21, v22, v23];
    raytracingUtils = self->_raytracingUtils;
    sourceDisparity2 = [requestCopy sourceDisparity];
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v29 = self->_edgeTolerance;
    v97 = v102;
    v98 = v103;
    v99 = v104;
    [(PTRaytracingUtils *)raytracingUtils detectDilatedEdges:sourceCopy inDisparity:sourceDisparity2 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v97 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v29];
  }

  sourceDisparity3 = [requestCopy sourceDisparity];
  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    sourceDisparity4 = [requestCopy sourceDisparity];
    p_disparityDiffUpscaled = &self->_disparityDiffUpscaled;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    v34 = sourceDisparity3;
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    renderState2 = [requestCopy renderState];
    sourceColorBitDepth = [renderState2 sourceColorBitDepth];
    v39 = guideRGBAUpscale;
    sourceDisparity3 = v34;
    [(PTGuidedFilter *)guidedFilter guidedFilter:sourceCopy image:sourceDisparity4 guideRGBACoefficients:guideRGBACoefficients guideRGBAUpscale:v39 upscaledImage:disparityDiffUpscaled sourceColorBitDepth:sourceColorBitDepth postModifierPtr:v100];

LABEL_7:
    v40 = *p_disparityDiffUpscaled;

    sourceDisparity3 = v40;
    goto LABEL_8;
  }

  if ([(PTQualitySettings *)self->_qualitySettings doCenterDisparity])
  {
    portraitPreviewDeadzone = [(PTQualitySettings *)self->_qualitySettings portraitPreviewDeadzone];
    v46 = self->_raytracingUtils;
    sourceDisparity4 = [requestCopy sourceDisparity];
    p_disparityDiffUpscaled = &self->_disparityDiff;
    disparityDiff = self->_disparityDiff;
    *&v48 = v16;
    *&v49 = v17;
    LODWORD(v50) = v18;
    if (portraitPreviewDeadzone)
    {
      [(PTRaytracingUtils *)v46 disparityPortraitPreviewDeadzone:sourceCopy inDisparity:sourceDisparity4 outDisparity:disparityDiff postModifier:v48, v49, v50];
    }

    else
    {
      [(PTRaytracingUtils *)v46 disparityApplyPostModifier:sourceCopy inDisparity:sourceDisparity4 outDisparity:disparityDiff postModifier:v48, v49, v50];
    }

    goto LABEL_7;
  }

LABEL_8:
  if (self->_focusEdgeMask)
  {
    *&v41 = self->_focusEdge.width;
    *&v42 = self->_focusEdge.gradientThreshold;
    *&v43 = self->_focusEdge.gradientWeight;
    *&v44 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtils *)self->_raytracingUtils focusEdgeMask:sourceCopy inDisparityDiff:sourceDisparity3 focusEdge:v41 outFocusEdgeMask:v42, v43, v44];
  }

  v97 = 0u;
  v98 = 0u;
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  else
  {
    v95 = 0uLL;
    v96 = 0uLL;
  }

  destinationColor = [requestCopy destinationColor];
  [destinationColor imageBlockSize];
  objc_msgSend_adjustScissorRectToImageBlocks_imageBlockSize_(PTImageblockConfig);

  v87 = v97;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v89 = v52;
  v53 = vcvt_f32_f64(vcvtq_f64_u64(__PAIR128__(*(&v97 + 1), v87)));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  __asm { FMOV            V1.2D, #-0.5 }

  v60 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(v53, __PAIR64__(v54, v89))), _Q1)), 0)));
  v94[1] = v60.i16[2];
  v94[0] = v60.i16[0];
  width = [(MTLTexture *)self->_raytracedRGBWeight width];
  v53.f32[0] = v98;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v63 = ceil((v53.f32[0] / v62) + 0.5);
  if (v63 > width)
  {
    v63 = width;
  }

  v64 = v63;
  height = [(MTLTexture *)self->_raytracedRGBWeight height];
  v66 = *(&v98 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v68 = ceil((v66 / v67) + 0.5);
  if (v68 > height)
  {
    v68 = height;
  }

  v69 = v68;
  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v71 = _PTLogSystem(0);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v71 disparityApplyPostModifier:v72 inDisparity:v73 outDisparity:v74 postModifier:v75, v76, v77, v78];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_raytracingSDOF];
  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  v90 = sourceDisparity3;
  [computeCommandEncoder setTexture:sourceDisparity3 atIndex:1];
  [computeCommandEncoder setTexture:self->_disparityEdges atIndex:2];
  [computeCommandEncoder setTexture:self->_raytracedRGBWeight atIndex:3];
  [computeCommandEncoder setTexture:self->_focusEdgeMask atIndex:4];
  [computeCommandEncoder setBytes:v101 length:24 atIndex:0];
  [computeCommandEncoder setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_randomUChars offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [computeCommandEncoder setBytes:self->_sourceColorSize length:8 atIndex:4];
  [computeCommandEncoder setBytes:self->_sourceDisparitySize length:8 atIndex:5];
  [computeCommandEncoder setBytes:v94 length:4 atIndex:6];
  *&v95 = v64;
  *(&v95 + 1) = v69;
  *&v96 = 1;
  v92 = vdupq_n_s64(8uLL);
  v93 = 1;
  [computeCommandEncoder dispatchThreads:&v95 threadsPerThreadgroup:&v92];
  [computeCommandEncoder endEncoding];
  v80 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    [textureUtil copy:sourceCopy inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v82 = self->_raytracedRGBWeightUpscaled;
    v80 = v82;
  }

  raytracingInterpolateResult = self->_raytracingInterpolateResult;
  if (self->_skipFullSizeLayer)
  {
    [(PTRaytracingInterpolateResult *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v80];
  }

  else
  {
    mipmapLevels = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v85 = [mipmapLevels objectAtIndexedSubscript:0];
    [(PTRaytracingInterpolateResult *)raytracingInterpolateResult interpolateRGBWeightUsingRGBALinearToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v80 inRGBA:v85];
  }

  if (kdebug_is_enabled())
  {
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke;
    v91[3] = &unk_278522E68;
    v91[4] = self;
    [sourceCopy addCompletedHandler:v91];
  }

  return 0;
}

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 88) renderDownscale];
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
  *(&v8 + 4) = "_disparityDiff";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracedRGBWeightUpscaled";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracedRGBWeight";
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

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Commandbuffer Error %@", &v4, 0xCu);
}

void __62__PTRaytracingV4001_renderContinuousWithSource_renderRequest___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 error];
  v5 = [a1 label];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "%@ label %@", &v6, 0x16u);
}

@end