@interface PanoramaAssemblyStage
- (CGRect)boundingBox;
- (PanoramaAssemblyStage)initWithContext:(id)context robustPanoParams:(id *)params;
- (__n128)panoHomography;
- (__n64)_stagingHomography;
- (int)_addStagingBuffer;
- (int)_bindOutput;
- (int)addHomogToStaging:(float32x4_t)staging;
- (int)addStagingToOutput:(id)output;
- (int)clearStagingBuffer:(id)buffer withEncoder:(id)encoder;
- (int)finishProcessing;
- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height gridWidth:(unint64_t)gridWidth gridHeight:(unint64_t)gridHeight;
- (int)renderDirtyStagingBuffers;
- (int)resetState;
- (uint64_t)addSlice:(double)slice metadata:(double)metadata sliceHomography:(double)homography stitchingMask:(double)mask roi:(double)roi sliceType:(double)type;
- (uint64_t)addSliceToProjectiveGrid:(__n128)grid atlasHomography:(__n128)homography panoHomography:(__n128)panoHomography encoder:(__n128)encoder sliceType:(__n128)type;
- (uint64_t)addSliceToStagingBuffer:(float32x4_t)buffer sliceLuma:(float32x4_t)luma sliceChroma:(uint64_t)chroma sliceMask:(void *)mask sliceGlobalHomography:(void *)homography encoder:(void *)encoder;
- (void)adjustBoundingBox;
- (void)dealloc;
@end

@implementation PanoramaAssemblyStage

- (void)dealloc
{
  free(self->_sliceHomographies);
  self->_sliceHomographies = 0;
  free(self->_atlasHomographies);
  self->_atlasHomographies = 0;
  self->_sliceBufferAllocSize = 0;
  self->_sliceBufferLength = 0;
  nrfInputPixelBuffer = self->_nrfInputPixelBuffer;
  if (nrfInputPixelBuffer)
  {
    CVPixelBufferRelease(nrfInputPixelBuffer);
    self->_nrfInputPixelBuffer = 0;
  }

  nrfOutputPixelBuffer = self->_nrfOutputPixelBuffer;
  if (nrfOutputPixelBuffer)
  {
    CVPixelBufferRelease(nrfOutputPixelBuffer);
    self->_nrfOutputPixelBuffer = 0;
  }

  if (self->_assemblyParams.enableTranslationCorrection)
  {
    free(self->_movingAverageBuffer);
    self->_movingAverageBuffer = 0;
  }

  v5.receiver = self;
  v5.super_class = PanoramaAssemblyStage;
  [(PanoramaAssemblyStage *)&v5 dealloc];
}

- (int)clearStagingBuffer:(id)buffer withEncoder:(id)encoder
{
  shaders = self->_shaders;
  encoderCopy = encoder;
  bufferCopy = buffer;
  resetSliceSizedState = [(PanoramaAssemblyShaders *)shaders resetSliceSizedState];
  getThreadgroupSizeForShader(resetSliceSizedState, &v24);

  resetSliceSizedState2 = [(PanoramaAssemblyShaders *)self->_shaders resetSliceSizedState];
  [encoderCopy setComputePipelineState:resetSliceSizedState2];

  luma = [bufferCopy luma];
  [encoderCopy setTexture:luma atIndex:0];

  chroma = [bufferCopy chroma];
  [encoderCopy setTexture:chroma atIndex:1];

  weights = [bufferCopy weights];
  [encoderCopy setTexture:weights atIndex:2];

  chroma2 = [bufferCopy chroma];
  width = [chroma2 width];
  chroma3 = [bufferCopy chroma];
  v23[0] = width;
  v23[1] = [chroma3 height];
  v23[2] = 1;
  v21 = v24;
  v22 = v25;
  [encoderCopy dispatchThreads:v23 threadsPerThreadgroup:&v21];

  v19 = *(MEMORY[0x277D860B0] + 16);
  v20 = *MEMORY[0x277D860B0];
  v18 = *(MEMORY[0x277D860B0] + 32);
  [bufferCopy setHomographyToReference:?];
  [bufferCopy setAtlasHomography:{*&v20, *&v19, *&v18}];
  [bufferCopy setDirty:0];

  return 0;
}

- (int)resetState
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 1056964608;
  v47 = 0;
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:AssemblyStage:resetState"];
  v35 = commandBuffer;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  resetPanoSizedState = [(PanoramaAssemblyShaders *)self->_shaders resetPanoSizedState];
  getThreadgroupSizeForShader(resetPanoSizedState, &v44);

  if (self->_projectiveGrid)
  {
    resetPanoSizedState2 = [(PanoramaAssemblyShaders *)self->_shaders resetPanoSizedState];
    [computeCommandEncoder setComputePipelineState:resetPanoSizedState2];

    [computeCommandEncoder setTexture:self->_projectiveGrid atIndex:0];
    [computeCommandEncoder setBytes:&v47 length:4 atIndex:0];
    width = [(MTLTexture *)self->_projectiveGrid width];
    height = [(MTLTexture *)self->_projectiveGrid height];
    *&v42 = width;
    *(&v42 + 1) = height;
    v43 = 1;
    v40 = v44;
    v41 = v45;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
    resetPanoSizedState3 = [(PanoramaAssemblyShaders *)self->_shaders resetPanoSizedState];
    [computeCommandEncoder setComputePipelineState:resetPanoSizedState3];

    [computeCommandEncoder setTexture:self->_outputMask atIndex:0];
    [computeCommandEncoder setBytes:&v47 length:4 atIndex:0];
    width2 = [(MTLTexture *)self->_outputMask width];
    height2 = [(MTLTexture *)self->_outputMask height];
    *&v42 = width2;
    *(&v42 + 1) = height2;
    v43 = 1;
    v40 = v44;
    v41 = v45;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  if (self->_outputBoundLuma)
  {
    resetPanoSizedState4 = [(PanoramaAssemblyShaders *)self->_shaders resetPanoSizedState];
    [computeCommandEncoder setComputePipelineState:resetPanoSizedState4];

    [computeCommandEncoder setTexture:self->_outputBoundLuma atIndex:0];
    [computeCommandEncoder setBytes:&v47 length:4 atIndex:0];
    width3 = [(MTLTexture *)self->_outputBoundLuma width];
    height3 = [(MTLTexture *)self->_outputBoundLuma height];
    *&v42 = width3;
    *(&v42 + 1) = height3;
    v43 = 1;
    v40 = v44;
    v41 = v45;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  if (self->_outputBoundChroma)
  {
    resetPanoSizedState5 = [(PanoramaAssemblyShaders *)self->_shaders resetPanoSizedState];
    [computeCommandEncoder setComputePipelineState:resetPanoSizedState5];

    [computeCommandEncoder setTexture:self->_outputBoundChroma atIndex:0];
    [computeCommandEncoder setBytes:&v46 length:4 atIndex:0];
    width4 = [(MTLTexture *)self->_outputBoundChroma width];
    height4 = [(MTLTexture *)self->_outputBoundChroma height];
    *&v42 = width4;
    *(&v42 + 1) = height4;
    v43 = 1;
    v40 = v44;
    v41 = v45;
    [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  }

  resetSliceSizedState = [(PanoramaAssemblyShaders *)self->_shaders resetSliceSizedState];
  getThreadgroupSizeForShader(resetSliceSizedState, &v42);
  v44 = v42;
  v45 = v43;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = self->_dirtyStagingBuffers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * i);
        resetSliceSizedState2 = [(PanoramaAssemblyShaders *)self->_shaders resetSliceSizedState];
        [computeCommandEncoder setComputePipelineState:resetSliceSizedState2];

        luma = [v25 luma];
        [computeCommandEncoder setTexture:luma atIndex:0];

        chroma = [v25 chroma];
        [computeCommandEncoder setTexture:chroma atIndex:1];

        weights = [v25 weights];
        [computeCommandEncoder setTexture:weights atIndex:2];

        chroma2 = [v25 chroma];
        width5 = [chroma2 width];
        chroma3 = [v25 chroma];
        height5 = [chroma3 height];
        *&v42 = width5;
        *(&v42 + 1) = height5;
        v43 = 1;
        v40 = v44;
        v41 = v45;
        [computeCommandEncoder dispatchThreads:&v42 threadsPerThreadgroup:&v40];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v22);
  }

  [computeCommandEncoder endEncoding];
  [v35 commit];
  self->_sliceBufferLength = 0;
  if (self->_assemblyParams.enableTranslationCorrection)
  {
    *&self->_startingMean = 0;
    bzero(self->_movingAverageBuffer, 4 * self->_assemblyParams.movingAverageFilterSize);
  }

  else if (self->_assemblyParams.verticalDriftFilterWeight > 0.0)
  {
    [(ButterworthHighPassFilter *)self->_atlasFilter resetState];
  }

  return 0;
}

- (int)addHomogToStaging:(float32x4_t)staging
{
  v4 = result;
  v5 = MEMORY[0x277D860B0];
  v6 = *(MEMORY[0x277D860B0] + 12);
  v7 = *(MEMORY[0x277D860B0] + 28);
  v8 = *(MEMORY[0x277D860B0] + 44);
  v9 = *(result + 20);
  if (v9)
  {
    v10 = 0;
    v11 = *(result + 21);
    v12 = v11 + 48 * v9;
    v13 = *(v12 - 32);
    v14 = *(v12 - 16);
    v60 = *(v12 - 48);
    v61 = v13;
    v62 = v14;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    do
    {
      *(&v63 + v10) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v60 + v10))), staging, *(&v60 + v10), 1), a4, *(&v60 + v10), 2);
      v10 += 16;
    }

    while (v10 != 48);
    v16 = v63;
    v15 = v64;
    v17 = v65;
  }

  else
  {
    v15 = *(MEMORY[0x277D860B0] + 16);
    v17 = *(MEMORY[0x277D860B0] + 32);
    v16 = *MEMORY[0x277D860B0];
    v11 = *(result + 21);
  }

  v18 = *v5;
  v19 = v5[1];
  v20 = v11 + 48 * v9;
  *v20 = v16.i64[0];
  *(v20 + 8) = v16.i32[2];
  *(v20 + 12) = v6;
  *(v20 + 16) = v15.i64[0];
  *(v20 + 24) = v15.i32[2];
  *(v20 + 28) = v7;
  *(v20 + 32) = v17.i64[0];
  *(v20 + 40) = v17.i32[2];
  *(v20 + 44) = v8;
  v21 = *(result + 20);
  __asm { FMOV            V4.2S, #1.0 }

  if (v21)
  {
    v27.i64[0] = 0x3F0000003F000000;
    v27.i64[1] = 0x3F0000003F000000;
    v28 = vaddq_f32(a4, vmlaq_f32(vmulq_f32(a2, v27), v27, staging));
    *v28.i8 = vadd_f32(vdiv_f32(*v28.i8, vdup_laneq_s32(v28, 2)), 0xBF000000BF000000);
    v29.i64[0] = v28.i64[0];
    *&v29.u32[2] = _D4;
    if (*(result + 112) == 1)
    {
      v30 = result[29];
      v31 = *(result + 67);
      if (v21 <= v30)
      {
        *(result + 67) = *v28.i32 + v31;
        *(*(result + 34) + 4 * ((v21 - 1) % v30)) = v28.i32[0];
        v35 = *(result + 67) / v21;
      }

      else
      {
        v32 = *(result + 34);
        v33 = (v21 - 1) % v30;
        v34 = *v28.i32 + (v31 - *(v32 + 4 * v33));
        *(result + 67) = v34;
        v35 = v34 / v30;
        *(v32 + 4 * v33) = v28.i32[0];
      }

      v39 = result[30];
      if (v21 == v39)
      {
        *(result + 66) = v35;
      }

      v40 = 0;
      v41 = *(result + 22) + 48 * v21;
      v42 = *(v41 - 32);
      v43 = *(v41 - 16);
      v60 = *(v41 - 48);
      v61 = v42;
      v62 = v43;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      do
      {
        *(&v63 + v40) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v60 + v40))), v19, *(&v60 + v40), 1), v29, *(&v60 + v40), 2);
        v40 += 16;
      }

      while (v40 != 48);
      v18 = v63;
      v19 = v64;
      if (v21 < v39)
      {
        goto LABEL_23;
      }

      v44 = fabsf(v65.f32[0]);
      if (v44 <= *(result + 31) || v44 >= *(result + 32))
      {
        goto LABEL_23;
      }

      *v28.i32 = *v28.i32 - (*(result + 33) * v35);
      v28.i32[1] = v29.i32[1];
      v28.i32[2] = _D4.i32[0];
    }

    else
    {
      v38 = *(result + 34);
      if (v38 <= 0.0)
      {
        goto LABEL_23;
      }

      v58 = v19;
      v59 = v18;
      v56 = v29;
      v57 = _D4;
      v55 = *v28.i32;
      result = [*(result + 41) filterSample:?];
      _D4 = v57;
      v19 = v58;
      v18 = v59;
      *v28.i32 = (v38 * *v28.i32) + ((1.0 - v38) * v55);
      *(v28.i64 + 4) = *(v56.i64 + 4);
      v21 = *(v4 + 20);
    }

    v29 = v28;
LABEL_23:
    v45 = 0;
    v37 = *(v4 + 22);
    v46 = v37 + 48 * v21;
    v47 = *(v46 - 32);
    v48 = *(v46 - 16);
    v60 = *(v46 - 48);
    v61 = v47;
    v62 = v48;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    do
    {
      *(&v63 + v45) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v60 + v45))), v19, *(&v60 + v45), 1), v29, *(&v60 + v45), 2);
      v45 += 16;
    }

    while (v45 != 48);
    v18 = v63;
    v19 = v64;
    v36 = v65;
    goto LABEL_26;
  }

  v36 = v5[2];
  v37 = *(result + 22);
LABEL_26:
  v49 = (v37 + 48 * v21);
  *v49 = v18;
  v49[1] = v19;
  v49[2] = v36;
  v50 = *(v4 + 24);
  v51 = vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(*v36.f32), v50));
  v52 = vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vadd_f32(*v36.f32, _D4)), vaddq_f64(v50, *(v4 + 25)))), v51));
  *(v4 + 24) = vcvtq_f64_f32(v51);
  *(v4 + 25) = v52;
  v53 = *(v4 + 19);
  v54 = *(v4 + 20) + 1;
  *(v4 + 20) = v54;
  if (v54 == v53)
  {
    *(v4 + 19) = 2 * v54;
    *(v4 + 21) = malloc_type_realloc(*(v4 + 21), 96 * v54, 0x1000040EED21634uLL);
    result = malloc_type_realloc(*(v4 + 22), 48 * *(v4 + 19), 0x1000040EED21634uLL);
    *(v4 + 22) = result;
  }

  return result;
}

- (__n128)panoHomography
{
  v5 = *MEMORY[0x277D860B0];
  v2.n128_f32[0] = [*(self + 280) width] / *(self + 24);
  v4 = v2;
  [*(self + 280) height];
  result = v4;
  *(result.n128_u64 + 4) = *(&v5 + 4);
  return result;
}

- (uint64_t)addSliceToProjectiveGrid:(__n128)grid atlasHomography:(__n128)homography panoHomography:(__n128)panoHomography encoder:(__n128)encoder sliceType:(__n128)type
{
  v35[0] = a2;
  v35[1] = grid;
  v35[2] = homography;
  v34[0] = panoHomography;
  v34[1] = encoder;
  v34[2] = type;
  v33[0] = a15;
  v33[1] = a16;
  v33[2] = a17;
  v19 = *(self + 16);
  v20 = a9;
  addSliceToProjectiveGrid = [v19 addSliceToProjectiveGrid];
  getThreadgroupSizeForShader(addSliceToProjectiveGrid, &v31);

  v29 = *(self + 56);
  v30 = a10;
  addSliceToProjectiveGrid2 = [*(self + 16) addSliceToProjectiveGrid];
  [v20 setComputePipelineState:addSliceToProjectiveGrid2];

  [v20 setTexture:*(self + 184) atIndex:0];
  [v20 setBytes:v35 length:48 atIndex:0];
  [v20 setBytes:v34 length:48 atIndex:1];
  [v20 setBytes:v33 length:48 atIndex:2];
  [v20 setBytes:&v30 length:4 atIndex:3];
  [v20 setBytes:&v29 length:4 atIndex:4];
  width = [*(self + 184) width];
  height = [*(self + 184) height];
  v28[0] = width;
  v28[1] = height;
  v28[2] = 1;
  v26 = v31;
  v27 = v32;
  [v20 dispatchThreads:v28 threadsPerThreadgroup:&v26];

  return 0;
}

- (__n64)_stagingHomography
{
  result.n64_f32[0] = *(self + 64) / *(self + 24);
  __asm { FMOV            V1.4S, #1.0 }

  result.n64_u32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  return result;
}

- (uint64_t)addSliceToStagingBuffer:(float32x4_t)buffer sliceLuma:(float32x4_t)luma sliceChroma:(uint64_t)chroma sliceMask:(void *)mask sliceGlobalHomography:(void *)homography encoder:(void *)encoder
{
  maskCopy = mask;
  homographyCopy = homography;
  encoderCopy = encoder;
  v18 = a9;
  v19 = a10;
  [maskCopy homographyToReference];
  v54 = __invert_f3(v53);
  v20 = 0;
  v49 = v54;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  do
  {
    *(&v50 + v20 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&v49.columns[v20])), buffer, *v49.columns[v20].f32, 1), luma, v49.columns[v20], 2);
    ++v20;
  }

  while (v20 != 3);
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v46.i32[2] = DWORD2(v50);
  v47.i32[2] = DWORD2(v51);
  v46.i64[0] = v50;
  v47.i64[0] = v51;
  v48.i32[2] = DWORD2(v52);
  v48.i64[0] = v52;
  [self _stagingHomography];
  v21 = 0;
  v22 = v46;
  v23 = v47;
  v24 = v48;
  v49.columns[0] = v25;
  v49.columns[1] = v26;
  v49.columns[2] = v27;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  do
  {
    *(&v50 + v21 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*&v49.columns[v21])), v23, *v49.columns[v21].f32, 1), v24, v49.columns[v21], 2);
    ++v21;
  }

  while (v21 != 3);
  v46.i32[2] = DWORD2(v50);
  v47.i32[2] = DWORD2(v51);
  v46.i64[0] = v50;
  v47.i64[0] = v51;
  v48.i32[2] = DWORD2(v52);
  v48.i64[0] = v52;
  dirty = [maskCopy dirty];
  v44 = *(self + 296);
  v45 = dirty;
  addSliceToStaging = [*(self + 16) addSliceToStaging];
  getThreadgroupSizeForShader(addSliceToStaging, &v50);

  addSliceToStaging2 = [*(self + 16) addSliceToStaging];
  [v19 setComputePipelineState:addSliceToStaging2];

  [v19 setTexture:homographyCopy atIndex:0];
  [v19 setTexture:encoderCopy atIndex:1];
  [v19 setTexture:v18 atIndex:2];
  luma = [maskCopy luma];
  [v19 setTexture:luma atIndex:3];

  chroma = [maskCopy chroma];
  [v19 setTexture:chroma atIndex:4];

  weights = [maskCopy weights];
  [v19 setTexture:weights atIndex:5];

  [v19 setBytes:&v46 length:48 atIndex:0];
  [v19 setBytes:&v44 length:4 atIndex:1];
  [v19 setBytes:&v45 length:4 atIndex:2];
  chroma2 = [maskCopy chroma];
  width = [chroma2 width];
  chroma3 = [maskCopy chroma];
  height = [chroma3 height];
  v49.columns[0].i64[0] = width;
  v49.columns[0].i64[1] = height;
  v49.columns[1].i64[0] = 1;
  v42 = v50;
  v43 = v51;
  [v19 dispatchThreads:&v49 threadsPerThreadgroup:&v42];

  [maskCopy setDirty:1];
  return 0;
}

- (int)addStagingToOutput:(id)output
{
  outputCopy = output;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  [outputCopy homographyToReference];
  DWORD2(v45) = v5;
  DWORD2(v46) = v6;
  *&v45 = v7;
  *&v46 = v8;
  DWORD2(v47) = v9;
  *&v47 = v10;
  v44 = 0;
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:AssemblyStage:prepareForDenoising"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  prepareForDenoising = [(PanoramaAssemblyShaders *)self->_shaders prepareForDenoising];
  getThreadgroupSizeForShader(prepareForDenoising, &v42);

  prepareForDenoising2 = [(PanoramaAssemblyShaders *)self->_shaders prepareForDenoising];
  [computeCommandEncoder setComputePipelineState:prepareForDenoising2];

  luma = [outputCopy luma];
  [computeCommandEncoder setTexture:luma atIndex:0];

  chroma = [outputCopy chroma];
  [computeCommandEncoder setTexture:chroma atIndex:1];

  [computeCommandEncoder setTexture:self->_nrfInputLuma atIndex:2];
  [computeCommandEncoder setTexture:self->_nrfInputChroma atIndex:3];
  weights = [outputCopy weights];
  [computeCommandEncoder setTexture:weights atIndex:4];

  width = [(MTLTexture *)self->_nrfInputChroma width];
  height = [(MTLTexture *)self->_nrfInputChroma height];
  *&v51 = width;
  *(&v51 + 1) = height;
  *&v52 = 1;
  v48 = v42;
  *&v49 = v43;
  [computeCommandEncoder dispatchThreads:&v51 threadsPerThreadgroup:&v48];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  if (self->_assemblyParams.bitDepth == 2)
  {
    objc_storeStrong(&self->_nrfOutputLuma, self->_nrfInputLuma);
    v21 = self->_nrfInputChroma;
    nrfOutputChroma = self->_nrfOutputChroma;
    self->_nrfOutputChroma = v21;
  }

  else
  {
    nrfInputSampleBuffer = self->_nrfInputSampleBuffer;
    metadata = [outputCopy metadata];
    v25 = [metadata copy];
    CMSetAttachment(nrfInputSampleBuffer, @"MetadataDictionary", v25, 0);

    NSClassFromString(&cfstr_Nrfpreparedesc.isa);
    v26 = objc_opt_new();
    [v26 setWidth:LODWORD(self->_stagingWidth)];
    [v26 setHeight:LODWORD(self->_stagingHeight)];
    [v26 setPixelFormat:self->_CVPixelFormat];
    if (self->_assemblyParams.useNRFTypePano)
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    [(NRFProcessor *)self->_nrfProcessor prepareToProcess:v27 prepareDescriptor:v26];
    NSClassFromString(&cfstr_Nrfubfusionout.isa);
    nrfOutputChroma = objc_opt_new();
    [nrfOutputChroma setPixelBuffer:self->_nrfOutputPixelBuffer];
    v28 = objc_opt_new();
    [nrfOutputChroma setMetadata:v28];

    [(NRFProcessor *)self->_nrfProcessor setOutput:nrfOutputChroma];
    [(NRFProcessor *)self->_nrfProcessor addFrame:self->_nrfInputSampleBuffer];
    [(NRFProcessor *)self->_nrfProcessor process];
    [(NRFProcessor *)self->_nrfProcessor finishScheduling];
    [(NRFProcessor *)self->_nrfProcessor resetState];
  }

  [(PanoramaAssemblyStage *)self _stagingHomography];
  v55 = __invert_f3(v54);
  v29 = 0;
  v48 = v45;
  v49 = v46;
  v50 = v47;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  do
  {
    *(&v51 + v29) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55.columns[0], COERCE_FLOAT(*(&v48 + v29))), v55.columns[1], *(&v48 + v29), 1), v55.columns[2], *(&v48 + v29), 2);
    v29 += 16;
  }

  while (v29 != 48);
  DWORD2(v45) = DWORD2(v51);
  DWORD2(v46) = DWORD2(v52);
  *&v45 = v51;
  *&v46 = v52;
  DWORD2(v47) = DWORD2(v53);
  *&v47 = v53;
  commandQueue2 = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer2 = [commandQueue2 commandBuffer];

  [commandBuffer2 setLabel:@"Panorama:AssemblyStage:addStagingToOutput"];
  computeCommandEncoder2 = [commandBuffer2 computeCommandEncoder];

  [outputCopy atlasHomography];
  v44 = v33;
  *(&v44 + 1) = *(&v33 + 1) / ([(MTLTexture *)self->_outputBoundLuma height]/ self->_sliceHeight);
  width2 = [(MTLTexture *)self->_outputBoundLuma width];
  shaders = self->_shaders;
  *&v44 = *&v44 / (width2 / self->_sliceWidth);
  addStagingToOutput = [(PanoramaAssemblyShaders *)shaders addStagingToOutput];
  getThreadgroupSizeForShader(addStagingToOutput, &v51);
  v42 = v51;
  v43 = v52;

  addStagingToOutput2 = [(PanoramaAssemblyShaders *)self->_shaders addStagingToOutput];
  [computeCommandEncoder2 setComputePipelineState:addStagingToOutput2];

  [computeCommandEncoder2 setTexture:self->_nrfOutputLuma atIndex:0];
  [computeCommandEncoder2 setTexture:self->_nrfOutputChroma atIndex:1];
  weights2 = [outputCopy weights];
  [computeCommandEncoder2 setTexture:weights2 atIndex:2];

  [computeCommandEncoder2 setTexture:self->_projectiveGrid atIndex:3];
  [computeCommandEncoder2 setTexture:self->_outputBoundLuma atIndex:4];
  [computeCommandEncoder2 setTexture:self->_outputBoundChroma atIndex:5];
  [computeCommandEncoder2 setTexture:self->_outputMask atIndex:6];
  [computeCommandEncoder2 setBytes:&v45 length:48 atIndex:0];
  [computeCommandEncoder2 setBytes:&v44 length:8 atIndex:1];
  [computeCommandEncoder2 setBytes:&self->_direction length:8 atIndex:2];
  width3 = [(MTLTexture *)self->_outputBoundChroma width];
  height2 = [(MTLTexture *)self->_outputBoundChroma height];
  *&v51 = width3;
  *(&v51 + 1) = height2;
  *&v52 = 1;
  v48 = v42;
  *&v49 = v43;
  [computeCommandEncoder2 dispatchThreads:&v51 threadsPerThreadgroup:&v48];
  [computeCommandEncoder2 endEncoding];
  [commandBuffer2 commit];

  return 0;
}

- (int)renderDirtyStagingBuffers
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_dirtyStagingBuffers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(PanoramaAssemblyStage *)self addStagingToOutput:v8, v14];
        if (v9)
        {
          v12 = v9;

          return v12;
        }

        [(NSMutableArray *)self->_stagingBufferPool addObject:v8];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_opt_new();
  dirtyStagingBuffers = self->_dirtyStagingBuffers;
  self->_dirtyStagingBuffers = v10;

  [(NSMutableArray *)self->_stagingBufferPool removeAllObjects];
  return 0;
}

- (void)adjustBoundingBox
{
  v2 = vcvtq_f64_u64(*&self->_sliceWidth);
  v3 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(v2)), xmmword_23C47A560));
  v4 = vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vmulq_f64(self->_boundingBox.origin, v2)), v3)), 0)), 0x3F0000003F000000));
  v5 = vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vminnmq_f64(vcvtq_f64_u64(*&self->_panoWidth), vcvtq_f64_f32(vadd_f32(v3, vcvt_f32_f64(vmulq_f64(self->_boundingBox.size, v2)))))), 0x3F0000003F000000));
  self->_boundingBox.origin = v4;
  self->_boundingBox.size = v5;
}

- (int)finishProcessing
{
  [(PanoramaAssemblyStage *)self adjustBoundingBox];

  return MEMORY[0x2821F9670](self, sel_renderDirtyStagingBuffers);
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PanoramaAssemblyStage)initWithContext:(id)context robustPanoParams:(id *)params
{
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = PanoramaAssemblyStage;
  v8 = [(PanoramaAssemblyStage *)&v25 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, context), v10 = [[PanoramaAssemblyShaders alloc] initWithContext:contextCopy], shaders = v9->_shaders, v9->_shaders = v10, shaders, v9->_shaders))
  {
    *&v9->_sliceBufferAllocSize = xmmword_23C47A550;
    v9->_sliceHomographies = malloc_type_calloc(0x400uLL, 0x30uLL, 0x1000040EED21634uLL);
    v9->_atlasHomographies = malloc_type_calloc(v9->_sliceBufferAllocSize, 0x30uLL, 0x1000040EED21634uLL);
    v12 = objc_opt_new();
    stagingBufferPool = v9->_stagingBufferPool;
    v9->_stagingBufferPool = v12;

    v14 = objc_opt_new();
    dirtyStagingBuffers = v9->_dirtyStagingBuffers;
    v9->_dirtyStagingBuffers = v14;

    v9->_direction = 1;
    outputBoundLuma = v9->_outputBoundLuma;
    v9->_outputBoundLuma = 0;

    outputBoundChroma = v9->_outputBoundChroma;
    v9->_outputBoundChroma = 0;

    memcpy(&v9->_assemblyParams, params, sizeof(v9->_assemblyParams));
    if (v9->_assemblyParams.enableTranslationCorrection)
    {
      v9->_lastFilteredValue = 0.0;
      v9->_movingAverageBuffer = malloc_type_calloc(v9->_assemblyParams.movingAverageFilterSize, 4uLL, 0x100004052888210uLL);
    }

    else if (v9->_assemblyParams.verticalDriftFilterWeight > 0.0)
    {
      v18 = [ButterworthHighPassFilter alloc];
      LODWORD(v19) = 1148846080;
      LODWORD(v20) = 30.0;
      v21 = [(ButterworthHighPassFilter *)v18 initWithCutoffFrequency:v20 sampleRate:v19];
      atlasFilter = v9->_atlasFilter;
      v9->_atlasFilter = v21;
    }

    v9->_MTLPixelFormatY = getLumaMTLPixelFormat(v9->_assemblyParams.bitDepth);
    v9->_MTLPixelFormatUV = getChromaMTLPixelFormat(v9->_assemblyParams.bitDepth);
    v9->_CVPixelFormat = getCVPixelFormat(v9->_assemblyParams.bitDepth);
    v23 = v9;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height gridWidth:(unint64_t)gridWidth gridHeight:(unint64_t)gridHeight
{
  v33[1] = *MEMORY[0x277D85DE8];
  self->_assemblyMode = process;
  self->_panoWidth = CVPixelBufferGetWidth(self->_output);
  self->_panoHeight = CVPixelBufferGetHeight(self->_output);
  self->_sliceWidth = width;
  self->_sliceHeight = height;
  self->_stagingWidth = self->_panoWidth;
  self->_stagingHeight = height;
  v32 = *MEMORY[0x277CC4DE8];
  v33[0] = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  if (self->_projectiveGrid)
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:gridWidth height:gridHeight mipmapped:0];
    [v14 setUsage:3];
    device = [(FigMetalContext *)self->_metal device];
    v16 = [device newTextureWithDescriptor:v14];
    projectiveGrid = self->_projectiveGrid;
    self->_projectiveGrid = v16;

    if (!self->_projectiveGrid)
    {
      goto LABEL_21;
    }

    v13 = v14;
  }

  if (self->_outputMask)
  {
    v14 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:self->_panoWidth >> 1 height:self->_panoHeight >> 1 mipmapped:0];

    [v14 setUsage:3];
    device2 = [(FigMetalContext *)self->_metal device];
    v19 = [device2 newTextureWithDescriptor:v14];
    outputMask = self->_outputMask;
    self->_outputMask = v19;

    if (!self->_outputMask)
    {
      goto LABEL_21;
    }
  }

  if (!self->_nrfOutputPixelBuffer)
  {
    sub_23C44B74C(v12);
    if (!self->_nrfOutputPixelBuffer)
    {
      goto LABEL_21;
    }

    v21 = [sub_23C44B778() bindPixelBufferToMTL2DTexture:? pixelFormat:? usage:? plane:?];
    nrfOutputLuma = self->_nrfOutputLuma;
    self->_nrfOutputLuma = v21;

    v23 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:self->_nrfOutputPixelBuffer pixelFormat:30 usage:3 plane:1];
    nrfOutputChroma = self->_nrfOutputChroma;
    self->_nrfOutputChroma = v23;
  }

  if (!self->_nrfInputPixelBuffer)
  {
    sub_23C44B74C(v12);
    if (self->_nrfInputPixelBuffer)
    {
      v25 = [sub_23C44B778() bindPixelBufferToMTL2DTexture:? pixelFormat:? usage:? plane:?];
      nrfInputLuma = self->_nrfInputLuma;
      self->_nrfInputLuma = v25;

      v27 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:self->_nrfInputPixelBuffer pixelFormat:30 usage:3 plane:1];
      nrfInputChroma = self->_nrfInputChroma;
      self->_nrfInputChroma = v27;

      self->_nrfInputSampleBuffer = CreateSampleBuffer();
      goto LABEL_14;
    }

LABEL_21:
    v30 = 2;
    goto LABEL_20;
  }

LABEL_14:
  _bindOutput = [(PanoramaAssemblyStage *)self _bindOutput];
  if (_bindOutput)
  {
    goto LABEL_19;
  }

  _bindOutput = [(PanoramaAssemblyStage *)self resetState];
  if (_bindOutput)
  {
    goto LABEL_19;
  }

  if (![(NSMutableArray *)self->_dirtyStagingBuffers count])
  {
    _bindOutput = [(PanoramaAssemblyStage *)self _addStagingBuffer];
LABEL_19:
    v30 = _bindOutput;
    goto LABEL_20;
  }

  v30 = 0;
LABEL_20:

  return v30;
}

- (int)_bindOutput
{
  output = self->_output;
  if (!output)
  {
    return 2;
  }

  v4 = 3;
  v5 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:output pixelFormat:self->_MTLPixelFormatY usage:3 plane:0];
  outputBoundLuma = self->_outputBoundLuma;
  self->_outputBoundLuma = v5;

  if (self->_outputBoundLuma)
  {
    v4 = 3;
    v7 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:self->_output pixelFormat:self->_MTLPixelFormatUV usage:3 plane:1];
    outputBoundChroma = self->_outputBoundChroma;
    self->_outputBoundChroma = v7;

    if (self->_outputBoundChroma)
    {
      v4 = 0;
      self->_boundingBox.origin.x = 0.0;
      self->_boundingBox.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      self->_boundingBox.size = _Q0;
    }
  }

  return v4;
}

- (int)_addStagingBuffer
{
  v3 = [(NSMutableArray *)self->_stagingBufferPool count];
  v4 = MEMORY[0x277D860B0];
  if (v3)
  {
    lastObject = [(NSMutableArray *)self->_stagingBufferPool lastObject];
    [(NSMutableArray *)self->_stagingBufferPool removeLastObject];
  }

  else
  {
    lastObject = [[StagingBuffer alloc] initWithContext:self->_metal stagingWidth:self->_stagingWidth stagingHeight:self->_stagingHeight homography:*MEMORY[0x277D860B0] atlasHomography:*(MEMORY[0x277D860B0] + 16), *(MEMORY[0x277D860B0] + 32), *MEMORY[0x277D860B0], *(MEMORY[0x277D860B0] + 16), *(MEMORY[0x277D860B0] + 32)];
    if (!lastObject)
    {
      return 2;
    }
  }

  [(NSMutableArray *)self->_dirtyStagingBuffers addObject:lastObject];
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:AssemblyStage:_addStagingBuffer"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [(PanoramaAssemblyStage *)self clearStagingBuffer:lastObject withEncoder:computeCommandEncoder];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  sliceBufferLength = self->_sliceBufferLength;
  if (sliceBufferLength)
  {
    [(StagingBuffer *)lastObject setHomographyToReference:*(self->_sliceHomographies + 6 * sliceBufferLength - 6), *(self->_sliceHomographies + 6 * sliceBufferLength - 4), *(self->_sliceHomographies + 6 * sliceBufferLength - 2)];
    v10 = self->_atlasHomographies + 48 * self->_sliceBufferLength;
    v11 = *(v10 - 3);
    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
  }

  else
  {
    v16 = v4[1];
    v17 = *v4;
    v15 = v4[2];
    [(StagingBuffer *)lastObject setHomographyToReference:?];
    *&v13 = v15;
    *&v12 = v16;
    *&v11 = v17;
  }

  [(StagingBuffer *)lastObject setAtlasHomography:*&v11, *&v12, *&v13];

  return 0;
}

- (uint64_t)addSlice:(double)slice metadata:(double)metadata sliceHomography:(double)homography stitchingMask:(double)mask roi:(double)roi sliceType:(double)type
{
  v21 = a11;
  v22 = a12;
  v23 = [v21 objectForKeyedSubscript:@"SliceNumber"];
  intValue = [v23 intValue];

  [self addHomogToStaging:{a2, slice, metadata}];
  [self panoHomography];
  v78 = v25;
  v74 = v27;
  v76 = v26;
  v28 = 48 * *(self + 160) - 48;
  v29 = (*(self + 168) + v28);
  v86 = *v29;
  v64 = *v86.columns[1].i64;
  v65 = v29->columns[0];
  v63 = *v86.columns[2].i64;
  v87 = __invert_f3(*v29);
  v72 = *v87.columns[1].i64;
  v73 = *v87.columns[0].i64;
  v71 = *v87.columns[2].i64;
  v30 = (*(self + 176) + v28);
  v83 = v30[1];
  v85 = *v30;
  v81 = v30[2];
  v31 = [*(self + 8) bindPixelBufferToMTL2DTexture:a10 pixelFormat:*(self + 304) usage:1 plane:0];
  if (!v31 || ([*(self + 8) bindPixelBufferToMTL2DTexture:a10 pixelFormat:*(self + 312) usage:1 plane:1], (v70 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v54 = 0;
    v70 = 0;
    v34 = 0;
    v35 = 0;
    v60 = 0;
    v59 = 0;
    v57 = 3;
    goto LABEL_21;
  }

  v62 = a13;
  v69 = v31;
  v67 = v21;
  commandQueue = [*(self + 8) commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Panorama:AssemblyStage:addSlice"];
  v66 = commandBuffer;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v34 = objc_opt_new();
  v35 = objc_opt_new();
  v36 = (self + 200);
  if ([*(self + 200) count])
  {
    v37 = 0;
    v38 = 0.0;
    while (1)
    {
      v39 = [*v36 objectAtIndexedSubscript:v37];
      [v39 overlapWithAtlasHomography:*&v85 roi:{*&v83, *&v81, homography, mask, roi, type}];
      v41 = v40;
      if (v40 <= 0.25)
      {
        v43 = [self addStagingToOutput:v39];
        if (v43)
        {
          v57 = v43;

          v60 = 0;
          v59 = commandBuffer;
          v21 = v67;
          v31 = v69;
          v54 = computeCommandEncoder;
          goto LABEL_21;
        }

        [*(self + 192) addObject:v39];
        HostTime = ACT_getHostTime();
        panoLog(32, "FrameID:%04d time %.3f: assembly commits staging buffer %zu to output\n", intValue, HostTime, v37);
      }

      else
      {
        [v34 addObject:v39];
      }

      v38 = fmaxf(v41, v38);
      *&v42 = v41;
      v45 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
      [v35 addObject:v45];

      if (++v37 >= [*v36 count])
      {
        goto LABEL_12;
      }
    }
  }

  v38 = 0.0;
LABEL_12:
  v46 = v78;
  HIDWORD(v46) = 0;
  v79 = v46;
  v47 = v76;
  HIDWORD(v47) = 0;
  v77 = v47;
  v48 = v74;
  HIDWORD(v48) = 0;
  v75 = v48;
  objc_storeStrong((self + 200), v34);
  v49 = [v35 description];
  v50 = [v49 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

  v51 = ACT_getHostTime();
  panoLog(32, "FrameID:%04d time %.3f: assembly overlaps %s maxOverlap %f _dirtyStagingBuffers.count %lu isLastSlice %d\n", intValue, v51, [v50 UTF8String], v38, objc_msgSend(*v36, "count"), v62 == 2);
  if (v38 <= 0.85 || (v52 = [*v36 count], v62 == 2) || !v52)
  {
    [self _addStagingBuffer];
    v53 = ACT_getHostTime();
    panoLog(32, "FrameID:%04d time %.3f: assembly new staging buffer added\n", intValue, v53);
  }

  v54 = computeCommandEncoder;
  v55 = [self addSliceToProjectiveGrid:computeCommandEncoder atlasHomography:v62 panoHomography:v73 encoder:v72 sliceType:{v71, *&v85, *&v83, *&v81, v79, v77, v75}];
  v31 = v69;
  if (v55)
  {
    v57 = v55;
    v59 = v66;
    v21 = v67;
  }

  else
  {
    lastObject = [*(self + 200) lastObject];
    v57 = [self addSliceToStagingBuffer:lastObject sliceLuma:v69 sliceChroma:v70 sliceMask:v22 sliceGlobalHomography:computeCommandEncoder encoder:{*v65.i64, v64, v63}];

    if (v57)
    {
      v59 = v66;
      v21 = v67;
    }

    else
    {
      lastObject2 = [*v36 lastObject];
      v21 = v67;
      [lastObject2 setMetadata:v67];

      [computeCommandEncoder endEncoding];
      v59 = v66;
      [v66 commit];
    }

    v54 = computeCommandEncoder;
  }

  v60 = v50;
LABEL_21:

  return v57;
}

@end