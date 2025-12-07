@interface CVAFilterRenderComposite
- (CVAFilterRenderComposite)initWithFigMetalContext:(id)context error:(id *)error;
- (void)encodeColorCubesToCommandBuffer:(id)buffer sdofYTexture:(id)texture sdofUVTexture:(id)vTexture alphaTexture:(id)alphaTexture fgColorLut:(id)lut bgColorLut:(id)colorLut dstColorTex:(id)tex dstColorTex_plane1:(id)self0;
- (void)encodeToCommandBuffer:(id)buffer srcForegroundTex:(id)tex srcBackgroundTex:(id)backgroundTex srcCocTex:(id)cocTex dstYTex:(id)yTex dstUVTex:(id)vTex fgColorLut:(id)lut bgColorLut:(id)self0 frameNumber:(unsigned int)self1 seedGeneratorFactor:(unsigned int)self2 noiseBits:(int)self3 noiseBitsFactor:(float)self4 cubeIntensity:(float)self5 maxBlurRadius:(optional<float>)self6;
@end

@implementation CVAFilterRenderComposite

- (void)encodeToCommandBuffer:(id)buffer srcForegroundTex:(id)tex srcBackgroundTex:(id)backgroundTex srcCocTex:(id)cocTex dstYTex:(id)yTex dstUVTex:(id)vTex fgColorLut:(id)lut bgColorLut:(id)self0 frameNumber:(unsigned int)self1 seedGeneratorFactor:(unsigned int)self2 noiseBits:(int)self3 noiseBitsFactor:(float)self4 cubeIntensity:(float)self5 maxBlurRadius:(optional<float>)self6
{
  bufferCopy = buffer;
  texCopy = tex;
  backgroundTexCopy = backgroundTex;
  cocTexCopy = cocTex;
  yTexCopy = yTex;
  vTexCopy = vTex;
  lutCopy = lut;
  colorLutCopy = colorLut;
  v44 = *&number;
  bitsCopy = bits;
  v28 = 1.0;
  bitsFactorCopy = bitsFactor;
  intensityCopy = intensity;
  if (radius.m_initialized)
  {
    v28 = 1.0 - (1.0 / fmaxf((radius.m_storage * 2.0) + 1.0, 1.0));
  }

  v48 = v28;
  if ((atomic_load_explicit(&qword_1ECDE13B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE13B8))
  {
    v33 = +[CVAPreferenceManager defaults];
    v34 = [v33 BOOLForKey:@"CVAPhotoDebugCoC"];

    byte_1ECDE13B5 = v34;
    __cxa_guard_release(&qword_1ECDE13B8);
  }

  if (byte_1ECDE13B5 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"noisePercentToAddAtInfinity = %.1f", (v48 * 100.0)];
  }

  width = [texCopy width];
  height = [texCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v32 = computeCommandEncoder;
  if (lutCopy && colorLutCopy)
  {
    [computeCommandEncoder setLabel:@"_renderingCompositeFixupAndColorMapKernel"];
    [v32 setComputePipelineState:self->_renderingCompositeFixupAndColorMapKernel];
    [v32 setTexture:backgroundTexCopy atIndex:0];
    [v32 setTexture:texCopy atIndex:1];
    [v32 setTexture:cocTexCopy atIndex:2];
    [v32 setTexture:yTexCopy atIndex:3];
    [v32 setTexture:vTexCopy atIndex:4];
    [v32 setTexture:colorLutCopy atIndex:5];
    [v32 setTexture:lutCopy atIndex:6];
    [v32 setBytes:&v44 length:24 atIndex:0];
    v41 = ((width >> 1) + 15) >> 4;
    v42 = ((height >> 1) + 15) >> 4;
    v43 = 1;
    v39 = xmmword_1DED747F0;
    v40 = 1;
    [v32 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  }

  else if (colorLutCopy)
  {
    [computeCommandEncoder setLabel:@"_renderingCompositeFixupAndBGColorMapKernel"];
    [v32 setComputePipelineState:self->_renderingCompositeFixupAndBGColorMapKernel];
    [v32 setTexture:backgroundTexCopy atIndex:0];
    [v32 setTexture:texCopy atIndex:1];
    [v32 setTexture:cocTexCopy atIndex:2];
    [v32 setTexture:yTexCopy atIndex:3];
    [v32 setTexture:vTexCopy atIndex:4];
    [v32 setTexture:colorLutCopy atIndex:5];
    [v32 setBytes:&v44 length:24 atIndex:0];
    v41 = ((width >> 1) + 15) >> 4;
    v42 = ((height >> 1) + 15) >> 4;
    v43 = 1;
    v39 = xmmword_1DED747F0;
    v40 = 1;
    [v32 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  }

  else
  {
    if (lutCopy)
    {
      [computeCommandEncoder setLabel:@"_renderingCompositeFixupAndFGColorMapKernel"];
      [v32 setComputePipelineState:self->_renderingCompositeFixupAndFGColorMapKernel];
      [v32 setTexture:backgroundTexCopy atIndex:0];
      [v32 setTexture:texCopy atIndex:1];
      [v32 setTexture:cocTexCopy atIndex:2];
      [v32 setTexture:yTexCopy atIndex:3];
      [v32 setTexture:vTexCopy atIndex:4];
      [v32 setTexture:lutCopy atIndex:6];
    }

    else
    {
      [computeCommandEncoder setLabel:@"_renderingCompositeFixUpAddNoiseKernel"];
      [v32 setComputePipelineState:self->_renderingCompositeFixUpAddNoiseKernel];
      [v32 setTexture:backgroundTexCopy atIndex:0];
      [v32 setTexture:texCopy atIndex:1];
      [v32 setTexture:cocTexCopy atIndex:2];
      [v32 setTexture:yTexCopy atIndex:3];
      [v32 setTexture:vTexCopy atIndex:4];
    }

    [v32 setBytes:&v44 length:24 atIndex:0];
    v41 = ((width >> 1) + 15) >> 4;
    v42 = ((height >> 1) + 15) >> 4;
    v43 = 1;
    v39 = xmmword_1DED747F0;
    v40 = 1;
    [v32 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  }

  [v32 endEncoding];
}

- (void)encodeColorCubesToCommandBuffer:(id)buffer sdofYTexture:(id)texture sdofUVTexture:(id)vTexture alphaTexture:(id)alphaTexture fgColorLut:(id)lut bgColorLut:(id)colorLut dstColorTex:(id)tex dstColorTex_plane1:(id)self0
{
  bufferCopy = buffer;
  textureCopy = texture;
  vTextureCopy = vTexture;
  alphaTextureCopy = alphaTexture;
  lutCopy = lut;
  colorLutCopy = colorLut;
  texCopy = tex;
  tex_plane1Copy = tex_plane1;
  width = [textureCopy width];
  height = [textureCopy height];
  if (lutCopy && colorLutCopy)
  {
    v25 = height;
    v28 = bufferCopy;
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setLabel:@"_renderingCompositeApplyColorCubes"];
    [computeCommandEncoder setComputePipelineState:self->_renderingCompositeApplyColorCubes];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:vTextureCopy atIndex:1];
    [computeCommandEncoder setTexture:alphaTextureCopy atIndex:2];
    [computeCommandEncoder setTexture:colorLutCopy atIndex:3];
    [computeCommandEncoder setTexture:lutCopy atIndex:4];
    [computeCommandEncoder setTexture:texCopy atIndex:5];
    [computeCommandEncoder setTexture:tex_plane1Copy atIndex:6];
    v32[0] = ((width >> 1) + 15) >> 4;
    v32[1] = ((v25 >> 1) + 15) >> 4;
    v32[2] = 1;
    v30 = xmmword_1DED747F0;
    v31 = 1;
    [computeCommandEncoder dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
    [computeCommandEncoder endEncoding];

    bufferCopy = v28;
  }

  else
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    [blitCommandEncoder copyFromTexture:textureCopy toTexture:texCopy];
    [blitCommandEncoder copyFromTexture:vTextureCopy toTexture:tex_plane1Copy];
    [blitCommandEncoder endEncoding];
  }
}

- (CVAFilterRenderComposite)initWithFigMetalContext:(id)context error:(id *)error
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = CVAFilterRenderComposite;
  v6 = [(CVAFilterRenderComposite *)&v24 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    label = v6->_label;
    v6->_label = v8;

    v10 = objc_opt_new();
    v11 = [v10 copy];
    v23 = 0;
    [v11 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v11 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixUpAddNoiseKernel, contextCopy, @"compositeFixupAndAddNoise", v11);
    renderingCompositeFixUpAddNoiseKernel = v6->_renderingCompositeFixUpAddNoiseKernel;

    if (renderingCompositeFixUpAddNoiseKernel && (v13 = [v10 copy], v23 = 257, objc_msgSend(v13, "setConstantValue:type:withName:", &v23 + 1, 53, @"kUseBgLut"), objc_msgSend(v13, "setConstantValue:type:withName:", &v23, 53, @"kUseFgLut"), sub_1DED422A0(&v6->_renderingCompositeApplyColorCubes, contextCopy, @"compositeApplyColorCubes", v13), renderingCompositeApplyColorCubes = v6->_renderingCompositeApplyColorCubes, v13, renderingCompositeApplyColorCubes) && (v15 = objc_msgSend(v10, "copy"), v23 = 256, objc_msgSend(v15, "setConstantValue:type:withName:", &v23 + 1, 53, @"kUseBgLut"), objc_msgSend(v15, "setConstantValue:type:withName:", &v23, 53, @"kUseFgLut"), sub_1DED422A0(&v6->_renderingCompositeFixupAndBGColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v15), renderingCompositeFixupAndBGColorMapKernel = v6->_renderingCompositeFixupAndBGColorMapKernel, v15, renderingCompositeFixupAndBGColorMapKernel) && (v17 = objc_msgSend(v10, "copy"), v23 = 1, objc_msgSend(v17, "setConstantValue:type:withName:", &v23 + 1, 53, @"kUseBgLut"), objc_msgSend(v17, "setConstantValue:type:withName:", &v23, 53, @"kUseFgLut"), sub_1DED422A0(&v6->_renderingCompositeFixupAndFGColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v17), renderingCompositeFixupAndFGColorMapKernel = v6->_renderingCompositeFixupAndFGColorMapKernel, v17, renderingCompositeFixupAndFGColorMapKernel) && (v19 = objc_msgSend(v10, "copy"), v23 = 257, objc_msgSend(v19, "setConstantValue:type:withName:", &v23 + 1, 53, @"kUseBgLut"), objc_msgSend(v19, "setConstantValue:type:withName:", &v23, 53, @"kUseFgLut"), sub_1DED422A0(&v6->_renderingCompositeFixupAndColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v19), renderingCompositeFixupAndColorMapKernel = v6->_renderingCompositeFixupAndColorMapKernel, v19, renderingCompositeFixupAndColorMapKernel))
    {
      v21 = v6;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end