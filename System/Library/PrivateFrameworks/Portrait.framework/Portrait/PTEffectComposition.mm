@interface PTEffectComposition
- (PTEffectComposition)initWithConfig:(id)config;
- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)source inputTarget:(uint64_t)target renderRequest:(void *)request;
- (unsigned)render:(id)render renderRequest:(id)request;
@end

@implementation PTEffectComposition

- (PTEffectComposition)initWithConfig:(id)config
{
  configCopy = config;
  v20.receiver = self;
  v20.super_class = PTEffectComposition;
  v5 = [(PTEffectComposition *)&v20 init];
  v6 = objc_msgSend_device(configCopy);

  if (!v6)
  {
    v18 = _PTLogSystem(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v8 = [PTMetalContext alloc];
  v9 = objc_msgSend_device(configCopy);
  v10 = [(PTMetalContext *)v8 initWithDevice:v9 bundleClass:objc_opt_class()];
  metalContext = v5->_metalContext;
  v5->_metalContext = v10;

  v12 = v5->_metalContext;
  if (!v12)
  {
    v18 = _PTLogSystem(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  imageblocksSupported = [(PTMetalContext *)v12 imageblocksSupported];
  if ((imageblocksSupported & 1) == 0)
  {
    v18 = _PTLogSystem(imageblocksSupported);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

    goto LABEL_14;
  }

  v14 = [(PTMetalContext *)v5->_metalContext computePipelineStateFor:@"composite" withConstants:0];
  composite = v5->_composite;
  v5->_composite = v14;

  if (!v5->_composite)
  {
    v18 = _PTLogSystem(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition initWithConfig:];
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  v17 = v5;
LABEL_15:

  return v17;
}

- (float32x2_t)computeDownsamplingFactorWithInputSource:(void *)source inputTarget:(uint64_t)target renderRequest:(void *)request
{
  requestCopy = request;
  sourceCopy = source;
  width = [sourceCopy width];
  height = [sourceCopy height];

  v9.f32[0] = width;
  v9.f32[1] = height;
  v22 = v9;
  [requestCopy inputTargetRect];
  v19 = v10;
  [requestCopy inputTargetRect];
  v11.f64[0] = v19;
  v11.f64[1] = v12;
  v13 = vcvt_f32_f64(v11);
  [requestCopy inputCropRect];
  v20 = v14;
  [requestCopy inputCropRect];
  v18 = v15;

  v16.f64[0] = v20;
  v16.f64[1] = v18;
  return vdiv_f32(vdiv_f32(v13, vdiv_f32(vcvt_f32_f64(v16), v22)), v22);
}

- (unsigned)render:(id)render renderRequest:(id)request
{
  renderCopy = render;
  requestCopy = request;
  inputSourcePixelBuffer = [requestCopy inputSourcePixelBuffer];
  v9 = objc_msgSend_device(self->_metalContext);
  v10 = [PTPixelBufferUtil createTextureFromPixelBuffer:inputSourcePixelBuffer device:v9 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  inputTargetPixelBuffer = [requestCopy inputTargetPixelBuffer];
  v12 = objc_msgSend_device(self->_metalContext);
  v13 = [PTPixelBufferUtil createTextureFromPixelBuffer:inputTargetPixelBuffer device:v12 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  outputPixelBuffer = [requestCopy outputPixelBuffer];
  v15 = objc_msgSend_device(self->_metalContext);
  v16 = [PTPixelBufferUtil createTextureFromPixelBuffer:outputPixelBuffer device:v15 textureCache:self->metalTextureCache sRGB:0 metalYCBCRConversion:1];

  if (!v10 || !v13 || !v16)
  {
    v24 = _PTLogSystem(v17);
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
    {
      [PTEffectComposition render:renderRequest:];
    }

    goto LABEL_11;
  }

  width = [v13 width];
  width2 = [v16 width];
  if (width == width2)
  {
    height = [v13 height];
    width2 = [v16 height];
    if (height == width2)
    {
      v21 = [(PTEffectComposition *)self computeDownsamplingFactorWithInputSource:v10 inputTarget:v13 renderRequest:requestCopy];
      if (vabds_f32(v22, v23) > 0.1)
      {
        v24 = _PTLogSystem(*&v21);
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
        {
          [PTEffectComposition render:renderRequest:];
        }

LABEL_11:
        v25 = -10;
        goto LABEL_15;
      }

      if (v22 >= v23)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      v28 = (log2f(1.0 / v27) + -1.0);
      sourceMipmap = self->_sourceMipmap;
      if (v27 <= 0.5)
      {
        if (!sourceMipmap || (v30 = -[MTLTexture width](self->_sourceMipmap, "width"), v30 != [v10 width] >> 1) || (v31 = -[MTLTexture height](self->_sourceMipmap, "height"), v31 != objc_msgSend(v10, "height") >> 1))
        {
          textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
          v33 = [textureUtil createWithWidth:objc_msgSend(v10 height:"width") >> 1 pixelFormat:objc_msgSend(v10 mipmapLevelCount:"height") >> 1, 71, -1];
          v34 = self->_sourceMipmap;
          self->_sourceMipmap = v33;
        }

        textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
        [textureUtil2 copy:renderCopy inTex:v10 outTex:self->_sourceMipmap];

        if (v28 < 1)
        {
          goto LABEL_28;
        }

        sourceMipmap = [renderCopy blitCommandEncoder];
        [sourceMipmap generateMipmapsForTexture:self->_sourceMipmap];
        [sourceMipmap endEncoding];
      }

      else
      {
        self->_sourceMipmap = 0;
      }

LABEL_28:
      v24 = [[PTImageblockConfig alloc] initWithTexture:v16];
      computeCommandEncoder = [renderCopy computeCommandEncoder];
      [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v24 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v24, "imageblockSize")}];
      [computeCommandEncoder setComputePipelineState:self->_composite];
      if (self->_sourceMipmap)
      {
        textureUtil3 = [(PTMetalContext *)self->_metalContext textureUtil];
        v38 = [textureUtil3 mipmapLevelsUsingTextureView:self->_sourceMipmap];

        v39 = [v38 count];
        if (v39 - 1 >= v28)
        {
          v40 = v28;
        }

        else
        {
          v40 = v39 - 1;
        }

        v41 = [v38 objectAtIndexedSubscript:v40];
        [computeCommandEncoder setTexture:v41 atIndex:0];
      }

      else
      {
        [computeCommandEncoder setTexture:v10 atIndex:0];
      }

      [computeCommandEncoder setTexture:v13 atIndex:1];
      [computeCommandEncoder setTexture:v16 atIndex:2];
      *&v53 = [v10 width];
      *&v52 = [v10 height];
      [requestCopy inputCropRect];
      v43.f64[1] = v42;
      v45.f64[1] = v44;
      v46.i64[0] = __PAIR64__(v52, v53);
      v46.i64[1] = __PAIR64__(v52, v53);
      v58 = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v45), v43), v46);
      [requestCopy inputTargetRect];
      v48.f64[1] = v47;
      v50.f64[1] = v49;
      v57 = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v48);
      [requestCopy inputTargetRectCornerRadius];
      v56 = v51;
      [computeCommandEncoder setBytes:&v58 length:16 atIndex:0];
      [computeCommandEncoder setBytes:&v57 length:16 atIndex:1];
      [computeCommandEncoder setBytes:&v56 length:4 atIndex:2];
      if (v24)
      {
        objc_msgSend_threads(v24);
        objc_msgSend_threadsPerGroup(v24);
      }

      else
      {
        memset(v55, 0, sizeof(v55));
        memset(v54, 0, sizeof(v54));
      }

      [computeCommandEncoder dispatchThreads:v55 threadsPerThreadgroup:v54];
      [computeCommandEncoder endEncoding];

      v25 = 0;
      goto LABEL_15;
    }
  }

  v24 = _PTLogSystem(width2);
  if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
  {
    [PTEffectComposition render:renderRequest:];
  }

  v25 = -3;
LABEL_15:

  return v25;
}

@end