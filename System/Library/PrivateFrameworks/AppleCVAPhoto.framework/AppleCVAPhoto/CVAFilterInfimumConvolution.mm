@interface CVAFilterInfimumConvolution
- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height error:(id *)error;
- (void)encodeInfimumToCommandBufferInternal:(id)internal sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture orientation:(float)orientation majorRadius:(float)radius minorRadius:(float)minorRadius iterations:(unsigned int)self0;
- (void)encodeToCommandBufferInternal:(double)internal sourceTexture:(double)texture destinationTexture:(double)destinationTexture config:(uint64_t)config;
@end

@implementation CVAFilterInfimumConvolution

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture orientation:(float)orientation majorRadius:(float)radius minorRadius:(float)minorRadius iterations:(unsigned int)self0
{
  v41 = *&radius;
  v42 = *&minorRadius;
  bufferCopy = buffer;
  textureCopy = texture;
  sourceTextureCopy = sourceTexture;
  destinationTextureCopy = destinationTexture;
  v22 = v41;
  v21 = v42;
  v23 = destinationTextureCopy;
  LODWORD(v24) = 1.0;
  if (*&v41 < 0.0 || *&v41 > 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CVAFilterInfimumConvolution.mm" lineNumber:131 description:{@"CVAInfimumConvolution: majorRadius not in [0, 1]"}];

    v21 = v42;
    if (*&v42 >= 0.0)
    {
LABEL_6:
      LODWORD(v24) = 0.5;
      if (*&v21 <= 0.5)
      {
        goto LABEL_7;
      }
    }
  }

  else if (*&v42 >= 0.0)
  {
    goto LABEL_6;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CVAFilterInfimumConvolution.mm" lineNumber:135 description:{@"CVAInfimumConvolution: minorRadius not in [0, 0.5]"}];

LABEL_7:
  v26 = self->_tmpOutHalf[0];
  v27 = self->_tmpOutHalf[1];
  if (iterations)
  {
    v28 = fmodf(orientation + 0.7854, 3.1416);
    v29 = __sincosf_stret(v28 + -0.7854);
    v30.i32[0] = LODWORD(v41);
    v30.f32[1] = -*&v41;
    v31 = vmul_f32(__PAIR64__(LODWORD(v29.__sinval), LODWORD(v29.__cosval)), v30);
    v32 = vneg_f32(v31);
    v33 = vmul_n_f32(vdiv_f32(vext_s8(v31, v32, 4uLL), vdup_lane_s32(*&v41, 0)), *&v42);
    v34 = COERCE_DOUBLE(vneg_f32(v33));
    [(CVAFilterInfimumConvolution *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:sourceTextureCopy destinationTexture:v26 config:*&v31, *&v33, *&v32, v34];
    v35 = iterations - 1;
    if (iterations == 1)
    {
      v36 = v27;
    }

    else
    {
      do
      {
        v36 = v26;
        v26 = v27;
        [(CVAFilterInfimumConvolution *)self encodeToCommandBufferInternal:bufferCopy sourceTexture:v36 destinationTexture:v27 config:*&v31, *&v33, *&v32, v34];
        v27 = v36;
        --v35;
      }

      while (v35);
    }

    v27 = v26;
    v38 = v26;
    v26 = v36;
    [(CVAFilterInfimumConvolution *)self encodeInfimumToCommandBufferInternal:bufferCopy sourceTexture:textureCopy smallSourceTexture:v38 destinationTexture:v23];
  }

  else
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    memset(v45, 0, sizeof(v45));
    v44[0] = [textureCopy width];
    v44[1] = [textureCopy height];
    v44[2] = 1;
    memset(v43, 0, sizeof(v43));
    [blitCommandEncoder copyFromTexture:textureCopy sourceSlice:0 sourceLevel:0 sourceOrigin:v45 sourceSize:v44 toTexture:v23 destinationSlice:0 destinationLevel:0 destinationOrigin:v43];
    [blitCommandEncoder endEncoding];
  }
}

- (void)encodeInfimumToCommandBufferInternal:(id)internal sourceTexture:(id)texture smallSourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture
{
  textureCopy = texture;
  sourceTextureCopy = sourceTexture;
  destinationTextureCopy = destinationTexture;
  computeCommandEncoder = [internal computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_infimumKernel"];
  [computeCommandEncoder setComputePipelineState:self->_infimumKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:sourceTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationTextureCopy atIndex:2];
  v16[0] = (([textureCopy width] >> 1) + 15) >> 4;
  v16[1] = (([textureCopy height] >> 1) + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)encodeToCommandBufferInternal:(double)internal sourceTexture:(double)texture destinationTexture:(double)destinationTexture config:(uint64_t)config
{
  *v18 = a2;
  *&v18[1] = internal;
  *&v18[2] = texture;
  *&v18[3] = destinationTexture;
  v12 = a8;
  v13 = a9;
  computeCommandEncoder = [a7 computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_infimumConvolutionKernel"];
  [computeCommandEncoder setComputePipelineState:*(self + 80)];
  [computeCommandEncoder setTexture:v12 atIndex:0];
  [computeCommandEncoder setTexture:v13 atIndex:1];
  [computeCommandEncoder setBytes:v18 length:32 atIndex:0];
  v17[0] = (([v12 width] >> 1) + 15) >> 4;
  v17[1] = (([v12 height] >> 1) + 15) >> 4;
  v17[2] = 1;
  v15 = xmmword_1DED747F0;
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (CVAFilterInfimumConvolution)initWithFigMetalContext:(id)context bufferWidth:(unint64_t)width bufferHeight:(unint64_t)height error:(id *)error
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = CVAFilterInfimumConvolution;
  v11 = [(ImageSaverRegistrator *)&v24 init];
  if (v11 && ([contextCopy device], v12 = objc_claimAutoreleasedReturnValue(), device = v11->_device, v11->_device = v12, device, objc_msgSend(contextCopy, "library"), v14 = objc_claimAutoreleasedReturnValue(), library = v11->_library, v11->_library = v14, library, objc_msgSend(contextCopy, "pipelineLibrary"), v16 = objc_claimAutoreleasedReturnValue(), pipelineLibrary = v11->_pipelineLibrary, v11->_pipelineLibrary = v16, pipelineLibrary, v11->_width = width, v11->_height = height, sub_1DED6FDC8(v11->_device, 10, v11->_width, height, 0, error), v18 = objc_claimAutoreleasedReturnValue(), v19 = v11->_tmpOutHalf[0], v11->_tmpOutHalf[0] = v18, v19, sub_1DED6FDC8(v11->_device, 10, v11->_width, v11->_height, 0, error), v20 = objc_claimAutoreleasedReturnValue(), v21 = v11->_tmpOutHalf[1], v11->_tmpOutHalf[1] = v20, v21, sub_1DED422A0(&v11->_infimumKernel, contextCopy, @"infimum", 0), v11->_infimumKernel) && (sub_1DED422A0(&v11->_infimumConvolutionKernel, contextCopy, @"infimumConvolution", 0), v11->_infimumConvolutionKernel))
  {
    v22 = v11;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end