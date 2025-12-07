@interface HBFGPU
- (HBFGPU)initWithMetalContext:(id)context;
- (int)_doBuildErrorMapWithCommandBuffer:(id)buffer in_res_tex:(id)in_res_tex out_tex:(id)out_tex;
- (int)_doComputeResidualErrorOffsetWithCommandBuffer:(id)buffer in_res_tex:(id)in_res_tex;
- (int)_doComputeResidualErrorWithCommandBuffer:(id)buffer in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex in_uv_tex:(id)in_uv_tex out_tex:(id)out_tex disparity_axis:;
- (int)_doOcclusionHandlingWithCommandBuffer:(id)buffer in_uv_old_tex:(id)in_uv_old_tex in_uv_new_tex:(id)in_uv_new_tex in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex out_tex:(id)out_tex disparity_axis:(float)disparity_axis disparity_scaling_factor:;
- (int)doFilterWithCommandBuffer:(id)buffer in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex tmp_res_tex:(id)tmp_res_tex tmp_err_tex:(id)tmp_err_tex tmp_uv0_tex:(id)self0 tmp_uv1_tex:(id)self1 needToComputeResidualOffset:(BOOL)self2 disparity_axis:(float)self3 disparity_scaling_factor:;
- (int)doFilterWithCommandBuffer:(id)buffer in_I_tex:(id)i_tex in_J_u32_tex:(id)j_u32_tex in_W_tex:(id)w_tex out_tex:(id)out_tex disparity_scaling_factor:(float)disparity_scaling_factor;
- (void)_setupPipelines;
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation HBFGPU

- (HBFGPU)initWithMetalContext:(id)context
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = HBFGPU;
  v6 = [(HBFGPU *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, context);
    v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v10;

    v14 = objc_msgSend_device(v7->_mtlContext, v12, v13);
    v16 = objc_msgSend_newBufferWithLength_options_(v14, v15, 4, 0);
    res_off_buf = v7->_res_off_buf;
    v7->_res_off_buf = v16;

    objc_msgSend__setupPipelines(v7, v18, v19);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResouces(self, v4, v5);
  v6.receiver = self;
  v6.super_class = HBFGPU;
  [(HBFGPU *)&v6 dealloc];
}

- (void)waitUntilCompleted
{
  v8 = objc_msgSend_commandBuffer(self->_commandQueue, a2, v2);
  objc_msgSend_setLabel_(v8, v3, @"HBF:waitUntilCompleted");
  objc_msgSend_commit(v8, v4, v5);
  objc_msgSend_waitUntilCompleted(v8, v6, v7);
}

- (int)doFilterWithCommandBuffer:(id)buffer in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex in_uv_tex:(id)in_uv_tex out_uv_tex:(id)out_uv_tex tmp_res_tex:(id)tmp_res_tex tmp_err_tex:(id)tmp_err_tex tmp_uv0_tex:(id)self0 tmp_uv1_tex:(id)self1 needToComputeResidualOffset:(BOOL)self2 disparity_axis:(float)self3 disparity_scaling_factor:
{
  v14 = v13;
  v15 = *&disparity_axis;
  bufferCopy = buffer;
  i0_u32_texCopy = i0_u32_tex;
  i1_texCopy = i1_tex;
  in_uv_texCopy = in_uv_tex;
  out_uv_texCopy = out_uv_tex;
  tmp_res_texCopy = tmp_res_tex;
  tmp_err_texCopy = tmp_err_tex;
  tmp_uv0_texCopy = tmp_uv0_tex;
  tmp_uv1_texCopy = tmp_uv1_tex;
  v30 = objc_msgSend_iterations(self->_params, v28, v29);
  objc_msgSend_occ_thres(self->_params, v31, v32);
  v34 = v33;
  v35 = tmp_uv0_texCopy;
  v67[0] = v35;
  v63 = tmp_uv1_texCopy;
  v67[1] = v63;
  v65 = i0_u32_texCopy;
  v36 = in_uv_texCopy;
  v38 = objc_msgSend__doComputeResidualErrorWithCommandBuffer_in_I0_u32_tex_in_I1_tex_in_uv_tex_out_tex_disparity_axis_(self, v37, bufferCopy, i0_u32_texCopy, i1_texCopy, in_uv_texCopy, tmp_res_texCopy, v15);
  if (v38)
  {
    v56 = v38;
    sub_2957A12E4();
LABEL_35:
    v57 = i1_texCopy;
    goto LABEL_28;
  }

  if (offset)
  {
    v40 = objc_msgSend__doComputeResidualErrorOffsetWithCommandBuffer_in_res_tex_(self, v39, bufferCopy, tmp_res_texCopy);
    if (v40)
    {
      v56 = v40;
      sub_2957A133C();
      goto LABEL_35;
    }
  }

  v41 = objc_msgSend__doBuildErrorMapWithCommandBuffer_in_res_tex_out_tex_(self, v39, bufferCopy, tmp_res_texCopy, tmp_err_texCopy);
  if (v41)
  {
    v56 = v41;
    sub_2957A1394();
    goto LABEL_35;
  }

  v60 = v35;
  v61 = tmp_res_texCopy;
  if (v30 >= 1)
  {
    v44 = 0;
    v45 = 0;
    while (1)
    {
      v47 = v34 <= 0.0 && v30 == 1;
      v48 = v36;
      if (v44)
      {
        v48 = v67[v45];
      }

      v49 = v48;
      if (v47)
      {
        v50 = out_uv_texCopy;
        v51 = v14;
      }

      else
      {
        v45 ^= 1uLL;
        v50 = v67[v45];
        v51 = 1.0;
      }

      v52 = v50;
      *&v53 = v51;
      v55 = objc_msgSend_doFilterWithCommandBuffer_in_I_tex_in_J_u32_tex_in_W_tex_out_tex_disparity_scaling_factor_(self, v54, bufferCopy, v49, v65, tmp_err_texCopy, v52, v53);
      if (v55)
      {
        break;
      }

      --v44;
      if (!--v30)
      {
        goto LABEL_22;
      }
    }

    v56 = v55;
    sub_2957A13EC(v55, v52, v49);
    goto LABEL_24;
  }

  v45 = 0;
LABEL_22:
  if (v34 <= 0.0)
  {
    v56 = 0;
LABEL_24:
    v57 = i1_texCopy;
    v35 = v60;
    tmp_res_texCopy = v61;
    goto LABEL_28;
  }

  v57 = i1_texCopy;
  *&v43 = v14;
  v56 = objc_msgSend__doOcclusionHandlingWithCommandBuffer_in_uv_old_tex_in_uv_new_tex_in_I0_u32_tex_in_I1_tex_out_tex_disparity_axis_disparity_scaling_factor_(self, v42, bufferCopy, v36, v67[v45], v65, i1_texCopy, out_uv_texCopy, v15, v43);
  v35 = v60;
  if (v56)
  {
    sub_2957A146C();
  }

  tmp_res_texCopy = v61;
LABEL_28:
  for (i = 1; i != -1; --i)
  {
  }

  return v56;
}

- (int)doFilterWithCommandBuffer:(id)buffer in_I_tex:(id)i_tex in_J_u32_tex:(id)j_u32_tex in_W_tex:(id)w_tex out_tex:(id)out_tex disparity_scaling_factor:(float)disparity_scaling_factor
{
  i_texCopy = i_tex;
  j_u32_texCopy = j_u32_tex;
  w_texCopy = w_tex;
  out_texCopy = out_tex;
  params = self->_params;
  bufferCopy = buffer;
  objc_msgSend_sigma_0(params, v20, v21);
  v77 = v22;
  objc_msgSend_sigma_0(self->_params, v23, v24);
  v79 = v25;
  objc_msgSend_sigma_1(self->_params, v26, v27);
  v29 = vadd_f32(__PAIR64__(v28, v77), __PAIR64__(v28, v77));
  objc_msgSend_sigma_1(self->_params, v30, v31);
  v80 = vmul_f32(v29, __PAIR64__(v32, v79));
  objc_msgSend_sigma_2(self->_params, v33, v34);
  v29.f32[0] = v35 + v35;
  objc_msgSend_sigma_2(self->_params, v36, v37);
  v78 = v29.f32[0] * *&v40;
  if (w_texCopy)
  {
    objc_msgSend_sigma_w(self->_params, v38, v39);
    v43 = v42 + v42;
    objc_msgSend_sigma_w(self->_params, v44, v45);
    *&v40 = v43 * *&v40;
  }

  else
  {
    LODWORD(v40) = 1.0;
  }

  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  *(&v83 + 2) = disparity_scaling_factor;
  LODWORD(v84) = 0;
  DWORD2(v84) = objc_msgSend_radius(self->_params, v38, v39, v40, v41);
  HIDWORD(v84) = objc_msgSend_scales(self->_params, v46, v47);
  LODWORD(v85) = objc_msgSend_padding(self->_params, v48, v49);
  *v50.f32 = v80;
  v50.i64[1] = __PAIR64__(v76, LODWORD(v78));
  v86 = vdivq_f32(xmmword_2957A3600, v50);
  v53 = objc_msgSend_computeCommandEncoder(bufferCopy, v51, v52);

  v55 = self->_computePipelines[4];
  if (v53)
  {
    objc_msgSend_setComputePipelineState_(v53, v54, v55);
    objc_msgSend_setTexture_atIndex_(v53, v56, i_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v53, v57, j_u32_texCopy, 1);
    objc_msgSend_setTexture_atIndex_(v53, v58, w_texCopy, 2);
    objc_msgSend_setTexture_atIndex_(v53, v59, out_texCopy, 3);
    objc_msgSend_setBytes_length_atIndex_(v53, v60, &v83, 64, 0);
    v63 = objc_msgSend_threadExecutionWidth(v55, v61, v62);
    v66 = objc_msgSend_maxTotalThreadsPerThreadgroup(v55, v64, v65) / v63;
    v82[0] = (v63 + objc_msgSend_width(out_texCopy, v67, v68) / 2 - 1) / v63;
    v82[1] = (v66 + objc_msgSend_height(out_texCopy, v69, v70) / 2 - 1) / v66;
    v82[2] = 1;
    v81[0] = v63;
    v81[1] = v66;
    v81[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v71, v82, v81);
    objc_msgSend_endEncoding(v53, v72, v73);
    v74 = 0;
  }

  else
  {
    sub_2957A14C4(v82);
    v74 = v82[0];
  }

  return v74;
}

- (void)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = objc_msgSend_initWithUTF8String_(v5, v6, off_29EDD8F80[v3]);
    v9 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, v7, 0);
    v10 = computePipelines[v3];
    computePipelines[v3] = v9;

    v15 = objc_msgSend_threadExecutionWidth(computePipelines[v3], v11, v12);
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v15 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = objc_msgSend_threadExecutionWidth(computePipelines[v3], v13, v14);
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++v3;
  }

  while (v3 != 5);
}

- (int)_doComputeResidualErrorWithCommandBuffer:(id)buffer in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex in_uv_tex:(id)in_uv_tex out_tex:(id)out_tex disparity_axis:
{
  v8 = v7;
  i0_u32_texCopy = i0_u32_tex;
  i1_texCopy = i1_tex;
  in_uv_texCopy = in_uv_tex;
  out_texCopy = out_tex;
  memset(&v46[1], 0, 48);
  v46[0] = v8;
  v18 = self->_computePipelines[0];
  v21 = objc_msgSend_computeCommandEncoder(buffer, v19, v20);
  v23 = v21;
  if (v21)
  {
    objc_msgSend_setComputePipelineState_(v21, v22, v18);
    objc_msgSend_setTexture_atIndex_(v23, v24, i0_u32_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v23, v25, i1_texCopy, 1);
    objc_msgSend_setTexture_atIndex_(v23, v26, in_uv_texCopy, 2);
    objc_msgSend_setTexture_atIndex_(v23, v27, out_texCopy, 3);
    objc_msgSend_setBytes_length_atIndex_(v23, v28, v46, 64, 0);
    v31 = objc_msgSend_threadExecutionWidth(v18, v29, v30);
    v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(v18, v32, v33) / v31;
    v45[0] = (v31 + objc_msgSend_width(out_texCopy, v35, v36) / 2 - 1) / v31;
    v45[1] = (v34 + objc_msgSend_height(out_texCopy, v37, v38) / 2 - 1) / v34;
    v45[2] = 1;
    v44[0] = v31;
    v44[1] = v34;
    v44[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v39, v45, v44);
    objc_msgSend_endEncoding(v23, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_2957A154C(v45);
    v42 = v45[0];
  }

  return v42;
}

- (int)_doComputeResidualErrorOffsetWithCommandBuffer:(id)buffer in_res_tex:(id)in_res_tex
{
  bufferCopy = buffer;
  in_res_texCopy = in_res_tex;
  v10 = objc_msgSend_width(in_res_texCopy, v8, v9);
  v13 = objc_msgSend_height(in_res_texCopy, v11, v12);
  if (v10 > 32 || v13 >= 33)
  {
    sub_2957A1674();
    v25 = -12780;
  }

  else
  {
    v14 = self->_computePipelines[1];
    v17 = objc_msgSend_computeCommandEncoder(bufferCopy, v15, v16);
    if (v17)
    {
      v19 = v17;
      objc_msgSend_setComputePipelineState_(v17, v18, v14);
      objc_msgSend_setTexture_atIndex_(v19, v20, in_res_texCopy, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v19, v21, self->_res_off_buf, 0, 0);
      v29 = vdupq_n_s64(1uLL);
      v30 = 1;
      v27 = xmmword_2957A3610;
      v28 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v22, &v29, &v27);
      objc_msgSend_endEncoding(v19, v23, v24);

      v25 = 0;
    }

    else
    {
      sub_2957A15D4(v14, &v29);
      v25 = v29.i32[0];
    }
  }

  return v25;
}

- (int)_doBuildErrorMapWithCommandBuffer:(id)buffer in_res_tex:(id)in_res_tex out_tex:(id)out_tex
{
  in_res_texCopy = in_res_tex;
  out_texCopy = out_tex;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  params = self->_params;
  bufferCopy = buffer;
  objc_msgSend_conf_min(params, v12, v13);
  HIDWORD(v48) = v14;
  objc_msgSend_conf_max(self->_params, v15, v16);
  v18 = v17;
  objc_msgSend_conf_min(self->_params, v19, v20);
  *&v49 = 1.0 / (v18 - v21);
  v22 = self->_computePipelines[2];
  v25 = objc_msgSend_computeCommandEncoder(bufferCopy, v23, v24);

  if (v25)
  {
    objc_msgSend_setComputePipelineState_(v25, v26, v22);
    objc_msgSend_setTexture_atIndex_(v25, v27, in_res_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v25, v28, out_texCopy, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v25, v29, self->_res_off_buf, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v25, v30, &v48, 64, 1);
    v33 = objc_msgSend_threadExecutionWidth(v22, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(v22, v34, v35) / v33;
    v47[0] = (v33 + objc_msgSend_width(out_texCopy, v37, v38) / 2 - 1) / v33;
    v47[1] = (v36 + objc_msgSend_height(out_texCopy, v39, v40) / 2 - 1) / v36;
    v47[2] = 1;
    v46[0] = v33;
    v46[1] = v36;
    v46[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v41, v47, v46);
    objc_msgSend_endEncoding(v25, v42, v43);
    v44 = 0;
  }

  else
  {
    sub_2957A16D4(v47);
    v44 = v47[0];
  }

  return v44;
}

- (int)_doOcclusionHandlingWithCommandBuffer:(id)buffer in_uv_old_tex:(id)in_uv_old_tex in_uv_new_tex:(id)in_uv_new_tex in_I0_u32_tex:(id)i0_u32_tex in_I1_tex:(id)i1_tex out_tex:(id)out_tex disparity_axis:(float)disparity_axis disparity_scaling_factor:
{
  v10 = v9;
  v11 = *&disparity_axis;
  in_uv_old_texCopy = in_uv_old_tex;
  in_uv_new_texCopy = in_uv_new_tex;
  i0_u32_texCopy = i0_u32_tex;
  i1_texCopy = i1_tex;
  out_texCopy = out_tex;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = v11;
  params = self->_params;
  bufferCopy = buffer;
  objc_msgSend_occ_thres(params, v25, v26);
  DWORD1(v58) = v27;
  DWORD2(v57) = v10;
  v28 = self->_computePipelines[3];
  v31 = objc_msgSend_computeCommandEncoder(bufferCopy, v29, v30);

  if (v31)
  {
    objc_msgSend_setComputePipelineState_(v31, v32, v28);
    objc_msgSend_setTexture_atIndex_(v31, v33, in_uv_old_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v31, v34, in_uv_new_texCopy, 1);
    objc_msgSend_setTexture_atIndex_(v31, v35, i0_u32_texCopy, 2);
    objc_msgSend_setTexture_atIndex_(v31, v36, i1_texCopy, 3);
    objc_msgSend_setTexture_atIndex_(v31, v37, out_texCopy, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v31, v38, self->_res_off_buf, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v31, v39, &v57, 64, 1);
    v42 = objc_msgSend_threadExecutionWidth(v28, v40, v41);
    v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(v28, v43, v44) / v42;
    v56[0] = (v42 + objc_msgSend_width(out_texCopy, v46, v47) / 2 - 1) / v42;
    v56[1] = (v45 + objc_msgSend_height(out_texCopy, v48, v49) / 2 - 1) / v45;
    v56[2] = 1;
    v55[0] = v42;
    v55[1] = v45;
    v55[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v50, v56, v55);
    objc_msgSend_endEncoding(v31, v51, v52);
    v53 = 0;
  }

  else
  {
    sub_2957A175C(v56);
    v53 = v56[0];
  }

  return v53;
}

@end