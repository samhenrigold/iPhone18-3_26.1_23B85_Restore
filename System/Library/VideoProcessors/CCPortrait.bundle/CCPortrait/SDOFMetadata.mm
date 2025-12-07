@interface SDOFMetadata
+ (BOOL)getUnifiedRenderingForegroundBlurEnabled:(id)enabled;
+ (BOOL)hasValidHeader:(void *)header;
+ (blurmap_refinement_params)loadBlurmapRefinementParams:(SEL)params apertureScaling:(void *)scaling inputScale:(float)scale focusWindow:(float)window segmentationFusionParams:(CGRect)fusionParams;
+ (blurmap_smoothing_params)loadBlurmapSmoothingParams:(SEL)params;
+ (crisp_hair_params)loadCrispHairParams:(SEL)params;
+ (disparity_refinement_params)loadDisparityRefinementParams:(SEL)params;
+ (face_mask_params)loadFaceMaskParams:(SEL)params facePoints:(void *)points simulatedAperture:(CGPoint *)aperture aspectRatio:(float)ratio maxBlur:(float)blur;
+ (float)defaultSimulatedAperture:(void *)aperture;
+ (float)maxSimulatedAperture:(void *)aperture;
+ (float)minSimulatedAperture:(void *)aperture;
+ (hairnet_params)loadHairnetParams:(SEL)params;
+ (int)disparityRefinementVersion:(void *)version;
+ (int)getEffectiveVersion:(FigDepthBlurEffectRenderingParametersHeader *)version;
+ (int)getMinorRenderingVersion:(void *)version;
+ (int)getRenderingVersion:(void *)version;
+ (int)loadMattingParams:(void *)params config:(id *)config;
+ (rendering_config_params)loadRenderingParams:(SEL)params simulatedAperture:(void *)aperture lumaNoiseAmplitude:(float)amplitude maxBlur:(float)blur;
+ (segmentation_fusion_params)loadSegmentationFusionParams:(SEL)params simulatedAperture:(void *)aperture maxBlur:(float)blur;
+ (simple_lens_model_params)loadLensModelParams:(SEL)params simulatedAperture:(void *)aperture focusWindow:(float)window frameNormalizedFocalLength:(CGRect)length maxBlur:(float)blur;
+ (void)getRenderingParametersFromMetaData:(id)data;
@end

@implementation SDOFMetadata

+ (BOOL)getUnifiedRenderingForegroundBlurEnabled:(id)enabled
{
  enabledCopy = enabled;
  v7 = objc_msgSend_bytes(enabled, v5, v6);
  v8 = objc_opt_class();
  hasValidHeader = objc_msgSend_hasValidHeader_(v8, v9, v7);
  if (hasValidHeader)
  {
    if (*(v7 + 4) >= 6)
    {
      v12 = 0;
      sub_2956ADBB0(v7, 1200, 2u, &v12);
      LOBYTE(hasValidHeader) = v12 > 0;
    }

    else
    {
      LOBYTE(hasValidHeader) = 0;
    }
  }

  return hasValidHeader;
}

+ (int)getEffectiveVersion:(FigDepthBlurEffectRenderingParametersHeader *)version
{
  if (!version)
  {
    return 0;
  }

  var1 = version->var1;
  if (var1 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = version->var1;
  }

  if (var1 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)hasValidHeader:(void *)header
{
  if (!header)
  {
    return 0;
  }

  if (*header != 1145980242 || *(header + 1) > 9)
  {
    return 0;
  }

  EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a2, header);
  if (EffectiveVersion != 4)
  {
    return EffectiveVersion == 3 && *(header + 2) == 472;
  }

  result = 0;
  v6 = *(header + 2);
  if (v6 >= 0x10 && (v6 & 7) == 0)
  {
    return 1;
  }

  return result;
}

+ (int)getRenderingVersion:(void *)version
{
  v4 = objc_opt_class();
  if (objc_msgSend_hasValidHeader_(v4, v5, version))
  {
    return *(version + 1);
  }

  else
  {
    return -1;
  }
}

+ (float)minSimulatedAperture:(void *)aperture
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, aperture))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, aperture);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(aperture, 601, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(aperture + 25);
    }
  }

  return v7;
}

+ (float)maxSimulatedAperture:(void *)aperture
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, aperture))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, aperture);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(aperture, 602, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(aperture + 67);
    }
  }

  return v7;
}

+ (void)getRenderingParametersFromMetaData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  if (*(v7 + 4) <= 9)
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v8, v7);
    if (EffectiveVersion == 4)
    {
      v16 = dataCopy;
      v14 = v16;
      if (v16)
      {
        if (objc_msgSend_length(v16, v17, v18) >= 0x10 && (objc_msgSend_length(v14, v19, v20) & 7) == 0)
        {
          v23 = objc_msgSend_length(v14, v21, v22);
          v24 = malloc_type_malloc(v23, 0x1000040451B5BE8uLL);
          if (v24)
          {
            v10 = v24;
            v27 = objc_msgSend_length(v14, v25, v26);
            objc_msgSend_getBytes_length_(v14, v28, v10, v27);
            if (*v10 == 1145980242 && (*(v10 + 1) - 10) >= 0xFFFFFFFA)
            {
              v31 = *(v10 + 2);
              if (objc_msgSend_length(v14, v29, v30) == v31)
              {
                v32 = *(v10 + 2) - 16;
                if (v32 < 8)
                {
                  goto LABEL_31;
                }

                v33 = v32 >> 3;
                v34 = v33 <= 1 ? 1 : v33;
                if (v10[8] >= 1)
                {
                  v35 = v10 + 12;
                  v36 = 1;
                  do
                  {
                    v37 = v36;
                    if (v34 == v36)
                    {
                      break;
                    }

                    v38 = *v35;
                    v35 += 4;
                    ++v36;
                  }

                  while (v38 > 0);
                  if (v37 >= v33)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }

            free(v10);
          }
        }
      }
    }

    else if (EffectiveVersion == 3)
    {
      v10 = malloc_type_malloc(0x1D8uLL, 0x1000040156972F5uLL);
      v11 = dataCopy;
      v14 = v11;
      memset(v40, 0, 472);
      if (v11)
      {
        if (v10)
        {
          if (objc_msgSend_length(v11, v12, v13) >= 0x1D8)
          {
            objc_msgSend_getBytes_length_(v14, v15, v40, 472);
            if (LODWORD(v40[0]) == 1145980242 && *(v40 + 4) == 0x1D800000003)
            {
              memcpy(v10, v40, 0x1D8uLL);

LABEL_31:
              goto LABEL_27;
            }
          }
        }
      }

      free(v10);
    }
  }

  v10 = 0;
LABEL_27:

  return v10;
}

+ (int)disparityRefinementVersion:(void *)version
{
  v4 = objc_opt_class();
  if (!objc_msgSend_hasValidHeader_(v4, v5, version))
  {
    return -1;
  }

  EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, version);
  result = -1;
  if (EffectiveVersion == 4)
  {
    v9 = -1;
    sub_2956ADBB0(version, 100, 2u, &v9);
    return v9;
  }

  else if (EffectiveVersion == 3)
  {
    return *(version + 70);
  }

  return result;
}

+ (float)defaultSimulatedAperture:(void *)aperture
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, aperture))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, aperture);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(aperture, 600, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(aperture + 71);
    }
  }

  return v7;
}

+ (simple_lens_model_params)loadLensModelParams:(SEL)params simulatedAperture:(void *)aperture focusWindow:(float)window frameNormalizedFocalLength:(CGRect)length maxBlur:(float)blur
{
  *&retstr->var12 = 0;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  if (*(aperture + 1) <= 9)
  {
    height = length.size.height;
    width = length.size.width;
    y = length.origin.y;
    x = length.origin.x;
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, aperture);
    if (result == 4)
    {
      v27 = x;
      v28 = y;
      retstr->var0 = v27;
      retstr->var1 = v28;
      v29 = width;
      v30 = height;
      retstr->var2 = v29;
      retstr->var3 = v30;
      sub_2956ADBB0(aperture, 201, 1u, &retstr->var4);
      retstr->var5 = blur * 36.0;
      retstr->var6 = window;
      sub_2956ADBB0(aperture, 601, 1u, &retstr->var7);
      sub_2956ADBB0(aperture, 602, 1u, &retstr->var8);
      retstr->var9 = blur;
      sub_2956ADBB0(aperture, 202, 1u, &retstr->var10);
      retstr->var11 = a8;
      sub_2956ADBB0(aperture, 200, 1u, &retstr->var12);

      return sub_2956ADBB0(aperture, 603, 1u, &retstr->var13);
    }

    else if (result == 3)
    {
      v17 = x;
      v18 = *(aperture + 25);
      v19 = y;
      v20 = width;
      v21 = *(aperture + 67);
      v22 = height;
      v23 = *(aperture + 37);
      v24 = *(aperture + 38);
      v25 = *(aperture + 8);
      v26 = *(aperture + 72);
      retstr->var0 = v17;
      retstr->var1 = v19;
      retstr->var2 = v20;
      retstr->var3 = v22;
      retstr->var4 = v23;
      retstr->var5 = blur * 36.0;
      retstr->var6 = window;
      retstr->var7 = v18;
      retstr->var8 = v21;
      retstr->var9 = blur;
      retstr->var10 = v24;
      retstr->var11 = a8;
      retstr->var12 = v25;
      retstr->var13 = v26;
    }
  }

  return result;
}

+ (int)loadMattingParams:(void *)params config:(id *)config
{
  result = -1;
  if (params && config)
  {
    *config = *byte_2956D2CD0;
    if ((*(params + 1) - 10) >= 0xFFFFFFFB)
    {
      v7 = sub_2956ADBB0(params, 117, 1u, config);
      v8 = sub_2956ADBB0(params, 118, 1u, &config->var1) | v7;
      v9 = sub_2956ADBB0(params, 119, 1u, &config->var2);
      v10 = v8 | v9 | sub_2956ADBB0(params, 120, 1u, &config->var3);
      v11 = sub_2956ADBB0(params, 121, 1u, &config->var4);
      v12 = v11 | sub_2956ADBB0(params, 122, 1u, &config->var5);
      v13 = v10 | v12 | sub_2956ADBB0(params, 123, 1u, &config->var6);
      v14 = sub_2956ADBB0(params, 124, 1u, &config->var7);
      v15 = v14 | sub_2956ADBB0(params, 125, 1u, &config->var8);
      v16 = v15 | sub_2956ADBB0(params, 126, 1u, &config->var9);
      v17 = v13 | v16 | sub_2956ADBB0(params, 127, 2u, &config->var11);
      return v17 | sub_2956ADBB0(params, 128, 1u, &config->var10);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

+ (crisp_hair_params)loadCrispHairParams:(SEL)params
{
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  if ((*(a4 + 1) - 10) >= 0xFFFFFFFA)
  {
    *&retstr->var0 = xmmword_2956D2D00;
    retstr->var4 = 0.4;
    sub_2956ADBB0(a4, 1100, 1u, retstr);
    sub_2956ADBB0(a4, 1101, 1u, &retstr->var1);
    sub_2956ADBB0(a4, 1102, 1u, &retstr->var2);
    sub_2956ADBB0(a4, 1103, 1u, &retstr->var3);

    return sub_2956ADBB0(a4, 1104, 1u, &retstr->var4);
  }

  return result;
}

+ (disparity_refinement_params)loadDisparityRefinementParams:(SEL)params
{
  retstr->fgBgDilationSize = 0;
  *&retstr->aaLumaSigma = 0u;
  *&retstr->fgBlurScale = 0u;
  *&retstr->outerSamplingRadius = 0u;
  *&retstr->segmentationSigma = 0u;
  *&retstr->radius = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, a4);
    if (result == 4)
    {
      sub_2956ADBB0(a4, 101, 2u, retstr);
      sub_2956ADBB0(a4, 106, 1u, &retstr->weightScaling);
      sub_2956ADBB0(a4, 107, 1u, &retstr->maxReconstructionWeight);
      sub_2956ADBB0(a4, 108, 1u, &retstr->innerSamplingRadius);
      sub_2956ADBB0(a4, 109, 1u, &retstr->outerSamplingRadius);
      sub_2956ADBB0(a4, 110, 2u, &retstr->nSamples);
      sub_2956ADBB0(a4, 111, 1u, &retstr->lumaSigma);
      sub_2956ADBB0(a4, 112, 1u, &retstr->chromaSigma);
      sub_2956ADBB0(a4, 115, 1u, &retstr->segmentationSigma);
      sub_2956ADBB0(a4, 102, 1u, &retstr->disparitySigma);
      sub_2956ADBB0(a4, 113, 1u, &retstr->accumulatedWeightT0);
      sub_2956ADBB0(a4, 114, 1u, &retstr->accumulatedWeightT1);
      sub_2956ADBB0(a4, 103, 1u, &retstr->aaLumaSigma);
      sub_2956ADBB0(a4, 104, 1u, &retstr->aaChromaSigma);
      sub_2956ADBB0(a4, 116, 1u, &retstr->aaSegmentationSigma);
      result = sub_2956ADBB0(a4, 105, 1u, &retstr->aaSpatialSigma);
      if (*(a4 + 1) < 6)
      {
        *&retstr->fgBlurScale = 0;
        *&retstr->fgDeadZoneOffset = 0;
        retstr->fgBgDilationSize = 0;
      }

      else
      {
        v12 = sub_2956ADBB0(a4, 1205, 1u, &retstr->fgBlurScale);
        if (v12)
        {
          retstr->fgBlurScale = 1.0;
          v13 = uni_logger_api(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC3A0();
          }
        }

        v14 = sub_2956ADBB0(a4, 1206, 1u, &retstr->fgBlurClamp);
        if (v14)
        {
          retstr->fgBlurClamp = 1.0;
          v15 = uni_logger_api(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC3E0();
          }
        }

        v16 = sub_2956ADBB0(a4, 1211, 1u, &retstr->fgDeadZoneOffset);
        if (v16)
        {
          retstr->fgDeadZoneOffset = 0.0;
          v17 = uni_logger_api(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC420(v17, v18, v19, v20, v21, v22, v23, v24);
          }
        }

        v25 = sub_2956ADBB0(a4, 1213, 1u, &retstr->fgFgBgThreshold);
        if (v25)
        {
          retstr->fgFgBgThreshold = 0.05;
          v26 = uni_logger_api(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC464();
          }
        }

        result = sub_2956ADBB0(a4, 1214, 2u, &retstr->fgBgDilationSize);
        if (result)
        {
          retstr->fgBgDilationSize = 7;
          v27 = uni_logger_api(result);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC4B0(v27);
          }
        }
      }
    }

    else if (result == 3)
    {
      v6 = *(a4 + 32);
      *&v7 = *(a4 + 132);
      *&v8 = *(a4 + 140);
      v9 = *(a4 + 20);
      v10 = *(a4 + 69);
      v11 = *(a4 + 7);
      retstr->radius = *(a4 + 3);
      *&retstr->weightScaling = *(a4 + 7);
      DWORD2(v7) = *(a4 + 68);
      retstr->nSamples = v6;
      HIDWORD(v7) = *(a4 + 4);
      *&retstr->lumaSigma = v7;
      *(&v8 + 1) = v9;
      *&retstr->accumulatedWeightT0 = v8;
      retstr->aaSegmentationSigma = v10;
      retstr->aaSpatialSigma = v11;
      *&retstr->fgBlurScale = 0;
      *&retstr->fgDeadZoneOffset = 0;
      retstr->fgBgDilationSize = 0;
    }
  }

  return result;
}

+ (segmentation_fusion_params)loadSegmentationFusionParams:(SEL)params simulatedAperture:(void *)aperture maxBlur:(float)blur
{
  retstr->var8 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(aperture + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, aperture);
    if (result == 4)
    {
      retstr->var0 = blur;
      retstr->var2 = a6;
      sub_2956ADBB0(aperture, 600, 1u, &retstr->var1);
      sub_2956ADBB0(aperture, 900, 1u, &retstr->var3);
      sub_2956ADBB0(aperture, 901, 1u, &retstr->var4);
      sub_2956ADBB0(aperture, 902, 1u, &retstr->var5);
      sub_2956ADBB0(aperture, 903, 1u, &retstr->var6);
      sub_2956ADBB0(aperture, 904, 1u, &retstr->var7);

      return sub_2956ADBB0(aperture, 905, 1u, &retstr->var8);
    }

    else if (result == 3)
    {
      v10 = *(aperture + 71);
      retstr->var0 = blur;
      retstr->var1 = v10;
      retstr->var2 = a6;
      *&retstr->var3 = *(aperture + 228);
      *&retstr->var7 = *(aperture + 244);
    }
  }

  return result;
}

+ (blurmap_refinement_params)loadBlurmapRefinementParams:(SEL)params apertureScaling:(void *)scaling inputScale:(float)scale focusWindow:(float)window segmentationFusionParams:(CGRect)fusionParams
{
  *&retstr->var13 = 0u;
  *&retstr->var10.var11 = 0u;
  *&retstr->var10.var15 = 0u;
  *&retstr->var10.var3 = 0u;
  *&retstr->var10.var7 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var9.var3 = 0u;
  *&retstr->var1.var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var0.var3 = 0u;
  *&retstr->var0.var0.var0 = 0u;
  *&retstr->var0.var0.var4 = 0u;
  if (*(scaling + 1) <= 9)
  {
    height = fusionParams.size.height;
    width = fusionParams.size.width;
    y = fusionParams.origin.y;
    x = fusionParams.origin.x;
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, scaling);
    if (result == 4)
    {
      *&retstr->var0.var0.var0 = *&a8->var3;
      *&retstr->var0.var0.var4 = *&a8->var7;
      sub_2956ADBB0(scaling, 1011, 2u, &retstr->var0.var1);
      sub_2956ADBB0(scaling, 1012, 1u, &retstr->var0.var2);
      sub_2956ADBB0(scaling, 1013, 1u, &retstr->var0.var3);
      sub_2956ADBB0(scaling, 1017, 1u, &retstr->var1.var0.var0);
      sub_2956ADBB0(scaling, 1018, 1u, &retstr->var1.var0.var1);
      sub_2956ADBB0(scaling, 1022, 1u, &retstr->var1.var0.var2);
      sub_2956ADBB0(scaling, 1019, 1u, &retstr->var1.var0.var3);
      sub_2956ADBB0(scaling, 1020, 1u, &retstr->var1.var0.var4);
      sub_2956ADBB0(scaling, 1021, 1u, &retstr->var1.var0.var5);
      sub_2956ADBB0(scaling, 1014, 2u, &retstr->var1.var1);
      sub_2956ADBB0(scaling, 1015, 1u, &retstr->var1.var2);
      sub_2956ADBB0(scaling, 1016, 1u, &retstr->var1.var3);
      sub_2956ADBB0(scaling, 1004, 1u, &retstr->var2);
      retstr->var3 = scale;
      sub_2956ADBB0(scaling, 1023, 1u, &retstr->var4);
      sub_2956ADBB0(scaling, 1006, 1u, &retstr->var5);
      sub_2956ADBB0(scaling, 1007, 1u, &retstr->var6);
      sub_2956ADBB0(scaling, 1005, 1u, &retstr->var7);
      sub_2956ADBB0(scaling, 1008, 1u, &retstr->var8);
      sub_2956ADBB0(scaling, 1000, 1u, &retstr->var9.var0);
      sub_2956ADBB0(scaling, 1001, 1u, &retstr->var9.var1);
      sub_2956ADBB0(scaling, 1002, 1u, &retstr->var9.var2);
      sub_2956ADBB0(scaling, 1003, 1u, &retstr->var9.var3);
      sub_2956ADBB0(scaling, 1024, 2u, &retstr->var10.var0);
      sub_2956ADBB0(scaling, 1025, 1u, &retstr->var10.var1);
      sub_2956ADBB0(scaling, 1026, 1u, &retstr->var10.var2);
      sub_2956ADBB0(scaling, 1027, 1u, &retstr->var10.var3);
      sub_2956ADBB0(scaling, 1028, 1u, &retstr->var10.var4);
      sub_2956ADBB0(scaling, 1029, 1u, &retstr->var10.var5);
      sub_2956ADBB0(scaling, 1030, 1u, &retstr->var10.var6);
      sub_2956ADBB0(scaling, 1031, 1u, &retstr->var10.var7);
      sub_2956ADBB0(scaling, 1032, 1u, &retstr->var10.var8);
      sub_2956ADBB0(scaling, 1033, 1u, &retstr->var10.var9);
      sub_2956ADBB0(scaling, 1034, 1u, &retstr->var10.var10);
      sub_2956ADBB0(scaling, 1035, 1u, &retstr->var10.var11);
      sub_2956ADBB0(scaling, 1036, 1u, &retstr->var10.var12);
      sub_2956ADBB0(scaling, 1037, 1u, &retstr->var10.var13);
      sub_2956ADBB0(scaling, 1038, 1u, &retstr->var10.var14);
      sub_2956ADBB0(scaling, 1039, 1u, &retstr->var10.var15);
      sub_2956ADBB0(scaling, 1009, 1u, &retstr->var11);
      result = sub_2956ADBB0(scaling, 1010, 1u, &retstr->var12);
      v27 = x;
      retstr->var13 = v27;
      v25 = y;
    }

    else
    {
      if (result != 3)
      {
        goto LABEL_7;
      }

      v17 = *(scaling + 84);
      *&v18 = *(scaling + 340);
      v19 = *(scaling + 87);
      v20 = *(scaling + 77);
      v21 = *(scaling + 96);
      v22 = *(scaling + 97);
      v23 = *(scaling + 110);
      v24 = x;
      v25 = y;
      *&retstr->var0.var0.var0 = *&a8->var3;
      *&retstr->var0.var0.var4 = *&a8->var7;
      retstr->var0.var1 = v17;
      v26 = *(scaling + 44);
      *(&v18 + 1) = *(scaling + 45);
      *&retstr->var0.var2 = v18;
      *&retstr->var1.var0.var2 = vextq_s8(*(scaling + 23), *(scaling + 23), 0xCuLL);
      retstr->var1.var1 = v19;
      *&retstr->var1.var2 = v26;
      retstr->var2 = v20;
      retstr->var3 = scale;
      retstr->var4 = v21;
      *&retstr->var5 = vzip2q_s32(vzip1q_s32(*(scaling + 312), vextq_s8(*(scaling + 312), *(scaling + 312), 0xCuLL)), *(scaling + 312));
      retstr->var9 = *(scaling + 292);
      retstr->var10.var0 = v22;
      *&retstr->var10.var1 = *(scaling + 392);
      *&retstr->var10.var5 = *(scaling + 408);
      *&retstr->var10.var9 = *(scaling + 424);
      retstr->var10.var13 = v23;
      *&retstr->var10.var14 = 0x3F80000000000000;
      *&retstr->var11 = *(scaling + 41);
      retstr->var13 = v24;
    }

    v28 = width;
    retstr->var14 = v25;
    retstr->var15 = v28;
    v29 = height;
    retstr->var16 = v29;
LABEL_7:
    if (window != 1.0)
    {
      retstr->var0.var1 = (retstr->var0.var1 * window);
      retstr->var1.var1 = (retstr->var1.var1 * window);
    }
  }

  return result;
}

+ (face_mask_params)loadFaceMaskParams:(SEL)params facePoints:(void *)points simulatedAperture:(CGPoint *)aperture aspectRatio:(float)ratio maxBlur:(float)blur
{
  *&retstr[2].var10 = 0u;
  *&retstr[2].var14 = 0u;
  *&retstr[2].var2 = 0u;
  *&retstr[2].var6 = 0u;
  *&retstr[1].var9 = 0u;
  *&retstr[1].var13 = 0u;
  *&retstr[1].var1 = 0u;
  *&retstr[1].var5 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(points + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, points);
    if (result == 4)
    {
      retstr->var0 = a8;
      retstr->var1 = ratio;
      sub_2956ADBB0(points, 600, 1u, &retstr->var2);
      v34.f64[0] = aperture[8].x;
      v35.f64[0] = aperture[8].y;
      v34.f64[1] = aperture[12].x;
      v36.f64[0] = aperture->x;
      v37.f64[0] = aperture->y;
      v36.f64[1] = aperture[4].x;
      v35.f64[1] = aperture[12].y;
      v37.f64[1] = aperture[4].y;
      *&retstr->var4 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr->var8 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = aperture[9].x;
      v35.f64[0] = aperture[9].y;
      v34.f64[1] = aperture[13].x;
      v36.f64[0] = aperture[1].x;
      v37.f64[0] = aperture[1].y;
      v36.f64[1] = aperture[5].x;
      v35.f64[1] = aperture[13].y;
      v37.f64[1] = aperture[5].y;
      *&retstr->var12 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[1].var1 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = aperture[10].x;
      v35.f64[0] = aperture[10].y;
      v34.f64[1] = aperture[14].x;
      v36.f64[0] = aperture[2].x;
      v37.f64[0] = aperture[2].y;
      v36.f64[1] = aperture[6].x;
      v35.f64[1] = aperture[14].y;
      v37.f64[1] = aperture[6].y;
      *&retstr[1].var5 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[1].var9 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = aperture[11].x;
      v35.f64[0] = aperture[11].y;
      v34.f64[1] = aperture[15].x;
      v36.f64[0] = aperture[3].x;
      v37.f64[0] = aperture[3].y;
      v36.f64[1] = aperture[7].x;
      v35.f64[1] = aperture[15].y;
      v37.f64[1] = aperture[7].y;
      *&retstr[1].var13 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[2].var2 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      sub_2956ADBB0(points, 304, 1u, &retstr[2].var6);
      sub_2956ADBB0(points, 305, 1u, &retstr[2].var7);
      sub_2956ADBB0(points, 303, 1u, &retstr[2].var8);
      sub_2956ADBB0(points, 300, 1u, &retstr[2].var9);
      sub_2956ADBB0(points, 301, 1u, &retstr[2].var10);
      sub_2956ADBB0(points, 302, 1u, &retstr[2].var11);
      sub_2956ADBB0(points, 306, 1u, &retstr[2].var12);
      result = sub_2956ADBB0(points, 307, 1u, &retstr[2].var13);
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v14 = *(points + 71);
      v15.f64[0] = aperture[8].x;
      v16.f64[0] = aperture[8].y;
      v15.f64[1] = aperture[12].x;
      v17.f64[0] = aperture->x;
      v18.f64[0] = aperture->y;
      v17.f64[1] = aperture[4].x;
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15);
      v16.f64[1] = aperture[12].y;
      v18.f64[1] = aperture[4].y;
      v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v16);
      v18.f64[0] = aperture[9].x;
      v21.f64[0] = aperture[9].y;
      v18.f64[1] = aperture[13].x;
      v16.f64[0] = aperture[1].x;
      v22.f64[0] = aperture[1].y;
      v16.f64[1] = aperture[5].x;
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v18);
      v21.f64[1] = aperture[13].y;
      v22.f64[1] = aperture[5].y;
      v24 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      v22.f64[0] = aperture[10].x;
      v25.f64[0] = aperture[10].y;
      v22.f64[1] = aperture[14].x;
      v21.f64[0] = aperture[2].x;
      v26.f64[0] = aperture[2].y;
      v21.f64[1] = aperture[6].x;
      v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v22);
      v25.f64[1] = aperture[14].y;
      v26.f64[1] = aperture[6].y;
      v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
      v25.f64[0] = aperture[11].x;
      v26.f64[0] = aperture[11].y;
      v25.f64[1] = aperture[15].x;
      v29.f64[0] = aperture[3].x;
      v30.f64[0] = aperture[3].y;
      v29.f64[1] = aperture[7].x;
      v31 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v25);
      v26.f64[1] = aperture[15].y;
      v30.f64[1] = aperture[7].y;
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v26);
      v26.f64[0] = *(points + 212);
      v30.f64[0] = *(points + 5);
      LODWORD(v26.f64[1]) = *(points + 12);
      v33 = *(points + 220);
      HIDWORD(v26.f64[1]) = *(points + 9);
      retstr->var0 = a8;
      retstr->var1 = ratio;
      retstr->var2 = v14;
      *&retstr->var4 = v19;
      *&retstr->var8 = v20;
      *&retstr->var12 = v23;
      *&retstr[1].var1 = v24;
      *&retstr[1].var5 = v27;
      *&retstr[1].var9 = v28;
      *&retstr[1].var13 = v31;
      *&retstr[2].var2 = v32;
      v30.f64[1] = v33;
      *&retstr[2].var6 = v26;
      *&retstr[2].var10 = v30;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *&retstr[2].var14 = _D0;
    retstr[3].var1 = 0.5;
    retstr[3].var2 = blur;
  }

  return result;
}

+ (blurmap_smoothing_params)loadBlurmapSmoothingParams:(SEL)params
{
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, a4);
    if (result == 4)
    {
      sub_2956ADBB0(a4, 800, 2u, retstr);
      sub_2956ADBB0(a4, 801, 1u, &retstr->var1);
      sub_2956ADBB0(a4, 802, 1u, &retstr->var2);
      sub_2956ADBB0(a4, 803, 1u, &retstr->var3);

      return sub_2956ADBB0(a4, 804, 1u, &retstr->var4);
    }

    else if (result == 3)
    {
      retstr->var0 = *(a4 + 39);
      *&retstr->var1 = *(a4 + 252);
    }
  }

  return result;
}

+ (rendering_config_params)loadRenderingParams:(SEL)params simulatedAperture:(void *)aperture lumaNoiseAmplitude:(float)amplitude maxBlur:(float)blur
{
  *&retstr->fgHitThreshold = 0u;
  *&retstr->fgBlurWeightSmoothstepEnd = 0u;
  *&retstr->ohlbIntensityGain = 0u;
  *&retstr->fgMinNRings = 0u;
  *&retstr->xhlrbMaxIntensityT1 = 0u;
  *&retstr->xhlrbWeightGain = 0u;
  *&retstr->ringAmplitude = 0u;
  *&retstr->xhlrbIterations = 0u;
  *&retstr->nRings = 0u;
  *&retstr->relativeWeightThreshold = 0u;
  *&retstr->maxBlur = 0u;
  *&retstr->lumaNoiseAmplitude = 0u;
  *&retstr->simulatedAperture = 0u;
  if (*(aperture + 1) > 9)
  {
    return result;
  }

  result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, aperture);
  if (result != 4)
  {
    if (result == 3)
    {
      v12 = *(aperture + 71);
      v13 = *(aperture + 40);
      v14 = *(aperture + 43);
      v15 = *(aperture + 17);
      v17 = *(aperture + 23);
      v16 = *(aperture + 24);
      v18 = *(aperture + 44);
      v20 = *(aperture + 18);
      v19 = *(aperture + 19);
      *&v21 = *(aperture + 180);
      v22 = *(aperture + 10);
      v23 = *(aperture + 22);
      v24 = *(aperture + 13);
      *&v25 = *(aperture + 204);
      v26 = *(aperture + 7);
      v27 = *(aperture + 16);
      retstr->simulatedAperture = amplitude;
      retstr->defaultSimulatedAperture = v12;
      retstr->preFilterBlurStrength = v17;
      retstr->preFilterRadius = v13;
      retstr->maxBlur = a7;
      *&retstr->sharpRadius = *(aperture + 164);
      retstr->lumaNoiseModelCoeff = v14;
      retstr->lumaNoiseAmplitude = blur;
      retstr->highlightBoostGain = v19;
      retstr->minNRings = v15;
      retstr->maxNRings = v15;
      retstr->nRings = v15;
      retstr->basePixelWeight = 1.0e-12;
      retstr->antiAliasBlurStrength = v16;
      retstr->antiAliasRadius = v18;
      retstr->relativeWeightThreshold = v20;
      *(&v21 + 1) = v22;
      *&retstr->alphaEpsilon = v21;
      retstr->ringSharpness = v23;
      *&retstr->blendingQuarterResAlphaGain = *(aperture + 13);
      retstr->xhlrbIterations = v24;
      *(&v25 + 1) = v26;
      *&retstr->xhlrbBlurRadiusT0 = *(aperture + 188);
      *&retstr->xhlrbMinIntensityT0 = v25;
      retstr->xhlrbIntensityGain = v27;
      *&retstr->ohlbPreFilterGain = 0;
      *&retstr->ohlbIntensityGain = 0x800000000;
      __asm { FMOV            V0.2S, #4.0 }

      *&retstr->gainMapHeadroom = _D0;
      *&retstr->fgMinNRings = 0;
      retstr->fgNRings = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *&retstr->fgTraceStepScale = _D0;
      *&retstr->fgBlurWeightSmoothstepStart = 0;
      *&retstr->fgAlphaSmoothstepStart = 0;
      retstr->bicubicDownsampleParamC = 0.0;
      *&retstr->fgAARadius = 0;
    }

    return result;
  }

  retstr->simulatedAperture = amplitude;
  sub_2956ADBB0(aperture, 600, 1u, &retstr->defaultSimulatedAperture);
  sub_2956ADBB0(aperture, 506, 1u, &retstr->preFilterBlurStrength);
  sub_2956ADBB0(aperture, 508, 2u, &retstr->preFilterRadius);
  retstr->maxBlur = a7;
  sub_2956ADBB0(aperture, 509, 1u, &retstr->sharpRadius);
  sub_2956ADBB0(aperture, 510, 1u, &retstr->softRadius);
  sub_2956ADBB0(aperture, 511, 1u, &retstr->lumaNoiseModelCoeff);
  retstr->lumaNoiseAmplitude = blur;
  sub_2956ADBB0(aperture, 502, 1u, &retstr->highlightBoostGain);
  sub_2956ADBB0(aperture, 500, 2u, &retstr->nRings);
  if (sub_2956ADBB0(aperture, 498, 2u, &retstr->minNRings))
  {
    retstr->minNRings = retstr->nRings;
  }

  if (sub_2956ADBB0(aperture, 499, 2u, &retstr->maxNRings))
  {
    retstr->maxNRings = retstr->nRings;
  }

  retstr->basePixelWeight = 1.0e-12;
  sub_2956ADBB0(aperture, 507, 1u, &retstr->antiAliasBlurStrength);
  sub_2956ADBB0(aperture, 512, 2u, &retstr->antiAliasRadius);
  sub_2956ADBB0(aperture, 501, 1u, &retstr->relativeWeightThreshold);
  sub_2956ADBB0(aperture, 513, 1u, &retstr->alphaEpsilon);
  sub_2956ADBB0(aperture, 514, 1u, &retstr->alphaGain);
  sub_2956ADBB0(aperture, 503, 1u, &retstr->shapeObstructionCoeff);
  sub_2956ADBB0(aperture, 504, 1u, &retstr->ringAmplitude);
  sub_2956ADBB0(aperture, 505, 1u, &retstr->ringSharpness);
  sub_2956ADBB0(aperture, 700, 1u, &retstr->blendingQuarterResAlphaGain);
  sub_2956ADBB0(aperture, 701, 1u, &retstr->blendingFullResAlphaGain);
  sub_2956ADBB0(aperture, 400, 2u, &retstr->xhlrbIterations);
  sub_2956ADBB0(aperture, 404, 1u, &retstr->xhlrbBlurRadiusT0);
  sub_2956ADBB0(aperture, 405, 1u, &retstr->xhlrbBlurRadiusT1);
  sub_2956ADBB0(aperture, 406, 1u, &retstr->xhlrbMaxIntensityT0);
  sub_2956ADBB0(aperture, 407, 1u, &retstr->xhlrbMaxIntensityT1);
  sub_2956ADBB0(aperture, 408, 1u, &retstr->xhlrbMinIntensityT0);
  sub_2956ADBB0(aperture, 409, 1u, &retstr->xhlrbMinIntensityT1);
  sub_2956ADBB0(aperture, 401, 1u, &retstr->xhlrbPreFilterGain);
  sub_2956ADBB0(aperture, 402, 1u, &retstr->xhlrbWeightGain);
  sub_2956ADBB0(aperture, 403, 1u, &retstr->xhlrbIntensityGain);
  sub_2956ADBB0(aperture, 450, 1u, &retstr->ohlbPreFilterGain);
  sub_2956ADBB0(aperture, 451, 1u, &retstr->ohlbWeightGain);
  sub_2956ADBB0(aperture, 452, 1u, &retstr->ohlbIntensityGain);
  result = sub_2956ADBB0(aperture, 453, 1u, &retstr->gainMapHeadroom);
  v34 = *(aperture + 1);
  if (v34 <= 4)
  {
    retstr->linearBoostGain = 4.0;
  }

  else
  {
    result = sub_2956ADBB0(aperture, 454, 1u, &retstr->linearBoostGain);
    if (v34 != 5)
    {
      sub_2956ADBB0(aperture, 1200, 2u, &retstr->fgNRings);
      if (sub_2956ADBB0(aperture, 1201, 2u, &retstr->fgMinNRings))
      {
        retstr->fgMinNRings = retstr->fgNRings;
      }

      if (sub_2956ADBB0(aperture, 1202, 2u, &retstr->fgMaxNRings))
      {
        retstr->fgMaxNRings = retstr->fgNRings;
      }

      v35 = sub_2956ADBB0(aperture, 1203, 1u, &retstr->fgTraceStepScale);
      if (v35)
      {
        retstr->fgTraceStepScale = 1.0;
        v36 = uni_logger_api(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC504();
        }
      }

      v37 = sub_2956ADBB0(aperture, 1204, 1u, &retstr->fgHitThreshold);
      if (v37)
      {
        retstr->fgHitThreshold = 1.0;
        v38 = uni_logger_api(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC544();
        }
      }

      v39 = sub_2956ADBB0(aperture, 1207, 1u, &retstr->fgAlphaSmoothstepStart);
      if (v39)
      {
        retstr->fgAlphaSmoothstepStart = -2.0;
        v40 = uni_logger_api(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC584(v40, v41, v42, v43, v44, v45, v46, v47);
        }
      }

      v48 = sub_2956ADBB0(aperture, 1208, 1u, &retstr->fgAlphaSmoothstepEnd);
      if (v48)
      {
        retstr->fgAlphaSmoothstepEnd = 0.0;
        v49 = uni_logger_api(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC5CC(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }

      v57 = sub_2956ADBB0(aperture, 1209, 1u, &retstr->fgBlurWeightSmoothstepStart);
      if (v57)
      {
        retstr->fgBlurWeightSmoothstepStart = -1.0;
        v58 = uni_logger_api(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC610(v58, v59, v60, v61, v62, v63, v64, v65);
        }
      }

      v66 = sub_2956ADBB0(aperture, 1210, 1u, &retstr->fgBlurWeightSmoothstepEnd);
      if (v66)
      {
        retstr->fgBlurWeightSmoothstepEnd = 0.3;
        v67 = uni_logger_api(v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC658();
        }
      }

      result = sub_2956ADBB0(aperture, 1212, 1u, &retstr->fgAARadius);
      if (result)
      {
        retstr->fgAARadius = 2.0;
        v68 = uni_logger_api(result);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC6A0(v68, v69, v70, v71, v72, v73, v74, v75);
        }
      }

      goto LABEL_45;
    }
  }

  retstr->fgNRings = 0;
  *&retstr->fgMinNRings = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&retstr->fgTraceStepScale = _D0;
  *&retstr->fgBlurWeightSmoothstepStart = 0;
  *&retstr->fgAlphaSmoothstepStart = 0;
  retstr->fgAARadius = 0.0;
LABEL_45:
  if (*(aperture + 1) < 7)
  {
    *&retstr->bicubicDownsampleParamB = 0x3F40000000000000;
  }

  else
  {
    v77 = sub_2956ADBB0(aperture, 1314, 1u, &retstr->bicubicDownsampleParamB);
    if (v77)
    {
      retstr->bicubicDownsampleParamB = 0.0;
      v78 = uni_logger_api(v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        sub_2956CC6E8(v78, v79, v80, v81, v82, v83, v84, v85);
      }
    }

    result = sub_2956ADBB0(aperture, 1315, 1u, &retstr->bicubicDownsampleParamC);
    if (result)
    {
      retstr->bicubicDownsampleParamC = 0.75;
      v86 = uni_logger_api(result);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        sub_2956CC72C(v86, v87, v88, v89, v90, v91, v92, v93);
      }
    }
  }

  retstr->xhlrbTileSize = 8;
  return result;
}

+ (hairnet_params)loadHairnetParams:(SEL)params
{
  *&retstr->var8 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, params, a4);
    if (result >= 4 && *(a4 + 1) >= 7)
    {
      v6 = sub_2956ADBB0(a4, 1300, 1u, retstr);
      if (v6)
      {
        retstr->var0 = 0.25;
        v7 = uni_logger_api(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC774(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      v15 = sub_2956ADBB0(a4, 1301, 1u, &retstr->var1);
      if (v15)
      {
        retstr->var1 = 0.2163;
        v16 = uni_logger_api(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC7BC(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      v24 = sub_2956ADBB0(a4, 1302, 1u, &retstr->var2);
      if (v24)
      {
        retstr->var2 = 0.029762;
        v25 = uni_logger_api(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC80C();
        }
      }

      v26 = sub_2956ADBB0(a4, 1303, 1u, &retstr->var3);
      if (v26)
      {
        retstr->var3 = 0.02;
        v27 = uni_logger_api(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC858(v27, v28, v29, v30, v31, v32, v33, v34);
        }
      }

      v35 = sub_2956ADBB0(a4, 1304, 1u, &retstr->var4);
      if (v35)
      {
        retstr->var4 = 0.85;
        v36 = uni_logger_api(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC8A8();
        }
      }

      v37 = sub_2956ADBB0(a4, 1305, 1u, &retstr->var5);
      if (v37)
      {
        retstr->var5 = 0.029762;
        v38 = uni_logger_api(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC8F0();
        }
      }

      v39 = sub_2956ADBB0(a4, 1306, 1u, &retstr->var6);
      if (v39)
      {
        retstr->var6 = 0.001;
        v40 = uni_logger_api(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC93C(v40, v41, v42, v43, v44, v45, v46, v47);
        }
      }

      v48 = sub_2956ADBB0(a4, 1307, 1u, &retstr->var7);
      if (v48)
      {
        retstr->var7 = 0.0014881;
        v49 = uni_logger_api(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC98C(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }

      v57 = sub_2956ADBB0(a4, 1308, 1u, &retstr->var8);
      if (v57)
      {
        retstr->var8 = 0.2;
        v58 = uni_logger_api(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC9DC();
        }
      }

      v59 = sub_2956ADBB0(a4, 1309, 1u, &retstr->var9);
      if (v59)
      {
        retstr->var9 = 0.0044643;
        v60 = uni_logger_api(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCA28();
        }
      }

      v61 = sub_2956ADBB0(a4, 1310, 1u, &retstr->var10);
      if (v61)
      {
        retstr->var10 = 0.1;
        v62 = uni_logger_api(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCA74();
        }
      }

      v63 = sub_2956ADBB0(a4, 1311, 1u, &retstr->var11);
      if (v63)
      {
        retstr->var11 = 1.5;
        v64 = uni_logger_api(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCAC0(v64, v65, v66, v67, v68, v69, v70, v71);
        }
      }

      v72 = sub_2956ADBB0(a4, 1312, 1u, &retstr->var12);
      if (v72)
      {
        retstr->var12 = 0.6;
        v73 = uni_logger_api(v72);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB08();
        }
      }

      v74 = sub_2956ADBB0(a4, 1313, 1u, &retstr->var13);
      if (v74)
      {
        retstr->var13 = 0.0019841;
        v75 = uni_logger_api(v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB50(v75, v76, v77, v78, v79, v80, v81, v82);
        }
      }

      v83 = sub_2956ADBB0(a4, 1316, 1u, &retstr->var14);
      if (v83)
      {
        retstr->var14 = 0.33;
        v84 = uni_logger_api(v83);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB9C(v84, v85, v86, v87, v88, v89, v90, v91);
        }
      }

      result = sub_2956ADBB0(a4, 1317, 1u, &retstr->var15);
      if (result)
      {
        retstr->var15 = 1.5;
        v92 = uni_logger_api(result);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCBEC(v92, v93, v94, v95, v96, v97, v98, v99);
        }
      }
    }
  }

  return result;
}

+ (int)getMinorRenderingVersion:(void *)version
{
  v4 = objc_opt_class();
  if (objc_msgSend_hasValidHeader_(v4, v5, version))
  {
    return *(version + 3);
  }

  else
  {
    return -1;
  }
}

@end