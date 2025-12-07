@interface PTRaytracingV14RenderState
- (PTRaytracingV14RenderState)initWithMetalContext:(id)context util:(id)util quality:(int)quality colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering pyramidPixelFormat:(unint64_t)format options:(id)self0 debugTextures:(id)self1;
@end

@implementation PTRaytracingV14RenderState

- (PTRaytracingV14RenderState)initWithMetalContext:(id)context util:(id)util quality:(int)quality colorSize:(CGSize)size disparitySize:(CGSize)disparitySize debugRendering:(int64_t)rendering pyramidPixelFormat:(unint64_t)format options:(id)self0 debugTextures:(id)self1
{
  height = disparitySize.height;
  width = disparitySize.width;
  v229 = size.width;
  v230 = size.height;
  v14 = *&quality;
  contextCopy = context;
  utilCopy = util;
  optionsCopy = options;
  texturesCopy = textures;
  v233.receiver = self;
  v233.super_class = PTRaytracingV14RenderState;
  v21 = [(PTRaytracingV14RenderState *)&v233 init];
  v21->_quality = v14;
  v22 = [PTQualitySettings createWithQuality:v14 options:optionsCopy];
  qualitySettings = v21->_qualitySettings;
  v21->_qualitySettings = v22;

  v24 = v21->_qualitySettings;
  if (v24)
  {
    [(PTQualitySettings *)v24 setDoFirstLevelGaussianDownsample:1];
    v25 = [PTPrecomputeRandom computeUnitDiskPoints:contextCopy numberOfPatternCircles:[(PTQualitySettings *)v21->_qualitySettings numberOfPatternCircles]];
    v27 = v26;
    objc_storeStrong(&v21->_aperturePointsXY, v25);
    if (v21->_aperturePointsXY)
    {
      v29 = [PTPrecomputeRandom computeRandomUChars:contextCopy rayCount:v27];
      randomUChars = v21->_randomUChars;
      v21->_randomUChars = v29;

      if (v21->_randomUChars)
      {
        _H0 = WORD2(v27);
        v21->_rayCount = v27;
        v21->_doVisualization = 0;
        __asm { FCVT            S0, H0 }

        v21->_raytracingRadiusLocal = _S0;
        v38.f64[0] = v229;
        v38.f64[1] = v230;
        *v21->_colorSize = vcvt_f32_f64(v38);
        v21->_anamorphicFactor = 1.2;
        *&v21->_kPyramidSamplingFraction = 0x3CCCCCCD3F99999ALL;
        rayMarch = [(PTQualitySettings *)v21->_qualitySettings rayMarch];
        raytracingRadiusLocal = v21->_raytracingRadiusLocal;
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v41 = v40;
        v42 = objc_opt_new();
        [v42 setConstantValue:&v21->_rayCount type:29 withName:@"kRaytracingRaycount"];
        [v42 setConstantValue:&rayMarch type:53 withName:@"kRayMarch"];
        *&v43 = raytracingRadiusLocal * 0.25;
        [v42 setConstantFloat:@"kRadiusLocal_float" withName:v43];
        *&v44 = v21->_kPyramidSamplingFraction;
        [v42 setConstantFloat:@"kPyramidSamplingFraction_float" withName:v44];
        v45 = fmax(v41 * 0.25 + 1.5, 2.0);
        *&v45 = v45;
        [v42 setConstantFloat:@"kDiameterCoverageLimit_float" withName:v45];
        LODWORD(v46) = 4.0;
        [v42 setConstantFloat:@"kRayMarchDisparityRadiusTolerance_float" withName:v46];
        v47 = [contextCopy computePipelineStateFor:@"raytracingV14" withConstants:v42];
        raytracingSDOF = v21->_raytracingSDOF;
        v21->_raytracingSDOF = v47;

        if (!v21->_raytracingSDOF)
        {
          v84 = _PTLogSystem(v49);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v84 util:v126 quality:v127 colorSize:v128 disparitySize:v129 debugRendering:v130 pyramidPixelFormat:v131 options:v132 debugTextures:?];
          }

          goto LABEL_72;
        }

        if ([(PTQualitySettings *)v21->_qualitySettings rayMarch])
        {
          height = [[PTGlobalReduction alloc] initWithMetalContext:contextCopy textureSize:width, height];
          globalReduction = v21->_globalReduction;
          v21->_globalReduction = height;

          if (!v21->_globalReduction)
          {
            v84 = _PTLogSystem(v52);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingV2002 *)v84 initWithMetalContext:v133 colorSize:v134 disparitySize:v135 debugRendering:v136 verbose:v137 options:v138 quality:v139];
            }

            goto LABEL_72;
          }

          v53 = objc_msgSend_device(contextCopy);
          v54 = [v53 newBufferWithLength:8 options:0];
          disparityDiffGlobalMinMax = v21->_disparityDiffGlobalMinMax;
          v21->_disparityDiffGlobalMinMax = v54;

          if (!v21->_disparityDiffGlobalMinMax)
          {
            v84 = _PTLogSystem(v56);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v140 quality:v141 colorSize:v142 disparitySize:v143 debugRendering:v144 pyramidPixelFormat:v145 options:v146 debugTextures:?];
            }

            goto LABEL_72;
          }

          textureUtil = [contextCopy textureUtil];
          height2 = [textureUtil createWithSize:10 pixelFormat:width, height];
          disparityEdges = v21->_disparityEdges;
          v21->_disparityEdges = height2;

          if (!v21->_disparityEdges)
          {
            v84 = _PTLogSystem(v60);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v161 quality:v162 colorSize:v163 disparitySize:v164 debugRendering:v165 pyramidPixelFormat:v166 options:v167 debugTextures:?];
            }

            goto LABEL_72;
          }

          textureUtil2 = [contextCopy textureUtil];
          height3 = [textureUtil2 createWithSize:10 pixelFormat:width, height];
          disparityEdgesTemp = v21->_disparityEdgesTemp;
          v21->_disparityEdgesTemp = height3;

          if (!v21->_disparityEdgesTemp)
          {
            v84 = _PTLogSystem(v64);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v189 quality:v190 colorSize:v191 disparitySize:v192 debugRendering:v193 pyramidPixelFormat:v194 options:v195 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        [(PTQualitySettings *)v21->_qualitySettings disparityUpsampleFactor];
        if (v65 > 1.0)
        {
          height4 = [[PTDisparityUpscale alloc] initWithMetalContext:contextCopy colorSize:v229 disparitySize:v230, width, height];
          disparityUpscale = v21->_disparityUpscale;
          v21->_disparityUpscale = height4;

          if (!v21->_disparityUpscale)
          {
            v84 = _PTLogSystem(v68);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v147 quality:v148 colorSize:v149 disparitySize:v150 debugRendering:v151 pyramidPixelFormat:v152 options:v153 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings doCenterDisparity])
        {
          textureUtil3 = [contextCopy textureUtil];
          height5 = [textureUtil3 createWithSize:25 pixelFormat:width, height];
          disparityDiff = v21->_disparityDiff;
          v21->_disparityDiff = height5;

          if (!v21->_disparityDiff)
          {
            v84 = _PTLogSystem(v72);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v154 quality:v155 colorSize:v156 disparitySize:v157 debugRendering:v158 pyramidPixelFormat:v159 options:v160 debugTextures:?];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings doFocusEdgeMask])
        {
          textureUtil4 = [contextCopy textureUtil];
          v74 = v21->_disparityUpscale;
          if (v74)
          {
            width = [(PTDisparityUpscale *)v74 width];
            v75 = v21->_disparityUpscale;
            if (v75)
            {
              height = [(PTDisparityUpscale *)v75 height];
            }
          }

          v76 = [textureUtil4 createWithWidth:width height:height pixelFormat:25];
          focusEdgeMask = v21->_focusEdgeMask;
          v21->_focusEdgeMask = v76;

          if (!v21->_focusEdgeMask)
          {
            v84 = _PTLogSystem(v78);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [(PTRaytracingUtils *)v84 initWithMetalContext:v168, v169, v170, v171, v172, v173, v174];
            }

            goto LABEL_72;
          }
        }

        if ([(PTQualitySettings *)v21->_qualitySettings quality]<= 25)
        {
          textureUtil5 = [contextCopy textureUtil];
          v80 = [textureUtil5 createWithWidth:256 height:256 pixelFormat:12];
          randomGaussNoise = v21->_randomGaussNoise;
          v21->_randomGaussNoise = v80;

          if (!v21->_randomGaussNoise)
          {
            v84 = _PTLogSystem(v82);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v182 quality:v183 colorSize:v184 disparitySize:v185 debugRendering:v186 pyramidPixelFormat:v187 options:v188 debugTextures:?];
            }

            goto LABEL_72;
          }

          commandQueue = [contextCopy commandQueue];
          v84 = commandQueue;
          if (!commandQueue)
          {
            v84 = _PTLogSystem(0);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v84 util:v196 quality:v197 colorSize:v198 disparitySize:v199 debugRendering:v200 pyramidPixelFormat:v201 options:v202 debugTextures:?];
            }

            goto LABEL_72;
          }

          commandBuffer = [commandQueue commandBuffer];
          if (!commandBuffer)
          {
            v203 = _PTLogSystem(0);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v203 util:v204 quality:v205 colorSize:v206 disparitySize:v207 debugRendering:v208 pyramidPixelFormat:v209 options:v210 debugTextures:?];
            }

            goto LABEL_72;
          }

          v228 = commandBuffer;
          [commandBuffer setLabel:@"PTRaytracingV14RenderState init noise"];
          v86 = objc_msgSend_device(contextCopy);
          v227 = [PTRaytracingUtilsV1 precomputeNoise:v86 sideLength:256];

          if (!v227)
          {
            v218 = _PTLogSystem(v87);
            if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
            {
              [PTRaytracingV14RenderState initWithMetalContext:v218 util:v219 quality:v220 colorSize:v221 disparitySize:v222 debugRendering:v223 pyramidPixelFormat:v224 options:v225 debugTextures:?];
            }

            goto LABEL_72;
          }

          [utilCopy gaussianNoise:v228 inNoise:v227 outTex:v21->_randomGaussNoise];
          [v228 commit];
          [v228 waitUntilScheduled];
        }

        textureUtil6 = [contextCopy textureUtil];
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v90 = v89;
        [(PTQualitySettings *)v21->_qualitySettings renderDownscale];
        v92 = [textureUtil6 createWithWidth:(v229 / v90) height:(v230 / v91) pixelFormat:-[PTQualitySettings intermediatePixelFormat](v21->_qualitySettings, "intermediatePixelFormat")];
        raytracedRGBRadius = v21->_raytracedRGBRadius;
        v21->_raytracedRGBRadius = v92;

        if (v21->_raytracedRGBRadius)
        {
          if (!-[PTQualitySettings doIntermediate2XUpscale](v21->_qualitySettings, "doIntermediate2XUpscale") || ([contextCopy textureUtil], v231 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v231, "createWithWidth:height:pixelFormat:", 2 * -[MTLTexture width](v21->_raytracedRGBRadius, "width"), 2 * -[MTLTexture height](v21->_raytracedRGBRadius, "height"), -[PTQualitySettings intermediatePixelFormat](v21->_qualitySettings, "intermediatePixelFormat")), v95 = objc_claimAutoreleasedReturnValue(), raytracedRGBRadiusUpscaled = v21->_raytracedRGBRadiusUpscaled, v21->_raytracedRGBRadiusUpscaled = v95, raytracedRGBRadiusUpscaled, v231, v21->_raytracedRGBRadiusUpscaled))
          {
            v84 = [MEMORY[0x277CBEB18] arrayWithObjects:{v21->_raytracedRGBRadius, v21->_disparityEdges, v21->_disparityEdgesTemp, 0}];
            v98 = v21->_disparityUpscale;
            if (v98)
            {
              upscaledTexture = [(PTDisparityUpscale *)v98 upscaledTexture];

              if (upscaledTexture)
              {
                upscaledTexture2 = [(PTDisparityUpscale *)v21->_disparityUpscale upscaledTexture];
                [v84 addObject:upscaledTexture2];
              }
            }

            if (v21->_focusEdgeMask)
            {
              [v84 addObject:?];
            }

            v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, Rays: %i", v21->_qualitySettings, v27];
            description = v21->_description;
            v21->_description = v101;

            v103 = v21;
            goto LABEL_73;
          }

          v84 = _PTLogSystem(v97);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v84 util:v211 quality:v212 colorSize:v213 disparitySize:v214 debugRendering:v215 pyramidPixelFormat:v216 options:v217 debugTextures:?];
          }
        }

        else
        {
          v84 = _PTLogSystem(v94);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            [PTRaytracingV14RenderState initWithMetalContext:v84 util:v175 quality:v176 colorSize:v177 disparitySize:v178 debugRendering:v179 pyramidPixelFormat:v180 options:v181 debugTextures:?];
          }
        }

LABEL_72:
        v103 = 0;
LABEL_73:

        goto LABEL_74;
      }

      v111 = _PTLogSystem(v31);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        [PTRaytracingV14RenderState initWithMetalContext:v111 util:v119 quality:v120 colorSize:v121 disparitySize:v122 debugRendering:v123 pyramidPixelFormat:v124 options:v125 debugTextures:?];
      }
    }

    else
    {
      v111 = _PTLogSystem(v28);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        [PTRaytracingV14RenderState initWithMetalContext:v111 util:v112 quality:v113 colorSize:v114 disparitySize:v115 debugRendering:v116 pyramidPixelFormat:v117 options:v118 debugTextures:?];
      }
    }
  }

  else
  {
    v25 = _PTLogSystem(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PTRaytracingV14RenderState initWithMetalContext:v25 util:v104 quality:v105 colorSize:v106 disparitySize:v107 debugRendering:v108 pyramidPixelFormat:v109 options:v110 debugTextures:?];
    }
  }

  v103 = 0;
LABEL_74:

  return v103;
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracedRGBRadiusUpscaled";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracedRGBRadius";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "precomputedNoise";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandBuffer";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandQueue";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_randomGaussNoise";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiff";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityUpscale";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdgesTemp";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityEdges";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityDiffGlobalMinMax";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_raytracingSDOF";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_randomUChars";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_aperturePointsXY";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 util:(uint64_t)a4 quality:(uint64_t)a5 colorSize:(uint64_t)a6 disparitySize:(uint64_t)a7 debugRendering:(uint64_t)a8 pyramidPixelFormat:options:debugTextures:.cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_qualitySettings";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end