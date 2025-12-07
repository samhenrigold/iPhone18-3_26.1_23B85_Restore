@interface TVL1_v3
- (CGSize)outputDisparityResolution;
- (TVL1_v3)initWithMetalContext:(id)context;
- (id)texturePAtLevel:(int)level idx_swap_p:(int)idx_swap_p;
- (id)textureRaAtLevel:(int)level;
- (id)textureRbAtLevel:(int)level;
- (id)textureRdAtLevel:(int)level;
- (id)textureUVAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv;
- (id)textureUVRelaxAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv;
- (int)_doUpscaleDualWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_doUpscaleSingleWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex coeff:(float)coeff;
- (int)_setupBuffer;
- (int)_setupPipelines;
- (int)_setupTexture;
- (int)allocateResources;
- (int)doInitPrimalDualWithCommandBuffer:(id)buffer disparity_value:(float)disparity_value idx_swap_uv:(int)idx_swap_uv idx_swap_p:(int)idx_swap_p level:(int)level;
- (int)doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters;
- (int)doSolveChambollePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out in_res_tes:(id)in_res_tes in_hes_tes:(id)in_hes_tes out_uv_tex:(id)out_uv_tex level:(int)level iterations:(int)self0 box_cstr_range:(float)self1 disparity_scaling_factor:(id)self2 parameters:;
- (int)doUpscalePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out level:(int)level coeff:(float)coeff;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation TVL1_v3

- (TVL1_v3)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = TVL1_v3;
  v6 = [(TVL1_v3 *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_mtlContext, context);
  v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
  commandQueue = v7->_commandQueue;
  v7->_commandQueue = v10;

  v7->_isValid = 0;
  v14 = objc_msgSend__setupPipelines(v7, v12, v13);
  v15 = v7;
  if (v14)
  {
    sub_2957A05C8();
LABEL_4:
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (int)allocateResources
{
  pyramidReference = self->_pyramidReference;
  if (pyramidReference)
  {
    self->_countScales = objc_msgSend_countScales(pyramidReference, a2, v2);
    self->_outputDisparityResolution = *objc_msgSend_pyramidDimensions(self->_pyramidReference, v5, v6);
    if (objc_msgSend__setupBuffer(self, v7, v8))
    {
      sub_2957A0620(&v15);
      v11 = v15;
    }

    else
    {
      if (!objc_msgSend__setupTexture(self, v9, v10))
      {
        v11 = 0;
        self->_isValid = 1;
        return v11;
      }

      sub_2957A06AC(&v16);
      v11 = v16;
    }
  }

  else
  {
    sub_2957A0738(&v17);
    v11 = v17;
  }

  if (v11)
  {
    objc_msgSend_releaseResources(self, v13, v14);
  }

  return v11;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = TVL1_v3;
  [(TVL1_v3 *)&v6 dealloc];
}

- (void)releaseResources
{
  self->_isValid = 0;
  R_a_pxbuf = self->_R_a_pxbuf;
  if (R_a_pxbuf)
  {
    CFRelease(R_a_pxbuf);
    self->_R_a_pxbuf = 0;
  }

  R_b_pxbuf = self->_R_b_pxbuf;
  if (R_b_pxbuf)
  {
    CFRelease(R_b_pxbuf);
    self->_R_b_pxbuf = 0;
  }

  R_d_pxbuf = self->_R_d_pxbuf;
  if (R_d_pxbuf)
  {
    CFRelease(R_d_pxbuf);
    self->_R_d_pxbuf = 0;
  }

  v6 = 0;
  p_pxbuf = self->_p_pxbuf;
  uv_relax_pxbuf = self->_uv_relax_pxbuf;
  uv_pxbuf = self->_uv_pxbuf;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = p_pxbuf[v6];
    if (v12)
    {
      CFRelease(v12);
      p_pxbuf[v6] = 0;
    }

    v13 = uv_relax_pxbuf[v6];
    if (v13)
    {
      CFRelease(v13);
      uv_relax_pxbuf[v6] = 0;
    }

    v14 = uv_pxbuf[v6];
    if (v14)
    {
      CFRelease(v14);
      uv_pxbuf[v6] = 0;
    }

    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
}

- (id)textureUVAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0824();
    }

    else
    {
      if (idx_swap_uv < 2)
      {
        v4 = self->_uv_tex[level][idx_swap_uv];
        goto LABEL_6;
      }

      sub_2957A0884();
    }
  }

  else
  {
    sub_2957A07C4();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)textureUVRelaxAtLevel:(int)level idx_swap_uv:(int)idx_swap_uv
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0944();
    }

    else
    {
      if (idx_swap_uv < 2)
      {
        v4 = self->_uv_relax_tex[level][idx_swap_uv];
        goto LABEL_6;
      }

      sub_2957A09A4();
    }
  }

  else
  {
    sub_2957A08E4();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)texturePAtLevel:(int)level idx_swap_p:(int)idx_swap_p
{
  if (self->_isValid)
  {
    if (level < 0 || self->_countScales <= level)
    {
      sub_2957A0A64();
    }

    else
    {
      if (idx_swap_p < 2)
      {
        v4 = self->_p_tex[level][idx_swap_p];
        goto LABEL_6;
      }

      sub_2957A0AC4();
    }
  }

  else
  {
    sub_2957A0A04();
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)textureRaAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_a_tex[level];
      goto LABEL_5;
    }

    sub_2957A0B84();
  }

  else
  {
    sub_2957A0B24();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)textureRbAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_b_tex[level];
      goto LABEL_5;
    }

    sub_2957A0C44();
  }

  else
  {
    sub_2957A0BE4();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)textureRdAtLevel:(int)level
{
  if (self->_isValid)
  {
    if ((level & 0x80000000) == 0 && self->_countScales > level)
    {
      v3 = self->_R_d_tex[level];
      goto LABEL_5;
    }

    sub_2957A0D04();
  }

  else
  {
    sub_2957A0CA4();
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (int)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  while (1)
  {
    v5 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = objc_msgSend_initWithUTF8String_(v5, v6, off_29EDD8F58[v3]);
    v9 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, v7, 0);
    v10 = computePipelines[v3];
    computePipelines[v3] = v9;

    if (!computePipelines[v3])
    {
      break;
    }

    if (++v3 == 5)
    {
      return 0;
    }
  }

  sub_2957A0D64(v7);
  return -12786;
}

- (int)doSolveChambollePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out in_res_tes:(id)in_res_tes in_hes_tes:(id)in_hes_tes out_uv_tex:(id)out_uv_tex level:(int)level iterations:(int)self0 box_cstr_range:(float)self1 disparity_scaling_factor:(id)self2 parameters:
{
  v13 = v12;
  v14 = *&box_cstr_range;
  bufferCopy = buffer;
  in_res_tesCopy = in_res_tes;
  in_hes_tesCopy = in_hes_tes;
  out_uv_texCopy = out_uv_tex;
  disparity_scaling_factorCopy = disparity_scaling_factor;
  v24 = disparity_scaling_factorCopy;
  selfCopy = self;
  if (!self->_isValid)
  {
    sub_2957A0DD4();
LABEL_29:
    v93 = -12780;
    goto LABEL_24;
  }

  objc_msgSend_tau(disparity_scaling_factorCopy, v22, v23);
  v26 = v25;
  objc_msgSend_sigma(v24, v27, v28);
  v30 = v29;
  objc_msgSend_theta(v24, v31, v32);
  v34 = v33;
  objc_msgSend_a_checkerboard(v24, v35, v36);
  v38 = v37;
  objc_msgSend_b_checkerboard(v24, v39, v40);
  v42 = v41;
  objc_msgSend_huber_eps(v24, v43, v44);
  if (v38 < 0.0)
  {
    sub_2957A0F64();
    goto LABEL_29;
  }

  if (v42 < 0.0)
  {
    sub_2957A0F0C();
    goto LABEL_29;
  }

  if ((v38 + v42) > 1.0)
  {
    sub_2957A0EB4();
    goto LABEL_29;
  }

  v97 = v24;
  iterationsCopy = iterations;
  v121 = 0u;
  v115 = v14;
  v116 = v26;
  v117 = v30;
  v118 = v34;
  v119 = COERCE_UNSIGNED_INT(1.0 / ((v30 * v45) + 1.0));
  v120 = v38;
  *&v121 = v42;
  idx_swap_uv_in_outCopy = idx_swap_uv_in_out;
  idx_swap_p_in_outCopy = idx_swap_p_in_out;
  v47 = *idx_swap_uv_in_out;
  v48 = *idx_swap_p_in_out;
  if (iterations < 1)
  {
    v98 = 0;
LABEL_22:
    *idx_swap_uv_in_outCopy = v47;
    *idx_swap_p_in_outCopy = v48;
  }

  else
  {
    v98 = 0;
    v49 = 0;
    levelCopy2 = level;
    uv_relax_tex = self->_uv_relax_tex;
    R_a_tex = self->_R_a_tex;
    R_d_tex = self->_R_d_tex;
    R_b_tex = self->_R_b_tex;
    v108 = self->_uv_tex[level];
    v99 = self->_p_tex[level];
    v111 = 1;
    while (1)
    {
      if (!out_uv_texCopy || (v51 = out_uv_texCopy, iterationsCopy != 1))
      {
        v51 = v108[v47 ^ 1];
      }

      v52 = v51;
      v53 = v108[v47];
      v54 = uv_relax_tex[levelCopy2];
      v55 = v53;
      if (v49)
      {
        v55 = v54[v111];
      }

      v112 = v55;
      HIDWORD(v119) = v49 & 1;
      v110 = iterationsCopy;
      v56 = iterationsCopy == 1 ? v13 : 1.0;
      *(&v121 + 1) = v56;
      v57 = selfCopy->_computePipelines[1];
      v60 = objc_msgSend_computeCommandEncoder(bufferCopy, v58, v59);
      v62 = v60;
      if (v60)
      {
        objc_msgSend_setComputePipelineState_(v60, v61, v57);
        objc_msgSend_setTexture_atIndex_(v62, v63, v53, 0);
        objc_msgSend_setTexture_atIndex_(v62, v64, v112, 1);
        v65 = v52;
        objc_msgSend_setTexture_atIndex_(v62, v66, v99[v48], 2);
        objc_msgSend_setTexture_atIndex_(v62, v67, in_res_tesCopy, 3);
        objc_msgSend_setTexture_atIndex_(v62, v68, in_hes_tesCopy, 4);
        objc_msgSend_setTexture_atIndex_(v62, v69, R_a_tex[levelCopy2], 5);
        objc_msgSend_setTexture_atIndex_(v62, v70, R_b_tex[levelCopy2], 6);
        objc_msgSend_setTexture_atIndex_(v62, v71, R_d_tex[levelCopy2], 7);
        objc_msgSend_setTexture_atIndex_(v62, v72, v52, 8);
        v111 ^= 1uLL;
        objc_msgSend_setTexture_atIndex_(v62, v73, v54[v111], 9);
        v74 = v48 ^ 1;
        objc_msgSend_setTexture_atIndex_(v62, v75, v99[v48 ^ 1], 10);
        objc_msgSend_setBytes_length_atIndex_(v62, v76, &v115, 48, 0);
        v79 = objc_msgSend_threadExecutionWidth(v57, v77, v78);
        v82 = objc_msgSend_maxTotalThreadsPerThreadgroup(v57, v80, v81) / v79;
        v85 = v47;
        v86 = (v79 + objc_msgSend_width(v53, v83, v84) - 1) / v79;
        v89 = objc_msgSend_height(v53, v87, v88);
        v114[0] = v86;
        v114[1] = (v82 + v89 - 1) / v82;
        v114[2] = 1;
        v113[0] = v79;
        v113[1] = v82;
        v52 = v65;
        v113[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v62, v90, v114, v113);
        objc_msgSend_endEncoding(v62, v91, v92);
        v47 = v85 ^ 1;
        v48 = v74;
      }

      else
      {
        sub_2957A0E2C(v114);
        v98 = v114[0];
      }

      if (!v62)
      {
        break;
      }

      ++v49;
      iterationsCopy = v110 - 1;
      levelCopy2 = level;
      if (v110 == 1)
      {
        goto LABEL_22;
      }
    }
  }

  v24 = v97;
  v93 = v98;
LABEL_24:

  return v93;
}

- (int)doInitPrimalDualWithCommandBuffer:(id)buffer disparity_value:(float)disparity_value idx_swap_uv:(int)idx_swap_uv idx_swap_p:(int)idx_swap_p level:(int)level
{
  disparity_valueCopy = disparity_value;
  v10 = self + 16 * level;
  v11 = *&v10[8 * idx_swap_uv + 1928];
  v12 = *&v10[8 * idx_swap_p + 872];
  v13 = self->_computePipelines[0];
  v16 = objc_msgSend_computeCommandEncoder(buffer, v14, v15);
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setComputePipelineState_(v16, v17, v13);
    objc_msgSend_setTexture_atIndex_(v18, v19, v11, 0);
    objc_msgSend_setTexture_atIndex_(v18, v20, v12, 1);
    objc_msgSend_setBytes_length_atIndex_(v18, v21, &disparity_valueCopy, 4, 0);
    v24 = objc_msgSend_threadExecutionWidth(v13, v22, v23);
    v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v25, v26) / v24;
    v38[0] = (v24 + objc_msgSend_width(v11, v28, v29) - 1) / v24;
    v38[1] = (v27 + objc_msgSend_height(v11, v30, v31) - 1) / v27;
    v38[2] = 1;
    v37[0] = v24;
    v37[1] = v27;
    v37[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v18, v32, v38, v37);
    objc_msgSend_endEncoding(v18, v33, v34);
    v35 = 0;
  }

  else
  {
    sub_2957A0FBC(v38);
    v35 = v38[0];
  }

  return v35;
}

- (int)doUpscalePrimalDualWithCommandBuffer:(id)buffer idx_swap_uv_in_out:(int *)idx_swap_uv_in_out idx_swap_p_in_out:(int *)idx_swap_p_in_out level:(int)level coeff:(float)coeff
{
  bufferCopy = buffer;
  if (level < 0 || self->_countScales - 1 <= level)
  {
    sub_2957A1044();
    v21 = -12780;
  }

  else
  {
    v15 = *idx_swap_uv_in_out;
    v16 = *idx_swap_p_in_out;
    v17 = (level + 1);
    v18 = v15 ^ 1;
    *&v14 = coeff;
    v19 = objc_msgSend__doUpscaleSingleWithCommandBuffer_in_tex_out_tex_coeff_(self, v12, bufferCopy, self->_uv_tex[v17][v15], self->_uv_tex[level][v15 ^ 1], v14);
    if (v19)
    {
      v21 = v19;
      sub_2957A109C();
    }

    else
    {
      v21 = objc_msgSend__doUpscaleDualWithCommandBuffer_in_tex_out_tex_(self, v20, bufferCopy, self->_p_tex[v17][v16], self->_p_tex[level][v16 ^ 1]);
      if (v21)
      {
        sub_2957A10F4();
      }

      else
      {
        *idx_swap_uv_in_out = v18;
        *idx_swap_p_in_out = v16 ^ 1;
      }
    }
  }

  return v21;
}

- (int)doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters
{
  in_texCopy = in_tex;
  v59 = 0;
  parametersCopy = parameters;
  bufferCopy = buffer;
  objc_msgSend_alpha(parametersCopy, v13, v14);
  v57[0] = v15;
  objc_msgSend_beta(parametersCopy, v16, v17);
  v57[1] = v18;
  objc_msgSend_gain(parametersCopy, v19, v20);
  v57[2] = v21;
  objc_msgSend_offset(parametersCopy, v22, v23);
  v57[3] = v24;
  objc_msgSend_diffusion_eps(parametersCopy, v25, v26);
  v28 = v27;

  v58 = v28;
  v29 = self->_computePipelines[2];
  v32 = objc_msgSend_computeCommandEncoder(bufferCopy, v30, v31);

  if (v32)
  {
    objc_msgSend_setComputePipelineState_(v32, v33, v29);
    objc_msgSend_setTexture_atIndex_(v32, v34, in_texCopy, 0);
    v35 = (&self->super.isa + level);
    objc_msgSend_setTexture_atIndex_(v32, v36, v35[9], 1);
    objc_msgSend_setTexture_atIndex_(v32, v37, v35[75], 2);
    objc_msgSend_setTexture_atIndex_(v32, v38, v35[42], 3);
    objc_msgSend_setBytes_length_atIndex_(v32, v39, v57, 32, 0);
    v42 = objc_msgSend_threadExecutionWidth(v29, v40, v41);
    v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(v29, v43, v44) / v42;
    v56[0] = (v42 + objc_msgSend_width(in_texCopy, v46, v47) - 1) / v42;
    v56[1] = (v45 + objc_msgSend_height(in_texCopy, v48, v49) - 1) / v45;
    v56[2] = 1;
    v55[0] = v42;
    v55[1] = v45;
    v55[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v50, v56, v55);
    objc_msgSend_endEncoding(v32, v51, v52);
    v53 = 0;
  }

  else
  {
    sub_2957A114C(v56);
    v53 = v56[0];
  }

  return v53;
}

- (int)_doUpscaleSingleWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex coeff:(float)coeff
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  bufferCopy = buffer;
  v15 = (objc_msgSend_width(out_texCopy, v13, v14) - 1);
  v53 = v15 / (objc_msgSend_width(in_texCopy, v16, v17) - 1);
  v20 = (objc_msgSend_height(out_texCopy, v18, v19) - 1);
  v23 = objc_msgSend_height(in_texCopy, v21, v22);
  v24.f32[0] = v53;
  v24.f32[1] = v20 / (v23 - 1);
  __asm { FMOV            V0.2S, #1.0 }

  v56[0] = vdiv_f32(_D0, v24);
  v56[1] = LODWORD(coeff);
  v30 = self->_computePipelines[3];
  v33 = objc_msgSend_computeCommandEncoder(bufferCopy, v31, v32);

  if (v33)
  {
    objc_msgSend_setComputePipelineState_(v33, v34, v30);
    objc_msgSend_setTexture_atIndex_(v33, v35, in_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v33, v36, out_texCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v33, v37, v56, 16, 0);
    v40 = objc_msgSend_threadExecutionWidth(v30, v38, v39);
    v43 = objc_msgSend_maxTotalThreadsPerThreadgroup(v30, v41, v42) / v40;
    v55[0] = (v40 + objc_msgSend_width(out_texCopy, v44, v45) - 1) / v40;
    v55[1] = (v43 + objc_msgSend_height(out_texCopy, v46, v47) - 1) / v43;
    v55[2] = 1;
    v54[0] = v40;
    v54[1] = v43;
    v54[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v33, v48, v55, v54);
    objc_msgSend_endEncoding(v33, v49, v50);
    v51 = 0;
  }

  else
  {
    sub_2957A11D4(v55);
    v51 = v55[0];
  }

  return v51;
}

- (int)_doUpscaleDualWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  in_texCopy = in_tex;
  out_texCopy = out_tex;
  bufferCopy = buffer;
  v13 = (objc_msgSend_width(out_texCopy, v11, v12) - 1);
  v51 = v13 / (objc_msgSend_width(in_texCopy, v14, v15) - 1);
  v18 = (objc_msgSend_height(out_texCopy, v16, v17) - 1);
  v21 = objc_msgSend_height(in_texCopy, v19, v20);
  v22.f32[0] = v51;
  v22.f32[1] = v18 / (v21 - 1);
  v54[1] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v54[0] = vdiv_f32(_D0, v22);
  v28 = self->_computePipelines[4];
  v31 = objc_msgSend_computeCommandEncoder(bufferCopy, v29, v30);

  if (v31)
  {
    objc_msgSend_setComputePipelineState_(v31, v32, v28);
    objc_msgSend_setTexture_atIndex_(v31, v33, in_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v31, v34, out_texCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v31, v35, v54, 16, 0);
    v38 = objc_msgSend_threadExecutionWidth(v28, v36, v37);
    v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(v28, v39, v40) / v38;
    v53[0] = (v38 + objc_msgSend_width(out_texCopy, v42, v43) - 1) / v38;
    v53[1] = (v41 + objc_msgSend_height(out_texCopy, v44, v45) - 1) / v41;
    v53[2] = 1;
    v52[0] = v38;
    v52[1] = v41;
    v52[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v46, v53, v52);
    objc_msgSend_endEncoding(v31, v47, v48);
    v49 = 0;
  }

  else
  {
    sub_2957A125C(v53);
    v49 = v53[0];
  }

  return v49;
}

- (CGSize)outputDisparityResolution
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int)_setupBuffer
{
  sub_295793344();
  PixelBuffer = CreatePixelBuffer();
  self->_R_a_pxbuf = PixelBuffer;
  if (PixelBuffer)
  {
    sub_295793344();
    v4 = CreatePixelBuffer();
    self->_R_b_pxbuf = v4;
    if (v4)
    {
      sub_295793344();
      v5 = CreatePixelBuffer();
      self->_R_d_pxbuf = v5;
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        p_pxbuf = self->_p_pxbuf;
        uv_relax_pxbuf = self->_uv_relax_pxbuf;
        uv_pxbuf = self->_uv_pxbuf;
        while (1)
        {
          sub_295793344();
          v11 = CreatePixelBuffer();
          p_pxbuf[v7] = v11;
          if (!v11)
          {
            break;
          }

          sub_295793344();
          v12 = CreatePixelBuffer();
          uv_relax_pxbuf[v7] = v12;
          if (!v12)
          {
            break;
          }

          sub_295793344();
          v13 = CreatePixelBuffer();
          uv_pxbuf[v7] = v13;
          v14 = v6 ^ 1;
          v6 = 1;
          v7 = 1;
          if (((v13 != 0) & v14) == 0)
          {
            if (v13)
            {
              return 0;
            }

            else
            {
              return -12786;
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (int)_setupTexture
{
  pyramidReference = self->_pyramidReference;
  if (pyramidReference)
  {
    v56 = objc_msgSend_pyramidDimensions(pyramidReference, a2, v2);
    if (objc_msgSend_countScales(self->_pyramidReference, v5, v6) < 1)
    {
      return 0;
    }

    else
    {
      v7 = 0;
      R_d_tex = self->_R_d_tex;
      R_a_tex = self->_R_a_tex;
      R_b_tex = self->_R_b_tex;
LABEL_4:
      v8 = (v56 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = sub_29578C944();
      v15 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v12, v13, v14, v11);
      v16 = R_a_tex[v7];
      R_a_tex[v7] = v15;

      if (R_a_tex[v7])
      {
        v17 = sub_29578C944();
        v21 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v18, v19, v20, v17);
        v22 = R_d_tex[v7];
        R_d_tex[v7] = v21;

        if (R_d_tex[v7])
        {
          v23 = sub_29578C944();
          v27 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v24, v25, v26, v23);
          v28 = R_b_tex[v7];
          R_b_tex[v7] = v27;

          if (R_b_tex[v7])
          {
            v30 = 0;
            v31 = self->_p_tex[v7];
            v32 = 1;
            v33 = self->_uv_relax_tex[v7];
            v34 = self->_uv_tex[v7];
            while (1)
            {
              v35 = v32;
              v36 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_mtlContext, v29, self->_p_pxbuf[v30], 65, 23, 0, v9, v10);
              v37 = v31[v30];
              v31[v30] = v36;

              if (!v31[v30])
              {
                break;
              }

              v38 = sub_29578C944();
              v42 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v39, v40, v41, v38);
              v43 = v33[v30];
              v33[v30] = v42;

              if (!v33[v30])
              {
                break;
              }

              v44 = sub_29578C944();
              v48 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v45, v46, v47, v44);
              v49 = v34[v30];
              v34[v30] = v48;

              if (!v34[v30])
              {
                break;
              }

              v32 = 0;
              v30 = 1;
              if ((v35 & 1) == 0)
              {
                if (++v7 < objc_msgSend_countScales(self->_pyramidReference, v29, v50))
                {
                  goto LABEL_4;
                }

                return 0;
              }
            }
          }
        }
      }

      return -12786;
    }
  }

  else
  {
    sub_295787448();
    sub_295787468();
    FigDebugAssert3(v52);
    return -12780;
  }
}

@end