@interface PTEffectReactionBackgroundDimming
- (PTEffectReactionBackgroundDimming)initWithMetalContext:(id)context;
- (int)backgroundDimAndConvertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation outRGBA:(id)a dimmingFactor:(float)factor disparityRemapping:(CGRect)remapping outColorROI:(CGRect)self0;
@end

@implementation PTEffectReactionBackgroundDimming

- (PTEffectReactionBackgroundDimming)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = PTEffectReactionBackgroundDimming;
  v6 = [(PTEffectReactionBackgroundDimming *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = objc_opt_new();
    v17 = 0;
    backgroundDimAndConvertYUVtoRGB = v7->_backgroundDimAndConvertYUVtoRGB;
    while (1)
    {
      [v8 reset];
      [v8 setConstantValue:&v17 type:29 withName:@"kColorTransferFunction"];
      v10 = [contextCopy computePipelineStateFor:@"backgroundDimAndConvertYUVToRGB" withConstants:v8];
      v11 = backgroundDimAndConvertYUVtoRGB[v17];
      backgroundDimAndConvertYUVtoRGB[v17] = v10;

      v13 = v17;
      if (!backgroundDimAndConvertYUVtoRGB[v17])
      {
        break;
      }

      ++v17;
      if (v13 > 7)
      {
        v14 = v7;
        goto LABEL_10;
      }
    }

    v15 = _PTLogSystem(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionBackgroundDimming initWithMetalContext:v15];
    }

    v14 = 0;
LABEL_10:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)backgroundDimAndConvertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation outRGBA:(id)a dimmingFactor:(float)factor disparityRemapping:(CGRect)remapping outColorROI:(CGRect)self0
{
  y = remapping.origin.y;
  width = remapping.size.width;
  height = remapping.size.height;
  x = remapping.origin.x;
  tTextureCopy = tTexture;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  v19 = segmentationCopy;
  _D1 = factor * 0.6;
  __asm { FCVT            H1, D1 }

  v57[0] = LOWORD(_D1);
  _D1 = factor * 0.85;
  __asm { FCVT            H1, D1 }

  v57[1] = LOWORD(_D1);
  _D0 = factor * 0.95;
  __asm { FCVT            H0, D0 }

  v57[2] = LOWORD(_D0);
  v58 = -1207911424;
  if (segmentationCopy)
  {
    v27 = segmentationCopy;
    v58 = 1006632960;
  }

  else
  {
    v27 = disparityCopy;
  }

  memset(v56, 0, sizeof(v56));
  aCopy = a;
  textureCopy = texture;
  transferFunction = [tTextureCopy transferFunction];
  v31 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  computeCommandEncoder = [textureCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v35 = _PTLogSystem(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionBackgroundDimming backgroundDimAndConvertRGBLinearFromPTTexture:v35 inPTTexture:? inCenteredDisparity:? inSegmentation:? outRGBA:? dimmingFactor:? disparityRemapping:? outColorROI:?];
    }
  }

  [computeCommandEncoder setComputePipelineState:{self->_backgroundDimAndConvertYUVtoRGB[v31], *&i.size.height, v34}];
  if ([tTextureCopy isRGB])
  {
    texRGBA = [tTextureCopy texRGBA];
    [computeCommandEncoder setTexture:texRGBA atIndex:0];

    [computeCommandEncoder setTexture:0 atIndex:1];
  }

  else
  {
    objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);
    v37 = tTextureCopy;
    texLuma = [v37 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:0];

    texChroma = [v37 texChroma];

    [computeCommandEncoder setTexture:texChroma atIndex:1];
  }

  [computeCommandEncoder setTexture:v27 atIndex:2];
  [computeCommandEncoder setTexture:aCopy atIndex:3];
  [computeCommandEncoder setBytes:v56 length:24 atIndex:0];
  [computeCommandEncoder setBytes:v57 length:10 atIndex:1];
  v40.f64[0] = width;
  v41.f64[0] = x;
  v40.f64[1] = height;
  v41.f64[1] = y;
  v55 = vcvt_hight_f32_f64(vcvt_f32_f64(v41), v40);
  [computeCommandEncoder setBytes:&v55 length:16 atIndex:2];
  v42.f64[0] = i.size.width;
  v42.f64[1] = v46;
  v54 = vcvt_hight_f32_f64(vcvt_f32_f64(i.origin), v42);
  [computeCommandEncoder setBytes:&v54 length:16 atIndex:3];
  width = [aCopy width];
  height = [aCopy height];

  v53[0] = width;
  v53[1] = height;
  v53[2] = 1;
  v51 = xmmword_2244A5230;
  v52 = 1;
  [computeCommandEncoder dispatchThreads:v53 threadsPerThreadgroup:&v51];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)initWithMetalContext:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_backgroundDimAndConvertYUVtoRGB[i]";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

- (void)backgroundDimAndConvertRGBLinearFromPTTexture:(os_log_t)log inPTTexture:inCenteredDisparity:inSegmentation:outRGBA:dimmingFactor:disparityRemapping:outColorROI:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "computeEncoder";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end