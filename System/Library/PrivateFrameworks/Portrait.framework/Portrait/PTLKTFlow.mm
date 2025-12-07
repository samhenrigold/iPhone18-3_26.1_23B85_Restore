@interface PTLKTFlow
+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (PTLKTFlow)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales;
- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data metalContext:(id)context;
- (int)_computeFeatures:(id)features in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesDerivatives:(id)derivatives in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeOpticalFlow:(id)flow computeFeatureI0:(BOOL)i0 computeFeatureI1:(BOOL)i1;
- (int)_computeOpticalFlowBidirectional:(id)bidirectional;
- (int)_createImagePyramid:(id)pyramid in_tex:(id)in_tex I_idx:(int)i_idx;
- (int)_doNLRegularization:(id)regularization in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex;
- (int)_doSolver:(id)solver scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1;
- (int)_downscale2X:(id)x in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFlowConsistency:(id)consistency in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex;
- (int)_enqueueKeypointsFromFlow:(id)flow in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints;
- (int)_initMemory:(int)memory height:(int)height nscales:(int)nscales;
- (int)_setupBuffer:(id)buffer;
- (int)_setupPipelines:(id)pipelines;
- (int)_zeroFlow:(id)flow uv_tex:(id)uv_tex;
- (int)computeKeypointsFromTexForwardFlow:(id)flow backwardFlow:(id)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints commandBuffer:(id)buffer;
- (int)estimateFlowFromTexReference:(id)reference target:(id)target commandBuffer:(id)buffer;
- (int)estimateFlowStreamTex:(id)tex commandBuffer:(id)buffer;
- (int)estimateFlowStreamTex:(id)tex index:(int)index doOpticalFlow:(BOOL)flow commandBuffer:(id)buffer;
- (int)setOutputTexUVForward:(id)forward backward:(id)backward;
- (void)_setDefaultParameters;
- (void)setPreset:(int64_t)preset;
@end

@implementation PTLKTFlow

- (PTLKTFlow)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales
{
  v6 = *&nscales;
  v7 = *&height;
  v8 = *&width;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = PTLKTFlow;
  v11 = [(PTLKTFlow *)&v21 init];
  v12 = v11;
  if (!v11)
  {
LABEL_7:
    v12 = v12;
    v18 = v12;
    goto LABEL_11;
  }

  if (((v7 | v8) & 1) == 0)
  {
    [(PTLKTFlow *)v11 _setDefaultParameters];
    v13 = [(PTLKTFlow *)v12 _initMemory:v8 height:v7 nscales:v6];
    v14 = [(PTLKTFlow *)v12 _setupPipelines:contextCopy]| v13;
    v15 = v14 | [(PTLKTFlow *)v12 _setupBuffer:contextCopy];
    reset = [(PTLKTFlow *)v12 reset];
    if (v15)
    {
      v17 = _PTLogSystem(reset);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow initWithMetalContext:width:height:nscales:];
      }

      v12 = 0;
    }

    goto LABEL_7;
  }

  v19 = _PTLogSystem(v11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow initWithMetalContext:width:height:nscales:];
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data metalContext:(id)context
{
  contextCopy = context;
  v10 = contextCopy;
  v11 = format - 62;
  if (format - 62 <= 0x3F)
  {
    if (((1 << v11) & 0xF00C1F0FLL) != 0)
    {
LABEL_13:
      v12 = 4;
      goto LABEL_14;
    }

    if (((1 << v11) & 0x3D0E0000000000) != 0)
    {
      v12 = 8;
      goto LABEL_14;
    }

    if (((1 << v11) & 0xE000000000000000) != 0)
    {
      v12 = 16;
      goto LABEL_14;
    }
  }

  if (format <= 0x3C)
  {
    if (((1 << format) & 0x80743D00000) != 0)
    {
      v12 = 2;
      goto LABEL_14;
    }

    if (((1 << format) & 0x7402) != 0)
    {
      v12 = 1;
      goto LABEL_14;
    }

    if (((1 << format) & 0x10E0000000000000) != 0)
    {
      goto LABEL_13;
    }
  }

  v19 = _PTLogSystem(contextCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow newBufferWithPixelFormat:width:data:metalContext:];
  }

  v12 = 0;
LABEL_14:
  v13 = v12 * width;
  v14 = objc_msgSend_device(v10);
  v15 = v14;
  if (data)
  {
    v16 = [v14 newBufferWithBytes:data length:v13 options:0];
  }

  else
  {
    v16 = [v14 newBufferWithLength:v13 options:0];
  }

  v17 = v16;

  return v17;
}

- (void)setPreset:(int64_t)preset
{
  if (preset > 1)
  {
    switch(preset)
    {
      case 2:
        v4 = 3;
        break;
      case 3:
        v4 = 5;
        break;
      case 4:
        self->_nwarpings = 6;
        self->_useNonLocalRegularization = 1;
        *&self->_nlreg_radius = 0x200000004;
        *&self->_nlreg_sigma_l = 0x4040000040C00000;
        self->_nlreg_sigma_w = 0.25;
        return;
      default:
        goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (preset)
  {
    if (preset != 1)
    {
LABEL_15:
      v5 = _PTLogSystem(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow setPreset:];
      }

      return;
    }

    v4 = 1;
LABEL_11:
    self->_nwarpings = v4;
    self->_useNonLocalRegularization = 0;
    return;
  }

  [(PTLKTFlow *)self _setDefaultParameters];
}

- (int)setOutputTexUVForward:(id)forward backward:(id)backward
{
  forwardCopy = forward;
  backwardCopy = backward;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = forwardCopy;
  v9 = forwardCopy;

  uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
  self->_uv_bwd_tex_user_ref = backwardCopy;

  self->_isValid = v9 != 0;
  return 0;
}

- (int)estimateFlowFromTexReference:(id)reference target:(id)target commandBuffer:(id)buffer
{
  referenceCopy = reference;
  targetCopy = target;
  bufferCopy = buffer;
  v11 = bufferCopy;
  if (self->_isValid && !self->_streamFrameCount)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:referenceCopy I_idx:0];
    [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:targetCopy I_idx:1];
    *&self->_current_frame_index = 0;
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }

    [computeCommandEncoder endEncoding];

    v12 = 0;
  }

  else
  {
    v12 = -12782;
  }

  return v12;
}

- (int)estimateFlowStreamTex:(id)tex index:(int)index doOpticalFlow:(BOOL)flow commandBuffer:(id)buffer
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v21 = v10;
  v22 = v9;
  v23 = v8;
  v24 = v7;
  v25 = v6;
  flowCopy = flow;
  texCopy = tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:texCopy I_idx:self->_isInverse ^ index];

  *&self->_current_frame_index = index ^ 1u;
  if (flowCopy)
  {
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  else
  {
    self->_indexUpdated[index] = 0;
  }

  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)estimateFlowStreamTex:(id)tex commandBuffer:(id)buffer
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v18 = v6;
  v19 = v5;
  v20 = v4;
  texCopy = tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (self->_streamFrameCount >= 0)
  {
    v14 = self->_streamFrameCount & 1;
  }

  else
  {
    v14 = -(self->_streamFrameCount & 1);
  }

  [(PTLKTFlow *)self _createImagePyramid:computeCommandEncoder in_tex:texCopy I_idx:v14 ^ self->_isInverse, v7, v18, v19, v20, v8, v9];

  streamFrameCount = self->_streamFrameCount;
  self->_streamFrameCount = streamFrameCount + 1;
  v16 = (streamFrameCount + 1) & 1;
  if (streamFrameCount < -1)
  {
    v16 = -v16;
  }

  self->_current_frame_index = v16;
  if (streamFrameCount >= 1)
  {
    [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_w_tex[self->_nscales + 9]];
    if ([(PTLKTFlow *)self isBidirectional])
    {
      [(PTLKTFlow *)self _zeroFlow:computeCommandEncoder uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
      [(PTLKTFlow *)self _computeOpticalFlowBidirectional:computeCommandEncoder];
    }

    else
    {
      [(PTLKTFlow *)self _computeOpticalFlow:computeCommandEncoder computeFeatureI0:1 computeFeatureI1:1];
    }
  }

  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)computeKeypointsFromTexForwardFlow:(id)flow backwardFlow:(id)backwardFlow bidirectionalError:(float)error blockSize:(int)size outNumKeypoints:(unsigned __int16 *)keypoints commandBuffer:(id)buffer
{
  v10 = *&size;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  computeCommandEncoder = [buffer computeCommandEncoder];
  *&v17 = error;
  [(PTLKTFlow *)self _enqueueKeypointsFromFlow:computeCommandEncoder in_uv_fwd_tex:flowCopy in_uv_bwd_tex:backwardFlowCopy out_kpt_buf:self->_kpt_buf block_size:v10 bidirectional_error:keypoints out_num_keypoints:v17];

  [computeCommandEncoder endEncoding];
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
  v6 = 0;
  self->_isValid = 0;
  if (memory >= 8 && height >= 8)
  {
    v6 = 0;
    heightCopy = height;
    memoryCopy = memory;
    do
    {
      v9 = (memoryCopy & 1) + memoryCopy;
      if (v9 / 2 >= 0)
      {
        v10 = (v9 / 2) & 1;
      }

      else
      {
        v10 = -((v9 / 2) & 1);
      }

      v11 = (heightCopy & 1) + heightCopy;
      if (v11 / 2 >= 0)
      {
        v12 = (v11 / 2) & 1;
      }

      else
      {
        v12 = -((v11 / 2) & 1);
      }

      v13 = v9 + 2 * v10 + 1;
      memoryCopy = v13 >> 1;
      v14 = v11 + 2 * v12 + 1;
      heightCopy = v14 >> 1;
      ++v6;
    }

    while (v13 >= 16 && v14 > 15);
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
    nscalesCopy = v6;
  }

  self->_nscales = nscalesCopy;
  self->_maxThreadExecutionWidth = 0;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  *&self->_current_frame_index = 0;
  nscales = self->_nscales;
  if (nscales <= v6 && nscales < 10)
  {
    return 0;
  }

  v21 = _PTLogSystem(v18);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow _initMemory:height:nscales:];
  }

  return -1;
}

- (int)_setupPipelines:(id)pipelines
{
  pipelinesCopy = pipelines;
  v5 = 0;
  computePipelines = self->_computePipelines;
  while (1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:kKernelNames[v5]];
    v8 = [pipelinesCopy computePipelineStateFor:v7 withConstants:0];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    objc_storeStrong(computePipelines, v8);
    threadExecutionWidth = [v9 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v9 threadExecutionWidth];
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++computePipelines;
    if (++v5 == 12)
    {
      v12 = 0;
      goto LABEL_10;
    }
  }

  v13 = _PTLogSystem(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(PTLKTFlow *)v13 _setupPipelines:v14, v15, v16, v17, v18, v19, v20];
  }

  v12 = -1;
LABEL_10:

  return v12;
}

- (int)_setupBuffer:(id)buffer
{
  v135 = *MEMORY[0x277D85DE8];
  p_ref_size = &self->_ref_size;
  bufferCopy = buffer;
  v6 = 0;
  v7 = (self->_ref_size.width + LODWORD(self->_maxThreadExecutionWidth) - 1) / SLODWORD(self->_maxThreadExecutionWidth) * LODWORD(self->_maxThreadExecutionWidth) * self->_ref_size.height;
  Adiagb_buf = self->_Adiagb_buf;
  selfCopy = self;
  Ixy_buf = self->_Ixy_buf;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = objc_msgSend_device(bufferCopy);
    v13 = [v12 newBufferWithLength:8 * v7 options:0];
    v14 = Adiagb_buf[v6];
    Adiagb_buf[v6] = v13;

    if (!Adiagb_buf[v6])
    {
      break;
    }

    v16 = objc_msgSend_device(bufferCopy);
    v17 = [v16 newBufferWithLength:2 * v7 options:0];
    v18 = Ixy_buf[v6];
    Ixy_buf[v6] = v17;

    if (!Ixy_buf[v6])
    {
      kpt_buf = _PTLogSystem(v19);
      if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
      {
        [PTLKTFlow _setupBuffer:];
      }

      v26 = -2;
      goto LABEL_80;
    }

    v10 = 0;
    v6 = 1;
    if ((v11 & 1) == 0)
    {
      v20 = objc_msgSend_device(bufferCopy);
      v21 = [v20 newBufferWithLength:4 * v7 options:0];
      v22 = selfCopy;
      idt_buf = selfCopy->_idt_buf;
      selfCopy->_idt_buf = v21;

      if (selfCopy->_idt_buf)
      {
        if (selfCopy->_nscales < 1)
        {
          v26 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          G1_tex = selfCopy->_G1_tex;
          G0_tex = selfCopy->_G0_tex;
          C1_tex = selfCopy->_C1_tex;
          C0_tex = selfCopy->_C0_tex;
          v27 = vmovn_s64(vcvtq_s64_f64(p_ref_size[1]));
          w_tex = selfCopy->_w_tex;
          v28 = vcvtq_s64_f64(*p_ref_size);
          v29 = vmovn_s64(v28);
          I_u32_alias_tex = selfCopy->_I_u32_alias_tex;
          I_tex = selfCopy->_I_tex;
          v114 = selfCopy->_I_u32_alias_tex[1];
          v115 = selfCopy->_I_tex[1];
          v30 = 0x277CD7000uLL;
          v28.i64[0] = 67109120;
          v113 = v28;
          do
          {
            v128 = v27;
            v31.i64[0] = v29.i32[0];
            v31.i64[1] = v29.i32[1];
            selfCopy->_ref_pyr_size[v25] = vcvtq_f64_s64(v31);
            v31.i64[0] = v27.i32[0];
            v31.i64[1] = v27.i32[1];
            selfCopy->_aux_pyr_size[v25] = vcvtq_f64_s64(v31);
            v32 = v29.u32[1];
            v126 = v29.u32[0];
            v33 = [*(v30 + 88) texture2DDescriptorWithPixelFormat:65 width:*&v113 height:? mipmapped:?];
            if ([bufferCopy supportsFamily:1007])
            {
              v34 = 0;
            }

            else
            {
              v34 = 32;
            }

            [v33 setResourceOptions:v34];
            [v33 setUsage:3];
            v35 = objc_msgSend_device(bufferCopy);
            v36 = [v35 newTextureWithDescriptor:v33];
            v37 = G0_tex[v25];
            G0_tex[v25] = v36;

            if (!G0_tex[v25])
            {
              v39 = _PTLogSystem(v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = v113.i32[0];
                v132 = v25;
                _os_log_error_impl(&dword_2243FB000, v39, OS_LOG_TYPE_ERROR, "_G0_tex[%i] is nil", buf, 8u);
              }

              v26 = -1;
            }

            v40 = v128.u32[0];
            [v33 setWidth:v128.u32[0]];
            v129 = v128.u32[1];
            [v33 setHeight:?];
            v41 = objc_msgSend_device(bufferCopy);
            v42 = [v41 newTextureWithDescriptor:v33];
            v43 = G1_tex[v25];
            G1_tex[v25] = v42;

            if (!G1_tex[v25])
            {
              v45 = _PTLogSystem(v44);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = v113.i32[0];
                v132 = v25;
                _os_log_error_impl(&dword_2243FB000, v45, OS_LOG_TYPE_ERROR, "_G1_tex[%i] is nil", buf, 8u);
              }

              v26 = -1;
            }

            [v33 setPixelFormat:115];
            [v33 setWidth:v126];
            [v33 setHeight:v32];
            v46 = objc_msgSend_device(bufferCopy);
            v47 = [v46 newTextureWithDescriptor:v33];
            v48 = C0_tex[v25];
            C0_tex[v25] = v47;

            if (!C0_tex[v25])
            {
              v50 = _PTLogSystem(v49);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = v113.i32[0];
                v132 = v25;
                _os_log_error_impl(&dword_2243FB000, v50, OS_LOG_TYPE_ERROR, "_C0_tex[%i] is nil", buf, 8u);
              }

              v26 = -1;
            }

            [v33 setWidth:v40];
            [v33 setHeight:v129];
            v51 = objc_msgSend_device(bufferCopy);
            v52 = [v51 newTextureWithDescriptor:v33];
            v53 = C1_tex[v25];
            C1_tex[v25] = v52;

            if (!C1_tex[v25])
            {
              v55 = _PTLogSystem(v54);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = v113.i32[0];
                v132 = v25;
                _os_log_error_impl(&dword_2243FB000, v55, OS_LOG_TYPE_ERROR, "_C1_tex[%i] is nil", buf, 8u);
              }

              v26 = -1;
            }

            [v33 setWidth:v126];
            [v33 setHeight:v32];
            [v33 setPixelFormat:25];
            v56 = objc_msgSend_device(bufferCopy);
            v57 = [v56 newTextureWithDescriptor:v33];
            v58 = w_tex[v25];
            w_tex[v25] = v57;

            if (!w_tex[v25])
            {
              v60 = _PTLogSystem(v59);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                *buf = v113.i32[0];
                v132 = v25;
                _os_log_error_impl(&dword_2243FB000, v60, OS_LOG_TYPE_ERROR, "_w_tex[%i] is nil", buf, 8u);
              }

              v26 = -1;
            }

            v124 = v40;
            [v33 setPixelFormat:65];
            [v33 setWidth:v126];
            v125 = v32;
            [v33 setHeight:v32];
            [v33 setUsage:19];
            v61 = 0;
            v62 = 1;
            do
            {
              v63 = v62;
              v64 = objc_msgSend_device(bufferCopy);
              v65 = [v64 newTextureWithDescriptor:v33];
              v66 = selfCopy->_uv_fwd_tex[v61];
              v67 = *(v66 + 8 * v25);
              *(v66 + 8 * v25) = v65;

              if (!*(v66 + 8 * v25))
              {
                v69 = _PTLogSystem(v68);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109376;
                  v132 = v61;
                  v133 = 1024;
                  v134 = v25;
                  _os_log_error_impl(&dword_2243FB000, v69, OS_LOG_TYPE_ERROR, "_uv_fwd_tex[%i][%i] is nil", buf, 0xEu);
                }

                v26 = -1;
              }

              v70 = objc_msgSend_device(bufferCopy);
              v71 = [v70 newTextureWithDescriptor:v33];
              v72 = selfCopy->_uv_bwd_tex[v61];
              v73 = *(v72 + 8 * v25);
              *(v72 + 8 * v25) = v71;

              if (!*(v72 + 8 * v25))
              {
                v75 = _PTLogSystem(v74);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109376;
                  v132 = v61;
                  v133 = 1024;
                  v134 = v25;
                  _os_log_error_impl(&dword_2243FB000, v75, OS_LOG_TYPE_ERROR, "_uv_bwd_tex[%i][%i] is nil", buf, 0xEu);
                }

                v26 = -1;
              }

              v76 = [*(v66 + 8 * v25) newTextureViewWithPixelFormat:53];
              v77 = selfCopy->_uv_fwd_u32_alias_tex[v61];
              v78 = *(v77 + 8 * v25);
              *(v77 + 8 * v25) = v76;

              v79 = [*(v72 + 8 * v25) newTextureViewWithPixelFormat:53];
              v80 = selfCopy->_uv_bwd_u32_alias_tex[v61];
              v81 = *(v80 + 8 * v25);
              *(v80 + 8 * v25) = v79;

              v62 = 0;
              v61 = 1;
            }

            while ((v63 & 1) != 0);
            v82 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v126 height:v125 mipmapped:0];
            [v82 setUsage:19];
            if ([bufferCopy supportsFamily:1007])
            {
              v83 = 0;
            }

            else
            {
              v83 = 32;
            }

            [v82 setResourceOptions:v83];
            v84 = objc_msgSend_device(bufferCopy);
            v85 = [v84 newTextureWithDescriptor:v82];
            v86 = (*I_tex)[v25];
            (*I_tex)[v25] = v85;

            v87 = [(MTLTexture *)(*I_tex)[v25] newTextureViewWithPixelFormat:53];
            v88 = (*I_u32_alias_tex)[v25];
            (*I_u32_alias_tex)[v25] = v87;

            v89 = v126 & 1;
            if (v126 < 0)
            {
              v89 = -v89;
            }

            v90 = v125 & 1;
            if (v125 < 0)
            {
              v90 = -v90;
            }

            v91 = v89 + v126;
            if (v91 / 2 >= 0)
            {
              v92 = (v91 / 2) & 1;
            }

            else
            {
              v92 = -((v91 / 2) & 1);
            }

            v93 = v90 + v125;
            if (v93 / 2 >= 0)
            {
              v94 = (v93 / 2) & 1;
            }

            else
            {
              v94 = -((v93 / 2) & 1);
            }

            v95.i32[0] = (v91 + 2 * v92 + 1) / 2;
            v95.i32[1] = (v93 + 2 * v94 + 1) / 2;
            v127 = v95;

            v96 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:v124 height:v129 mipmapped:0];
            [v96 setUsage:19];
            if ([bufferCopy supportsFamily:1007])
            {
              v97 = 0;
            }

            else
            {
              v97 = 32;
            }

            [v96 setResourceOptions:v97];
            v98 = objc_msgSend_device(bufferCopy);
            v99 = [v98 newTextureWithDescriptor:v96];
            v100 = v115[v25];
            v115[v25] = v99;

            v101 = [(MTLTexture *)v115[v25] newTextureViewWithPixelFormat:53];
            v102 = v114[v25];
            v114[v25] = v101;

            v103 = v124 & 1;
            if (v124 < 0)
            {
              v103 = -v103;
            }

            v104 = v129 & 1;
            if (v129 < 0)
            {
              v104 = -v104;
            }

            v105 = v103 + v124;
            if (v105 / 2 >= 0)
            {
              v106 = (v105 / 2) & 1;
            }

            else
            {
              v106 = -((v105 / 2) & 1);
            }

            v107 = v104 + v129;
            if (v107 / 2 >= 0)
            {
              v108 = (v107 / 2) & 1;
            }

            else
            {
              v108 = -((v107 / 2) & 1);
            }

            v109.i32[0] = (v105 + 2 * v106 + 1) / 2;
            v109.i32[1] = (v107 + 2 * v108 + 1) / 2;
            v130 = v109;

            v29 = v127;
            v27 = v130;
            v30 = 0x277CD7000;
            ++v25;
            v22 = selfCopy;
          }

          while (v25 < selfCopy->_nscales);
        }

        v111 = [(PTLKTFlow *)v22 newBufferWithPixelFormat:115 width:0x8000 data:0 metalContext:bufferCopy];
        kpt_buf = v22->_kpt_buf;
        v22->_kpt_buf = v111;
      }

      else
      {
        kpt_buf = _PTLogSystem(v24);
        if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
        {
          [PTLKTFlow _setupBuffer:];
        }

        v26 = -3;
      }

      goto LABEL_80;
    }
  }

  kpt_buf = _PTLogSystem(v15);
  if (os_log_type_enabled(kpt_buf, OS_LOG_TYPE_ERROR))
  {
    [PTLKTFlow _setupBuffer:];
  }

  v26 = -1;
LABEL_80:

  return v26;
}

- (int)_computeOpticalFlow:(id)flow computeFeatureI0:(BOOL)i0 computeFeatureI1:(BOOL)i1
{
  i0Copy = i0;
  i1Copy = i1;
  flowCopy = flow;
  nscales = self->_nscales;
  v7 = (nscales - 1);
  if (nscales >= 1)
  {
    v8 = 0;
    I_tex = self->_I_tex;
    G0_tex = self->_G0_tex;
    G1_tex = self->_G1_tex;
    C0_tex = self->_C0_tex;
    C1_tex = self->_C1_tex;
    uv_fwd_tex = self->_uv_fwd_tex;
    v10 = nscales - 1;
    do
    {
      v11 = I_tex[self->_current_frame_index][v7];
      v12 = I_tex[self->_current_frame_index ^ 1][v7];
      if (i0Copy)
      {
        [(PTLKTFlow *)self _computeFeatures:flowCopy in_tex:v11 out_tex:G0_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:flowCopy in_tex:G0_tex[v7] out_tex:C0_tex[v7]];
      }

      if (i1Copy)
      {
        [(PTLKTFlow *)self _computeFeatures:flowCopy in_tex:v12 out_tex:G1_tex[v7]];
        [(PTLKTFlow *)self _computeFeaturesDerivatives:flowCopy in_tex:G1_tex[v7] out_tex:C1_tex[v7]];
      }

      nwarpings = self->_nwarpings;
      if (nwarpings < 1)
      {
        v15 = 0;
      }

      else
      {
        v26 = v12;
        v27 = v11;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = v14 + 1;
          if (v7 || v16 != nwarpings || (p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref, self->_useNonLocalRegularization))
          {
            p_uv_fwd_tex_user_ref = &uv_fwd_tex[v8 ^ 1][v7];
          }

          v18 = *p_uv_fwd_tex_user_ref;
          if (self->_useNonLocalRegularization && v16 == self->_nwarpings)
          {
            v19 = self->_w_tex[v7];

            v15 = v19;
          }

          [(PTLKTFlow *)self _doSolver:flowCopy scale:v7 in_uv_tex:uv_fwd_tex[v8][v10] in_G0_tex:G0_tex[v7] in_G1_tex:G1_tex[v7] in_C0_tex:C0_tex[v7] in_C1_tex:C1_tex[v7] out_uv_tex:v18 out_w_tex:v15];
          v8 ^= 1uLL;

          nwarpings = self->_nwarpings;
          ++v14;
          v10 = v7;
        }

        while (v14 < nwarpings);
        v10 = v7;
        v12 = v26;
        v11 = v27;
      }

      if (self->_useNonLocalRegularization)
      {
        v20 = &uv_fwd_tex[v8 ^ 1][v7];
        if (!v7)
        {
          v20 = &self->_uv_fwd_tex_user_ref;
        }

        [(PTLKTFlow *)self _doNLRegularization:flowCopy in_uv_tex:self->_uv_fwd_u32_alias_tex[v8][v7] join_tex:self->_I_u32_alias_tex[self->_current_frame_index][v7] w_tex:v15 out_uv_tex:*v20];
        v8 ^= 1uLL;
      }
    }

    while (v7-- > 0);
  }

  return 0;
}

- (int)_computeOpticalFlowBidirectional:(id)bidirectional
{
  bidirectionalCopy = bidirectional;
  v4 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v5 = self->_uv_fwd_tex[0][v4];
  uv_bwd_tex = self->_uv_bwd_tex;
  v6 = self->_uv_bwd_tex[0][v4];
  v7 = v6;
  selfCopy = self;
  if (!self->_uv_bwd_tex_user_ref)
  {
    v9 = _PTLogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v9 _computeOpticalFlowBidirectional:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  nscales = selfCopy->_nscales;
  if (nscales >= 1)
  {
    v18 = 0;
    I_tex = selfCopy->_I_tex;
    G1_tex = selfCopy->_G1_tex;
    G0_tex = selfCopy->_G0_tex;
    C1_tex = selfCopy->_C1_tex;
    C0_tex = selfCopy->_C0_tex;
    v44 = v4;
    v43 = v4;
    do
    {
      v40 = nscales--;
      v19 = I_tex[selfCopy->_current_frame_index][nscales];
      v20 = I_tex[selfCopy->_current_frame_index ^ 1][nscales];
      v39 = v19;
      [(PTLKTFlow *)selfCopy _computeFeatures:bidirectionalCopy in_tex:v19 out_tex:G0_tex[nscales]];
      v38 = v20;
      [(PTLKTFlow *)selfCopy _computeFeatures:bidirectionalCopy in_tex:v20 out_tex:G1_tex[nscales]];
      [(PTLKTFlow *)selfCopy _computeFeaturesDerivatives:bidirectionalCopy in_tex:G0_tex[nscales] out_tex:C0_tex[nscales]];
      [(PTLKTFlow *)selfCopy _computeFeaturesDerivatives:bidirectionalCopy in_tex:G1_tex[nscales] out_tex:C1_tex[nscales]];
      if (selfCopy->_nwarpings >= 1)
      {
        v21 = 0;
        do
        {
          if ((v21 + 1))
          {
            v55 = G0_tex[nscales];
            v54 = G1_tex[nscales];
            v52 = C0_tex[nscales];
            v50 = C1_tex[nscales];
            v31 = uv_fwd_tex[v18];
            v22 = v31[v44];
            v56 = v18 ^ 1;
            v23 = uv_fwd_tex[v18 ^ 1][nscales];
            if (nscales)
            {
              v32 = 1;
            }

            else
            {
              v32 = v21 + 3 <= selfCopy->_nwarpings;
            }

            p_uv_fwd_tex_user_ref = &v31[nscales];
            if (!v32)
            {
              p_uv_fwd_tex_user_ref = &selfCopy->_uv_fwd_tex_user_ref;
            }

            v34 = *p_uv_fwd_tex_user_ref;
            v35 = v7;
            v29 = nscales;
            v30 = v35;
            v28 = v34;

            v51 = v28;
            v44 = nscales;
            v53 = v30;
          }

          else
          {
            v55 = G1_tex[nscales];
            v54 = G0_tex[nscales];
            v52 = C1_tex[nscales];
            v50 = C0_tex[nscales];
            v22 = (*uv_bwd_tex)[v43];
            v23 = selfCopy->_uv_bwd_tex[1][nscales];
            if (nscales)
            {
              v24 = 1;
            }

            else
            {
              v24 = v21 + 3 <= selfCopy->_nwarpings;
            }

            p_uv_bwd_tex_user_ref = &selfCopy->_uv_bwd_tex_user_ref;
            if (v24)
            {
              p_uv_bwd_tex_user_ref = &(*uv_bwd_tex)[nscales];
            }

            v26 = *p_uv_bwd_tex_user_ref;
            v27 = v5;
            v28 = v26;

            v29 = nscales;
            v56 = v18 ^ 1;
            v53 = v28;
            v43 = nscales;
            v51 = v27;
            v30 = v27;
          }

          [(PTLKTFlow *)selfCopy _enqueueFlowConsistency:bidirectionalCopy in_uv0_tex:v30 in_uv1_tex:v22 out_uv_tex:v23];
          [(PTLKTFlow *)selfCopy _doSolver:bidirectionalCopy scale:v29 in_uv_tex:v23 in_G0_tex:v55 in_G1_tex:v54 in_C0_tex:v52 in_C1_tex:v50 out_uv_tex:v28 out_w_tex:0];

          ++v21;
          v5 = v51;
          v7 = v53;
          v18 = v56;
        }

        while (v21 < selfCopy->_nwarpings);
      }
    }

    while (v40 > 1);
  }

  return 0;
}

- (int)_createImagePyramid:(id)pyramid in_tex:(id)in_tex I_idx:(int)i_idx
{
  pyramidCopy = pyramid;
  in_texCopy = in_tex;
  v10 = self + 80 * i_idx;
  if (self->_needConversionBGRA2YUVA)
  {
    [pyramidCopy setComputePipelineState:self->_computePipelines[0]];
    [pyramidCopy setTexture:in_texCopy atIndex:0];
    [pyramidCopy setTexture:*(v10 + 54) atIndex:1];
    width = [in_texCopy width];
    height = [in_texCopy height];
  }

  else
  {
    [pyramidCopy setComputePipelineState:self->_computePipelines[11]];
    [pyramidCopy setTexture:in_texCopy atIndex:0];
    [pyramidCopy setTexture:*(v10 + 54) atIndex:1];
    width2 = [*(v10 + 54) width];
    height2 = [*(v10 + 54) height];
    width = width2;
    height = height2;
  }

  v22 = 1;
  v18 = xmmword_2244A5230;
  v19 = 1;
  [pyramidCopy dispatchThreads:&width threadsPerThreadgroup:&v18];
  if (self->_nscales >= 2)
  {
    v13 = &self->_I_tex[i_idx][1];
    v14 = 1;
    do
    {
      v15 = *v13;
      v16 = *(v13 - 1);
      [(PTLKTFlow *)self _downscale2X:pyramidCopy in_tex:v16 out_tex:v15, v18, v19, width, height, v22];

      ++v14;
      ++v13;
    }

    while (v14 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlow:(id)flow uv_tex:(id)uv_tex
{
  v5 = self->_computePipelines[1];
  uv_texCopy = uv_tex;
  flowCopy = flow;
  [flowCopy setComputePipelineState:v5];
  [flowCopy setTexture:uv_texCopy atIndex:0];
  width = [uv_texCopy width];
  LODWORD(v5) = [uv_texCopy height];

  v12[0] = width;
  v12[1] = v5;
  v12[2] = 1;
  v10 = xmmword_2244A5230;
  v11 = 1;
  [flowCopy dispatchThreads:v12 threadsPerThreadgroup:&v10];

  return 0;
}

- (int)_downscale2X:(id)x in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[2];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  xCopy = x;
  [xCopy setComputePipelineState:v7];
  [xCopy setTexture:in_texCopy atIndex:0];

  [xCopy setTexture:out_texCopy atIndex:1];
  width = [out_texCopy width];
  LODWORD(x) = [out_texCopy height];

  v15[0] = width;
  v15[1] = x;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [xCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeatures:(id)features in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[3];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  featuresCopy = features;
  [featuresCopy setComputePipelineState:v7];
  [featuresCopy setTexture:in_texCopy atIndex:0];
  [featuresCopy setTexture:out_texCopy atIndex:1];

  width = [in_texCopy width];
  LODWORD(features) = [in_texCopy height];

  v15[0] = width;
  v15[1] = features;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [featuresCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_computeFeaturesDerivatives:(id)derivatives in_tex:(id)in_tex out_tex:(id)out_tex
{
  v7 = self->_computePipelines[4];
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  derivativesCopy = derivatives;
  [derivativesCopy setComputePipelineState:v7];
  [derivativesCopy setTexture:in_texCopy atIndex:0];
  [derivativesCopy setTexture:out_texCopy atIndex:1];

  width = [in_texCopy width];
  LODWORD(derivatives) = [in_texCopy height];

  v15[0] = width;
  v15[1] = derivatives;
  v15[2] = 1;
  v13 = xmmword_2244A5230;
  v14 = 1;
  [derivativesCopy dispatchThreads:v15 threadsPerThreadgroup:&v13];

  return 0;
}

- (int)_doSolver:(id)solver scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1
{
  out_w_texCopy = out_w_tex;
  out_uv_texCopy = out_uv_tex;
  c1_texCopy = c1_tex;
  c0_texCopy = c0_tex;
  g1_texCopy = g1_tex;
  g0_texCopy = g0_tex;
  in_uv_texCopy = in_uv_tex;
  solverCopy = solver;
  LODWORD(in_uv_tex) = [out_uv_texCopy width];
  LODWORD(solver) = [out_uv_texCopy height];
  LODWORD(g0_tex) = (in_uv_tex + self->_maxThreadExecutionWidth - 1) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v45[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v44 = _D0;
  [PTLKTFlow _computeScalingFactor:in_uv_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v44 coeff:v45];
  v38[0] = in_uv_tex;
  v38[1] = solver;
  g0_texCopy2 = g0_tex;
  v40 = v44;
  v41 = 0;
  v27 = v45;
  v28 = vld1_dup_f32(v27);
  v42 = v28;
  v43 = 0;
  [solverCopy setComputePipelineState:self->_computePipelines[5]];
  [solverCopy setTexture:in_uv_texCopy atIndex:0];
  [solverCopy setTexture:g0_texCopy atIndex:1];

  [solverCopy setTexture:g1_texCopy atIndex:2];
  [solverCopy setTexture:c0_texCopy atIndex:3];

  [solverCopy setTexture:c1_texCopy atIndex:4];
  [solverCopy setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_idt_buf offset:0 atIndex:2];
  [solverCopy setBytes:v38 length:48 atIndex:3];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];
  [solverCopy setComputePipelineState:self->_computePipelines[6]];
  [solverCopy setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [solverCopy setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [solverCopy setBytes:v38 length:48 atIndex:4];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];
  [solverCopy setComputePipelineState:self->_computePipelines[7]];
  [solverCopy setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [solverCopy setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [solverCopy setBuffer:self->_idt_buf offset:0 atIndex:2];
  [solverCopy setTexture:in_uv_texCopy atIndex:0];

  [solverCopy setTexture:out_uv_texCopy atIndex:1];
  [solverCopy setTexture:out_w_texCopy atIndex:2];

  [solverCopy setBytes:v38 length:48 atIndex:3];
  in_uv_texCopy4 = in_uv_tex;
  solverCopy4 = solver;
  v37 = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [solverCopy dispatchThreads:&in_uv_texCopy4 threadsPerThreadgroup:&v33];

  return 0;
}

- (int)_enqueueFlowConsistency:(id)consistency in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex
{
  out_uv_texCopy = out_uv_tex;
  in_uv1_texCopy = in_uv1_tex;
  in_uv0_texCopy = in_uv0_tex;
  consistencyCopy = consistency;
  LODWORD(consistency) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [PTLKTFlow _computeScalingFactor:in_uv0_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v37 coeff:&v35];
  [PTLKTFlow _computeScalingFactor:in_uv1_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = consistency;
  v28[1] = height;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v30 = v37;
  v31 = v36;
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  [consistencyCopy setComputePipelineState:self->_computePipelines[8]];
  [consistencyCopy setTexture:in_uv0_texCopy atIndex:0];

  [consistencyCopy setTexture:in_uv1_texCopy atIndex:1];
  [consistencyCopy setTexture:out_uv_texCopy atIndex:2];
  [consistencyCopy setBytes:v28 length:48 atIndex:0];
  width = [out_uv_texCopy width];
  LODWORD(in_uv1_texCopy) = [out_uv_texCopy height];

  v27[0] = width;
  v27[1] = in_uv1_texCopy;
  v27[2] = 1;
  v25 = xmmword_2244A5230;
  v26 = 1;
  [consistencyCopy dispatchThreads:v27 threadsPerThreadgroup:&v25];

  return 0;
}

- (int)_enqueueKeypointsFromFlow:(id)flow in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints
{
  in_uv_fwd_texCopy = in_uv_fwd_tex;
  out_kpt_bufCopy = out_kpt_buf;
  in_uv_bwd_texCopy = in_uv_bwd_tex;
  flowCopy = flow;
  v20 = [in_uv_fwd_texCopy width] / block_size;
  height = [in_uv_fwd_texCopy height];
  v22 = height / block_size;
  block_sizeCopy = block_size;
  v38 = height / block_size;
  v23 = height / block_size * v20;
  v37 = v20;
  v39 = LODWORD(bidirectional_error);
  if (v23 > 0x8000)
  {
    v24 = _PTLogSystem(height);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(PTLKTFlow *)v24 _enqueueKeypointsFromFlow:v25 in_uv_fwd_tex:v26 in_uv_bwd_tex:v27 out_kpt_buf:v28 block_size:v29 bidirectional_error:v30 out_num_keypoints:v31];
    }
  }

  [flowCopy setComputePipelineState:self->_computePipelines[9]];
  [flowCopy setTexture:in_uv_fwd_texCopy atIndex:0];
  [flowCopy setTexture:in_uv_bwd_texCopy atIndex:1];

  [flowCopy setBuffer:out_kpt_bufCopy offset:0 atIndex:0];
  [flowCopy setBytes:&block_sizeCopy length:16 atIndex:1];
  v35[0] = v20;
  v35[1] = v22;
  v35[2] = 1;
  v33 = xmmword_2244A5230;
  v34 = 1;
  [flowCopy dispatchThreads:v35 threadsPerThreadgroup:&v33];

  *out_num_keypoints = v23;
  return 0;
}

- (int)_doNLRegularization:(id)regularization in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex
{
  v30[1] = 0;
  v30[0] = *&self->_nlreg_radius;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  __asm { FMOV            V1.4S, #1.0 }

  v17 = vdivq_f32(_Q1, vaddq_f32(v7, v7));
  v17.i32[2] = v17.i32[1];
  v31 = v17;
  v18 = self->_computePipelines[10];
  out_uv_texCopy = out_uv_tex;
  w_texCopy = w_tex;
  join_texCopy = join_tex;
  in_uv_texCopy = in_uv_tex;
  regularizationCopy = regularization;
  [regularizationCopy setComputePipelineState:v18];
  [regularizationCopy setTexture:in_uv_texCopy atIndex:0];
  [regularizationCopy setTexture:join_texCopy atIndex:1];

  [regularizationCopy setTexture:w_texCopy atIndex:2];
  [regularizationCopy setTexture:out_uv_texCopy atIndex:3];

  [regularizationCopy setBytes:v30 length:32 atIndex:0];
  width = [in_uv_texCopy width];
  v25 = (width + (width >> 31)) >> 1;
  LODWORD(out_uv_texCopy) = [in_uv_texCopy height];

  v29[0] = v25;
  v29[1] = (out_uv_texCopy + (out_uv_texCopy >> 31)) >> 1;
  v29[2] = 1;
  v27 = xmmword_2244A5230;
  v28 = 1;
  [regularizationCopy dispatchThreads:v29 threadsPerThreadgroup:&v27];

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
      +[PTLKTFlow _computeScalingFactor:dst_tex:scale_xy_inv:coeff:];
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

- (void)_setupPipelines:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "computePipeline";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_computeOpticalFlowBidirectional:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_uv_bwd_tex_user_ref != nil";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_enqueueKeypointsFromFlow:(uint64_t)a3 in_uv_fwd_tex:(uint64_t)a4 in_uv_bwd_tex:(uint64_t)a5 out_kpt_buf:(uint64_t)a6 block_size:(uint64_t)a7 bidirectional_error:(uint64_t)a8 out_num_keypoints:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "num_keypoints <= MAX_KEYPOINTS";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end