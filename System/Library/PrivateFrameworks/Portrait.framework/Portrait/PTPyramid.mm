@interface PTPyramid
- (PTPyramid)initWithMetalContext:(id)context colorSize:(CGSize)size pixelFormat:(unint64_t)format skipFullSizeLayer:(BOOL)layer doFirstLevelGaussianDownsample:(BOOL)downsample mipmapLevelCount:(int)count;
- (id)findMipmapLevelLargerThan:(id *)than;
- (id)findMipmapLevelLargerThan:(id *)than fromLevel:(int)level;
- (int)updatePyramid:(id)pyramid inPTTexture:(id)texture;
- (int)updatePyramid:(id)pyramid offset:(int)offset samplingRadius:(float)radius;
@end

@implementation PTPyramid

- (PTPyramid)initWithMetalContext:(id)context colorSize:(CGSize)size pixelFormat:(unint64_t)format skipFullSizeLayer:(BOOL)layer doFirstLevelGaussianDownsample:(BOOL)downsample mipmapLevelCount:(int)count
{
  layerCopy = layer;
  height = size.height;
  width = size.width;
  v129 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  downsampleCopy = downsample;
  v126.receiver = self;
  v126.super_class = PTPyramid;
  v17 = [(PTPyramid *)&v126 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_26;
  }

  objc_storeStrong(&v17->_metalContext, context);
  v18->_skipFullSizeLayer = layerCopy;
  v18->_doFirstLevelGaussianDownsample = downsample;
  textureUtil = [(PTMetalContext *)v18->_metalContext textureUtil];
  v20 = textureUtil;
  v21 = (width + 1.0) * 0.5;
  v22 = (height + 1.0) * 0.5;
  if (!layerCopy)
  {
    v22 = height;
    v21 = width;
  }

  v23 = [textureUtil createWithWidth:v21 height:v22 pixelFormat:format mipmapLevelCount:count];
  mipmapTexture = v18->_mipmapTexture;
  v18->_mipmapTexture = v23;

  if (!v18->_mipmapTexture)
  {
    v47 = _PTLogSystem(v25);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v47 initWithMetalContext:v70 colorSize:v71 pixelFormat:v72 skipFullSizeLayer:v73 doFirstLevelGaussianDownsample:v74 mipmapLevelCount:v75, v76];
    }

    goto LABEL_44;
  }

  textureUtil2 = [(PTMetalContext *)v18->_metalContext textureUtil];
  v27 = [textureUtil2 mipmapLevelsUsingTextureView:v18->_mipmapTexture];
  mipmapLevels = v18->_mipmapLevels;
  v18->_mipmapLevels = v27;

  if (!v18->_mipmapLevels)
  {
    v47 = _PTLogSystem(v29);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v47 initWithMetalContext:v77 colorSize:v78 pixelFormat:v79 skipFullSizeLayer:v80 doFirstLevelGaussianDownsample:v81 mipmapLevelCount:v82, v83];
    }

LABEL_44:

    v69 = 0;
    goto LABEL_45;
  }

  v122 = contextCopy;
  v30 = 0.0;
  v31 = -1;
  v32 = v128;
  do
  {
    v33 = 0;
    v34 = -1;
    do
    {
      v35 = pow(2.71828183, (((v34 * v34) + (v31 * v31)) * -0.5)) * 0.159154943;
      v30 = v30 + v35;
      *&v32[v33] = v35;
      v33 += 3;
      ++v34;
    }

    while (v33 != 9);
    ++v31;
    ++v32;
  }

  while (v31 != 2);
  for (i = 0; i != 9; ++i)
  {
    *&v128[i] = *&v128[i] / v30;
  }

  _S0 = v128[0];
  _S1 = v128[1];
  __asm { FCVT            H0, S0 }

  v125[0] = _S0;
  __asm { FCVT            H0, S1 }

  v125[1] = _S0;
  _S0 = v128[2];
  _S1 = v128[3];
  __asm { FCVT            H0, S0 }

  v125[2] = _S0;
  __asm { FCVT            H0, S1 }

  v124[0] = _S0;
  _S0 = v128[4];
  _S1 = v128[5];
  __asm { FCVT            H0, S0 }

  v124[1] = _S0;
  __asm { FCVT            H0, S1 }

  v124[2] = _S0;
  v47 = objc_opt_new();
  [v47 setConstantHalf3:v125 withName:@"kWeights2DRow0_half3"];
  [v47 setConstantHalf3:v124 withName:@"kWeights2DRow1_half3"];
  v48 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"downscaleGaussian3x3" withConstants:v47];
  downscaleGaussian3x3 = v18->_downscaleGaussian3x3;
  v18->_downscaleGaussian3x3 = v48;

  if (!v18->_downscaleGaussian3x3)
  {
    v84 = _PTLogSystem(v50);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v84 initWithMetalContext:v85 colorSize:v86 pixelFormat:v87 skipFullSizeLayer:v88 doFirstLevelGaussianDownsample:v89 mipmapLevelCount:v90, v91];
    }

    v69 = 0;
    contextCopy = v122;
    goto LABEL_45;
  }

  v51 = 0;
  updateLevel0FromRGBA = v18->_updateLevel0FromRGBA;
  updateLevel0FromYUV = v18->_updateLevel0FromYUV;
  updateLevel0and1FromRGBA = v18->_updateLevel0and1FromRGBA;
  updateLevel0and1FromYUV = v18->_updateLevel0and1FromYUV;
  do
  {
    v123 = supportedColorTransferFunctions_1[v51];
    [v47 setConstantValue:&v123 type:29 withName:@"kColorTransferFunctionToLinear"];
    [v47 setConstantValue:&downsampleCopy type:53 withName:@"kDoFirstLevelGaussianDownsample"];
    v56 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0FromRGBA" withConstants:v47];
    v57 = updateLevel0FromRGBA[v123];
    updateLevel0FromRGBA[v123] = v56;

    if (!updateLevel0FromRGBA[v123])
    {
      v92 = _PTLogSystem(v58);
      contextCopy = v122;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v92 initWithMetalContext:v93 colorSize:v94 pixelFormat:v95 skipFullSizeLayer:v96 doFirstLevelGaussianDownsample:v97 mipmapLevelCount:v98, v99];
      }

      goto LABEL_43;
    }

    v59 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0FromYUV" withConstants:v47];
    v60 = updateLevel0FromYUV[v123];
    updateLevel0FromYUV[v123] = v59;

    if (!updateLevel0FromYUV[v123])
    {
      v92 = _PTLogSystem(v61);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v92 initWithMetalContext:v100 colorSize:v101 pixelFormat:v102 skipFullSizeLayer:v103 doFirstLevelGaussianDownsample:v104 mipmapLevelCount:v105, v106];
      }

      goto LABEL_40;
    }

    v62 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0and1FromRGBA" withConstants:v47];
    v63 = updateLevel0and1FromRGBA[v123];
    updateLevel0and1FromRGBA[v123] = v62;

    if (!updateLevel0and1FromRGBA[v123])
    {
      v92 = _PTLogSystem(v64);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v92 initWithMetalContext:v107 colorSize:v108 pixelFormat:v109 skipFullSizeLayer:v110 doFirstLevelGaussianDownsample:v111 mipmapLevelCount:v112, v113];
      }

LABEL_40:
      contextCopy = v122;
LABEL_43:

      goto LABEL_44;
    }

    v65 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0and1FromYUV" withConstants:v47];
    v66 = updateLevel0and1FromYUV[v123];
    updateLevel0and1FromYUV[v123] = v65;

    if (!updateLevel0and1FromYUV[v123])
    {
      v92 = _PTLogSystem(v67);
      contextCopy = v122;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v92 initWithMetalContext:v114 colorSize:v115 pixelFormat:v116 skipFullSizeLayer:v117 doFirstLevelGaussianDownsample:v118 mipmapLevelCount:v119, v120];
      }

      goto LABEL_43;
    }

    ++v51;
  }

  while (v51 != 5);
  contextCopy = v122;
  if (!v18->_mipmapTexture || !v18->_mipmapLevels || !v18->_downscaleGaussian3x3)
  {
    v68 = _PTLogSystem(v67);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      [PTPyramid initWithMetalContext:v68 colorSize:? pixelFormat:? skipFullSizeLayer:? doFirstLevelGaussianDownsample:? mipmapLevelCount:?];
    }
  }

LABEL_26:
  v69 = v18;
LABEL_45:

  return v69;
}

- (int)updatePyramid:(id)pyramid inPTTexture:(id)texture
{
  pyramidCopy = pyramid;
  textureCopy = texture;
  transferFunction = [textureCopy transferFunction];
  v9 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  computeCommandEncoder = [pyramidCopy computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  if (![textureCopy isRGB] || !self->_skipFullSizeLayer)
  {
    if (([textureCopy isRGB] & 1) != 0 || !self->_skipFullSizeLayer)
    {
      if ([textureCopy isRGB])
      {
        [computeCommandEncoder setComputePipelineState:self->_updateLevel0and1FromRGBA[v9]];
        texRGBA = [textureCopy texRGBA];
        [computeCommandEncoder setTexture:texRGBA atIndex:0];

        v32 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        [computeCommandEncoder setTexture:v32 atIndex:1];

        v20 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:1];
        v21 = computeCommandEncoder;
        v22 = v20;
        v23 = 2;
        goto LABEL_13;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);
      [PTColorConversion getChromaOffset:textureCopy];
      [computeCommandEncoder setComputePipelineState:{self->_updateLevel0and1FromYUV[v9], v33}];
      texLuma = [textureCopy texLuma];
      [computeCommandEncoder setTexture:texLuma atIndex:0];

      texChroma = [textureCopy texChroma];
      [computeCommandEncoder setTexture:texChroma atIndex:1];

      v36 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
      [computeCommandEncoder setTexture:v36 atIndex:2];

      v27 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:1];
      v28 = computeCommandEncoder;
      v29 = v27;
      v30 = 3;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);
      [PTColorConversion getChromaOffset:textureCopy];
      [computeCommandEncoder setComputePipelineState:{self->_updateLevel0FromYUV[v9], v24}];
      texLuma2 = [textureCopy texLuma];
      [computeCommandEncoder setTexture:texLuma2 atIndex:0];

      texChroma2 = [textureCopy texChroma];
      [computeCommandEncoder setTexture:texChroma2 atIndex:1];

      v27 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
      v28 = computeCommandEncoder;
      v29 = v27;
      v30 = 2;
    }

    [v28 setTexture:v29 atIndex:v30];

    [computeCommandEncoder setBytes:&v42 length:24 atIndex:0];
    [computeCommandEncoder setBytes:&v40 length:8 atIndex:1];
    goto LABEL_16;
  }

  [computeCommandEncoder setComputePipelineState:self->_updateLevel0FromRGBA[v9]];
  texRGBA2 = [textureCopy texRGBA];
  [computeCommandEncoder setTexture:texRGBA2 atIndex:0];

  v20 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  v21 = computeCommandEncoder;
  v22 = v20;
  v23 = 1;
LABEL_13:
  [v21 setTexture:v22 atIndex:v23];

LABEL_16:
  v37 = [textureCopy width] >> 1;
  height = [textureCopy height];
  v42 = v37;
  v43 = height >> 1;
  v44 = 1;
  v40 = vdupq_n_s64(8uLL);
  v41 = 1;
  [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [computeCommandEncoder endEncoding];
  [(PTPyramid *)self updatePyramid:pyramidCopy offset:!self->_skipFullSizeLayer];

  return 0;
}

- (int)updatePyramid:(id)pyramid offset:(int)offset samplingRadius:(float)radius
{
  pyramidCopy = pyramid;
  radiusCopy = radius;
  v9 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v9 pixelFormat]== 71)
  {
    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v10 pixelFormat] == 70)
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v11 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v11 pixelFormat] == 115)
  {

    goto LABEL_5;
  }

  v19 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  pixelFormat = [v19 pixelFormat];

  if (pixelFormat != 555)
  {
    v9 = _PTLogSystem(v21);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v9 updatePyramid:v22 offset:v23 samplingRadius:v24, v25, v26, v27, v28];
    }

    goto LABEL_6;
  }

LABEL_7:
  computeCommandEncoder = [pyramidCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_downscaleGaussian3x3];
  [computeCommandEncoder setBytes:&radiusCopy length:4 atIndex:0];
  LODWORD(v13) = offset + 1;
  if ([(NSArray *)self->_mipmapLevels count]> v13)
  {
    v13 = v13;
    v29 = xmmword_2244A5440;
    do
    {
      v14 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:v13 - 1, v29];
      v15 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:v13];
      [computeCommandEncoder setTexture:v14 atIndex:0];
      [computeCommandEncoder setTexture:v15 atIndex:1];
      width = [v15 width];
      height = [v15 height];
      v32[0] = width;
      v32[1] = height;
      v32[2] = 1;
      v30 = v29;
      v31 = 1;
      [computeCommandEncoder dispatchThreads:v32 threadsPerThreadgroup:&v30];

      ++v13;
    }

    while (v13 < [(NSArray *)self->_mipmapLevels count]);
  }

  [computeCommandEncoder endEncoding];

  return 0;
}

- (id)findMipmapLevelLargerThan:(id *)than
{
  v5 = *than;
  v3 = [(PTPyramid *)self findMipmapLevelLargerThan:&v5 fromLevel:0];

  return v3;
}

- (id)findMipmapLevelLargerThan:(id *)than fromLevel:(int)level
{
  mipmapLevels = self->_mipmapLevels;
  v7 = *than;
  v5 = [PTUtil findMipmapLevel:mipmapLevels largerThan:&v7 fromLevel:*&level];

  return v5;
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_updateLevel0and1FromYUV[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_updateLevel0and1FromRGBA[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_updateLevel0FromYUV[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_updateLevel0FromRGBA[colorTransferFunctionToLinear]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_downscaleGaussian3x3";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_mipmapLevels";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 skipFullSizeLayer:(uint64_t)a6 doFirstLevelGaussianDownsample:(uint64_t)a7 mipmapLevelCount:(uint64_t)a8 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_mipmapTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updatePyramid:(uint64_t)a3 offset:(uint64_t)a4 samplingRadius:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_mipmapLevels[0].pixelFormat == MTLPixelFormatRGBA8Unorm_sRGB || _mipmapLevels[0].pixelFormat == MTLPixelFormatRGBA8Unorm || _mipmapLevels[0].pixelFormat == MTLPixelFormatRGBA16Float || _mipmapLevels[0].pixelFormat == MTLPixelFormatBGR10_XR_sRGB";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end