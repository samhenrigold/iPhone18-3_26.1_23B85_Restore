@interface PTStudioLightColorCorrectionAndConversion
- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)context correctionColorCube:(id)cube;
- (unsigned)initializeCubeMap:(id)map inputTexture:(id)texture;
@end

@implementation PTStudioLightColorCorrectionAndConversion

- (PTStudioLightColorCorrectionAndConversion)initWithMetalContext:(id)context correctionColorCube:(id)cube
{
  contextCopy = context;
  cubeCopy = cube;
  v46.receiver = self;
  v46.super_class = PTStudioLightColorCorrectionAndConversion;
  v8 = [(PTStudioLightColorCorrectionAndConversion *)&v46 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_correctionColorCube, cube);
    v10 = [contextCopy computePipelineStateFor:@"studioLightColorCorrectionRGBToYUV" withConstants:0];
    studioLightColorCorrectionRGBToYUV = v9->_studioLightColorCorrectionRGBToYUV;
    v9->_studioLightColorCorrectionRGBToYUV = v10;

    if (v9->_studioLightColorCorrectionRGBToYUV)
    {
      v13 = objc_alloc_init(MEMORY[0x277CD7058]);
      v14 = v13;
      if (v13)
      {
        [v13 setTextureType:7];
        [v14 setWidth:32];
        [v14 setHeight:32];
        [v14 setDepth:32];
        [v14 setPixelFormat:70];
        [v14 setUsage:3];
        v15 = objc_msgSend_device(contextCopy);
        v16 = [v15 newTextureWithDescriptor:v14];
        cubeTexture = v9->_cubeTexture;
        v9->_cubeTexture = v16;

        if (v9->_cubeTexture)
        {
          v19 = objc_msgSend_device(contextCopy);
          v20 = [v19 newBufferWithLength:16 options:0];
          rgbMinMax = v9->_rgbMinMax;
          v9->_rgbMinMax = v20;

          v22 = v9;
LABEL_15:

          goto LABEL_16;
        }

        v30 = _PTLogSystem(v18);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(PTStudioLightColorCorrectionAndConversion *)v30 initWithMetalContext:v38 correctionColorCube:v39, v40, v41, v42, v43, v44];
        }
      }

      else
      {
        v30 = _PTLogSystem(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(PTStudioLightColorCorrectionAndConversion *)v30 initWithMetalContext:v31 correctionColorCube:v32, v33, v34, v35, v36, v37];
        }
      }
    }

    else
    {
      v14 = _PTLogSystem(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PTStudioLightColorCorrectionAndConversion *)v14 initWithMetalContext:v23 correctionColorCube:v24, v25, v26, v27, v28, v29];
      }
    }

    v22 = 0;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (unsigned)initializeCubeMap:(id)map inputTexture:(id)texture
{
  memset(v22, 0, sizeof(v22));
  textureCopy = texture;
  mapCopy = map;
  objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);
  memset(v21, 0, sizeof(v21));
  objc_msgSend_getColorMatrix_toRGB_(PTColorConversion);
  transferFunction = [textureCopy transferFunction];
  v9 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  v20 = v9;
  transferFunction2 = [textureCopy transferFunction];

  LODWORD(textureCopy) = [PTColorConversion getTransferFunction:transferFunction2 toLinear:0];
  v19 = textureCopy;
  computeCommandEncoder = [mapCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_studioLightColorCorrectionRGBToYUV];
  [computeCommandEncoder setTexture:self->_cubeTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_correctionColorCube atIndex:1];
  [computeCommandEncoder setBuffer:self->_rgbMinMax offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v22 length:24 atIndex:1];
  [computeCommandEncoder setBytes:v21 length:24 atIndex:2];
  [computeCommandEncoder setBytes:&v20 length:4 atIndex:3];
  [computeCommandEncoder setBytes:&v19 length:4 atIndex:4];
  width = [(MTLTexture *)self->_cubeTexture width];
  height = [(MTLTexture *)self->_cubeTexture height];
  depth = [(MTLTexture *)self->_cubeTexture depth];
  v18[0] = width;
  v18[1] = height;
  v18[2] = depth;
  v16 = xmmword_2244A5440;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)initWithMetalContext:(uint64_t)a3 correctionColorCube:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_cubeTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 correctionColorCube:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "texDesc";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 correctionColorCube:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_studioLightColorCorrectionRGBToYUV";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end