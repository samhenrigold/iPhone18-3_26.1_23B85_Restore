@interface PTMetalTextureUtil
+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)format device:(id)device;
- (PTMetalTextureUtil)initWithMetalContext:(id)context;
- (id)createWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format mipmapLevelCount:(unint64_t)count;
- (id)mipmapLevelsUsingTextureView:(id)view;
- (int)copy:(id)copy inTex:(id)tex outTex:(id)outTex;
- (int)mix:(id)mix inTexX:(id)x inTexY:(id)y outTex:(id)tex alpha:(float)alpha;
- (int)multiply:(id)multiply inTex:(id)tex outTex:(id)outTex multiplier:(float)multiplier;
- (int)resample420To444:(id)to444 inLuma:(id)luma inChroma:(id)chroma outYUV:(id)v;
@end

@implementation PTMetalTextureUtil

- (PTMetalTextureUtil)initWithMetalContext:(id)context
{
  contextCopy = context;
  v55.receiver = self;
  v55.super_class = PTMetalTextureUtil;
  v5 = [(PTMetalTextureUtil *)&v55 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = objc_msgSend_device(contextCopy);
  device = v5->_device;
  v5->_device = v6;

  v5->_supportGPUFamilyApple7 = [contextCopy supportsFamily:1007];
  imageblocksSupported = [contextCopy imageblocksSupported];
  v5->_imageblocksSupported = imageblocksSupported;
  if (imageblocksSupported)
  {
    v9 = [contextCopy computePipelineStateFor:@"copy" withConstants:0];
    copy = v5->_copy;
    v5->_copy = v9;

    if (!v5->_copy)
    {
      v12 = _PTLogSystem(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

LABEL_20:
        v32 = 0;
        goto LABEL_21;
      }

LABEL_5:
      [(PTMetalTextureUtil *)v12 initWithMetalContext:v13, v14, v15, v16, v17, v18, v19];
      goto LABEL_19;
    }
  }

  else
  {
    v20 = [contextCopy computePipelineStateFor:@"copyNoImageblocks" withConstants:0];
    v21 = v5->_copy;
    v5->_copy = v20;

    if (!v5->_copy)
    {
      v12 = _PTLogSystem(v22);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }
  }

  v23 = [contextCopy computePipelineStateFor:@"multiply" withConstants:0];
  multiply = v5->_multiply;
  v5->_multiply = v23;

  if (!v5->_multiply)
  {
    v12 = _PTLogSystem(v25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v12 initWithMetalContext:v33, v34, v35, v36, v37, v38, v39];
    }

    goto LABEL_19;
  }

  v26 = [contextCopy computePipelineStateFor:@"mix" withConstants:0];
  mix = v5->_mix;
  v5->_mix = v26;

  if (!v5->_mix)
  {
    v12 = _PTLogSystem(v28);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v12 initWithMetalContext:v40, v41, v42, v43, v44, v45, v46];
    }

    goto LABEL_19;
  }

  v29 = [contextCopy computePipelineStateFor:@"resample420To444" withConstants:0];
  resample420To444 = v5->_resample420To444;
  v5->_resample420To444 = v29;

  if (!v5->_resample420To444)
  {
    v12 = _PTLogSystem(v31);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalTextureUtil *)v12 initWithMetalContext:v47, v48, v49, v50, v51, v52, v53];
    }

    goto LABEL_19;
  }

  v32 = v5;
LABEL_21:

  return v32;
}

- (id)createWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unint64_t)format mipmapLevelCount:(unint64_t)count
{
  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:count != 0];
  [v8 setUsage:19];
  if (self->_supportGPUFamilyApple7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32;
  }

  [v8 setResourceOptions:v9];
  if (count != -1)
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    [v8 setMipmapLevelCount:countCopy];
  }

  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];

  return v11;
}

- (id)mipmapLevelsUsingTextureView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  if ([viewCopy mipmapLevelCount])
  {
    v5 = 0;
    do
    {
      v6 = [viewCopy newTextureViewWithPixelFormat:objc_msgSend(viewCopy textureType:"pixelFormat") levels:objc_msgSend(viewCopy slices:"textureType"), v5, 1, 0, 1];
      [v4 addObject:v6];

      ++v5;
    }

    while ([viewCopy mipmapLevelCount] > v5);
  }

  v7 = [v4 copy];

  return v7;
}

- (int)copy:(id)copy inTex:(id)tex outTex:(id)outTex
{
  outTexCopy = outTex;
  texCopy = tex;
  copyCopy = copy;
  v11 = [[PTImageblockConfig alloc] initWithTexture:outTexCopy];
  computeCommandEncoder = [copyCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v14 = _PTLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v14 disparityApplyPostModifier:v15 inDisparity:v16 outDisparity:v17 postModifier:v18, v19, v20, v21];
    }
  }

  if (self->_imageblocksSupported)
  {
    [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v11 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v11, "imageblockSize")}];
  }

  [computeCommandEncoder setComputePipelineState:self->_copy];
  [computeCommandEncoder setTexture:texCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  if (v11)
  {
    objc_msgSend_threads(v11);
    objc_msgSend_threadsPerGroup(v11);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
  }

  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)multiply:(id)multiply inTex:(id)tex outTex:(id)outTex multiplier:(float)multiplier
{
  multiplierCopy = multiplier;
  outTexCopy = outTex;
  texCopy = tex;
  computeCommandEncoder = [multiply computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_multiply];
  [computeCommandEncoder setTexture:texCopy atIndex:0];

  [computeCommandEncoder setTexture:outTexCopy atIndex:1];
  [computeCommandEncoder setBytes:&multiplierCopy length:4 atIndex:0];
  width = [outTexCopy width];
  height = [outTexCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)mix:(id)mix inTexX:(id)x inTexY:(id)y outTex:(id)tex alpha:(float)alpha
{
  alphaCopy = alpha;
  texCopy = tex;
  yCopy = y;
  xCopy = x;
  computeCommandEncoder = [mix computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v15 = _PTLogSystem(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v15 disparityApplyPostModifier:v16 inDisparity:v17 outDisparity:v18 postModifier:v19, v20, v21, v22];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_mix];
  [computeCommandEncoder setTexture:xCopy atIndex:0];

  [computeCommandEncoder setTexture:yCopy atIndex:1];
  [computeCommandEncoder setTexture:texCopy atIndex:2];
  [computeCommandEncoder setBytes:&alphaCopy length:4 atIndex:0];
  width = [texCopy width];
  height = [texCopy height];

  v28[0] = width;
  v28[1] = height;
  v28[2] = 1;
  v26 = xmmword_2244A5230;
  v27 = 1;
  [computeCommandEncoder dispatchThreads:v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)resample420To444:(id)to444 inLuma:(id)luma inChroma:(id)chroma outYUV:(id)v
{
  vCopy = v;
  chromaCopy = chroma;
  lumaCopy = luma;
  to444Copy = to444;
  [PTColorConversion getChromaOffsetFromLuma:lumaCopy texChroma:chromaCopy];
  v22 = v14;
  computeCommandEncoder = [to444Copy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_resample420To444];
  [computeCommandEncoder setTexture:lumaCopy atIndex:0];

  [computeCommandEncoder setTexture:chromaCopy atIndex:1];
  [computeCommandEncoder setTexture:vCopy atIndex:2];
  [computeCommandEncoder setBytes:&v22 length:8 atIndex:0];
  width = [vCopy width];
  height = [vCopy height];

  v21[0] = width;
  v21[1] = height;
  v21[2] = 1;
  v19 = xmmword_2244A5230;
  v20 = 1;
  [computeCommandEncoder dispatchThreads:v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (unint64_t)macroBlockSizeForPixelFormat:(unint64_t)format device:(id)device
{
  deviceCopy = device;
  v6 = 32;
  if (format != 500 && format != 520)
  {
    MTLPixelFormatGetInfoForDevice();
    v6 = 16;
  }

  return v6;
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_copy";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_resample420To444";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_mix";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_multiply";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end