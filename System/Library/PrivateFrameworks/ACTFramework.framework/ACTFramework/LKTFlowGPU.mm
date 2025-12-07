@interface LKTFlowGPU
+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (LKTFlowGPU)initWithMetalContext:(id)context ICPtransform:(int64_t)ptransform width:(int)width height:(int)height nscales:(int)nscales flowUpperMostScale:(int)scale;
- (LKTFlowGPU)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales;
- (__n64)_parametricTransformToMatrix3x3;
- (double)_matrix3x3ToParametricTransform:(__n128)transform;
- (int)_computeActiveThreadgroupsWithCommandBuffer:(id)buffer;
- (int)_computeFeaturesAndTGSumWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeHomographyWithCommandBuffer:(id)buffer in_tex0:(id)in_tex0 in_tex1:(id)in_tex1 in_tex2:(id)in_tex2 weight_tex:(id)weight_tex regularizer_term:(float)regularizer_term decimation_factor:(unint64_t)decimation_factor scale:(unint64_t)self0 nwarp:(unint64_t)self1;
- (int)_computeICPResiduals:(id)residuals flow:(id)flow;
- (int)_computeICPWeights:(id)weights weights:(id)a4 flow:(id)flow;
- (int)_computeOpticalFlow;
- (int)_computeOpticalFlowBidirectional;
- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_pixelbuf:(__CVBuffer *)in_pixelbuf I_idx:(int)i_idx;
- (int)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex;
- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1;
- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex;
- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints;
- (int)_getICPNWarp:(int)warp scale:(int)scale;
- (int)_initICPWeightsWithCommandBuffer:(id)buffer;
- (int)_initMemory:(int)memory height:(int)height nscales:(int)nscales;
- (int)_initMemoryICP:(int)p;
- (int)_resampleTransformWithCommandBuffer:(id)buffer from:(id)from to:(id)to;
- (int)_setupBuffer;
- (int)_setupBufferDerivatives;
- (int)_setupBufferICP;
- (int)_setupBufferLKT;
- (int)_setupBufferPyramids;
- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex;
- (int)computeKeypointsFromForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints;
- (int)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target;
- (int)estimateFlowStream:(__CVBuffer *)stream;
- (int)setICPWeights:(id)weights;
- (int)setOutputUVForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward;
- (parametric_transform)p;
- (uint64_t)_panoRegistration:(double)registration metadata:(double)metadata;
- (uint64_t)estimatePanoRegistration:(double)registration metadata:(double)metadata initTForm:(uint64_t)form;
- (void)_computeICPThreadgroupsForActivation:(id *)activation;
- (void)_computeICPThreadgroupsForDecimation:(unint64_t)decimation threadsPerThreadgroupForUniform:(id *)uniform threadsPerThreadgroupForPass1:(id *)pass1 threadgroupsPerGridForPass1:(id *)forPass1;
- (void)_computeICPThreadgroupsWithSize:(CGSize)size threadsPerThreadgroupForPass1:(id *)pass1 threadgroupsPerGridForPass1:(id *)forPass1 threadsPerThreadgroupForPass2:(id *)pass2 threadgroupsPerGridForPass2:(id *)forPass2 threadsPerThreadgroupForPass3:(id *)pass3 threadgroupsPerGridForPass3:(id *)forPass3;
- (void)_computeICPThreadgroupsWithSize:(id *)size computePipeline:(id)pipeline threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid debug_string:(char *)debug_string;
- (void)_copyTransfromFromGPU;
- (void)_copyTransfromToGPU;
- (void)_resampleHomography:(id)homography to:(id)to;
- (void)_resampleTransform:(id)transform to:(id)to;
- (void)_resetLoss;
- (void)_setDefaultParameters;
- (void)_setICPRegularizerTerms:(id)terms;
- (void)_setParametricTransformFromGyro:(int *)gyro;
- (void)_setupPipelines;
- (void)dealloc;
- (void)setP:(parametric_transform *)p;
- (void)setPreset:(int64_t)preset;
- (void)setPresetICP:(int64_t)p withRegularizerTerms:(id)terms decimation_factor:(int)decimation_factor;
- (void)waitUntilCompleted;
@end

@implementation LKTFlowGPU

- (void)dealloc
{
  CVPixelBufferRelease(self->_G0_pxbuf);
  CVPixelBufferRelease(self->_G1_pxbuf);
  CVPixelBufferRelease(self->_C0_pxbuf);
  CVPixelBufferRelease(self->_C1_pxbuf);
  CVPixelBufferRelease(self->_w_pxbuf);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[1]);
  v3.receiver = self;
  v3.super_class = LKTFlowGPU;
  [(LKTFlowGPU *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT:waitUntilCompleted"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)setPreset:(int64_t)preset
{
  if (preset > 1)
  {
    switch(preset)
    {
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 5;
        break;
      case 4:
        self->_nwarpings = 6;
        self->_useNonLocalRegularization = 1;
        *&self->_nlreg_radius = 0x200000004;
        *&self->_nlreg_sigma_l = 0x4040000040C00000;
        self->_nlreg_sigma_w = 0.25;
        return;
      default:
LABEL_15:
        v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Invalid parameter" reason:@"Unknown preset" userInfo:{0, v3, v4}];
        objc_exception_throw(v6);
    }

    goto LABEL_11;
  }

  if (preset)
  {
    if (preset != 1)
    {
      goto LABEL_15;
    }

    v5 = 1;
LABEL_11:
    self->_nwarpings = v5;
    self->_useNonLocalRegularization = 0;
    return;
  }

  [(LKTFlowGPU *)self _setDefaultParameters];
}

- (int)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v15 = v7;
  v16 = v6;
  v17 = v5;
  v18 = v4;
  if (self->_streamFrameCount)
  {
    return -12782;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT::Pyramid"];
  [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
  }

  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:reference I_idx:0, v15, v16, v17, v18, v8, v9];
  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:target I_idx:1];
  [commandBuffer commit];

  *&self->_current_frame_index = 0;
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _computeOpticalFlowBidirectional];
  }

  else
  {
    [(LKTFlowGPU *)self _computeOpticalFlow];
  }

  return 0;
}

- (int)estimateFlowStream:(__CVBuffer *)stream
{
  if (!self->_isValid)
  {
    return -12782;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT::Pyramid"];
  [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
  }

  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:stream I_idx:self->_current_frame_index];
  [commandBuffer commit];

  self->_current_frame_index ^= 1u;
  if (self->_streamFrameCount >= 1)
  {
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _computeOpticalFlowBidirectional];
    }

    else
    {
      [(LKTFlowGPU *)self _computeOpticalFlow];
    }
  }

  result = 0;
  ++self->_streamFrameCount;
  return result;
}

- (int)computeKeypointsFromForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints
{
  v8 = *&size;
  v12 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:flow pixelFormat:65 usage:7 plane:0];
  v13 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:backwardFlow pixelFormat:65 usage:7 plane:0];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT::KeypointsFromFlow"];
  *&v15 = error;
  [(LKTFlowGPU *)self _enqueueKeypointsFromFlowWithCommandBuffer:commandBuffer in_uv_fwd_tex:v12 in_uv_bwd_tex:v13 out_kpt_buf:self->_kpt_buf block_size:v8 bidirectional_error:keypoints out_num_keypoints:v15];
  [commandBuffer commit];

  return 0;
}

- (void)_setDefaultParameters
{
  self->_nwarpings = 3;
  self->_useNonLocalRegularization = 0;
  *&self->_nlreg_radius = 0x200000004;
  *&self->_nlreg_sigma_l = 0x4040000040C00000;
  self->_nlreg_sigma_w = 0.25;
}

- (int)_initMemory:(int)memory height:(int)height nscales:(int)nscales
{
  v9 = 0;
  self->_isValid = 0;
  heightCopy = height;
  memoryCopy = memory;
  if (memory >= 8 && height >= 8)
  {
    v9 = 0;
    do
    {
      calculateHalfResolution(&memoryCopy, &heightCopy);
      ++v9;
      if (memoryCopy >= 8)
      {
        v10 = heightCopy >= 7;
        v11 = heightCopy == 7;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    while (!v11 && v10);
  }

  self->_ref_size.width = memory;
  self->_ref_size.height = height;
  self->_aux_size.width = memory;
  self->_aux_size.height = height;
  if (nscales >= 0)
  {
    nscalesCopy = nscales;
  }

  else
  {
    nscalesCopy = v9;
  }

  self->_nscales = nscalesCopy;
  self->_maxThreadExecutionWidth = 0;
  self->_w_pxbuf = 0;
  *&self->_G0_pxbuf = 0u;
  *&self->_C0_pxbuf = 0u;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  result = 0;
  *&self->_current_frame_index = 0;
  *self->_uv_fwd_pxbuf = 0u;
  *self->_uv_bwd_pxbuf = 0u;
  nscales = self->_nscales;
  if (nscales <= v9 && nscales <= 9)
  {
    return -12780;
  }

  return result;
}

- (void)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:off_278BBD848[v3]];
    v6 = [(FigMetalContext *)self->_mtlContext computePipelineStateFor:v5 constants:0];
    objc_storeStrong(computePipelines, v6);
    threadExecutionWidth = [v6 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v6 threadExecutionWidth];
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++computePipelines;
    ++v3;
  }

  while (v3 != 22);
}

- (int)_computeOpticalFlow
{
  nscales = self->_nscales;
  v3 = (nscales - 1);
  if (nscales >= 1)
  {
    commandBuffer = 0;
    v6 = 0;
    I_tex = self->_I_tex;
    G0_tex = self->_G0_tex;
    C0_tex = self->_C0_tex;
    G1_tex = self->_G1_tex;
    p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref;
    C1_tex = self->_C1_tex;
    uv_fwd_tex = self->_uv_fwd_tex;
    w_tex = self->_w_tex;
    I_u32_alias_tex = self->_I_u32_alias_tex;
    uv_fwd_u32_alias_tex = self->_uv_fwd_u32_alias_tex;
    v8 = nscales - 1;
    do
    {
      v9 = commandBuffer;
      v10 = I_tex[self->_current_frame_index][v3];
      v11 = I_tex[self->_current_frame_index ^ 1][v3];
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"LKT:ComputeFlow level %d", v3];
      [commandBuffer setLabel:v12];

      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v10 out_tex:G0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v11 out_tex:G1_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G0_tex[v3] out_tex:C0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G1_tex[v3] out_tex:C1_tex[v3]];
      nwarpings = self->_nwarpings;
      if (nwarpings < 1)
      {
        v15 = 0;
      }

      else
      {
        v26 = v11;
        v27 = v10;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = v14 + 1;
          if (v3 || v16 != nwarpings || (v17 = p_uv_fwd_tex_user_ref, self->_useNonLocalRegularization))
          {
            v17 = &uv_fwd_tex[v6 ^ 1][v3];
          }

          v18 = *v17;
          if (self->_useNonLocalRegularization && v16 == self->_nwarpings)
          {
            v19 = w_tex[v3];

            v15 = v19;
          }

          [(LKTFlowGPU *)self _doSolverWithCommandBuffer:commandBuffer scale:v3 in_uv_tex:uv_fwd_tex[v6][v8] in_G0_tex:G0_tex[v3] in_G1_tex:G1_tex[v3] in_C0_tex:C0_tex[v3] in_C1_tex:C1_tex[v3] out_uv_tex:v18 out_w_tex:v15];
          v6 ^= 1uLL;

          nwarpings = self->_nwarpings;
          ++v14;
          v8 = v3;
        }

        while (v14 < nwarpings);
        v8 = v3;
        v11 = v26;
        v10 = v27;
      }

      if (self->_useNonLocalRegularization)
      {
        v20 = &uv_fwd_tex[v6 ^ 1][v3];
        if (!v3)
        {
          v20 = p_uv_fwd_tex_user_ref;
        }

        [(LKTFlowGPU *)self _doNLRegularizationWithCommandBuffer:commandBuffer in_uv_tex:uv_fwd_u32_alias_tex[v6][v3] join_tex:I_u32_alias_tex[self->_current_frame_index][v3] w_tex:v15 out_uv_tex:*v20];
        v6 ^= 1uLL;
      }

      [commandBuffer commit];
    }

    while (v3-- > 0);
  }

  return 0;
}

- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_pixelbuf:(__CVBuffer *)in_pixelbuf I_idx:(int)i_idx
{
  bufferCopy = buffer;
  inputPixelFormat = self->_inputPixelFormat;
  if (inputPixelFormat)
  {
    if (inputPixelFormat == 2)
    {
      v14 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:in_pixelbuf pixelFormat:10 usage:7 plane:0];
      v15 = self + 80 * i_idx;
      v16 = *(v15 + 66);
      *(v15 + 66) = v14;
    }

    else if (inputPixelFormat == 1)
    {
      v10 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:in_pixelbuf pixelFormat:70 usage:7 plane:0];
      computeCommandEncoder = [bufferCopy computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:self->_computePipelines[0]];
      [computeCommandEncoder setTexture:v10 atIndex:0];
      [computeCommandEncoder setTexture:self->_I_tex[i_idx][0] atIndex:1];
      threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
      v13 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
      v26 = (threadExecutionWidth + [v10 width] - 1) / threadExecutionWidth;
      v27 = (v13 + [v10 height] - 1) / v13;
      v28 = 1;
      v32[0] = threadExecutionWidth;
      v32[1] = v13;
      v32[2] = 1;
      [computeCommandEncoder dispatchThreadgroups:&v26 threadsPerThreadgroup:v32];
      [computeCommandEncoder endEncoding];
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth(in_pixelbuf);
    Height = CVPixelBufferGetHeight(in_pixelbuf);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    CVPixelBufferLockBaseAddress(in_pixelbuf, 0);
    v19 = self->_I_tex[i_idx][0];
    BaseAddress = CVPixelBufferGetBaseAddress(in_pixelbuf);
    v29 = Width;
    v30 = Height;
    v31 = 1;
    [(MTLTexture *)v19 replaceRegion:&v26 mipmapLevel:0 withBytes:BaseAddress bytesPerRow:CVPixelBufferGetBytesPerRow(in_pixelbuf)];
    CVPixelBufferUnlockBaseAddress(in_pixelbuf, 0);
  }

  if (self->_nscales >= 2)
  {
    v21 = &self->_I_tex[i_idx][1];
    v22 = 1;
    do
    {
      v23 = *v21;
      v24 = *(v21 - 1);
      [(LKTFlowGPU *)self _downscale2XWithCommandBuffer:bufferCopy in_tex:v24 out_tex:v23];

      ++v22;
      ++v21;
    }

    while (v22 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex
{
  uv_texCopy = uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[1]];
  [computeCommandEncoder setTexture:uv_texCopy atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
  v9 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v10 = (threadExecutionWidth + [uv_texCopy width] - 1) / threadExecutionWidth;
  LODWORD(self) = [uv_texCopy height];

  v13[0] = v10;
  v13[1] = (v9 + self - 1) / v9;
  v13[2] = 1;
  v12[0] = threadExecutionWidth;
  v12[1] = v9;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];

  [computeCommandEncoder setTexture:out_texCopy atIndex:1];
  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_computePipelines[2] maxTotalThreadsPerThreadgroup]/ buffer;
  v12 = (buffer + [out_texCopy width] - 1) / buffer;
  LODWORD(self) = [out_texCopy height];

  v15[0] = v12;
  v15[1] = (v11 + self - 1) / v11;
  v15[2] = 1;
  v14[0] = buffer;
  v14[1] = v11;
  v14[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[3]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[3] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[3] maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [in_texCopy width] - 1) / buffer;
  LODWORD(self) = [in_texCopy height];

  v14[0] = v11;
  v14[1] = (out_texCopy + self - 1) / out_texCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = out_texCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[5]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[5] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[5] maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [in_texCopy width] - 1) / buffer;
  LODWORD(self) = [in_texCopy height];

  v14[0] = v11;
  v14[1] = (out_texCopy + self - 1) / out_texCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = out_texCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1
{
  out_w_texCopy = out_w_tex;
  out_uv_texCopy = out_uv_tex;
  c1_texCopy = c1_tex;
  c0_texCopy = c0_tex;
  g1_texCopy = g1_tex;
  g0_texCopy = g0_tex;
  in_uv_texCopy = in_uv_tex;
  bufferCopy = buffer;
  LODWORD(buffer) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  v40 = buffer - 1;
  LODWORD(g0_tex) = (buffer - 1 + self->_maxThreadExecutionWidth) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v55[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v54 = _D0;
  [LKTFlowGPU _computeScalingFactor:in_uv_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v54 coeff:v55];
  v48[0] = buffer;
  v48[1] = height;
  g0_texCopy2 = g0_tex;
  v50 = v54;
  v51 = 0;
  v28 = v55;
  v29 = vld1_dup_f32(v28);
  v52 = v29;
  v53 = 0;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[16]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:g0_texCopy atIndex:1];

  [computeCommandEncoder setTexture:g1_texCopy atIndex:2];
  [computeCommandEncoder setTexture:c0_texCopy atIndex:3];

  [computeCommandEncoder setTexture:c1_texCopy atIndex:4];
  [computeCommandEncoder setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_idt_buf offset:0 atIndex:2];
  [computeCommandEncoder setBytes:v48 length:48 atIndex:3];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[16] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[16] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup / g0_texCopy) / (maxTotalThreadsPerThreadgroup / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder endEncoding];

  v32 = bufferCopy;
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[17]];
  [computeCommandEncoder2 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder2 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [computeCommandEncoder2 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [computeCommandEncoder2 setBytes:v48 length:48 atIndex:4];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[17] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_computePipelines[17] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup2 / g0_texCopy) / (maxTotalThreadsPerThreadgroup2 / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup2 / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder2 endEncoding];

  computeCommandEncoder3 = [v32 computeCommandEncoder];

  [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[18]];
  [computeCommandEncoder3 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [computeCommandEncoder3 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [computeCommandEncoder3 setTexture:in_uv_texCopy atIndex:0];

  [computeCommandEncoder3 setTexture:out_uv_texCopy atIndex:1];
  [computeCommandEncoder3 setTexture:out_w_texCopy atIndex:2];

  [computeCommandEncoder3 setBytes:v48 length:48 atIndex:3];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[18] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_computePipelines[18] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup3 / g0_texCopy) / (maxTotalThreadsPerThreadgroup3 / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup3 / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder3 endEncoding];

  return 0;
}

- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex
{
  out_uv_texCopy = out_uv_tex;
  in_uv1_texCopy = in_uv1_tex;
  in_uv0_texCopy = in_uv0_tex;
  bufferCopy = buffer;
  LODWORD(in_uv1_tex) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [LKTFlowGPU _computeScalingFactor:in_uv0_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v37 coeff:&v35];
  [LKTFlowGPU _computeScalingFactor:in_uv1_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = in_uv1_tex;
  v28[1] = height;
  v30 = v37;
  v31 = v36;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[19]];
  [computeCommandEncoder setTexture:in_uv0_texCopy atIndex:0];

  [computeCommandEncoder setTexture:in_uv1_texCopy atIndex:1];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:2];
  [computeCommandEncoder setBytes:v28 length:48 atIndex:0];
  LODWORD(in_uv1_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[19] threadExecutionWidth];
  LODWORD(bufferCopy) = [(MTLComputePipelineState *)self->_computePipelines[19] maxTotalThreadsPerThreadgroup]/ in_uv1_texCopy;
  v24 = (in_uv1_texCopy + [out_uv_texCopy width] - 1) / in_uv1_texCopy;
  LODWORD(self) = [out_uv_texCopy height];

  v27[0] = v24;
  v27[1] = (bufferCopy + self - 1) / bufferCopy;
  v27[2] = 1;
  v26[0] = in_uv1_texCopy;
  v26[1] = bufferCopy;
  v26[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:v26];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex
{
  selfCopy = self;
  v27[1] = 0;
  v27[0] = *&self->_nlreg_radius;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  __asm { FMOV            V1.4S, #1.0 }

  v18 = vdivq_f32(_Q1, vaddq_f32(v7, v7));
  v18.i32[2] = v18.i32[1];
  v28 = v18;
  out_uv_texCopy = out_uv_tex;
  w_texCopy = w_tex;
  join_texCopy = join_tex;
  in_uv_texCopy = in_uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:selfCopy->_computePipelines[21]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:join_texCopy atIndex:1];

  [computeCommandEncoder setTexture:w_texCopy atIndex:2];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:3];

  [computeCommandEncoder setBytes:v27 length:32 atIndex:0];
  LODWORD(out_uv_texCopy) = [(MTLComputePipelineState *)selfCopy->_computePipelines[21] threadExecutionWidth];
  LODWORD(buffer) = [(MTLComputePipelineState *)selfCopy->_computePipelines[21] maxTotalThreadsPerThreadgroup]/ out_uv_texCopy;
  LODWORD(w_texCopy) = (out_uv_texCopy + [in_uv_texCopy width] / 2 - 1) / out_uv_texCopy;
  LODWORD(selfCopy) = [in_uv_texCopy height];

  v26[0] = w_texCopy;
  v26[1] = (buffer + selfCopy / 2 - 1) / buffer;
  v26[2] = 1;
  v25[0] = out_uv_texCopy;
  v25[1] = buffer;
  v25[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v26 threadsPerThreadgroup:v25];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff
{
  v6 = v5;
  v7 = v4;
  scale_xy_invCopy = scale_xy_inv;
  coeffCopy = coeff;
  width = [coeffCopy width];
  v11 = width / [scale_xy_invCopy width];
  height = [coeffCopy height];
  height2 = [scale_xy_invCopy height];
  LODWORD(v14) = 1.5;
  *&v15 = height / height2;
  if (v11 <= 1.5 || *&v15 <= 1.5)
  {
    width2 = [coeffCopy width];
    if (width2 != [scale_xy_invCopy width] || (v18 = objc_msgSend(coeffCopy, "height"), v18 != objc_msgSend(scale_xy_invCopy, "height")))
    {
      sub_23C473FB4();
    }

    __asm { FMOV            V0.2S, #1.0 }

    v24 = 1.0;
  }

  else
  {
    _D0 = 0x3F0000003F000000;
    v24 = 2.0;
  }

  *v6 = v24;
  *v7 = _D0;
}

- (int)setICPWeights:(id)weights
{
  objc_storeStrong(&self->_w_icp_tex_user_ref, weights);
  if (self->_w_icp_tex_user_ref)
  {
    return 0;
  }

  else
  {
    return -12780;
  }
}

- (void)setPresetICP:(int64_t)p withRegularizerTerms:(id)terms decimation_factor:(int)decimation_factor
{
  termsCopy = terms;
  v17 = termsCopy;
  if (p <= 2)
  {
    if (p == 1)
    {
      nscales = self->_nscales;
      v10 = __OFSUB__(nscales, 2);
      v16 = nscales - 2;
      if ((v16 < 0) ^ v10 | (v16 == 0))
      {
        v16 = 0;
      }

      self->_nscales_icp = v16;
      v12 = 1;
      goto LABEL_21;
    }

    if (p != 2)
    {
      goto LABEL_25;
    }

    v13 = self->_nscales;
    v10 = __OFSUB__(v13, 2);
    v14 = v13 - 2;
    if ((v14 < 0) ^ v10 | (v14 == 0))
    {
      v14 = 0;
    }

    goto LABEL_15;
  }

  switch(p)
  {
    case 3:
      v14 = self->_nscales;
LABEL_15:
      self->_nscales_icp = v14;
      v12 = 2;
LABEL_21:
      self->_warping_scheme_icp = v12;
      goto LABEL_22;
    case 4:
      self->_nscales_icp = self->_nscales;
      v12 = 4;
      goto LABEL_21;
    case 5:
      v9 = self->_nscales;
      v10 = __OFSUB__(v9, 2);
      v11 = v9 - 2;
      if ((v11 < 0) ^ v10 | (v11 == 0))
      {
        v11 = 0;
      }

      self->_nscales_icp = v11;
      v12 = 1000;
      goto LABEL_21;
  }

LABEL_25:
  [(LKTFlowGPU *)self _setDefaultParameters];
  termsCopy = v17;
LABEL_22:
  [(LKTFlowGPU *)self _setICPRegularizerTerms:termsCopy];
  self->_decimation_factor_icp = decimation_factor;
}

- (uint64_t)estimatePanoRegistration:(double)registration metadata:(double)metadata initTForm:(uint64_t)form
{
  v9 = a7;
  if (*(self + 2168) == 1)
  {
    commandBuffer = [*(self + 16) commandBuffer];
    [commandBuffer setLabel:@"LKT::Pyramid"];
    [self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:*(self + 8 * *(self + 2176) + 1352)];
    [self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:a6 I_idx:*(self + 2000)];
    [commandBuffer commit];

    *(self + 2000) ^= 1u;
    if (*(self + 2004) < 1)
    {
      commandBuffer2 = [*(self + 16) commandBuffer];
      [commandBuffer2 setLabel:@"ICP::Init weights"];
      [self _initICPWeightsWithCommandBuffer:commandBuffer2];
      [commandBuffer2 commit];
      [self _setParametricTransformFromGyro:{a2, registration, metadata}];
      [self _resetLoss];
    }

    else
    {
      [self _panoRegistration:v9 metadata:{a2, registration, metadata}];
    }

    v11 = 0;
    ++*(self + 2004);
  }

  else
  {
    v11 = 4294954514;
  }

  return v11;
}

- (int)_initMemoryICP:(int)p
{
  self->_flow_upper_most_scale = p;
  icp_reduc_buf = self->_icp_reduc_buf;
  self->_icp_reduc_buf = 0;

  w_icp_tex_user_ref = self->_w_icp_tex_user_ref;
  self->_w_icp_tex_user_ref = 0;

  *&self->_icp_regularizer_term[8] = 0;
  *self->_icp_regularizer_term = 0u;
  *&self->_icp_regularizer_term[4] = 0u;
  return 0;
}

- (int)_setupBufferPyramids
{
  if (self->_nscales >= 1)
  {
    v3 = 0;
    v22 = vmovn_s64(vcvtq_s64_f64(self->_aux_size));
    v20 = vmovn_s64(vcvtq_s64_f64(self->_ref_size));
    aux_pyr_size = self->_aux_pyr_size;
    I_tex = self->_I_tex;
    do
    {
      v6.i64[0] = v20.i32[0];
      v6.i64[1] = v20.i32[1];
      aux_pyr_size[-10] = vcvtq_f64_s64(v6);
      v6.i64[0] = v22.i32[0];
      v6.i64[1] = v22.i32[1];
      *aux_pyr_size++ = vcvtq_f64_s64(v6);
      v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v20.i32[0] height:v20.i32[1] mipmapped:0, *&v20];
      [v7 setUsage:19];
      device = [(FigMetalContext *)self->_mtlContext device];
      v9 = [device newTextureWithDescriptor:v7];
      v10 = (*I_tex)[0];
      (*I_tex)[0] = v9;

      v11 = [(MTLTexture *)(*I_tex)[0] newTextureViewWithPixelFormat:53];
      v12 = (*I_tex)[20];
      (*I_tex)[20] = v11;

      v20 = calculateHalfResolutionWithVector2(v21).n64_u64[0];
      v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v22.i32[0] height:v22.i32[1] mipmapped:0];
      [v13 setUsage:19];
      device2 = [(FigMetalContext *)self->_mtlContext device];
      v15 = [device2 newTextureWithDescriptor:v13];
      v16 = (*I_tex)[10];
      (*I_tex)[10] = v15;

      v17 = [(MTLTexture *)(*I_tex)[10] newTextureViewWithPixelFormat:53];
      v18 = (*I_tex)[30];
      (*I_tex)[30] = v17;

      v22 = calculateHalfResolutionWithVector2(*&v22).n64_u64[0];
      ++v3;
      I_tex = (I_tex + 8);
    }

    while (v3 < self->_nscales);
  }

  return 0;
}

- (void)_setICPRegularizerTerms:(id)terms
{
  termsCopy = terms;
  if ([termsCopy count] > 0xA)
  {
    v4 = 10;
  }

  else
  {
    v4 = [termsCopy count];
  }

  nscales_icp = self->_nscales_icp;
  if (v4 < nscales_icp)
  {
    if ([termsCopy count] > 0xA)
    {
      v6 = termsCopy;
      if (!termsCopy)
      {
        goto LABEL_15;
      }

      nscales_icp = 10;
      goto LABEL_11;
    }

    nscales_icp = [termsCopy count];
  }

  v6 = termsCopy;
  if (!termsCopy)
  {
    goto LABEL_15;
  }

  if (!nscales_icp)
  {
    goto LABEL_14;
  }

LABEL_11:
  for (i = 0; i != nscales_icp; ++i)
  {
    v8 = [termsCopy objectAtIndexedSubscript:i];
    [v8 floatValue];
    self->_icp_regularizer_term[i] = v9;

    v6 = termsCopy;
  }

  if (nscales_icp <= 9)
  {
LABEL_14:
    bzero(&self->_icp_regularizer_term[nscales_icp], 40 - 4 * nscales_icp);
    v6 = termsCopy;
  }

LABEL_15:
}

- (int)_initICPWeightsWithCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[11]];
  [computeCommandEncoder setTexture:self->_w_icp_tex_user_ref atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[11] threadExecutionWidth];
  v6 = [(MTLComputePipelineState *)self->_computePipelines[11] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v7 = threadExecutionWidth + [(MTLTexture *)self->_w_icp_tex_user_ref width]- 1;
  w_icp_tex_user_ref = self->_w_icp_tex_user_ref;
  v11[0] = v7 / threadExecutionWidth;
  v11[1] = (v6 + [(MTLTexture *)w_icp_tex_user_ref height]- 1) / v6;
  v11[2] = 1;
  v10[0] = threadExecutionWidth;
  v10[1] = v6;
  v10[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v11 threadsPerThreadgroup:v10];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeFeaturesAndTGSumWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[4]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  [computeCommandEncoder setTexture:self->_w_icp_tex_user_ref atIndex:2];
  [computeCommandEncoder setTexture:self->_icp_derivatives_tg_sum atIndex:3];
  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[4] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[4] maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [in_texCopy width] - 1) / buffer;
  LODWORD(self) = [in_texCopy height];

  v14[0] = v11;
  v14[1] = (out_texCopy + self - 1) / out_texCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = out_texCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_resampleTransformWithCommandBuffer:(id)buffer from:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v16[0] = [fromCopy width];
  LODWORD(buffer) = [fromCopy height];

  v16[1] = buffer;
  v16[2] = [toCopy width];
  LODWORD(buffer) = [toCopy height];

  v16[3] = buffer;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[10]];
  [computeCommandEncoder setBuffer:self->_icp_param_tform_buf offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v16 length:96 atIndex:1];
  v14 = vdupq_n_s64(1uLL);
  v15 = 1;
  v12 = v14;
  v13 = 1;
  [computeCommandEncoder dispatchThreads:&v14 threadsPerThreadgroup:&v12];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)_computeICPThreadgroupsWithSize:(id *)size computePipeline:(id)pipeline threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid debug_string:(char *)debug_string
{
  var0 = size->var0;
  var1 = size->var1;
  pipelineCopy = pipeline;
  threadExecutionWidth = [pipelineCopy threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [pipelineCopy maxTotalThreadsPerThreadgroup];

  v14 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  if (threadgroup)
  {
    threadgroup->var0 = threadExecutionWidth;
    threadgroup->var1 = v14;
    threadgroup->var2 = 1;
  }

  if (grid)
  {
    grid->var0 = (var0 + threadExecutionWidth - 1) / threadExecutionWidth;
    grid->var1 = (var1 + v14 - 1) / v14;
    grid->var2 = 1;
  }
}

- (void)_computeICPThreadgroupsForDecimation:(unint64_t)decimation threadsPerThreadgroupForUniform:(id *)uniform threadsPerThreadgroupForPass1:(id *)pass1 threadgroupsPerGridForPass1:(id *)forPass1
{
  if (decimation)
  {
    if (forPass1)
    {
      forPass1->var1 /= decimation;
    }

    if (uniform)
    {
      if (pass1)
      {
        *&uniform->var0 = *&pass1->var0;
      }
    }
  }

  else if (uniform)
  {
    uniform->var0 = 0;
    uniform->var1 = 0;
  }
}

- (void)_computeICPThreadgroupsForActivation:(id *)activation
{
  if (activation)
  {
    activation->var0 = [(MTLTexture *)self->_icp_derivatives_tg_sum width]>> 1;
    activation->var1 = [(MTLTexture *)self->_icp_derivatives_tg_sum height]>> 1;
    activation->var2 = 1;
  }
}

- (int)_getICPNWarp:(int)warp scale:(int)scale
{
  if (scale < 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (warp == 1000)
  {
    return v4;
  }

  else
  {
    return warp;
  }
}

- (uint64_t)_panoRegistration:(double)registration metadata:(double)metadata
{
  v7 = a6;
  [self _setParametricTransformFromGyro:{a2, registration, metadata}];
  [self _copyTransfromToGPU];
  v8 = *(self + 2176);
  v9 = (v8 - 1);
  if (v8 >= 1)
  {
    v45 = v7;
    v10 = 0;
    v11 = 0;
    v12 = self + 864;
    v13 = self + 944;
    v58 = self + 1040;
    v49 = self + 1120;
    v50 = self + 528;
    v56 = self + 2008;
    v62 = self + 1360;
    v55 = self + 1248;
    v46 = self + 688;
    v47 = self + 1680;
    selfCopy = self;
    v48 = self + 2104;
    v64 = v8 - 1;
    v59 = self + 864;
    v52 = self + 944;
    do
    {
      v14 = *(v50 + 80 * *(selfCopy + 2000) + 8 * v9);
      v57 = *(v50 + 80 * (*(selfCopy + 2000) ^ 1) + 8 * v9);
      commandBuffer = [*(selfCopy + 16) commandBuffer];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Panorama:panoRegistration level %d", v9];
      [commandBuffer setLabel:v16];

      if (v9 || (v17 = *(selfCopy + 2192), !v17))
      {
        [selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v14 out_tex:*(v12 + 8 * v9)];
        v51 = 0;
        v17 = 0;
      }

      else
      {
        [selfCopy _computeFeaturesAndTGSumWithCommandBuffer:commandBuffer in_tex:v14 out_tex:*(selfCopy + 864)];
        v51 = 1;
      }

      [selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v57 out_tex:*(v13 + 8 * v9)];
      [selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:*(v12 + 8 * v9) out_tex:*(v58 + 8 * v9)];
      [selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:*(v13 + 8 * v9) out_tex:*(v49 + 8 * v9)];
      v18 = selfCopy;
      v54 = v14;
      if (v9 >= *(selfCopy + 2196))
      {
        v20 = *(selfCopy + 2180);
        if (v20 < 1)
        {
          v60 = 0;
        }

        else
        {
          v21 = 0;
          v60 = 0;
          do
          {
            if (v21 + 1 != v20 || v9 != *(v18 + 2196) || (v22 = v56, *(v18 + 2169) == 1))
            {
              v22 = (v62 + 80 * (v11 ^ 1) + 8 * v9);
            }

            v23 = *v22;
            if (*(selfCopy + 2169) == 1 && v21 + 1 == *(selfCopy + 2180))
            {
              v24 = *(v55 + 8 * v9);

              v60 = v24;
            }

            [selfCopy _doSolverWithCommandBuffer:commandBuffer scale:v9 in_uv_tex:*(v62 + 80 * v11 + 8 * v64) in_G0_tex:*(v59 + 8 * v9) in_G1_tex:*(v13 + 8 * v9) in_C0_tex:*(v58 + 8 * v9) in_C1_tex:*(v49 + 8 * v9) out_uv_tex:v23 out_w_tex:v60];
            v11 ^= 1uLL;

            v18 = selfCopy;
            v20 = *(selfCopy + 2180);
            ++v21;
            v64 = v9;
          }

          while (v21 < v20);
          v64 = v9;
        }

        if (*(v18 + 2169))
        {
          v25 = v11 ^ 1;
          v26 = v56;
          if (v9 != *(v18 + 2196))
          {
            v26 = (v62 + 80 * (v11 ^ 1) + 8 * v9);
          }

          v27 = *(v47 + 80 * v11 + 8 * v9);
          v19 = commandBuffer;
          [selfCopy _doNLRegularizationWithCommandBuffer:commandBuffer in_uv_tex:v27 join_tex:*(v46 + 80 * *(v18 + 2000) + 8 * v9) w_tex:v60 out_uv_tex:*v26];
          v18 = selfCopy;
          v53 = v25;
        }

        else
        {
          v53 = v11;
          v19 = commandBuffer;
        }
      }

      else
      {
        v53 = v11;
        v19 = commandBuffer;
        v60 = 0;
      }

      v28 = *(v18 + 2184);
      v29 = v59;
      v30 = v52;
      if (v9 < v28)
      {
        if (v9 < v28 - 1)
        {
          v31 = (v50 + 80 * *(selfCopy + 2000) + 8 * v9);
          [selfCopy _resampleTransformWithCommandBuffer:v19 from:v31[1] to:*v31];
        }

        v32 = v51 ^ 1;
        if (v9)
        {
          v32 = 1;
        }

        v33 = selfCopy;
        if ((v32 & 1) == 0)
        {
          [selfCopy _computeActiveThreadgroupsWithCommandBuffer:v19];
          v33 = selfCopy;
        }

        v34 = [v33 _getICPNWarp:*(v33 + 2188) scale:v9];
        v29 = v59;
        v30 = v52;
        if (v34 >= 1)
        {
          v36 = (v34 + 1);
          v37 = 1;
          do
          {
            v38 = *(v30 + 8 * v9);
            LODWORD(v35) = *(v48 + 4 * v9);
            v39 = v30;
            v40 = v29;
            [v33 _computeHomographyWithCommandBuffer:v19 in_tex0:*(v29 + 8 * v9) in_tex1:v38 in_tex2:*(v58 + 8 * v9) weight_tex:*(v33 + 2144) regularizer_term:v17 decimation_factor:v35 scale:v9 nwarp:v37];
            v29 = v40;
            v30 = v39;
            ++v37;
          }

          while (v36 != v37);
        }
      }

      v12 = v29;
      [v19 commit];

      v41 = v9-- <= 0;
      v13 = v30;
      v10 = v19;
      v11 = v53;
    }

    while (!v41);

    v7 = v45;
    self = selfCopy;
  }

  commandBuffer2 = [*(self + 16) commandBuffer];
  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fang weights and residuals"];
  [commandBuffer2 setLabel:v43];

  [self _computeICPWeights:commandBuffer2 weights:*(self + 2144) flow:*(self + 2008)];
  [self _computeICPResiduals:commandBuffer2 flow:*(self + 2008)];
  [commandBuffer2 commit];
  [commandBuffer2 waitUntilCompleted];
  [self _copyTransfromFromGPU];

  return 0;
}

- (int)_computeICPWeights:(id)weights weights:(id)a4 flow:(id)flow
{
  v40[1] = *MEMORY[0x277D85DE8];
  v40[0] = 0x4220000041200000;
  if (self->_flow_upper_most_scale >= 1)
  {
    v40[0] = 0x41A0000040A00000;
  }

  flowCopy = flow;
  v9 = a4;
  weightsCopy = weights;
  computeCommandEncoder = [weightsCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[12]];
  [computeCommandEncoder setTexture:v9 atIndex:0];
  [computeCommandEncoder setTexture:flowCopy atIndex:1];

  [computeCommandEncoder setBuffer:self->_icp_param_tform_extra_buf offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v40 length:8 atIndex:1];
  LODWORD(flowCopy) = [(MTLComputePipelineState *)self->_computePipelines[12] threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)self->_computePipelines[12] maxTotalThreadsPerThreadgroup]/ flowCopy;
  v33 = (flowCopy + [v9 width] - 1) / flowCopy;
  v34 = (v12 + [v9 height] - 1) / v12;
  v35 = 1;
  v38.i64[0] = flowCopy;
  v38.i64[1] = v12;
  v39 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v33 threadsPerThreadgroup:&v38];
  [computeCommandEncoder endEncoding];
  v33 = 256;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v37 = _Q0;
  v18 = objc_alloc(MEMORY[0x277CD7530]);
  device = [(FigMetalContext *)self->_mtlContext device];
  v20 = [v18 initWithDevice:device histogramInfo:&v33];

  v21 = [v20 histogramSizeForSourceFormat:objc_msgSend(v9, "pixelFormat")];
  device2 = [(FigMetalContext *)self->_mtlContext device];
  v23 = [device2 newBufferWithLength:v21 options:0];

  [v20 encodeToCommandBuffer:weightsCopy sourceTexture:v9 histogram:v23 histogramOffset:0];
  device3 = [(FigMetalContext *)self->_mtlContext device];
  v25 = [device3 newBufferWithLength:4 options:0];

  computeCommandEncoder2 = [weightsCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[13]];
  [computeCommandEncoder2 setBuffer:v23 offset:0 atIndex:0];
  [computeCommandEncoder2 setBytes:&v33 length:8 atIndex:1];
  [computeCommandEncoder2 setBuffer:v25 offset:0 atIndex:2];
  v38 = vdupq_n_s64(1uLL);
  v39 = 1;
  v31 = v38;
  v32 = 1;
  [computeCommandEncoder2 dispatchThreads:&v38 threadsPerThreadgroup:&v31];
  [computeCommandEncoder2 endEncoding];
  computeCommandEncoder3 = [weightsCopy computeCommandEncoder];

  [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[14]];
  [computeCommandEncoder3 setTexture:v9 atIndex:0];
  [computeCommandEncoder3 setBuffer:v25 offset:0 atIndex:0];
  LODWORD(weightsCopy) = [(MTLComputePipelineState *)self->_computePipelines[14] threadExecutionWidth];
  LODWORD(computeCommandEncoder2) = [(MTLComputePipelineState *)self->_computePipelines[14] maxTotalThreadsPerThreadgroup]/ weightsCopy;
  v28 = (weightsCopy + [v9 width] - 1) / weightsCopy;
  height = [v9 height];

  v38.i64[0] = v28;
  v38.i64[1] = (computeCommandEncoder2 + height - 1) / computeCommandEncoder2;
  v39 = 1;
  v31.i64[0] = weightsCopy;
  v31.i64[1] = computeCommandEncoder2;
  v32 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v31];
  [computeCommandEncoder3 endEncoding];

  return 0;
}

- (int)_computeICPResiduals:(id)residuals flow:(id)flow
{
  flowCopy = flow;
  computeCommandEncoder = [residuals computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[15]];
  [computeCommandEncoder setTexture:flowCopy atIndex:0];
  [computeCommandEncoder setBuffer:self->_icp_param_tform_extra_buf offset:0 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[15] threadExecutionWidth];
  v9 = [(MTLComputePipelineState *)self->_computePipelines[15] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v10 = (threadExecutionWidth + [flowCopy width] - 1) / threadExecutionWidth;
  LODWORD(self) = [flowCopy height];

  v13[0] = v10;
  v13[1] = (v9 + self - 1) / v9;
  v13[2] = 1;
  v12[0] = threadExecutionWidth;
  v12[1] = v9;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeActiveThreadgroupsWithCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  v11 = 0uLL;
  v12 = 0;
  [(LKTFlowGPU *)self _computeICPThreadgroupsForActivation:&v11];
  memset(v10, 0, sizeof(v10));
  LODWORD(v10[0]) = self->_decimation_factor_icp;
  DWORD2(v10[0]) = v11;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[8]];
  [computeCommandEncoder setTexture:self->_icp_derivatives_tg_sum atIndex:0];
  [computeCommandEncoder setTexture:self->_icp_active_tg_indices_tex atIndex:1];
  [computeCommandEncoder setBytes:v10 length:96 atIndex:0];
  v8 = vdupq_n_s64(1uLL);
  v9 = 1;
  v6 = v11;
  v7 = v12;
  [computeCommandEncoder dispatchThreadgroups:&v8 threadsPerThreadgroup:&v6];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeHomographyWithCommandBuffer:(id)buffer in_tex0:(id)in_tex0 in_tex1:(id)in_tex1 in_tex2:(id)in_tex2 weight_tex:(id)weight_tex regularizer_term:(float)regularizer_term decimation_factor:(unint64_t)decimation_factor scale:(unint64_t)self0 nwarp:(unint64_t)self1
{
  in_tex0Copy = in_tex0;
  weight_texCopy = weight_tex;
  in_tex2Copy = in_tex2;
  in_tex1Copy = in_tex1;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v63 = 0uLL;
  v64 = 0;
  v61 = 0uLL;
  v62 = 0;
  v59 = 0uLL;
  v60 = 0;
  v57 = 0uLL;
  v58 = 0;
  v55 = 0uLL;
  v56 = 0;
  v53 = 0uLL;
  v54 = 0;
  -[LKTFlowGPU _computeICPThreadgroupsWithSize:threadsPerThreadgroupForPass1:threadgroupsPerGridForPass1:threadsPerThreadgroupForPass2:threadgroupsPerGridForPass2:threadsPerThreadgroupForPass3:threadgroupsPerGridForPass3:](self, "_computeICPThreadgroupsWithSize:threadsPerThreadgroupForPass1:threadgroupsPerGridForPass1:threadsPerThreadgroupForPass2:threadgroupsPerGridForPass2:threadsPerThreadgroupForPass3:threadgroupsPerGridForPass3:", &v63, &v61, &v59, &v57, &v55, &v53, [in_tex0Copy width], objc_msgSend(in_tex0Copy, "height"));
  v51 = 0uLL;
  v52 = 0;
  [(LKTFlowGPU *)self _computeICPThreadgroupsForDecimation:decimation_factor threadsPerThreadgroupForUniform:&v51 threadsPerThreadgroupForPass1:&v63 threadgroupsPerGridForPass1:&v61];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *&v46[8] = 0u;
  v45[0] = [in_tex0Copy width];
  v45[1] = [in_tex0Copy height];
  *v46 = vuzp1q_s32(v61, v51);
  v27 = *(MEMORY[0x277D860B0] + 16);
  v28 = *MEMORY[0x277D860B0];
  v47 = *MEMORY[0x277D860B0];
  v48 = v27;
  v26 = *(MEMORY[0x277D860B0] + 32);
  v49 = v26;
  LODWORD(v50) = 0;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[6]];
  [computeCommandEncoder setTexture:in_tex0Copy atIndex:0];
  [computeCommandEncoder setTexture:in_tex1Copy atIndex:1];

  [computeCommandEncoder setTexture:in_tex2Copy atIndex:2];
  [computeCommandEncoder setTexture:weight_texCopy atIndex:3];

  [computeCommandEncoder setTexture:self->_icp_active_tg_indices_tex atIndex:4];
  [computeCommandEncoder setBuffer:self->_icp_reduc_buf offset:0 atIndex:0];
  [computeCommandEncoder setBytes:v45 length:96 atIndex:1];
  [computeCommandEncoder setBuffer:self->_icp_param_tform_buf offset:0 atIndex:2];
  [computeCommandEncoder setThreadgroupMemoryLength:1024 atIndex:0];
  v39 = v61;
  v40.i64[0] = v62;
  v31 = v63;
  *&v32 = v64;
  [computeCommandEncoder dispatchThreadgroups:&v39 threadsPerThreadgroup:&v31];
  v23 = 0uLL;
  if (v61.i64[1] * v61.i64[0] >= 2uLL)
  {
    v39 = vuzp1q_s32(v61, v57);
    v40 = 0uLL;
    v40.i32[1] = 0;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = 0uLL;
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[7]];
    [computeCommandEncoder setBuffer:self->_icp_reduc_buf offset:0 atIndex:0];
    [computeCommandEncoder setBytes:&v39 length:96 atIndex:1];
    [computeCommandEncoder setThreadgroupMemoryLength:5120 atIndex:0];
    [computeCommandEncoder setThreadgroupMemoryLength:1024 atIndex:1];
    v31 = v57;
    *&v32 = v58;
    v37 = v59;
    v38 = v60;
    [computeCommandEncoder dispatchThreadgroups:&v31 threadsPerThreadgroup:&v37];
    if (v57.i64[1] * v57.i64[0] >= 2uLL)
    {
      v31 = vuzp1q_s32(v57, v53);
      v32 = 0u;
      DWORD1(v32) = 0;
      v33 = v28;
      v34 = v27;
      v35 = v26;
      v36 = 0u;
      [computeCommandEncoder setComputePipelineState:self->_computePipelines[7]];
      [computeCommandEncoder setBuffer:self->_icp_reduc_buf offset:0 atIndex:0];
      [computeCommandEncoder setBytes:&v31 length:96 atIndex:1];
      [computeCommandEncoder setThreadgroupMemoryLength:5120 atIndex:0];
      [computeCommandEncoder setThreadgroupMemoryLength:1024 atIndex:1];
      v37 = v53;
      v38 = v54;
      v29 = v55;
      v30 = v56;
      [computeCommandEncoder dispatchThreadgroups:&v37 threadsPerThreadgroup:&v29];
    }

    v23 = 0uLL;
  }

  v43 = v23;
  v44 = v23;
  v41 = v23;
  v42 = v23;
  v39 = v23;
  v40 = v23;
  width = [in_tex0Copy width];
  *v44.i32 = ([in_tex0Copy height] * width) * regularizer_term;
  LOWORD(v29) = scale;
  WORD1(v29) = nwarp - 1;
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[9]];
  [computeCommandEncoder setBuffer:self->_icp_reduc_buf offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_icp_param_tform_buf offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_icp_param_tform_extra_buf offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_icp_loss_buf offset:0 atIndex:3];
  [computeCommandEncoder setBytes:&v39 length:96 atIndex:4];
  [computeCommandEncoder setBytes:&self->_flow_upper_most_scale length:4 atIndex:5];
  [computeCommandEncoder setBytes:&v29 length:4 atIndex:6];
  v31 = vdupq_n_s64(1uLL);
  *&v32 = 1;
  v37 = v31;
  v38 = 1;
  [computeCommandEncoder dispatchThreads:&v31 threadsPerThreadgroup:&v37];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)_setParametricTransformFromGyro:(int *)gyro
{
  result = [gyro _matrix3x3ToParametricTransform:?];
  if (gyro[546] >= 2)
  {
    v3 = 0;
    do
    {
      v4 = &gyro[20 * gyro[500] + 2 * v3++];
      result = [gyro _resampleTransform:*(v4 + 66) to:*(v4 + 67)];
    }

    while (v3 < gyro[546] - 1);
  }

  return result;
}

- (double)_matrix3x3ToParametricTransform:(__n128)transform
{
  v4 = 0;
  v12 = a2;
  transformCopy = transform;
  v14 = a4;
  do
  {
    v5 = 0;
    v6 = &v12.n128_u64[2 * v4];
    v7 = *v6;
    do
    {
      v11 = v7;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) = *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) / v14.n128_f32[2];
      v7 = v11;
      *(v6 + 2) = DWORD2(v11);
      *v6 = v7;
      ++v5;
    }

    while (v5 != 3);
    ++v4;
  }

  while (v4 != 3);
  if (*(self + 2064) == 8)
  {
    v8 = v12;
    v9 = transformCopy;
    *(self + 2032) = v12.n128_f32[0] + -1.0;
    *(self + 2036) = vext_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL), 4uLL);
    *(self + 2044) = v9.n128_u32[0];
    *(self + 2048) = v9.n128_f32[1] + -1.0;
    *(self + 2052) = v9.n128_u32[2];
    *&v7 = v14.n128_u64[0];
    *(self + 2056) = v14.n128_u64[0];
  }

  *&result = v7;
  return result;
}

- (__n64)_parametricTransformToMatrix3x3
{
  if (*(self + 2064) == 8)
  {
    result.n64_f32[0] = *(self + 2032) + 1.0;
    result.n64_u32[1] = *(self + 2036);
    __asm { FMOV            V2.4S, #1.0 }
  }

  else
  {
    return 1065353216;
  }

  return result;
}

- (void)_resampleTransform:(id)transform to:(id)to
{
  if (self->_p.length_params == 8)
  {
    MEMORY[0x2821F9670](self, sel__resampleHomography_to_);
  }
}

- (void)_resampleHomography:(id)homography to:(id)to
{
  toCopy = to;
  homographyCopy = homography;
  width = [toCopy width];
  v18 = width / [homographyCopy width];
  height = [toCopy height];

  height2 = [homographyCopy height];
  v11.f32[0] = height2;
  self->_p.params[2] = v18 * self->_p.params[2];
  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = height;
  v11.f32[1] = v18;
  v17 = vdiv_f32(_D1, v11);
  *&self->_p.params[5] = vmul_f32(v17, *&self->_p.params[5]);
  self->_p.params[7] = (1.0 / v17.f32[0]) * self->_p.params[7];
}

- (void)_copyTransfromFromGPU
{
  contents = [(MTLBuffer *)self->_icp_param_tform_buf contents];
  length_params = self->_p.length_params;
  if (length_params >= 1)
  {
    p_p = &self->_p;
    do
    {
      v6 = *contents++;
      p_p->params[0] = v6;
      p_p = (p_p + 4);
      --length_params;
    }

    while (length_params);
  }
}

- (void)_copyTransfromToGPU
{
  contents = [(MTLBuffer *)self->_icp_param_tform_buf contents];
  length_params = self->_p.length_params;
  if (length_params >= 1)
  {
    p_p = &self->_p;
    do
    {
      v6 = p_p->params[0];
      p_p = (p_p + 4);
      *contents++ = v6;
      --length_params;
    }

    while (length_params);
  }
}

- (void)_resetLoss
{
  contents = [(MTLBuffer *)self->_icp_loss_buf contents];
  *contents = 0u;
  *(contents + 16) = 0u;
  *(contents + 32) = 0u;
  *(contents + 48) = 0u;
  *(contents + 64) = 0u;
  *(contents + 80) = 0u;
  *(contents + 96) = 0u;
  *(contents + 112) = 0u;
  *(contents + 128) = 0u;
  *(contents + 144) = 0u;
  *(contents + 160) = 0;
}

- (CGSize)ref_size
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aux_size
{
  width = self->_aux_size.width;
  height = self->_aux_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (parametric_transform)p
{
  v3 = *&self[56].length_params;
  *retstr->params = *&self[56].params[4];
  *&retstr->params[4] = v3;
  retstr->length_params = LODWORD(self[57].params[3]);
  return self;
}

- (void)setP:(parametric_transform *)p
{
  v3 = *p->params;
  v4 = *&p->params[4];
  self->_p.length_params = p->length_params;
  *&self->_p.params[4] = v4;
  *self->_p.params = v3;
}

- (LKTFlowGPU)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales
{
  v6 = *&nscales;
  v7 = *&height;
  v8 = *&width;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = LKTFlowGPU;
  v12 = [(LKTFlowGPU *)&v18 init];
  v13 = v12;
  if (!v12 || ((v7 | v8) & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    objc_storeStrong(&v12->_mtlContext, context);
    commandQueue = [contextCopy commandQueue];
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = commandQueue;

    [(LKTFlowGPU *)v13 _setDefaultParameters];
    [(LKTFlowGPU *)v13 _initMemory:v8 height:v7 nscales:v6];
    [(LKTFlowGPU *)v13 _setupPipelines];
    [(LKTFlowGPU *)v13 _setupBuffer];
    v16 = v13;
  }

  return v16;
}

- (int)setOutputUVForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward
{
  if (forward)
  {
    CVPixelBufferGetWidth(forward);
    CVPixelBufferGetHeight(forward);
    v7 = sub_23C45F99C();
    v9 = [v8 bindPixelBufferToMTL2DTexture:v7 pixelFormat:? usage:? textureSize:? plane:?];
    uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = v9;

    if (!self->_uv_fwd_tex_user_ref)
    {
      return -12786;
    }

    if (backward)
    {
      v11 = sub_23C45F99C();
      v13 = [v12 bindPixelBufferToMTL2DTexture:v11 pixelFormat:? usage:? textureSize:? plane:?];
      uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = v13;

      if (!self->_uv_bwd_tex_user_ref)
      {
        return -12786;
      }
    }

    else
    {
      v17 = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = 0;
    }

    result = 0;
    self->_isValid = 1;
  }

  else
  {
    v16 = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = 0;

    return 0;
  }

  return result;
}

- (int)_setupBuffer
{
  v3 = sub_23C45FA30(self);
  v5 = *(v4 + 200);
  v6 = *(v4 + 2232);
  v88 = v3;
  v7 = sub_23C45F9F4(v3, v6);
  *(v2 + 848) = v7;
  if (v7)
  {
    v8 = sub_23C45F9C4();
    *(v2 + 856) = v8;
    if (v8)
    {
      v9 = sub_23C45C4E8(v3, v6, 0x52476841u);
      *(v2 + 1024) = v9;
      if (v9)
      {
        v10 = sub_23C45FA5C();
        *(v2 + 1032) = v10;
        if (v10)
        {
          v11 = sub_23C45C4E8(v3, v6, 0x4C303068u);
          *(v2 + 1240) = v11;
          if (v11)
          {
            v12 = 0;
            v13 = (v3 + v5 - 1) / v5 * v5 * v6;
            v14 = 8 * v13;
            v15 = v2 + 1200;
            v85 = v13;
            v16 = 2 * v13;
            v17 = v2 + 1216;
            v18 = 1;
            while (1)
            {
              v19 = v18;
              device = [*(v2 + 8) device];
              v21 = [device newBufferWithLength:v14 options:0];
              v22 = *(v15 + 8 * v12);
              *(v15 + 8 * v12) = v21;

              if (!*(v15 + 8 * v12))
              {
                break;
              }

              device2 = [*(v2 + 8) device];
              v24 = [device2 newBufferWithLength:v16 options:0];
              v25 = *(v17 + 8 * v12);
              *(v17 + 8 * v12) = v24;

              if (!*(v17 + 8 * v12))
              {
                break;
              }

              v26 = sub_23C45F9F4(v88, v6);
              *(v2 + 1328 + 8 * v12) = v26;
              if (!v26)
              {
                break;
              }

              v18 = 0;
              v12 = 1;
              if ((v19 & 1) == 0)
              {
                device3 = [*(v2 + 8) device];
                v28 = [device3 newBufferWithLength:4 * v85 options:0];
                v29 = *(v2 + 1232);
                *(v2 + 1232) = v28;

                if (!*(v2 + 1232))
                {
                  return -12786;
                }

                if (*(v2 + 2176) < 1)
                {
                  return 0;
                }

                v30 = 0;
                v31 = vmovn_s64(vcvtq_s64_f64(*(v2 + 2240)));
                v80 = v2 + 528;
                v81 = v2 + 1248;
                v32 = vmovn_s64(vcvtq_s64_f64(*(v2 + 2224)));
                v78 = v2 + 608;
                v79 = v2 + 688;
                v77 = v2 + 768;
LABEL_14:
                v84 = v32.i32[0];
                v86 = *&v32;
                v89 = *&v31;
                v33 = v32.u32[1];
                v34 = v31.i32[0];
                v35 = v31.i32[1];
                v36 = (v2 + 208 + 16 * v30);
                *v36 = v32.i32[0];
                v36[1] = v32.i32[1];
                v37 = (v2 + 368 + 16 * v30);
                *v37 = v31.i32[0];
                v37[1] = v31.i32[1];
                v38 = sub_23C45F99C();
                v40 = [v39 bindPixelBufferToMTL2DTexture:v38 pixelFormat:? usage:? textureSize:? plane:?];
                sub_23C45FA0C(v40);
                if (*(v2 + 864 + 8 * v30))
                {
                  v41 = sub_23C45F9B0();
                  v43 = [v42 bindPixelBufferToMTL2DTexture:v41 pixelFormat:? usage:? textureSize:? plane:?];
                  sub_23C45FA0C(v43);
                  if (*(v2 + 944 + 8 * v30))
                  {
                    v44 = sub_23C45F99C();
                    v46 = [v45 bindPixelBufferToMTL2DTexture:v44 pixelFormat:? usage:? textureSize:? plane:?];
                    sub_23C45FA0C(v46);
                    if (*(v2 + 1040 + 8 * v30))
                    {
                      v47 = sub_23C45F9B0();
                      v49 = [v48 bindPixelBufferToMTL2DTexture:v47 pixelFormat:? usage:? textureSize:? plane:?];
                      sub_23C45FA0C(v49);
                      if (*(v2 + 1120 + 8 * v30))
                      {
                        v82 = v35;
                        v83 = v34;
                        v50 = sub_23C45F99C();
                        v52 = [v51 bindPixelBufferToMTL2DTexture:v50 pixelFormat:? usage:? textureSize:? plane:?];
                        v53 = *(v81 + 8 * v30);
                        *(v81 + 8 * v30) = v52;

                        v54 = 0;
                        v55 = 1;
                        while (1)
                        {
                          v56 = v55;
                          v57 = sub_23C45F99C();
                          v59 = [v58 bindPixelBufferToMTL2DTexture:v57 pixelFormat:? usage:? textureSize:? plane:?];
                          sub_23C45FA0C(v59);
                          v60 = *(v2 + 1360 + 80 * v54 + 8 * v30);
                          if (!v60)
                          {
                            break;
                          }

                          v61 = [v60 newTextureViewWithPixelFormat:53];
                          v62 = v2 + 1680 + 80 * v54;
                          v63 = *(v62 + 8 * v30);
                          *(v62 + 8 * v30) = v61;

                          v55 = 0;
                          v54 = 1;
                          if ((v56 & 1) == 0)
                          {
                            v64 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v84 height:v33 mipmapped:0];
                            [v64 setUsage:19];
                            [*(v2 + 8) device];
                            objc_claimAutoreleasedReturnValue();
                            sub_23C45FA24();
                            v66 = [v65 newTextureWithDescriptor:?];
                            v67 = *(v80 + 8 * v30);
                            *(v80 + 8 * v30) = v66;

                            v68 = [*(v80 + 8 * v30) newTextureViewWithPixelFormat:53];
                            v69 = *(v79 + 8 * v30);
                            *(v79 + 8 * v30) = v68;

                            v87 = calculateHalfResolutionWithVector2(v86).n64_u64[0];
                            v70 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v83 height:v82 mipmapped:0];
                            [v70 setUsage:19];
                            [*(v2 + 8) device];
                            objc_claimAutoreleasedReturnValue();
                            sub_23C45FA24();
                            v72 = [v71 newTextureWithDescriptor:?];
                            v73 = *(v78 + 8 * v30);
                            *(v78 + 8 * v30) = v72;

                            v74 = [*(v78 + 8 * v30) newTextureViewWithPixelFormat:53];
                            v75 = *(v77 + 8 * v30);
                            *(v77 + 8 * v30) = v74;

                            v90 = calculateHalfResolutionWithVector2(v89).n64_u64[0];
                            v32 = v87;
                            v31 = v90;
                            if (++v30 < *(v2 + 2176))
                            {
                              goto LABEL_14;
                            }

                            return 0;
                          }
                        }
                      }
                    }
                  }
                }

                return -12786;
              }
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_computeOpticalFlowBidirectional
{
  selfCopy = self;
  v3 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v55 = self->_uv_fwd_tex[0][v3];
  uv_bwd_tex = selfCopy->_uv_bwd_tex;
  v4 = selfCopy->_uv_bwd_tex[0][v3];
  if (selfCopy->_uv_bwd_tex_user_ref)
  {
    nscales = selfCopy->_nscales;
    if (nscales < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      I_tex = selfCopy->_I_tex;
      G1_tex = selfCopy->_G1_tex;
      G0_tex = selfCopy->_G0_tex;
      C1_tex = selfCopy->_C1_tex;
      C0_tex = selfCopy->_C0_tex;
      p_uv_fwd_tex_user_ref = &selfCopy->_uv_fwd_tex_user_ref;
      p_uv_bwd_tex_user_ref = &selfCopy->_uv_bwd_tex_user_ref;
      v36 = selfCopy->_uv_bwd_tex[1];
      v43 = v3;
      v42 = v3;
      do
      {
        v8 = v6;
        v35 = nscales;
        v9 = nscales - 1;
        v10 = I_tex[selfCopy->_current_frame_index][v9];
        v11 = I_tex[selfCopy->_current_frame_index ^ 1][v9];
        commandBuffer = [(MTLCommandQueue *)selfCopy->_commandQueue commandBuffer];

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"LKT:ComputeFlow level %d", v9];
        [commandBuffer setLabel:v13];

        v34 = v10;
        [(LKTFlowGPU *)selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v10 out_tex:G0_tex[v9]];
        v33 = v11;
        [(LKTFlowGPU *)selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v11 out_tex:G1_tex[v9]];
        [(LKTFlowGPU *)selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G0_tex[v9] out_tex:C0_tex[v9]];
        v49 = commandBuffer;
        [(LKTFlowGPU *)selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G1_tex[v9] out_tex:C1_tex[v9]];
        v48 = v9;
        if (selfCopy->_nwarpings >= 1)
        {
          v14 = 0;
          v40 = &(*uv_bwd_tex)[v9];
          do
          {
            if ((v14 + 1))
            {
              v15 = v48;
              v53 = G0_tex[v48];
              v52 = G1_tex[v48];
              v51 = C0_tex[v48];
              v16 = C1_tex[v48];
              v26 = uv_fwd_tex[v7];
              v17 = v26[v43];
              v54 = v7 ^ 1;
              v18 = uv_fwd_tex[v7 ^ 1][v48];
              if (v48)
              {
                v27 = 1;
              }

              else
              {
                v27 = v14 + 3 <= selfCopy->_nwarpings;
              }

              v28 = &v26[v48];
              if (!v27)
              {
                v28 = p_uv_fwd_tex_user_ref;
              }

              v29 = *v28;
              v22 = selfCopy;
              v23 = v4;
              v24 = v29;

              v25 = v24;
              v43 = v48;
              v50 = v23;
            }

            else
            {
              v15 = v48;
              v53 = G1_tex[v48];
              v52 = G0_tex[v48];
              v51 = C1_tex[v48];
              v16 = C0_tex[v48];
              v17 = (*uv_bwd_tex)[v42];
              v18 = v36[v48];
              if (v48)
              {
                v19 = 1;
              }

              else
              {
                v19 = v14 + 3 <= selfCopy->_nwarpings;
              }

              v20 = p_uv_bwd_tex_user_ref;
              if (v19)
              {
                v20 = v40;
              }

              v21 = *v20;
              v22 = selfCopy;
              v23 = v55;
              v24 = v21;

              v54 = v7 ^ 1;
              v50 = v24;
              v42 = v48;
              v25 = v23;
            }

            v55 = v25;
            [(LKTFlowGPU *)v22 _enqueueFlowConsistencyWithCommandBuffer:v49 in_uv0_tex:v23 in_uv1_tex:v17 out_uv_tex:v18];
            [(LKTFlowGPU *)v22 _doSolverWithCommandBuffer:v49 scale:v15 in_uv_tex:v18 in_G0_tex:v53 in_G1_tex:v52 in_C0_tex:v51 in_C1_tex:v16 out_uv_tex:v24 out_w_tex:0];

            ++v14;
            v4 = v50;
            selfCopy = v22;
            v7 = v54;
          }

          while (v14 < v22->_nwarpings);
        }

        v6 = v49;
        [v49 commit];

        nscales = v48;
      }

      while (v35 > 1);
    }

    v30 = 0;
  }

  else
  {
    v6 = 0;
    v30 = -12780;
  }

  return v30;
}

- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints
{
  in_uv_fwd_texCopy = in_uv_fwd_tex;
  in_uv_bwd_texCopy = in_uv_bwd_tex;
  out_kpt_bufCopy = out_kpt_buf;
  bufferCopy = buffer;
  v20 = [in_uv_fwd_texCopy width] / block_size;
  v21 = [in_uv_fwd_texCopy height] / block_size;
  block_sizeCopy = block_size;
  v31 = v21;
  v30 = v20;
  v32 = LODWORD(bidirectional_error);
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  if (v21 * v20 > 0x8000)
  {
    v25 = -12780;
  }

  else
  {
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[20]];
    [computeCommandEncoder setTexture:in_uv_fwd_texCopy atIndex:0];
    [computeCommandEncoder setTexture:in_uv_bwd_texCopy atIndex:1];
    [computeCommandEncoder setBuffer:out_kpt_bufCopy offset:0 atIndex:0];
    [computeCommandEncoder setBytes:&block_sizeCopy length:16 atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[20] threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[20] maxTotalThreadsPerThreadgroup];
    v28[0] = (v20 + threadExecutionWidth - 1) / threadExecutionWidth;
    v28[1] = (v21 + maxTotalThreadsPerThreadgroup / threadExecutionWidth - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
    v28[2] = 1;
    v27[0] = threadExecutionWidth;
    v27[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v27[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v28 threadsPerThreadgroup:v27];
    [computeCommandEncoder endEncoding];
    v25 = 0;
    *out_num_keypoints = v21 * v20;
  }

  return v25;
}

- (LKTFlowGPU)initWithMetalContext:(id)context ICPtransform:(int64_t)ptransform width:(int)width height:(int)height nscales:(int)nscales flowUpperMostScale:(int)scale
{
  v8 = *&scale;
  v9 = *&nscales;
  v10 = *&height;
  v11 = *&width;
  ptransformCopy = ptransform;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = LKTFlowGPU;
  v16 = [(LKTFlowGPU *)&v22 init];
  v17 = v16;
  if (!v16 || ((v10 | v11) & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    objc_storeStrong(&v16->_mtlContext, context);
    commandQueue = [contextCopy commandQueue];
    commandQueue = v17->_commandQueue;
    v17->_commandQueue = commandQueue;

    v17->_p.length_params = ptransformCopy;
    [(LKTFlowGPU *)v17 _setDefaultParameters];
    [(LKTFlowGPU *)v17 _initMemory:v11 height:v10 nscales:v9];
    [(LKTFlowGPU *)v17 _setDefaultParametersICP];
    [(LKTFlowGPU *)v17 _initMemoryICP:v8];
    [(LKTFlowGPU *)v17 _setupPipelines];
    [(LKTFlowGPU *)v17 _setupBufferPyramids];
    [(LKTFlowGPU *)v17 _setupBufferDerivatives];
    [(LKTFlowGPU *)v17 _setupBufferLKT];
    [(LKTFlowGPU *)v17 _setupBufferICP];
    v20 = v17;
  }

  return v20;
}

- (int)_setupBufferDerivatives
{
  v4 = sub_23C45FA30(self);
  v5 = *(v3 + 2232);
  v6 = sub_23C45F9F4(v4, v5);
  *(v2 + 848) = v6;
  if (v6)
  {
    v7 = sub_23C45F9C4();
    *(v2 + 856) = v7;
    if (v7)
    {
      v8 = sub_23C45C4E8(v4, v5, 0x52476841u);
      *(v2 + 1024) = v8;
      if (v8)
      {
        v9 = sub_23C45FA5C();
        *(v2 + 1032) = v9;
        if (v9)
        {
          if (*(v2 + 2176) < 1)
          {
            return 0;
          }

          v10 = 0;
          v11 = (v2 + 1120);
          for (i = v2 + 376; ; i += 16)
          {
            v13 = sub_23C45F9B0();
            v15 = [v14 bindPixelBufferToMTL2DTexture:v13 pixelFormat:? usage:? textureSize:? plane:?];
            v16 = *(v11 - 32);
            *(v11 - 32) = v15;

            if (!*(v11 - 32))
            {
              break;
            }

            v17 = sub_23C45F99C();
            v19 = [v18 bindPixelBufferToMTL2DTexture:v17 pixelFormat:? usage:? textureSize:? plane:?];
            v20 = *(v11 - 22);
            *(v11 - 22) = v19;

            if (!*(v11 - 22))
            {
              break;
            }

            v21 = sub_23C45F9B0();
            v23 = [v22 bindPixelBufferToMTL2DTexture:v21 pixelFormat:? usage:? textureSize:? plane:?];
            v24 = *(v11 - 10);
            *(v11 - 10) = v23;

            if (!*(v11 - 10))
            {
              break;
            }

            v25 = sub_23C45F99C();
            v27 = [v26 bindPixelBufferToMTL2DTexture:v25 pixelFormat:? usage:? textureSize:? plane:?];
            v28 = *v11;
            *v11 = v27;

            if (!*v11)
            {
              break;
            }

            ++v10;
            ++v11;
            if (v10 >= *(v2 + 2176))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupBufferLKT
{
  v3 = sub_23C45FA30(self);
  v44 = *(v4 + 2232);
  v45 = v3;
  if (*(v4 + 2196) >= 1)
  {
    calculateHalfResolution(&v45, &v44);
    v3 = v45;
  }

  v5 = *(v2 + 200);
  if (*(v2 + 2169) != 1 || (v6 = sub_23C45C4E8(v3, v44, 0x4C303068u), (*(v2 + 1240) = v6) != 0))
  {
    v7 = 0;
    v8 = (v5 + v3 - 1) / v5 * v5;
    v9 = v2 + 1200;
    v10 = v2 + 1216;
    v11 = v2 + 1328;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      device = [*(v2 + 8) device];
      v15 = [device newBufferWithLength:8 * v8 * v44 options:0];
      v16 = *(v9 + 8 * v7);
      *(v9 + 8 * v7) = v15;

      if (!*(v9 + 8 * v7))
      {
        break;
      }

      device2 = [*(v2 + 8) device];
      v18 = [device2 newBufferWithLength:2 * v8 * v44 options:0];
      v19 = *(v10 + 8 * v7);
      *(v10 + 8 * v7) = v18;

      if (!*(v10 + 8 * v7))
      {
        break;
      }

      v20 = sub_23C45F9F4(v45, v44);
      *(v11 + 8 * v7) = v20;
      if (!v20)
      {
        break;
      }

      v12 = 0;
      v7 = 1;
      if ((v13 & 1) == 0)
      {
        device3 = [*(v2 + 8) device];
        v22 = [device3 newBufferWithLength:4 * v8 * v44 options:0];
        v23 = *(v2 + 1232);
        *(v2 + 1232) = v22;

        if (!*(v2 + 1232))
        {
          return -12786;
        }

        v24 = *(v2 + 2196);
        if (v24 >= *(v2 + 2176))
        {
          return 0;
        }

        v25 = v2 + 1248;
LABEL_13:
        v26 = (v2 + 208 + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
        if (*(v2 + 2169))
        {
          v29 = sub_23C45F99C();
          v31 = [v30 bindPixelBufferToMTL2DTexture:v29 pixelFormat:? usage:? textureSize:? plane:?];
          v32 = *(v25 + 8 * v24);
          *(v25 + 8 * v24) = v31;
        }

        v33 = 0;
        v34 = 1;
        while (1)
        {
          v35 = v34;
          v36 = [*(v2 + 8) bindPixelBufferToMTL2DTexture:*(v11 + 8 * v33) pixelFormat:65 usage:23 textureSize:0 plane:v27, v28];
          v37 = v2 + 1360 + 80 * v33;
          v38 = *(v37 + 8 * v24);
          *(v37 + 8 * v24) = v36;

          v39 = *(v37 + 8 * v24);
          if (!v39)
          {
            return -12786;
          }

          v40 = [v39 newTextureViewWithPixelFormat:53];
          v41 = v2 + 1680 + 80 * v33;
          v42 = *(v41 + 8 * v24);
          *(v41 + 8 * v24) = v40;

          v34 = 0;
          v33 = 1;
          if ((v35 & 1) == 0)
          {
            if (++v24 < *(v2 + 2176))
            {
              goto LABEL_13;
            }

            return 0;
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupBufferICP
{
  v4 = sub_23C45FA30(self);
  v6 = v5[279];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  memset(v32, 0, sizeof(v32));
  [v5 _computeICPThreadgroupsWithSize:0 threadsPerThreadgroupForPass1:&v33 threadgroupsPerGridForPass1:0 threadsPerThreadgroupForPass2:v32 threadgroupsPerGridForPass2:0 threadsPerThreadgroupForPass3:0 threadgroupsPerGridForPass3:{v4, v6}];
  if ((192 * v33 * v34) <= 0x7D0)
  {
    v7 = 2000;
  }

  else
  {
    v7 = 192 * v33 * v34;
  }

  [*(v2 + 8) device];
  objc_claimAutoreleasedReturnValue();
  sub_23C45FA24();
  v9 = [v8 newBufferWithLength:? options:?];
  v10 = *(v2 + 2096);
  *(v2 + 2096) = v9;

  if (!*(v2 + 2096) || ([*(v2 + 8) device], v11 = objc_claimAutoreleasedReturnValue(), v13 = sub_23C45FA3C(v11, v12), v14 = *(v2 + 2072), *(v2 + 2072) = v13, v14, v7, !*(v2 + 2072)) || (objc_msgSend(*(v2 + 8), "device"), v15 = objc_claimAutoreleasedReturnValue(), v17 = sub_23C45FA3C(v15, v16), v18 = *(v2 + 2080), *(v2 + 2080) = v17, v18, v7, !*(v2 + 2080)))
  {
    v19 = 0;
    goto LABEL_14;
  }

  v19 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:v33 height:v34 mipmapped:0];
  [v19 setUsage:3];
  [*(v2 + 8) device];
  objc_claimAutoreleasedReturnValue();
  sub_23C45FA24();
  v21 = [v20 newTextureWithDescriptor:?];
  v22 = *(v2 + 2152);
  *(v2 + 2152) = v21;

  if (!*(v2 + 2152))
  {
LABEL_14:
    v30 = -12786;
    goto LABEL_12;
  }

  [v2 _computeICPThreadgroupsForDecimation:2 threadsPerThreadgroupForUniform:0 threadsPerThreadgroupForPass1:0 threadgroupsPerGridForPass1:&v33];
  v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:63 width:v33 height:v34 mipmapped:0];

  [v23 setUsage:3];
  device = [*(v2 + 8) device];
  v25 = [device newTextureWithDescriptor:v23];
  v26 = *(v2 + 2160);
  *(v2 + 2160) = v25;

  if (*(v2 + 2160) && ([*(v2 + 8) device], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "newBufferWithLength:options:", 168, 0), v29 = *(v2 + 2088), *(v2 + 2088) = v28, v29, v27, *(v2 + 2088)))
  {
    v30 = 0;
  }

  else
  {
    v30 = -12786;
  }

  v19 = v23;
LABEL_12:

  return v30;
}

- (void)_computeICPThreadgroupsWithSize:(CGSize)size threadsPerThreadgroupForPass1:(id *)pass1 threadgroupsPerGridForPass1:(id *)forPass1 threadsPerThreadgroupForPass2:(id *)pass2 threadgroupsPerGridForPass2:(id *)forPass2 threadsPerThreadgroupForPass3:(id *)pass3 threadgroupsPerGridForPass3:(id *)forPass3
{
  v16 = self->_computePipelines[6];
  *&v19 = size.width;
  *(&v19 + 1) = size.height;
  var2 = 1;
  [(LKTFlowGPU *)self _computeICPThreadgroupsWithSize:&v19 computePipeline:v16 threadsPerThreadgroup:pass1 threadgroupsPerGrid:forPass1 debug_string:"pass1"];
  if (!pass1 || pass1->var0 == 32 && pass1->var1 == 32)
  {
    v17 = self->_computePipelines[7];
    v19 = *&forPass1->var0;
    var2 = forPass1->var2;
    [(LKTFlowGPU *)self _computeICPThreadgroupsWithSize:&v19 computePipeline:v17 threadsPerThreadgroup:pass2 threadgroupsPerGrid:forPass2 debug_string:"pass2"];
    v18 = self->_computePipelines[7];
    v19 = *&forPass2->var0;
    var2 = forPass2->var2;
    [(LKTFlowGPU *)self _computeICPThreadgroupsWithSize:&v19 computePipeline:v18 threadsPerThreadgroup:pass3 threadgroupsPerGrid:forPass3 debug_string:"pass3"];
  }
}

@end