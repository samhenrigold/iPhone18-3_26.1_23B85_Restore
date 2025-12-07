@interface PTRaytracingV3001
- (PTRaytracingV3001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality;
- (int)renderContinuousWithSource:(id)source renderRequest:(id)request;
@end

@implementation PTRaytracingV3001

- (PTRaytracingV3001)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering verbose:(BOOL)verbose options:(id)options quality:(int)quality
{
  v9 = *&quality;
  width = disparitySize.width;
  height = disparitySize.height;
  v304 = size.height;
  v305 = size.width;
  contextCopy = context;
  optionsCopy = options;
  v310.receiver = self;
  v310.super_class = PTRaytracingV3001;
  v16 = [(PTRaytracingV3001 *)&v310 init];
  v18 = v16;
  if (!v16)
  {
    goto LABEL_76;
  }

  PTKTraceInit(v16, v17);
  objc_storeStrong(&v18->_metalContext, context);
  v18->_debugRendering = rendering;
  objc_storeStrong(&v18->_options, options);
  v19 = [PTQualitySettings createWithQuality:v9 options:optionsCopy];
  qualitySettings = v18->_qualitySettings;
  v18->_qualitySettings = v19;

  if (!v18->_qualitySettings)
  {
    v28 = _PTLogSystem(v21);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV3001 *)v28 initWithMetalContext:v29 colorSize:v30 disparitySize:v31 debugRendering:v32 verbose:v33 options:v34 quality:v35];
    }

    goto LABEL_75;
  }

  +[PTRaytracingUtils createFocusEdge];
  v18->_focusEdge.gradientThreshold = v22;
  v18->_focusEdge.gradientWeight = v23;
  v18->_focusEdge.minMaxThreshold = v24;
  v18->_focusEdge.width = 4.0;
  v18->_updateSourceColor = 0;
  quality = [(PTQualitySettings *)v18->_qualitySettings quality];
  updateSourceColor = v18->_updateSourceColor;
  if (quality >= 100)
  {
    v18->_skipFullSizeLayer = 0;
    p_skipFullSizeLayer = &v18->_skipFullSizeLayer;
    if (!updateSourceColor)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18->_skipFullSizeLayer = !updateSourceColor;
    p_skipFullSizeLayer = &v18->_skipFullSizeLayer;
    if (!updateSourceColor)
    {
      goto LABEL_11;
    }
  }

  v36 = [[PTColorConversion alloc] initWithMetalContext:v18->_metalContext];
  colorConversion = v18->_colorConversion;
  v18->_colorConversion = v36;

  if (!v18->_colorConversion)
  {
    v28 = _PTLogSystem(v38);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTApplyHomographies *)v28 initWithMetalContext:v174 colorSize:v175 disparitySize:v176, v177, v178, v179, v180];
    }

    goto LABEL_75;
  }

  textureUtil = [(PTMetalContext *)v18->_metalContext textureUtil];
  v304 = [textureUtil createWithSize:115 pixelFormat:v305, v304];
  rgba = v18->_rgba;
  v18->_rgba = v304;

  if (!v18->_rgba)
  {
    v28 = _PTLogSystem(v42);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingV3001 *)v28 initWithMetalContext:v195 colorSize:v196 disparitySize:v197 debugRendering:v198 verbose:v199 options:v200 quality:v201];
    }

    goto LABEL_75;
  }

LABEL_11:
  v43 = [optionsCopy objectForKeyedSubscript:&unk_2837F3010];
  v18->_injectedRGBAPyramid = v43 != 0;

  if (v18->_injectedRGBAPyramid)
  {
    v44 = [optionsCopy objectForKeyedSubscript:&unk_2837F3010];
    rgbaPyramid = v18->_rgbaPyramid;
    v18->_rgbaPyramid = v44;

    goto LABEL_14;
  }

  v3042 = [[PTPyramid alloc] initWithMetalContext:v18->_metalContext colorSize:115 pixelFormat:v18->_skipFullSizeLayer skipFullSizeLayer:[(PTQualitySettings *)v18->_qualitySettings doFirstLevelGaussianDownsample] doFirstLevelGaussianDownsample:4 mipmapLevelCount:v305, v304];
  v47 = v18->_rgbaPyramid;
  v18->_rgbaPyramid = v3042;

  if (v18->_rgbaPyramid)
  {
LABEL_14:
    v49 = [[PTRaytracingUtils alloc] initWithMetalContext:v18->_metalContext];
    raytracingUtils = v18->_raytracingUtils;
    v18->_raytracingUtils = v49;

    if (v18->_raytracingUtils)
    {
      v52 = [[PTRaytracingInterpolateResult alloc] initWithMetalContext:v18->_metalContext useExportQualityNoise:[(PTQualitySettings *)v18->_qualitySettings useExportQualityNoise]];
      raytracingInterpolateResult = v18->_raytracingInterpolateResult;
      v18->_raytracingInterpolateResult = v52;

      if (v18->_raytracingInterpolateResult)
      {
        v55 = [PTPrecomputeRandom computeUnitDiskPoints:v18->_metalContext numberOfPatternCircles:[(PTQualitySettings *)v18->_qualitySettings numberOfPatternCircles]];
        v57 = v56;
        xy = v18->_aperturePoints.xy;
        v18->_aperturePoints.xy = v55;

        *(&v18->_aperturePoints.rayCount + 2) = WORD2(v57);
        v18->_aperturePoints.rayCount = v57;
        if (v18->_aperturePoints.xy)
        {
          v60 = [PTPrecomputeRandom computeRandomUChars:v18->_metalContext rayCount:v57];
          randomUChars = v18->_randomUChars;
          v18->_randomUChars = v60;

          if (v18->_randomUChars)
          {
            v18->_doVisualization = 0;
            doMacroApertureLimit = [(PTQualitySettings *)v18->_qualitySettings doMacroApertureLimit];
            v64 = 0.0051429;
            if (doMacroApertureLimit)
            {
              v64 = 0.00043025;
            }

            v18->_circleOfConfusionReference = v64;
            v18->_fNumberLimitWeight = 0.33333;
            *&v18->_circleOfConfusionLimitBgFg[4] = vmul_n_f32(0x3FC0000040800000, v64);
            [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitBackground];
            if ((v65 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitBackground];
              *&v18->_circleOfConfusionLimitBgFg[4] = v66;
            }

            [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitForeground];
            if ((v67 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              [(PTQualitySettings *)v18->_qualitySettings circleOfConfusionLimitForeground];
              *&v18->_circleOfConfusionLimitBgFg[8] = v68;
            }

            v18->_kRayCount = v18->_aperturePoints.rayCount;
            v69.f64[0] = v305;
            v69.f64[1] = v304;
            _H8 = *(&v18->_aperturePoints.rayCount + 2);
            v71.f64[0] = width;
            v71.f64[1] = height;
            *v18->_sourceColorSize = vcvt_f32_f64(v69);
            *v18->_sourceDisparitySize = vcvt_f32_f64(v71);
            *&v18->_anamorphicFactor = 0x3F6666663F99999ALL;
            v72 = [optionsCopy objectForKeyedSubscript:&unk_2837F3028];

            if (v72)
            {
              v73 = [optionsCopy objectForKeyedSubscript:&unk_2837F3028];
              [v73 floatValue];
              v18->_anamorphicFactor = v74;
            }

            v75 = [optionsCopy objectForKeyedSubscript:&unk_2837F3040];

            if (v75)
            {
              v76 = [optionsCopy objectForKeyedSubscript:&unk_2837F3040];
              [v76 floatValue];
              v18->_radialObstructionFactor = v77;
            }

            __asm { FCVT            S8, H8 }

            v18->_kPyramidSamplingFraction = 0.665;
            v18->_edgeTolerance = 0.025;
            rayMarch = [(PTQualitySettings *)v18->_qualitySettings rayMarch];
            [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
            v83 = 3.0;
            if (v84 <= 3.0)
            {
              [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
              v83 = 1.0;
              if (v85 >= 2.0)
              {
                v83 = 2.0;
              }
            }

            [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
            v87 = fmaxf(v86, 2.0) + 0.5;
            *&v88 = 1.0 / (0.5 - v87);
            *(&v88 + 1) = -v87;
            v301 = v88;
            v89 = objc_opt_new();
            [v89 setConstantValue:&v18->_kRayCount type:29 withName:@"kRaycount"];
            [v89 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
            [v89 setConstantValue:p_skipFullSizeLayer type:53 withName:@"kSkipFullSizeLayer"];
            LODWORD(v90) = _S8;
            [v89 setConstantFloat:@"kRadiusLocal_float" withName:v90];
            LODWORD(v91) = 0.25;
            [v89 setConstantFloat:@"kRadiusLocalFraction_float" withName:v91];
            *&v92 = v83;
            [v89 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v92];
            [v89 setConstantFloat2:@"kFocusBlendCoefficients_float2" withName:v301];
            *&v93 = v18->_kPyramidSamplingFraction;
            [v89 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v93];
            LODWORD(v94) = 6.0;
            [v89 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v94];
            LODWORD(v95) = 1017370378;
            [v89 setConstantFloat:@"kHighlightBoostFactor_float" withName:v95];
            v96 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"raytracingV3001" withConstants:v89];
            raytracingSDOF = v18->_raytracingSDOF;
            v18->_raytracingSDOF = v96;

            if (!v18->_raytracingSDOF)
            {
              v165 = _PTLogSystem(v98);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v165 initWithMetalContext:v217 colorSize:v218 disparitySize:v219 debugRendering:v220 verbose:v221 options:v222 quality:v223];
              }

              goto LABEL_102;
            }

            if ([(PTQualitySettings *)v18->_qualitySettings rayMarch])
            {
              height = [[PTGlobalReduction alloc] initWithMetalContext:v18->_metalContext textureSize:width, height];
              globalReduction = v18->_globalReduction;
              v18->_globalReduction = height;

              if (!v18->_globalReduction)
              {
                v165 = _PTLogSystem(v101);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV2002 *)v165 initWithMetalContext:v224 colorSize:v225 disparitySize:v226 debugRendering:v227 verbose:v228 options:v229 quality:v230];
                }

                goto LABEL_102;
              }

              v102 = objc_msgSend_device(v18->_metalContext);
              v103 = [v102 newBufferWithLength:8 options:0];
              disparityDiffGlobalMinMax = v18->_disparityDiffGlobalMinMax;
              v18->_disparityDiffGlobalMinMax = v103;

              if (!v18->_disparityDiffGlobalMinMax)
              {
                v165 = _PTLogSystem(v105);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v165 initWithMetalContext:v231 colorSize:v232 disparitySize:v233 debugRendering:v234 verbose:v235 options:v236 quality:v237];
                }

                goto LABEL_102;
              }

              textureUtil2 = [(PTMetalContext *)v18->_metalContext textureUtil];
              height2 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
              disparityEdges = v18->_disparityEdges;
              v18->_disparityEdges = height2;

              if (!v18->_disparityEdges)
              {
                v165 = _PTLogSystem(v109);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v165 initWithMetalContext:v259 colorSize:v260 disparitySize:v261 debugRendering:v262 verbose:v263 options:v264 quality:v265];
                }

                goto LABEL_102;
              }

              textureUtil3 = [(PTMetalContext *)v18->_metalContext textureUtil];
              height3 = [textureUtil3 createWithSize:10 pixelFormat:width, height];
              disparityEdgesTemp = v18->_disparityEdgesTemp;
              v18->_disparityEdgesTemp = height3;

              if (!v18->_disparityEdgesTemp)
              {
                v165 = _PTLogSystem(v113);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v165 initWithMetalContext:v287 colorSize:v288 disparitySize:v289 debugRendering:v290 verbose:v291 options:v292 quality:v293];
                }

                goto LABEL_102;
              }
            }

            [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
            v115 = width * v114;
            [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
            v117 = height * v116;
            [(PTQualitySettings *)v18->_qualitySettings disparityUpsampleFactor];
            if (v118 > 1.0 && v115 < v305 && v117 < v304)
            {
              v119 = [PTGuidedFilter alloc];
              metalContext = v18->_metalContext;
              HIDWORD(v121) = HIDWORD(height);
              v306 = width;
              v307 = height;
              v308 = 1;
              LODWORD(v121) = 1028443341;
              v122 = [(PTGuidedFilter *)v119 initWithMetalContext:metalContext inputSize:&v306 epsilon:v121];
              guidedFilter = v18->_guidedFilter;
              v18->_guidedFilter = v122;

              if (!v18->_guidedFilter)
              {
                v165 = _PTLogSystem(v124);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v165 initWithMetalContext:v238 colorSize:v239 disparitySize:v240 debugRendering:v241 verbose:v242 options:v243 quality:v244];
                }

                goto LABEL_102;
              }

              textureUtil4 = [(PTMetalContext *)v18->_metalContext textureUtil];
              v117 = [textureUtil4 createWithSize:25 pixelFormat:v115, v117];
              disparityDiffUpscaled = v18->_disparityDiffUpscaled;
              v18->_disparityDiffUpscaled = v117;

              v128 = v18->_disparityDiffUpscaled;
              if (!v128)
              {
                v165 = _PTLogSystem(0);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingV3001 *)v165 initWithMetalContext:v266 colorSize:v267 disparitySize:v268 debugRendering:v269 verbose:v270 options:v271 quality:v272];
                }

                goto LABEL_102;
              }

              v129 = v18->_rgbaPyramid;
              width = [(MTLTexture *)v128 width];
              height4 = [(MTLTexture *)v18->_disparityDiffUpscaled height];
              v306 = width;
              v307 = height4;
              v308 = 1;
              v132 = [(PTPyramid *)v129 findMipmapLevelLargerThan:&v306];
              guideRGBAUpscale = v18->_guideRGBAUpscale;
              v18->_guideRGBAUpscale = v132;

              v134 = v18->_rgbaPyramid;
              v306 = width;
              v307 = height;
              v308 = 1;
              v135 = [(PTPyramid *)v134 findMipmapLevelLargerThan:&v306];
              guideRGBACoefficients = v18->_guideRGBACoefficients;
              v18->_guideRGBACoefficients = v135;
            }

            if (![(PTQualitySettings *)v18->_qualitySettings doCenterDisparity])
            {
              goto LABEL_106;
            }

            textureUtil5 = [(PTMetalContext *)v18->_metalContext textureUtil];
            height5 = [textureUtil5 createWithSize:25 pixelFormat:width, height];
            disparityDiff = v18->_disparityDiff;
            v18->_disparityDiff = height5;

            if (!v18->_disparityDiff)
            {
              v165 = _PTLogSystem(v140);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v165 initWithMetalContext:v252 colorSize:v253 disparitySize:v254 debugRendering:v255 verbose:v256 options:v257 quality:v258];
              }

              goto LABEL_102;
            }

            textureUtil6 = [(PTMetalContext *)v18->_metalContext textureUtil];
            height6 = [textureUtil6 createWithSize:25 pixelFormat:width, height];
            disparityEffects = v18->_disparityEffects;
            v18->_disparityEffects = height6;

            if (!v18->_disparityEffects)
            {
              v165 = _PTLogSystem(v144);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                [(PTRaytracingV3001 *)v165 initWithMetalContext:v280 colorSize:v281 disparitySize:v282 debugRendering:v283 verbose:v284 options:v285 quality:v286];
              }
            }

            else
            {
              if (![(PTQualitySettings *)v18->_qualitySettings doFocusEdgeMask])
              {
                goto LABEL_53;
              }

LABEL_106:
              textureUtil7 = [(PTMetalContext *)v18->_metalContext textureUtil];
              v146 = textureUtil7;
              v147 = v18->_disparityDiffUpscaled;
              v148 = width;
              if (v147)
              {
                v149 = v117;
              }

              else
              {
                v149 = height;
              }

              if (v147)
              {
                v148 = v115;
              }

              v149 = [textureUtil7 createWithSize:25 pixelFormat:v148, v149];
              focusEdgeMask = v18->_focusEdgeMask;
              v18->_focusEdgeMask = v149;

              if (!v18->_focusEdgeMask)
              {
                v165 = _PTLogSystem(v152);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [(PTRaytracingUtils *)v165 initWithMetalContext:v273, v274, v275, v276, v277, v278, v279];
                }
              }

              else
              {
LABEL_53:
                textureUtil8 = [(PTMetalContext *)v18->_metalContext textureUtil];
                [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
                v155 = (v305 / v154);
                [(PTQualitySettings *)v18->_qualitySettings renderDownscale];
                v157 = [textureUtil8 createWithWidth:v155 height:(v304 / v156) pixelFormat:-[PTQualitySettings intermediatePixelFormat](v18->_qualitySettings, "intermediatePixelFormat")];
                raytracedRGBWeight = v18->_raytracedRGBWeight;
                v18->_raytracedRGBWeight = v157;

                if (v18->_raytracedRGBWeight)
                {
                  if (!-[PTQualitySettings doIntermediate2XUpscale](v18->_qualitySettings, "doIntermediate2XUpscale") || (-[PTMetalContext textureUtil](v18->_metalContext, "textureUtil"), v160 = objc_claimAutoreleasedReturnValue(), [v160 createWithWidth:2 * -[MTLTexture width](v18->_raytracedRGBWeight height:"width") pixelFormat:2 * -[MTLTexture height](v18->_raytracedRGBWeight, "height"), -[PTQualitySettings intermediatePixelFormat](v18->_qualitySettings, "intermediatePixelFormat")], v161 = objc_claimAutoreleasedReturnValue(), raytracedRGBWeightUpscaled = v18->_raytracedRGBWeightUpscaled, v18->_raytracedRGBWeightUpscaled = v161, raytracedRGBWeightUpscaled, v160, v18->_raytracedRGBWeightUpscaled))
                  {
                    v164 = [MEMORY[0x277CBEB18] arrayWithObjects:{v18->_raytracedRGBWeight, v18->_disparityEdges, v18->_disparityEdgesTemp, 0}];
                    v165 = v164;
                    if (v18->_disparityDiffUpscaled)
                    {
                      [v164 addObject:?];
                    }

                    if (v18->_focusEdgeMask)
                    {
                      [v165 addObject:?];
                    }

                    v166 = v18;
                    goto LABEL_103;
                  }

                  v165 = _PTLogSystem(v163);
                  if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV3001 *)v165 initWithMetalContext:v294 colorSize:v295 disparitySize:v296 debugRendering:v297 verbose:v298 options:v299 quality:v300];
                  }
                }

                else
                {
                  v165 = _PTLogSystem(v159);
                  if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                  {
                    [(PTRaytracingV3001 *)v165 initWithMetalContext:v245 colorSize:v246 disparitySize:v247 debugRendering:v248 verbose:v249 options:v250 quality:v251];
                  }
                }
              }
            }

LABEL_102:
            v166 = 0;
LABEL_103:

            goto LABEL_77;
          }

          v28 = _PTLogSystem(v62);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV3001 *)v28 initWithMetalContext:v209 colorSize:v210 disparitySize:v211 debugRendering:v212 verbose:v213 options:v214 quality:v215];
          }
        }

        else
        {
          v28 = _PTLogSystem(v59);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(PTRaytracingV3001 *)v28 initWithMetalContext:v202 colorSize:v203 disparitySize:v204 debugRendering:v205 verbose:v206 options:v207 quality:v208];
          }
        }
      }

      else
      {
        v28 = _PTLogSystem(v54);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV3001 *)v28 initWithMetalContext:v181 colorSize:v182 disparitySize:v183 debugRendering:v184 verbose:v185 options:v186 quality:v187];
        }
      }
    }

    else
    {
      v28 = _PTLogSystem(v51);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingV3001 *)v28 initWithMetalContext:v167 colorSize:v168 disparitySize:v169 debugRendering:v170 verbose:v171 options:v172 quality:v173];
      }
    }

    goto LABEL_75;
  }

  v28 = _PTLogSystem(v48);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [(PTRaytracingV3001 *)v28 initWithMetalContext:v188 colorSize:v189 disparitySize:v190 debugRendering:v191 verbose:v192 options:v193 quality:v194];
  }

LABEL_75:

LABEL_76:
  v166 = 0;
LABEL_77:

  return v166;
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

  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  *&v9 = self->_radialObstructionFactor;
  *&v10 = self->_circleOfConfusionReference;
  *&v11 = self->_fNumberLimitWeight;
  objc_msgSend_createFocusObject_anamorphicFactor_radialObstructionFactor_colorSize_circleOfConfusionReference_fNumberLimitWeight_(PTRaytracingUtils, COERCE_DOUBLE(LODWORD(self->_anamorphicFactor)), v9, *self->_sourceColorSize, v10, v11);
  memset(v90, 0, sizeof(v90));
  sourceDisparity = [requestCopy sourceDisparity];
  if (!self->_injectedRGBAPyramid)
  {
    sourceColor = [requestCopy sourceColor];
    [(PTPyramid *)self->_rgbaPyramid updatePyramid:sourceCopy inPTTexture:sourceColor];
  }

  doCenterDisparity = [(PTQualitySettings *)self->_qualitySettings doCenterDisparity];
  v15 = sourceDisparity;
  if (doCenterDisparity)
  {
    v16 = (*&v91 + *&v91) * *(&v91 + 2);
    *&v16 = v16;
    v17 = vdiv_f32(*&self->_circleOfConfusionLimitBgFg[4], vdup_lane_s32(*&v16, 0));
    v18 = -v17.f32[0];
    v19 = v17.i32[1];
    portraitPreviewDeadzone = [(PTQualitySettings *)self->_qualitySettings portraitPreviewDeadzone];
    raytracingUtils = self->_raytracingUtils;
    disparityDiff = self->_disparityDiff;
    *&v23 = -*(&v91 + 1);
    *&v24 = v18;
    LODWORD(v25) = v19;
    if (portraitPreviewDeadzone)
    {
      [(PTRaytracingUtils *)raytracingUtils disparityPortraitPreviewDeadzone:sourceCopy inDisparity:sourceDisparity outDisparity:disparityDiff postModifier:v23, v24, v25];
    }

    else
    {
      [(PTRaytracingUtils *)raytracingUtils disparityApplyPostModifier:sourceCopy inDisparity:sourceDisparity outDisparity:disparityDiff postModifier:v23, v24, v25];
    }

    v15 = self->_disparityDiff;
  }

  v26 = v15;
  globalReduction = self->_globalReduction;
  if (globalReduction)
  {
    [(PTGlobalReduction *)globalReduction parallelReductionMinMax:sourceCopy inTexture:v26 globalMinMaxBuffer:self->_disparityDiffGlobalMinMax];
    v32 = self->_raytracingUtils;
    disparityEdges = self->_disparityEdges;
    disparityEdgesTemp = self->_disparityEdgesTemp;
    disparityDiffGlobalMinMax = self->_disparityDiffGlobalMinMax;
    *&v36 = self->_edgeTolerance;
    v87 = v91;
    v88 = v92;
    v89 = v93;
    [(PTRaytracingUtils *)v32 detectDilatedEdges:sourceCopy inDisparity:v26 tempEdges:disparityEdgesTemp outEdges:disparityEdges focusObject:&v87 disparityDiffMinMax:disparityDiffGlobalMinMax edgeTolerance:v36];
  }

  guidedFilter = self->_guidedFilter;
  if (guidedFilter)
  {
    guideRGBACoefficients = self->_guideRGBACoefficients;
    guideRGBAUpscale = self->_guideRGBAUpscale;
    disparityDiffUpscaled = self->_disparityDiffUpscaled;
    renderState2 = [requestCopy renderState];
    -[PTGuidedFilter guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:](guidedFilter, "guidedFilter:image:guideRGBACoefficients:guideRGBAUpscale:upscaledImage:sourceColorBitDepth:postModifierPtr:", sourceCopy, v26, guideRGBACoefficients, guideRGBAUpscale, disparityDiffUpscaled, [renderState2 sourceColorBitDepth], 0);

    v42 = self->_disparityDiffUpscaled;
    v26 = v42;
  }

  if (self->_focusEdgeMask)
  {
    *&v27 = self->_focusEdge.width;
    *&v28 = self->_focusEdge.gradientThreshold;
    *&v29 = self->_focusEdge.gradientWeight;
    *&v30 = self->_focusEdge.minMaxThreshold;
    [(PTRaytracingUtils *)self->_raytracingUtils focusEdgeMask:sourceCopy inDisparityDiff:v26 focusEdge:v27 outFocusEdgeMask:v28, v29, v30];
  }

  v87 = 0u;
  v88 = 0u;
  if (requestCopy)
  {
    objc_msgSend_scissorRect(requestCopy);
  }

  else
  {
    v85 = 0uLL;
    v86 = 0uLL;
  }

  destinationColor = [requestCopy destinationColor];
  [destinationColor imageBlockSize];
  objc_msgSend_adjustScissorRectToImageBlocks_imageBlockSize_(PTImageblockConfig);

  v79 = v87;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v80 = v44;
  v45 = vcvt_f32_f64(vcvtq_f64_u64(__PAIR128__(*(&v87 + 1), v79)));
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  __asm { FMOV            V1.2D, #-0.5 }

  v52 = vmovn_s64(vcvtq_s64_f64(vmaxnmq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(v45, __PAIR64__(v46, v80))), _Q1)), 0)));
  v84[1] = v52.i16[2];
  v84[0] = v52.i16[0];
  width = [(MTLTexture *)self->_raytracedRGBWeight width];
  v45.f32[0] = v88;
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v55 = ceil((v45.f32[0] / v54) + 0.5);
  if (v55 > width)
  {
    v55 = width;
  }

  v56 = v55;
  height = [(MTLTexture *)self->_raytracedRGBWeight height];
  v58 = *(&v88 + 1);
  [(PTQualitySettings *)self->_qualitySettings renderDownscale];
  v60 = ceil((v58 / v59) + 0.5);
  if (v60 > height)
  {
    v60 = height;
  }

  v61 = v60;
  computeCommandEncoder = [sourceCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v63 = _PTLogSystem(0);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v63 disparityApplyPostModifier:v64 inDisparity:v65 outDisparity:v66 postModifier:v67, v68, v69, v70];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_raytracingSDOF];
  mipmapTexture = [(PTPyramid *)self->_rgbaPyramid mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture atIndex:0];

  [computeCommandEncoder setTexture:v26 atIndex:1];
  [computeCommandEncoder setTexture:self->_disparityEdges atIndex:2];
  [computeCommandEncoder setTexture:self->_raytracedRGBWeight atIndex:3];
  [computeCommandEncoder setTexture:self->_focusEdgeMask atIndex:4];
  [computeCommandEncoder setBytes:v90 length:24 atIndex:0];
  [computeCommandEncoder setBuffer:self->_aperturePoints.xy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_randomUChars offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_disparityDiffGlobalMinMax offset:0 atIndex:3];
  [computeCommandEncoder setBytes:self->_sourceColorSize length:8 atIndex:4];
  [computeCommandEncoder setBytes:self->_sourceDisparitySize length:8 atIndex:5];
  [computeCommandEncoder setBytes:v84 length:4 atIndex:6];
  *&v85 = v56;
  *(&v85 + 1) = v61;
  *&v86 = 1;
  v82 = vdupq_n_s64(8uLL);
  v83 = 1;
  [computeCommandEncoder dispatchThreads:&v85 threadsPerThreadgroup:&v82];
  [computeCommandEncoder endEncoding];
  v72 = self->_raytracedRGBWeight;
  if (self->_raytracedRGBWeightUpscaled)
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    [textureUtil copy:sourceCopy inTex:self->_raytracedRGBWeight outTex:self->_raytracedRGBWeightUpscaled];

    v74 = self->_raytracedRGBWeightUpscaled;
    v72 = v74;
  }

  raytracingInterpolateResult = self->_raytracingInterpolateResult;
  if (self->_skipFullSizeLayer)
  {
    [(PTRaytracingInterpolateResult *)self->_raytracingInterpolateResult interpolateRGBWeightUsingSourceToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v72];
  }

  else
  {
    mipmapLevels = [(PTPyramid *)self->_rgbaPyramid mipmapLevels];
    v77 = [mipmapLevels objectAtIndexedSubscript:0];
    [(PTRaytracingInterpolateResult *)raytracingInterpolateResult interpolateRGBWeightUsingRGBALinearToDest:sourceCopy renderRequest:requestCopy inRGBWeight:v72 inRGBA:v77];
  }

  if (kdebug_is_enabled())
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __62__PTRaytracingV3001_renderContinuousWithSource_renderRequest___block_invoke;
    v81[3] = &unk_278522E68;
    v81[4] = self;
    [sourceCopy addCompletedHandler:v81];
  }

  return 0;
}

void __62__PTRaytracingV3001_renderContinuousWithSource_renderRequest___block_invoke(uint64_t a1, void *a2)
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
  *(&v8 + 4) = "_disparityEffects";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiff";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiffUpscaled";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_guidedFilter";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdgesTemp";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdges";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiffGlobalMinMax";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingSDOF";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_randomUChars";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_aperturePoints.xy";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingInterpolateResult";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingUtils";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.18(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_rgba";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 debugRendering:(uint64_t)a6 verbose:(uint64_t)a7 options:(uint64_t)a8 quality:.cold.20(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_qualitySettings";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end