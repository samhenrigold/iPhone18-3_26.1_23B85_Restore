@interface PTVFXSoftAlphaMask
- (PTVFXSoftAlphaMask)initWithMetalContext:(id)context colorSize:(id *)size;
- (id)lazyInstantiateAlphaMaskForRenderRequest:(id)request;
- (int)remapAlphaMask:(id)mask effectRenderRequest:(id)request;
- (int)updateSoftAlphaMask:(id)mask inDisparity:(id)disparity focusDisparityModifiers:(id)modifiers effectRenderRequest:(id)request;
- (int)updateSoftAlphaMask:(id)mask inSegmentation:(id)segmentation effectRenderRequest:(id)request;
@end

@implementation PTVFXSoftAlphaMask

- (PTVFXSoftAlphaMask)initWithMetalContext:(id)context colorSize:(id *)size
{
  contextCopy = context;
  v60.receiver = self;
  v60.super_class = PTVFXSoftAlphaMask;
  v8 = [(PTVFXSoftAlphaMask *)&v60 init];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = [PTEffectUtil aspectRatio:size->var0, size->var1];
  if (size->var0 > size->var1)
  {
    if (v9 != 3)
    {
      if (v9 == 1)
      {
        v10 = 320;
        v11 = 176;
      }

      else
      {
        v10 = 288;
        v11 = 216;
      }

      goto LABEL_12;
    }

LABEL_9:
    v11 = 320;
    v10 = 320;
    goto LABEL_12;
  }

  if (v9 == 3)
  {
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = 176;
    v11 = 320;
  }

  else
  {
    v10 = 216;
    v11 = 288;
  }

LABEL_12:
  objc_storeStrong(v8 + 1, context);
  v12 = [contextCopy computePipelineStateFor:@"disparityToAlphaMask" withConstants:0];
  v13 = *(v8 + 2);
  *(v8 + 2) = v12;

  if (!*(v8 + 2))
  {
    v30 = _PTLogSystem(v14);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v30 initWithMetalContext:v31 colorSize:v32, v33, v34, v35, v36, v37];
    }

    goto LABEL_25;
  }

  v15 = [contextCopy computePipelineStateFor:@"remapAlphaMask" withConstants:0];
  v16 = *(v8 + 3);
  *(v8 + 3) = v15;

  if (!*(v8 + 3))
  {
    v30 = _PTLogSystem(v17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v30 initWithMetalContext:v38 colorSize:v39, v40, v41, v42, v43, v44];
    }

    goto LABEL_25;
  }

  textureUtil = [contextCopy textureUtil];
  v19 = [textureUtil createWithWidth:v10 height:v11 pixelFormat:10];
  v20 = *(v8 + 4);
  *(v8 + 4) = v19;

  if (!*(v8 + 4))
  {
    v30 = _PTLogSystem(v21);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v30 initWithMetalContext:v45 colorSize:v46, v47, v48, v49, v50, v51];
    }

    goto LABEL_25;
  }

  textureUtil2 = [contextCopy textureUtil];
  v23 = [textureUtil2 createWithWidth:v10 height:v11 pixelFormat:10];
  v24 = *(v8 + 6);
  *(v8 + 6) = v23;

  if (!*(v8 + 6))
  {
    v30 = _PTLogSystem(v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXSoftAlphaMask *)v30 initWithMetalContext:v52 colorSize:v53, v54, v55, v56, v57, v58];
    }

LABEL_25:

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  v26 = *&size->var0;
  *(v8 + 9) = size->var2;
  *(v8 + 56) = v26;
  v27 = [[PTBoxFilter alloc] initWithMetalContext:contextCopy options:1];
  v28 = *(v8 + 10);
  *(v8 + 10) = v27;

  v29 = v8;
LABEL_27:

  return v29;
}

- (int)updateSoftAlphaMask:(id)mask inDisparity:(id)disparity focusDisparityModifiers:(id)modifiers effectRenderRequest:(id)request
{
  v21 = 1065353216;
  requestCopy = request;
  modifiersCopy = modifiers;
  disparityCopy = disparity;
  maskCopy = mask;
  computeCommandEncoder = [maskCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_disparityToAlphaMask];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:self->_alphaMask atIndex:1];
  [computeCommandEncoder setBuffer:modifiersCopy offset:0 atIndex:0];

  [computeCommandEncoder setBytes:&v21 length:4 atIndex:1];
  width = [(MTLTexture *)self->_alphaMask width];
  height = [(MTLTexture *)self->_alphaMask height];
  v20[0] = width;
  v20[1] = height;
  v20[2] = 1;
  v18 = xmmword_2244A5230;
  v19 = 1;
  [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:&v18];
  [computeCommandEncoder endEncoding];
  LODWORD(width) = [(PTVFXSoftAlphaMask *)self boxFilter:maskCopy mask:self->_alphaMask];
  LODWORD(self) = [(PTVFXSoftAlphaMask *)self remapAlphaMask:maskCopy effectRenderRequest:requestCopy];

  return self | width;
}

- (int)remapAlphaMask:(id)mask effectRenderRequest:(id)request
{
  if (self->_remappedAlphaMask)
  {
    requestCopy = request;
    computeCommandEncoder = [mask computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_remapAlphaMask];
    [computeCommandEncoder setTexture:self->_alphaMask atIndex:0];
    [computeCommandEncoder setTexture:self->_remappedAlphaMask atIndex:1];
    [requestCopy reactionsCombinedCropRect];
    v12 = v8;

    v16 = v12;
    [computeCommandEncoder setBytes:&v16 length:16 atIndex:0];
    width = [(MTLTexture *)self->_remappedAlphaMask width];
    height = [(MTLTexture *)self->_remappedAlphaMask height];
    v15[0] = width;
    v15[1] = height;
    v15[2] = 1;
    v13 = xmmword_2244A5230;
    v14 = 1;
    [computeCommandEncoder dispatchThreads:v15 threadsPerThreadgroup:&v13];
    [computeCommandEncoder endEncoding];
  }

  return 0;
}

- (id)lazyInstantiateAlphaMaskForRenderRequest:(id)request
{
  requestCopy = request;
  [requestCopy inReactionVideoRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [requestCopy outColorROI];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = 1.0;
  v54.size.height = 1.0;
  v52.origin.x = v6;
  v52.origin.y = v8;
  v52.size.width = v10;
  v52.size.height = v12;
  if (CGRectEqualToRect(v52, v54) && (v55.origin.x = 0.0, v55.origin.y = 0.0, v55.size.width = 1.0, v55.size.height = 1.0, v53.origin.x = v14, v53.origin.y = v16, v53.size.width = v18, v53.size.height = v20, CGRectEqualToRect(v53, v55)))
  {
    remappedAlphaMask = self->_remappedAlphaMask;
    self->_remappedAlphaMask = 0;

    p_alphaMask = &self->_alphaMask;
  }

  else
  {
    [requestCopy outColorROI];
    v24 = v23;
    v26 = v25;
    [requestCopy inReactionColorSize];
    width = v27;
    [requestCopy inReactionColorSize];
    height = v29;
    if (width)
    {
      v31 = height == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      width = self->_colorSize.width;
      height = self->_colorSize.height;
    }

    v32 = v24 * width;
    v33 = vcvtas_u32_f32(v32);
    v34 = v26 * height;
    v35 = vcvtas_u32_f32(v34);
    if (v35 * v33 >= 62209)
    {
      v36 = (v35 * v33) / 62208.0;
      v33 = (v33 / v36);
      v35 = (v35 / v36);
    }

    p_alphaMask = &self->_remappedAlphaMask;
    if ([(MTLTexture *)self->_remappedAlphaMask width]!= v33 || [(MTLTexture *)*p_alphaMask height]!= v35)
    {
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v38 = [textureUtil createWithWidth:v33 height:v35 pixelFormat:10];
      v39 = self->_remappedAlphaMask;
      self->_remappedAlphaMask = v38;

      if (!self->_remappedAlphaMask)
      {
        v41 = _PTLogSystem(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [(PTVFXSoftAlphaMask *)v41 lazyInstantiateAlphaMaskForRenderRequest:v42, v43, v44, v45, v46, v47, v48];
        }
      }
    }
  }

  v49 = *p_alphaMask;
  v50 = *p_alphaMask;

  return v49;
}

- (int)updateSoftAlphaMask:(id)mask inSegmentation:(id)segmentation effectRenderRequest:(id)request
{
  requestCopy = request;
  maskCopy = mask;
  LODWORD(segmentation) = [(PTVFXSoftAlphaMask *)self boxFilter:maskCopy mask:segmentation];
  LODWORD(self) = [(PTVFXSoftAlphaMask *)self remapAlphaMask:maskCopy effectRenderRequest:requestCopy];

  return self | segmentation;
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_intermediateTextureBox";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_alphaMask";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_remapAlphaMask";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityToAlphaMask";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)lazyInstantiateAlphaMaskForRenderRequest:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_remappedAlphaMask";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end