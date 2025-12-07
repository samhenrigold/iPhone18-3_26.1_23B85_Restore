@interface PanoramaParallaxStage
- (PanoramaParallaxStage)initWithContext:(id)context bitDepth:(int)depth;
- (int)_allocateShiftPyramidLike:(id)like;
- (int)_applyWarpToSlice:(id)slice chroma:(id)chroma mask:(id)mask preFlow:(id)flow warpedLuma:(id)luma warpedChroma:(id)warpedChroma warpedMask:(id)warpedMask;
- (int)_buildShiftPyramid;
- (int)prepareToProcessSliceWidth:(unint64_t)width sliceHeight:(unint64_t)height;
- (int)purgeResources;
- (uint64_t)_computePreShift:(simd_float3)shift homography:(simd_float3)homography;
- (uint64_t)addSlice:(double)slice mask:(double)mask homography:(uint64_t)homography residualFlow:(__CVBuffer *)flow;
- (void)dealloc;
@end

@implementation PanoramaParallaxStage

- (void)dealloc
{
  [(PanoramaParallaxStage *)self purgeResources];
  v3.receiver = self;
  v3.super_class = PanoramaParallaxStage;
  [(PanoramaParallaxStage *)&v3 dealloc];
}

- (int)_applyWarpToSlice:(id)slice chroma:(id)chroma mask:(id)mask preFlow:(id)flow warpedLuma:(id)luma warpedChroma:(id)warpedChroma warpedMask:(id)warpedMask
{
  metal = self->_metal;
  warpedMaskCopy = warpedMask;
  warpedChromaCopy = warpedChroma;
  lumaCopy = luma;
  flowCopy = flow;
  maskCopy = mask;
  chromaCopy = chroma;
  sliceCopy = slice;
  commandQueue = [(FigMetalContext *)metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:ParallaxStage:_applyWarpToSlice"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  applyWarpToSlice = [(PanoramaParallaxStageShaders *)self->_shaders applyWarpToSlice];
  getThreadgroupSizeForShader(applyWarpToSlice, &v35);

  applyWarpToSlice2 = [(PanoramaParallaxStageShaders *)self->_shaders applyWarpToSlice];
  [computeCommandEncoder setComputePipelineState:applyWarpToSlice2];

  [computeCommandEncoder setTexture:sliceCopy atIndex:0];
  [computeCommandEncoder setTexture:chromaCopy atIndex:1];
  [computeCommandEncoder setTexture:maskCopy atIndex:2];

  [computeCommandEncoder setTexture:flowCopy atIndex:3];
  [computeCommandEncoder setTexture:lumaCopy atIndex:4];

  [computeCommandEncoder setTexture:warpedChromaCopy atIndex:5];
  [computeCommandEncoder setTexture:warpedMaskCopy atIndex:6];

  width = [chromaCopy width];
  height = [chromaCopy height];

  v34[0] = width;
  v34[1] = height;
  v34[2] = 1;
  v32 = v35;
  v33 = v36;
  [computeCommandEncoder dispatchThreads:v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];

  return 0;
}

- (int)_buildShiftPyramid
{
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:ParallaxStage:_buildShiftPyramid"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  downsampleShifts = [(PanoramaParallaxStageShaders *)self->_shaders downsampleShifts];
  getThreadgroupSizeForShader(downsampleShifts, &v17);

  for (i = 1; i != 4; ++i)
  {
    v8 = [(NSMutableArray *)self->_preShiftPyramid objectAtIndexedSubscript:i - 1];
    v9 = [(NSMutableArray *)self->_preShiftPyramid objectAtIndexedSubscript:i];
    downsampleShifts2 = [(PanoramaParallaxStageShaders *)self->_shaders downsampleShifts];
    [computeCommandEncoder setComputePipelineState:downsampleShifts2];

    [computeCommandEncoder setTexture:v8 atIndex:0];
    [computeCommandEncoder setTexture:v9 atIndex:1];
    width = [v9 width];
    height = [v9 height];
    v16[0] = width;
    v16[1] = height;
    v16[2] = 1;
    v14 = v17;
    v15 = v18;
    [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  }

  [computeCommandEncoder endEncoding];
  [commandBuffer commit];

  return 0;
}

- (uint64_t)_computePreShift:(simd_float3)shift homography:(simd_float3)homography
{
  v17.columns[1] = shift;
  v17.columns[2] = homography;
  v17.columns[0] = a2;
  v26[0] = a2;
  v26[1] = shift;
  v26[2] = homography;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v7 = a6;
  v27 = __invert_f3(v17);
  DWORD2(v23) = v27.columns[0].i32[2];
  DWORD2(v24) = v27.columns[1].i32[2];
  *&v23 = v27.columns[0].i64[0];
  *&v24 = v27.columns[1].i64[0];
  DWORD2(v25) = v27.columns[2].i32[2];
  *&v25 = v27.columns[2].i64[0];
  commandQueue = [self[1] commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:ParallaxStage:_computePreShift"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  computePreShifts = [self[2] computePreShifts];
  getThreadgroupSizeForShader(computePreShifts, &v21);

  computePreShifts2 = [self[2] computePreShifts];
  [computeCommandEncoder setComputePipelineState:computePreShifts2];

  [computeCommandEncoder setTexture:v7 atIndex:0];
  v13 = [self[5] objectAtIndexedSubscript:0];
  [computeCommandEncoder setTexture:v13 atIndex:1];

  [computeCommandEncoder setBytes:v26 length:48 atIndex:0];
  [computeCommandEncoder setBytes:&v23 length:48 atIndex:1];
  width = [v7 width];
  height = [v7 height];

  v20[0] = width;
  v20[1] = height;
  v20[2] = 1;
  v18 = v21;
  v19 = v22;
  [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:&v18];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];

  return 0;
}

- (int)purgeResources
{
  if (self->_warpedFrame)
  {
    warpedLuma = self->_warpedLuma;
    self->_warpedLuma = 0;

    warpedChroma = self->_warpedChroma;
    self->_warpedChroma = 0;

    CVPixelBufferRelease(self->_warpedFrame);
    self->_warpedFrame = 0;
  }

  warpedMask = self->_warpedMask;
  if (warpedMask)
  {
    self->_warpedMask = 0;
  }

  return 0;
}

- (PanoramaParallaxStage)initWithContext:(id)context bitDepth:(int)depth
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PanoramaParallaxStage;
  v8 = [(PanoramaParallaxStage *)&v17 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, context), v10 = [[PanoramaParallaxStageShaders alloc] initWithContext:contextCopy], shaders = v9->_shaders, v9->_shaders = v10, shaders, v9->_shaders))
  {
    warpedMask = v9->_warpedMask;
    v9->_warpedFrame = 0;
    v9->_warpedMask = 0;

    v13 = objc_opt_new();
    preShiftPyramid = v9->_preShiftPyramid;
    v9->_preShiftPyramid = v13;

    v9->_MTLPixelFormatY = getLumaMTLPixelFormat(depth);
    v9->_MTLPixelFormatUV = getChromaMTLPixelFormat(depth);
    v9->_CVPixelFormat = getCVPixelFormat(depth);
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int)prepareToProcessSliceWidth:(unint64_t)width sliceHeight:(unint64_t)height
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277CC4DE8];
  v20[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  if ([(MTLTexture *)self->_warpedLuma width]== width && [(MTLTexture *)self->_warpedLuma height]== height)
  {
    goto LABEL_9;
  }

  if ([(PanoramaParallaxStage *)self purgeResources]|| !self->_warpedFrame && ((CVPixelBufferCreate(0, width, height, self->_CVPixelFormat, v7, &self->_warpedFrame), (warpedFrame = self->_warpedFrame) == 0) || ([(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:warpedFrame pixelFormat:self->_MTLPixelFormatY usage:3 plane:0], v9 = objc_claimAutoreleasedReturnValue(), warpedLuma = self->_warpedLuma, self->_warpedLuma = v9, warpedLuma, !self->_warpedLuma) || ([(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:self->_warpedFrame pixelFormat:self->_MTLPixelFormatUV usage:3 plane:1], v11 = objc_claimAutoreleasedReturnValue(), warpedChroma = self->_warpedChroma, self->_warpedChroma = v11, warpedChroma, !self->_warpedChroma)))
  {
    v14 = 0;
    v13 = 2;
    goto LABEL_13;
  }

  if (self->_warpedMask)
  {
LABEL_9:
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:self->_MTLPixelFormatY width:width >> 1 height:height >> 1 mipmapped:0];
    [v14 setUsage:3];
    device = [(FigMetalContext *)self->_metal device];
    v16 = [device newTextureWithDescriptor:v14];
    warpedMask = self->_warpedMask;
    self->_warpedMask = v16;

    if (self->_warpedMask)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }
  }

LABEL_13:

  return v13;
}

- (int)_allocateShiftPyramidLike:(id)like
{
  likeCopy = like;
  if ([(NSMutableArray *)self->_preShiftPyramid count]>= 4)
  {
    v5 = [(NSMutableArray *)self->_preShiftPyramid objectAtIndexedSubscript:0];
    width = [v5 width];
    if (width == [likeCopy width])
    {
      v7 = [(NSMutableArray *)self->_preShiftPyramid objectAtIndexedSubscript:0];
      height = [v7 height];
      height2 = [likeCopy height];

      v10 = 0;
      v11 = 0;
      if (height == height2)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  [(NSMutableArray *)self->_preShiftPyramid removeAllObjects];
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:objc_msgSend(likeCopy height:"width") mipmapped:objc_msgSend(likeCopy, "height"), 0];
  v12 = 3;
  [v10 setUsage:3];
  device = [(FigMetalContext *)self->_metal device];
  v11 = [device newTextureWithDescriptor:v10];

  if (!v11)
  {
LABEL_14:
    lastObject = 0;
    goto LABEL_15;
  }

  [(NSMutableArray *)self->_preShiftPyramid addObject:v11];
LABEL_8:
  if ([(NSMutableArray *)self->_preShiftPyramid count]> 3)
  {
    v12 = 0;
    goto LABEL_14;
  }

  lastObject = 0;
  while (1)
  {
    v15 = v10;
    v16 = lastObject;
    v17 = v11;
    lastObject = [(NSMutableArray *)self->_preShiftPyramid lastObject];

    v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:objc_msgSend(lastObject height:"width") >> 1 mipmapped:objc_msgSend(lastObject, "height") >> 1, 0];

    [v10 setUsage:3];
    device2 = [(FigMetalContext *)self->_metal device];
    v11 = [device2 newTextureWithDescriptor:v10];

    if (!v11)
    {
      break;
    }

    [(NSMutableArray *)self->_preShiftPyramid addObject:v11];
    if ([(NSMutableArray *)self->_preShiftPyramid count]>= 4)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = 3;
LABEL_15:

  return v12;
}

- (uint64_t)addSlice:(double)slice mask:(double)mask homography:(uint64_t)homography residualFlow:(__CVBuffer *)flow
{
  v11 = a7;
  Width = CVPixelBufferGetWidth(flow);
  v13 = [self prepareToProcessSliceWidth:Width sliceHeight:CVPixelBufferGetHeight(flow)];
  if (v13)
  {
    v19 = v13;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_9;
  }

  v14 = [*(self + 8) bindPixelBufferToMTL2DTexture:flow pixelFormat:*(self + 48) usage:1 plane:0];
  if (!v14)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = [*(self + 8) bindPixelBufferToMTL2DTexture:flow pixelFormat:*(self + 56) usage:1 plane:1];
  if (!v15)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = [*(self + 8) bindPixelBufferToMTL2DTexture:a8 pixelFormat:65 usage:1 plane:0];
  if (!v16)
  {
LABEL_14:
    v19 = 3;
    goto LABEL_9;
  }

  v17 = [self _allocateShiftPyramidLike:v16];
  if (v17 || (v17 = [self _computePreShift:v16 homography:{a2, slice, mask}], v17) || (v17 = objc_msgSend(self, "_buildShiftPyramid"), v17))
  {
    v19 = v17;
  }

  else
  {
    lastObject = [*(self + 40) lastObject];
    v19 = [self _applyWarpToSlice:v14 chroma:v15 mask:v11 preFlow:lastObject warpedLuma:*(self + 24) warpedChroma:*(self + 32) warpedMask:*(self + 104)];
  }

LABEL_9:

  return v19;
}

@end