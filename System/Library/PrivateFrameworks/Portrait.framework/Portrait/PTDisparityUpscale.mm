@interface PTDisparityUpscale
- (PTDisparityUpscale)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize;
- (id)guidedUpsampling:(id)upsampling inDisparity:(id)disparity inRGBA:(id)a colorDepth:(int64_t)depth;
@end

@implementation PTDisparityUpscale

- (PTDisparityUpscale)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize
{
  width = disparitySize.width;
  height = disparitySize.height;
  v62 = size.height;
  v63 = size.width;
  v68[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v66.receiver = self;
  v66.super_class = PTDisparityUpscale;
  v8 = [(PTDisparityUpscale *)&v66 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v8->_metalContext, context);
  v9->_upscaleFactor = 2.0;
  Bool = PTDefaultsPublicGetBool(@"harvesting.enabled", 0);
  v9->_isShaderHarvesting = Bool;
  upscaleFactor = v9->_upscaleFactor;
  v12.f64[0] = width;
  v12.f64[1] = height;
  v13 = vmulq_n_f64(v12, upscaleFactor);
  v14.f64[0] = v63;
  v14.f64[1] = v62;
  *&v9->_width = vcvtq_u64_f64(vbslq_s8(vcgtq_f64(v13, v14), v14, v13));
  if (upscaleFactor > 1.0 && (Bool & 1) == 0)
  {
    v15 = [[PTUtil alloc] initWithMetalContext:v9->_metalContext];
    portraitUtil = v9->_portraitUtil;
    v9->_portraitUtil = v15;

    if (v9->_portraitUtil)
    {
      textureUtil = [(PTMetalContext *)v9->_metalContext textureUtil];
      v19 = [textureUtil createWithWidth:v9->_width height:v9->_height pixelFormat:25];
      disparityUpscaled = v9->_disparityUpscaled;
      v9->_disparityUpscaled = v19;

      if (v9->_disparityUpscaled)
      {
        HIDWORD(v22) = HIDWORD(height);
        LOBYTE(v61) = 0;
        LODWORD(v22) = 1000593162;
        v23 = [MEMORY[0x277CD7570] filterDescriptorWithWidth:width height:height arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:1 sourceChannels:v22 guideChannels:3 preallocateIntermediates:v61];
        if (!v23)
        {
          v24 = _PTLogSystem(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(PTDisparityUpscale *)v24 initWithMetalContext:v25 colorSize:v26 disparitySize:v27, v28, v29, v30, v31];
          }
        }

        v32 = objc_alloc(MEMORY[0x277CD7568]);
        v33 = objc_msgSend_device(v9->_metalContext);
        v34 = [v32 initWithDevice:v33 filterDescriptor:v23];
        guidedFilter = v9->_guidedFilter;
        v9->_guidedFilter = v34;

        if (v9->_guidedFilter)
        {
          v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:width height:height mipmapped:0];
          [v37 setUsage:19];
          if ([(PTMetalContext *)v9->_metalContext supportsFamily:1007])
          {
            v38 = 0;
          }

          else
          {
            v38 = 32;
          }

          [v37 setResourceOptions:v38];
          [v37 setTextureType:3];
          v39 = objc_msgSend_device(v9->_metalContext);
          v40 = [v39 newTextureWithDescriptor:v37];
          v67 = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
          v68[0] = v41;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
          coefficientsTextureArray = v9->_coefficientsTextureArray;
          v9->_coefficientsTextureArray = v42;

          goto LABEL_15;
        }

        v52 = _PTLogSystem(v36);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [(PTRaytracingV3001 *)v52 initWithMetalContext:v53 colorSize:v54 disparitySize:v55 debugRendering:v56 verbose:v57 options:v58 quality:v59];
        }
      }

      else
      {
        v23 = _PTLogSystem(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [PTDisparityUpscale initWithMetalContext:v23 colorSize:? disparitySize:?];
        }
      }
    }

    else
    {
      v23 = _PTLogSystem(v17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTDisparityUpscale *)v23 initWithMetalContext:v45 colorSize:v46 disparitySize:v47, v48, v49, v50, v51];
      }
    }

LABEL_24:
    v44 = 0;
    goto LABEL_25;
  }

LABEL_15:
  v44 = v9;
LABEL_25:

  return v44;
}

- (id)guidedUpsampling:(id)upsampling inDisparity:(id)disparity inRGBA:(id)a colorDepth:(int64_t)depth
{
  v33[1] = *MEMORY[0x277D85DE8];
  upsamplingCopy = upsampling;
  disparityCopy = disparity;
  aCopy = a;
  v13 = aCopy;
  v14 = disparityCopy;
  if (self->_upscaleFactor > 1.0)
  {
    if (!self->_guideConversionTexture)
    {
      pixelFormat = [aCopy pixelFormat];
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v17 = textureUtil;
      if (pixelFormat == 555)
      {
        v18 = 71;
      }

      else
      {
        v18 = 115;
      }

      v19 = [textureUtil createWithWidth:self->_width height:self->_height pixelFormat:v18];
      guideConversionTexture = self->_guideConversionTexture;
      self->_guideConversionTexture = v19;
    }

    textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
    v22 = textureUtil2;
    LODWORD(v23) = 1042983595;
    if (depth == 8)
    {
      *&v23 = 1.0;
    }

    [textureUtil2 multiply:upsamplingCopy inTex:v13 outTex:self->_guideConversionTexture multiplier:v23];

    guidedFilter = self->_guidedFilter;
    v33[0] = disparityCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)guidedFilter encodeRegressionToCommandBuffer:upsamplingCopy sourceTextureArray:v25 guidanceTexture:self->_guideConversionTexture constraintsTextureArray:0 numberOfIterations:1 destinationCoefficientsTextureArray:self->_coefficientsTextureArray];

    v26 = self->_guideConversionTexture;
    coefficientsTextureArray = self->_coefficientsTextureArray;
    v28 = self->_guidedFilter;
    disparityUpscaled = self->_disparityUpscaled;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&disparityUpscaled count:1];
    [(MPSImageSpatioTemporalGuidedFilter *)v28 encodeReconstructionToCommandBuffer:upsamplingCopy guidanceTexture:v26 coefficientsTextureArray:coefficientsTextureArray destinationTextureArray:v29];

    v14 = self->_disparityUpscaled;
  }

  v30 = v14;

  return v14;
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "descr";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_portraitUtil";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end