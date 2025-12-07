@interface CVAFilterMaskedVariableBlur
+ (void)prewarmGaussianPyramid:(id)pyramid device:(id)device commandBuffer:(id)buffer;
- (CVAFilterMaskedVariableBlur)initWithFigMetalContext:(id)context commandQueue:(id)queue kernelSize:(int)size error:(id *)error;
- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)buffer inoutTexture:(id)texture;
- (void)encodeToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mask:(id)mask maxBlurRadius:(float)radius;
@end

@implementation CVAFilterMaskedVariableBlur

- (void)encodeToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mask:(id)mask maxBlurRadius:(float)radius
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  maskCopy = mask;
  radiusCopy = radius;
  [(CVAFilterMaskedVariableBlur *)self encodeBlurPyramidInPlaceToCommandBuffer:bufferCopy inoutTexture:sourceCopy];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_maskedVariableBlurKernel"];
  [computeCommandEncoder setComputePipelineState:self->_maskedVariableBlurKernel];
  [computeCommandEncoder setTexture:destinationCopy atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setTexture:sourceCopy atIndex:2];
  [computeCommandEncoder setBytes:&radiusCopy length:4 atIndex:0];
  v19[0] = ([destinationCopy width] + 15) >> 4;
  v19[1] = ([destinationCopy height] + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeBlurPyramidInPlaceToCommandBuffer:(id)buffer inoutTexture:(id)texture
{
  textureCopy = texture;
  [(MPSImageGaussianPyramid *)self->_gaussianPyramid encodeToCommandBuffer:buffer inPlaceTexture:&textureCopy fallbackCopyAllocator:0];
}

- (CVAFilterMaskedVariableBlur)initWithFigMetalContext:(id)context commandQueue:(id)queue kernelSize:(int)size error:(id *)error
{
  v6 = *&size;
  contextCopy = context;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = CVAFilterMaskedVariableBlur;
  v11 = [(CVAFilterMaskedVariableBlur *)&v23 init];
  if (v11 && (v12 = objc_opt_class(), NSStringFromClass(v12), v13 = objc_claimAutoreleasedReturnValue(), label = v11->_label, v11->_label = v13, label, [contextCopy device], v15 = objc_claimAutoreleasedReturnValue(), device = v11->_device, v11->_device = v15, device, sub_1DED422A0(&v11->_maskedVariableBlurKernel, contextCopy, @"maskedVariableBlurWithUpsample", 0), v11->_maskedVariableBlurKernel))
  {
    if (!sub_1DED5D1F8(@"harvesting.enabled", @"com.apple.coremedia", 0))
    {
      if (v6)
      {
        operator new();
      }

      v18 = [objc_alloc(MEMORY[0x1E69745C8]) initWithDevice:v11->_device kernelWidth:0 kernelHeight:0 weights:0];
      gaussianPyramid = v11->_gaussianPyramid;
      v11->_gaussianPyramid = v18;

      [(MPSImageGaussianPyramid *)v11->_gaussianPyramid setEdgeMode:1];
      [(MPSImageGaussianPyramid *)v11->_gaussianPyramid setOptions:2];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GaussianPyramid%ix%i", v6, v6];
      [(MPSImageGaussianPyramid *)v11->_gaussianPyramid setLabel:v20];

      commandBuffer = [queueCopy commandBuffer];
      [commandBuffer setLabel:@"GaussianPyramid"];
      [CVAFilterMaskedVariableBlur prewarmGaussianPyramid:v11->_gaussianPyramid device:v11->_device commandBuffer:commandBuffer];
      [commandBuffer commit];
    }

    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)prewarmGaussianPyramid:(id)pyramid device:(id)device commandBuffer:(id)buffer
{
  pyramidCopy = pyramid;
  deviceCopy = device;
  bufferCopy = buffer;
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:144 height:108 mipmapped:0];
  [v10 setMipmapLevelCount:7];
  [v10 setUsage:3];
  v11 = [deviceCopy newTextureWithDescriptor:v10];
  [pyramidCopy encodeToCommandBuffer:bufferCopy inPlaceTexture:&v11 fallbackCopyAllocator:0];
}

@end