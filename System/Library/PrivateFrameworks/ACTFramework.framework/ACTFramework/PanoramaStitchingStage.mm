@interface PanoramaStitchingStage
- (CGRect)roi;
- (PanoramaStitchingStage)initWithContext:(id)context bitDepth:(int)depth;
- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height;
- (uint64_t)_centralStitchAddSlice:(uint64_t)slice sliceHomography:(uint64_t)homography sliceType:(int)type;
- (uint64_t)_seamStitchAddSlice:(__n128)slice sliceHomography:(__n128)homography sliceType:(uint64_t)type;
- (uint64_t)addSlice:(uint64_t)slice sliceHomography:sliceType:;
@end

@implementation PanoramaStitchingStage

- (uint64_t)_centralStitchAddSlice:(uint64_t)slice sliceHomography:(uint64_t)homography sliceType:(int)type
{
  v29 = *(self + 80);
  typeCopy = type;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v31 = __invert_f3(a2);
  DWORD2(v26) = v31.columns[0].i32[2];
  DWORD2(v27) = v31.columns[1].i32[2];
  *&v26 = v31.columns[0].i64[0];
  *&v27 = v31.columns[1].i64[0];
  DWORD2(v28) = v31.columns[2].i32[2];
  *&v28 = v31.columns[2].i64[0];
  commandQueue = [*(self + 8) commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:StitchingStage:_centralStitchAddSlice"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  computeCentralStitchingMask = [*(self + 16) computeCentralStitchingMask];
  getThreadgroupSizeForShader(computeCentralStitchingMask, &v24);

  computeCentralStitchingMask2 = [*(self + 16) computeCentralStitchingMask];
  [computeCommandEncoder setComputePipelineState:computeCentralStitchingMask2];

  [computeCommandEncoder setTexture:*(self + 120) atIndex:0];
  [computeCommandEncoder setBytes:&typeCopy length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v29 length:4 atIndex:1];
  [computeCommandEncoder setBytes:&v26 length:48 atIndex:2];
  width = [*(self + 120) width];
  height = [*(self + 120) height];
  v23[0] = width;
  v23[1] = height;
  v23[2] = 1;
  v21 = v24;
  v22 = v25;
  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        *(self + 136) = 0;
        *(self + 144) = 0;
      }

      goto LABEL_13;
    }

    if (*(self + 80) != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    v14 = 0x3FE0000000000000;
    goto LABEL_12;
  }

  if (!type)
  {
    if (*(self + 80) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (type == 1)
  {
    v14 = 0x3FDF5C28F5C28F5CLL;
LABEL_12:
    *(self + 136) = v14;
  }

LABEL_13:
  *(self + 136) = 0;
  *(self + 144) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(self + 152) = _Q0;

  return 0;
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PanoramaStitchingStage)initWithContext:(id)context bitDepth:(int)depth
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PanoramaStitchingStage;
  v8 = [(PanoramaStitchingStage *)&v14 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, context), v10 = [[PanoramaStitchingShaders alloc] initWithContext:contextCopy], shaders = v9->_shaders, v9->_shaders = v10, shaders, v9->_shaders))
  {
    v9->_direction = 1;
    v9->_isReadyToProcess = 0;
    v9->_bitDepth = depth;
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)_seamStitchAddSlice:(__n128)slice sliceHomography:(__n128)homography sliceType:(uint64_t)type
{
  *&v62[16] = slice;
  *&v62[32] = homography;
  *v62 = a2;
  v77 = *(self + 80);
  v75 = 0uLL;
  v76 = 0;
  LumaMTLPixelFormat = getLumaMTLPixelFormat(*(self + 88));
  ChromaMTLPixelFormat = getChromaMTLPixelFormat(*(self + 88));
  v12 = 3;
  v13 = [*(self + 8) bindPixelBufferToMTL2DTexture:a6 pixelFormat:LumaMTLPixelFormat usage:3 plane:0];
  if (v13)
  {
    v12 = 3;
    v14 = [*(self + 8) bindPixelBufferToMTL2DTexture:a6 pixelFormat:ChromaMTLPixelFormat usage:3 plane:1];
    if (v14)
    {
      commandQueue = [*(self + 8) commandQueue];
      commandBuffer = [commandQueue commandBuffer];

      [commandBuffer setLabel:@"Panorama:StitchingStage:_seamStitchAddSlice"];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      if (a7 == 1)
      {
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        v78 = __invert_f3(*v62);
        DWORD2(v71) = v78.columns[0].i32[2];
        DWORD2(v72) = v78.columns[1].i32[2];
        *&v71 = v78.columns[0].i64[0];
        *&v72 = v78.columns[1].i64[0];
        DWORD2(v73) = v78.columns[2].i32[2];
        *&v73 = v78.columns[2].i64[0];
        computeSeamCost = [*(self + 16) computeSeamCost];
        getThreadgroupSizeForShader(computeSeamCost, &v75);

        computeSeamCost2 = [*(self + 16) computeSeamCost];
        [computeCommandEncoder setComputePipelineState:computeSeamCost2];

        [computeCommandEncoder setTexture:*(self + 24) atIndex:0];
        [computeCommandEncoder setTexture:*(self + 32) atIndex:1];
        [computeCommandEncoder setTexture:v13 atIndex:2];
        [computeCommandEncoder setTexture:v14 atIndex:3];
        [computeCommandEncoder setTexture:*(self + 72) atIndex:4];
        [computeCommandEncoder setTexture:*(self + 128) atIndex:5];
        [sub_23C471888() setBytes:? length:? atIndex:?];
        [sub_23C471824() setBytes:? length:? atIndex:?];
        width = [v14 width];
        height = [v14 height];
        sub_23C471834(height, v25, v26, v27, v28, v29, v30, v31, *v62, *&v62[8], *&v62[16], *&v62[24], *&v62[32], *&v62[40], *v69, *&v69[16], v70, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), *v74, *&v74[8], *&v74[16]);
        seamCutDescend = [*(self + 16) seamCutDescend];
        sub_23C4718A8(seamCutDescend);

        [computeCommandEncoder setTexture:*(self + 72) atIndex:0];
        [sub_23C471824() setBytes:? length:? atIndex:?];
        *v74 = 1;
        *&v74[8] = xmmword_23C47B2B0;
        *v69 = 1;
        *&v69[8] = xmmword_23C47B2B0;
        [computeCommandEncoder dispatchThreads:v74 threadsPerThreadgroup:v69];
        seamCutAscend = [*(self + 16) seamCutAscend];
        sub_23C4718A8(seamCutAscend);

        [computeCommandEncoder setTexture:*(self + 72) atIndex:0];
        [computeCommandEncoder setTexture:*(self + 120) atIndex:1];
        [sub_23C471824() setBytes:? length:? atIndex:?];
        [sub_23C471888() setBytes:? length:? atIndex:?];
        *v74 = xmmword_23C47B2C0;
        *&v74[16] = 1;
        *v69 = xmmword_23C47B2C0;
        *&v69[16] = 1;
        [computeCommandEncoder dispatchThreads:v74 threadsPerThreadgroup:v69];
        initializeSeamPreviousSliceWithMask = [*(self + 16) initializeSeamPreviousSliceWithMask];
        getThreadgroupSizeForShader(initializeSeamPreviousSliceWithMask, v74);
        v75 = *v74;
        v76 = *&v74[16];

        initializeSeamPreviousSliceWithMask2 = [*(self + 16) initializeSeamPreviousSliceWithMask];
        sub_23C4718A8(initializeSeamPreviousSliceWithMask2);

        [computeCommandEncoder setTexture:v13 atIndex:0];
        [computeCommandEncoder setTexture:v14 atIndex:1];
        [computeCommandEncoder setTexture:*(self + 120) atIndex:2];
        [computeCommandEncoder setTexture:*(self + 24) atIndex:3];
        [computeCommandEncoder setTexture:*(self + 32) atIndex:4];
        [computeCommandEncoder setTexture:*(self + 40) atIndex:5];
        [computeCommandEncoder setTexture:*(self + 48) atIndex:6];
        [computeCommandEncoder setTexture:*(self + 56) atIndex:7];
        [computeCommandEncoder setTexture:*(self + 64) atIndex:8];
        [sub_23C471888() setBytes:? length:? atIndex:?];
        [sub_23C471824() setBytes:? length:? atIndex:?];
        [v14 width];
        height2 = [v14 height];
        sub_23C471834(height2, v37, v38, v39, v40, v41, v42, v43, v63, v64, v65, v66, v67, v68, *v69, *&v69[16], v70, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), *v74, *&v74[8], *&v74[16]);
        v44 = *(self + 24);
        objc_storeStrong((self + 24), *(self + 40));
        v45 = *(self + 40);
        *(self + 40) = v44;
        v46 = v44;

        v47 = *(self + 32);
        objc_storeStrong((self + 32), *(self + 48));
        v48 = *(self + 48);
        *(self + 48) = v47;
      }

      else if (!a7)
      {
        v18 = [self _centralStitchAddSlice:a6 sliceHomography:3 sliceType:{*v62, *&v62[16], *&v62[32]}];
        if (v18)
        {
          v12 = v18;
          goto LABEL_9;
        }

        initializeSeamPreviousSlice = [*(self + 16) initializeSeamPreviousSlice];
        getThreadgroupSizeForShader(initializeSeamPreviousSlice, &v75);

        initializeSeamPreviousSlice2 = [*(self + 16) initializeSeamPreviousSlice];
        [computeCommandEncoder setComputePipelineState:initializeSeamPreviousSlice2];

        [computeCommandEncoder setTexture:v13 atIndex:0];
        [computeCommandEncoder setTexture:v14 atIndex:1];
        [computeCommandEncoder setTexture:*(self + 24) atIndex:2];
        [computeCommandEncoder setTexture:*(self + 32) atIndex:3];
        *&v71 = [v14 width];
        *(&v71 + 1) = [v14 height];
        [computeCommandEncoder dispatchThreads:sub_23C471868().n128_f64[0] threadsPerThreadgroup:?];
      }

      [computeCommandEncoder endEncoding];
      [commandBuffer commit];
      commandQueue2 = [*(self + 8) commandQueue];
      commandBuffer2 = [commandQueue2 commandBuffer];

      [commandBuffer2 setLabel:@"Panorama:StitchingStage:initializeSeamPreviousSlice"];
      computeCommandEncoder2 = [commandBuffer2 computeCommandEncoder];

      initializeSeamPreviousSlice3 = [*(self + 16) initializeSeamPreviousSlice];
      getThreadgroupSizeForShader(initializeSeamPreviousSlice3, &v71);
      v75 = v71;
      v76 = v72;

      initializeSeamPreviousSlice4 = [*(self + 16) initializeSeamPreviousSlice];
      [computeCommandEncoder2 setComputePipelineState:initializeSeamPreviousSlice4];

      [computeCommandEncoder2 setTexture:v13 atIndex:0];
      [computeCommandEncoder2 setTexture:v14 atIndex:1];
      [computeCommandEncoder2 setTexture:*(self + 56) atIndex:2];
      [computeCommandEncoder2 setTexture:*(self + 64) atIndex:3];
      width2 = [v14 width];
      height3 = [v14 height];
      *&v71 = width2;
      *(&v71 + 1) = height3;
      [computeCommandEncoder2 dispatchThreads:sub_23C471868().n128_f64[0] threadsPerThreadgroup:?];
      [computeCommandEncoder2 endEncoding];
      [commandBuffer2 commit];
      v12 = 0;
      *(self + 136) = 0;
      *(self + 144) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(self + 152) = _Q0;
      computeCommandEncoder = computeCommandEncoder2;
      commandBuffer = commandBuffer2;
    }

    else
    {
      computeCommandEncoder = 0;
      commandBuffer = 0;
    }
  }

  else
  {
    v14 = 0;
    computeCommandEncoder = 0;
    commandBuffer = 0;
  }

LABEL_9:

  return v12;
}

- (uint64_t)addSlice:(uint64_t)slice sliceHomography:sliceType:
{
  if (*(slice + 92) != 1)
  {
    return 2;
  }

  v1 = *(slice + 84);
  if (v1 != 1)
  {
    if (!v1)
    {
      return [slice _centralStitchAddSlice:? sliceHomography:? sliceType:?];
    }

    return 2;
  }

  return MEMORY[0x2821F9670](slice, sel__seamStitchAddSlice_sliceHomography_sliceType_);
}

- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height
{
  sub_23C471898();
  v10 = [v9 texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];
  [v10 setUsage:3];
  device = [(FigMetalContext *)self->_metal device];
  v12 = [device newTextureWithDescriptor:v10];
  stitchingMask = self->_stitchingMask;
  self->_stitchingMask = v12;

  if (!self->_stitchingMask)
  {
    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:width height:height mipmapped:0];

  [v14 setUsage:3];
  device2 = [(FigMetalContext *)self->_metal device];
  v16 = [device2 newTextureWithDescriptor:v14];
  seamStagingLuma = self->_seamStagingLuma;
  self->_seamStagingLuma = v16;

  if (!self->_seamStagingLuma || (-[FigMetalContext device](self->_metal, "device"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 newTextureWithDescriptor:v14], seamStagingLumaDst = self->_seamStagingLumaDst, self->_seamStagingLumaDst = v19, seamStagingLumaDst, v18, !self->_seamStagingLumaDst) || (-[FigMetalContext device](self->_metal, "device"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "newTextureWithDescriptor:", v14), prevLuma = self->_prevLuma, self->_prevLuma = v22, prevLuma, v21, !self->_prevLuma))
  {
    v39 = 2;
    v10 = v14;
    goto LABEL_11;
  }

  sub_23C471898();
  v10 = [v24 texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];

  [v10 setUsage:3];
  device3 = [(FigMetalContext *)self->_metal device];
  v26 = [device3 newTextureWithDescriptor:v10];
  seamStagingChroma = self->_seamStagingChroma;
  self->_seamStagingChroma = v26;

  if (self->_seamStagingChroma && (-[FigMetalContext device](self->_metal, "device"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 newTextureWithDescriptor:v10], seamStagingChromaDst = self->_seamStagingChromaDst, self->_seamStagingChromaDst = v29, seamStagingChromaDst, v28, self->_seamStagingChromaDst) && (-[FigMetalContext device](self->_metal, "device"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "newTextureWithDescriptor:", v10), prevChroma = self->_prevChroma, self->_prevChroma = v32, prevChroma, v31, self->_prevChroma))
  {
    sub_23C471898();
    v35 = [v34 texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];

    [v35 setUsage:3];
    device4 = [(FigMetalContext *)self->_metal device];
    v37 = [device4 newTextureWithDescriptor:v35];
    seamCost = self->_seamCost;
    self->_seamCost = v37;

    if (self->_seamCost)
    {
      v39 = 0;
      self->_isReadyToProcess = 1;
      self->_stitchingMode = process;
    }

    else
    {
      v39 = 2;
    }

    v10 = v35;
  }

  else
  {
LABEL_12:
    v39 = 2;
  }

LABEL_11:

  return v39;
}

@end