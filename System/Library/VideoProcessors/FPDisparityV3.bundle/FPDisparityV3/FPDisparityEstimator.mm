@interface FPDisparityEstimator
- ($5E5F304956FB491AF6F034FDF0808287)H0Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)H1Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)V0Metadata;
- ($5E5F304956FB491AF6F034FDF0808287)V1Metadata;
- (CGRect)sensorCropRect;
- (CGRect)sensorReadoutRect;
- (CGRect)totalSensorCropRect;
- (CGSize)outputDisparityResolution;
- (FPDisparityEstimator)initWithMetalContext:(id)context;
- (id)CreateKernelWithConst:(id)const constants:(id)constants;
- (int)_allocateFPCostWorkBuffer:(id *)buffer;
- (int)_computeCost:(id)cost texGreenPixels:(id)pixels texOutputResU:(id)u texOutputHesU:(id)hesU level:(unsigned int)level resolutionScale:(float)scale;
- (int)_computeFocusPixelDisparityFromResolution:(FPDisparityEstimator *)self box_cstr_range:(SEL)box_cstr_range disparity_scaling_factor:(float)disparity_scaling_factor;
- (int)_costNCC:(id)c dynCfg:(id *)cfg texDisparityIn:(id)in texGreenPixelsIn:(id)pixelsIn texFocusPixelsIn:(id)focusPixelsIn texTcLrcOut:(id)out resolutionScale:(float)scale level:(unsigned int)self0;
- (int)_debugInterpolate:(id)interpolate texTcLrcIn:(id)in dynCfg:(id *)cfg debugBuf:(id)buf;
- (int)_doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters;
- (int)_filterHorz:(id)horz texTcLrcIn:(id)in texTcLrcOut:(id)out dynCfg:(id *)cfg;
- (int)_filterVert:(id)vert texTcLrcIn:(id)in texTcLrcOut:(id)out dynCfg:(id *)cfg;
- (int)_generateCorrectionMap;
- (int)_interpolateAndAccumulate:(id)accumulate texTcLrcIn:(id)in dynCfg:(id *)cfg;
- (int)_proximityOperator:(id)operator dynCfg:(id *)cfg texDisparityIn:(id)in texOutputResUOut:(id)out texOutputHesUOut:(id)uOut level:(unsigned int)level;
- (int)_setCorrectionMapCoefficients:(float *)coefficients;
- (int)_setupBuffer;
- (int)_setupFPPipelines;
- (int)_setupTexture;
- (int)allocateResources:(id *)resources;
- (int)computeFilterCurve:(float)curve p3:(float)p3 array:(float *)array;
- (int)estimateFocusPixelDisparityWithBox_cstr_range:(float)box_cstr_range disparity_scaling_factor:;
- (int)setOutputDisparity:(__CVBuffer *)disparity;
- (unint64_t)computeAlignedSize:(unint64_t)size pixelFormat:(unint64_t)format;
- (void)dealloc;
- (void)releaseResources;
@end

@implementation FPDisparityEstimator

- (FPDisparityEstimator)initWithMetalContext:(id)context
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = FPDisparityEstimator;
  v6 = [(FPDisparityEstimator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, context);
    v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v10;

    if (objc_msgSend__setupFPPipelines(v7, v12, v13))
    {
      sub_295799C28();
      goto LABEL_5;
    }

    v14 = [TVL1_v3 alloc];
    v16 = objc_msgSend_initWithMetalContext_(v14, v15, v7->_mtlContext);
    tvl1Instance = v7->_tvl1Instance;
    v7->_tvl1Instance = v16;

    if (v7->_tvl1Instance)
    {
      v18 = [HBFGPU alloc];
      v20 = objc_msgSend_initWithMetalContext_(v18, v19, v7->_mtlContext);
      hbfgpuInstance = v7->_hbfgpuInstance;
      v7->_hbfgpuInstance = v20;

      if (v7->_hbfgpuInstance)
      {
        goto LABEL_5;
      }

      sub_295799CA0(v7);
    }

    else
    {
      sub_295799D1C(v7);
    }

    v7 = 0;
  }

LABEL_5:

  return v7;
}

- (int)allocateResources:(id *)resources
{
  v6.i64[0] = *&resources->var0;
  v6.i64[1] = HIDWORD(*&resources->var0);
  self->_outputDisparityResolution = vcvtq_f64_u64(v6);
  v7 = objc_msgSend__setupBuffer(self, a2, resources);
  if (v7)
  {
    v20 = v7;
    sub_295799D98();
LABEL_13:
    objc_msgSend_releaseResources(self, v22, v23);
    return v20;
  }

  v10 = objc_msgSend__setupTexture(self, v8, v9);
  if (v10)
  {
    v20 = v10;
    sub_295799E10();
    goto LABEL_13;
  }

  objc_msgSend_setPyramidReference_(self->_tvl1Instance, v11, self->_imagePyramid);
  Resources = objc_msgSend_allocateResources(self->_tvl1Instance, v12, v13);
  if (Resources)
  {
    v20 = Resources;
    sub_295799E88();
    goto LABEL_13;
  }

  FPCostWorkBuffer = objc_msgSend__allocateFPCostWorkBuffer_(self, v15, resources);
  if (FPCostWorkBuffer)
  {
    v20 = FPCostWorkBuffer;
    sub_295799F00();
    goto LABEL_13;
  }

  if ((resources[32].var0 & 1) == 0)
  {
    *&resources[24].var0 = 0u;
    *&resources[28].var0 = 0u;
    *&resources[16].var0 = 0u;
    *&resources[20].var0 = 0u;
    *&resources[12].var0 = 0u;
  }

  objc_msgSend__setCorrectionMapCoefficients_(self, v17, &resources[12]);
  objc_msgSend__generateCorrectionMap(self, v18, v19);
  return 0;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = FPDisparityEstimator;
  [(FPDisparityEstimator *)&v6 dealloc];
}

- (void)releaseResources
{
  objc_msgSend_releaseResources(self->_tvl1Instance, a2, v2);
  if (objc_msgSend_countScales(self->_imagePyramid, v4, v5) >= 1)
  {
    v6 = 0;
    selfCopy = self;
    do
    {
      v8 = selfCopy->_res_tex[0];
      selfCopy->_res_tex[0] = 0;

      v9 = selfCopy->_Hes_tex[0];
      selfCopy->_Hes_tex[0] = 0;

      ++v6;
      selfCopy = (selfCopy + 8);
    }

    while (v6 < objc_msgSend_countScales(self->_imagePyramid, v10, v11));
  }

  res_pxbuf = self->_res_pxbuf;
  if (res_pxbuf)
  {
    CFRelease(res_pxbuf);
    self->_res_pxbuf = 0;
  }

  Hes_pxbuf = self->_Hes_pxbuf;
  if (Hes_pxbuf)
  {
    CFRelease(Hes_pxbuf);
    self->_Hes_pxbuf = 0;
  }

  costsBuffer = self->_costsBuffer;
  self->_costsBuffer = 0;

  bufTcLrc1 = self->_bufTcLrc1;
  self->_bufTcLrc1 = 0;

  bufTcLrc2 = self->_bufTcLrc2;
  self->_bufTcLrc2 = 0;
}

- (int)_allocateFPCostWorkBuffer:(id *)buffer
{
  v6 = HIDWORD(*&buffer->var0);
  v7 = objc_msgSend_computeAlignedSize_pixelFormat_(self, a2, 16 * *&buffer->var0, 125) * v6;
  v10 = objc_msgSend_device(self->_mtlContext, v8, v9);
  v12 = objc_msgSend_newBufferWithLength_options_(v10, v11, v7, 0);
  costsBuffer = self->_costsBuffer;
  self->_costsBuffer = v12;

  if (self->_costsBuffer)
  {
    if (buffer[2].var0)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *&buffer[2 * v16 + 4].var0;
        v19 = HIDWORD(v18);
        v20 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v14, 16 * v18, 125);
        if (v20 * v19 > v17)
        {
          v17 = v20 * v19;
        }

        ++v16;
      }

      while (v16 < buffer[2].var0);
    }

    else
    {
      v17 = 0;
    }

    v21 = objc_msgSend_device(self->_mtlContext, v14, v15);
    v23 = objc_msgSend_newBufferWithLength_options_(v21, v22, v17, 0);
    bufTcLrc1 = self->_bufTcLrc1;
    self->_bufTcLrc1 = v23;

    if (self->_bufTcLrc1)
    {
      v27 = objc_msgSend_device(self->_mtlContext, v25, v26);
      v29 = objc_msgSend_newBufferWithLength_options_(v27, v28, v17, 0);
      bufTcLrc2 = self->_bufTcLrc2;
      self->_bufTcLrc2 = v29;

      if (self->_bufTcLrc2)
      {
        return 0;
      }

      else
      {
        sub_295799F78(&v32);
        return v32;
      }
    }

    else
    {
      sub_29579A024(&v33);
      return v33;
    }
  }

  else
  {
    sub_29579A0D0(&v34);
    return v34;
  }
}

- (int)_computeFocusPixelDisparityFromResolution:(FPDisparityEstimator *)self box_cstr_range:(SEL)box_cstr_range disparity_scaling_factor:(float)disparity_scaling_factor
{
  v6 = v5;
  v7 = v4;
  selfCopy = self;
  v177 = 0;
  v9 = objc_msgSend_countScales(self->_imagePyramid, box_cstr_range, v3);
  v151 = objc_msgSend_realPyramidDimensions(selfCopy->_imagePyramid, v10, v11);
  v14 = (v9 - 1);
  if (v9 < 1)
  {
    LODWORD(v62) = 0;
    return v62;
  }

  v15 = 0;
  v16 = LODWORD(disparity_scaling_factor);
  res_tex = selfCopy->_res_tex;
  Hes_tex = selfCopy->_Hes_tex;
  v150 = (v9 - 1);
  do
  {
    v18 = v15;
    v19 = objc_msgSend_levelsParameters(selfCopy->_fpDisparityEstimatorParams, v12, v13);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v14);

    v24 = objc_msgSend_solverParameters(v21, v22, v23);
    v27 = objc_msgSend_warpings(v24, v25, v26);

    v30 = objc_msgSend_solverParameters(v21, v28, v29);
    v156 = objc_msgSend_iterations(v30, v31, v32);

    v158 = v21;
    v35 = objc_msgSend_hbfParameters(v21, v33, v34);
    v155 = objc_msgSend_scales(v35, v36, v37);

    v154 = objc_msgSend_textureRGBAU8AtScale_(selfCopy->_imagePyramid, v38, v14);
    v153 = objc_msgSend_textureU32AliasAtScale_(selfCopy->_imagePyramid, v39, v14);
    v41 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_GChannelPyramid, v40, v14);
    v43 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_GChannelPyramid, v42, 0);
    v46 = objc_msgSend_height(v41, v44, v45);
    v161 = objc_msgSend_height(v43, v47, v48);
    v157 = v41;
    v51 = objc_msgSend_width(v41, v49, v50);
    v152 = v43;
    v54 = objc_msgSend_width(v43, v52, v53);
    v55 = *(v151 + 16 * v14);
    v15 = objc_msgSend_commandBuffer(selfCopy->_commandQueue, v56, v57);

    if (!v15)
    {
      sub_29579A54C(v178);
LABEL_46:
      v147 = 0;
      LODWORD(v62) = v178[0];
      goto LABEL_34;
    }

    v159 = v51;
    if (v14 == v150)
    {
      inited = objc_msgSend_doInitPrimalDualWithCommandBuffer_disparity_value_idx_swap_uv_idx_swap_p_level_(selfCopy->_tvl1Instance, v58, v15, HIDWORD(v177), v177, 0.0);
      if (inited)
      {
        LODWORD(v62) = inited;
        sub_29579A204();
LABEL_42:
        v147 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_GChannelPyramid, v58, v14 + 1);
      v66 = (objc_msgSend_width(v157, v64, v65) - 1);
      v69 = v66 / (objc_msgSend_width(v63, v67, v68) - 1);
      objc_msgSend_height(v157, v70, v71);
      objc_msgSend_height(v63, v72, v73);
      *&v74 = v69;
      v76 = objc_msgSend_doUpscalePrimalDualWithCommandBuffer_idx_swap_uv_in_out_idx_swap_p_in_out_level_coeff_(selfCopy->_tvl1Instance, v75, v15, &v177 + 4, &v177, v14, v74);
      if (v76)
      {
        LODWORD(v62) = v76;
        sub_29579A17C();
        goto LABEL_42;
      }
    }

    v77 = objc_msgSend_regularizationParameters(v158, v60, v61);
    v62 = objc_msgSend__doLocalRegularizationWithCommandBuffer_in_tex_level_parameters_(selfCopy, v78, v15, v154, v14, v77);

    if (v62)
    {
      sub_29579A280(v62);
      goto LABEL_42;
    }

    if (*MEMORY[0x29EDB9270])
    {
      v81 = objc_msgSend_commandQueue(v15, v79, v80);
      v84 = objc_msgSend_commandBuffer(v81, v82, v83);

      objc_msgSend_setLabel_(v84, v85, @"KTRACE_MTLCMDBUF");
      v175[0] = MEMORY[0x29EDCA5F8];
      v175[1] = 3221225472;
      v175[2] = sub_295789514;
      v175[3] = &unk_29EDD8EF8;
      v176 = v14;
      objc_msgSend_addCompletedHandler_(v84, v86, v175);
      objc_msgSend_commit(v84, v87, v88);
      v173[0] = MEMORY[0x29EDCA5F8];
      v173[1] = 3221225472;
      v173[2] = sub_295789548;
      v173[3] = &unk_29EDD8EF8;
      v174 = v14;
      objc_msgSend_addCompletedHandler_(v15, v89, v173);
    }

    objc_msgSend_commit(v15, v79, v80);
    if (v27 >= 1)
    {
      v92 = (((v46 + -1.0) / (v161 + -1.0)) + ((v159 + -1.0) / (v54 + -1.0))) * 0.5;
      v93 = v55 / v16;
      v94 = COERCE_DOUBLE(vmul_n_f32(v7, v93));
      while (1)
      {
        v95 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(selfCopy->_tvl1Instance, v90, v14, HIDWORD(v177));
        *&v96 = v92;
        v98 = objc_msgSend__computeCost_texGreenPixels_texOutputResU_texOutputHesU_level_resolutionScale_(selfCopy, v97, v95, v157, res_tex[v14], Hes_tex[v14], v14, v96);
        if (v98)
        {
          LODWORD(v62) = v98;
          sub_29579A2FC();
          goto LABEL_41;
        }

        v101 = objc_msgSend_commandBuffer(selfCopy->_commandQueue, v99, v100);

        if (!v101)
        {
          sub_29579A4A0(v178);
          v15 = 0;
          LODWORD(v62) = v178[0];
          goto LABEL_41;
        }

        uv_tex_user_ref = 0;
        v105 = 1.0;
        v160 = v27;
        v162 = v95;
        if (!v14 && v27 == 1 && v155 <= 0)
        {
          uv_tex_user_ref = selfCopy->_uv_tex_user_ref;
          v105 = v6;
        }

        v106 = selfCopy;
        tvl1Instance = selfCopy->_tvl1Instance;
        v108 = res_tex;
        v109 = res_tex[v14];
        v110 = Hes_tex[v14];
        v111 = objc_msgSend_solverParameters(v158, v102, v103);
        *&v112 = v105;
        v62 = objc_msgSend_doSolveChambollePrimalDualWithCommandBuffer_idx_swap_uv_in_out_idx_swap_p_in_out_in_res_tes_in_hes_tes_out_uv_tex_level_iterations_box_cstr_range_disparity_scaling_factor_parameters_(tvl1Instance, v113, v101, &v177 + 4, &v177, v109, v110, uv_tex_user_ref, v94, v112, __PAIR64__(v156, v14), v111);

        if (v62)
        {
          break;
        }

        if (*MEMORY[0x29EDB9270])
        {
          v116 = objc_msgSend_commandQueue(v101, v114, v115);
          v119 = objc_msgSend_commandBuffer(v116, v117, v118);

          objc_msgSend_setLabel_(v119, v120, @"KTRACE_MTLCMDBUF");
          v171[0] = MEMORY[0x29EDCA5F8];
          v171[1] = 3221225472;
          v171[2] = sub_295789608;
          v171[3] = &unk_29EDD8EF8;
          v172 = v14;
          objc_msgSend_addCompletedHandler_(v119, v121, v171);
          objc_msgSend_commit(v119, v122, v123);
          v169[0] = MEMORY[0x29EDCA5F8];
          v169[1] = 3221225472;
          v169[2] = sub_29578963C;
          v169[3] = &unk_29EDD8EF8;
          v170 = v14;
          objc_msgSend_addCompletedHandler_(v101, v124, v169);
        }

        objc_msgSend_commit(v101, v114, v115);

        v15 = v101;
        v27 = v160 - 1;
        res_tex = v108;
        selfCopy = v106;
        if (v160 == 1)
        {
          goto LABEL_26;
        }
      }

      sub_29579A378(v62);
      v15 = v101;
      res_tex = v108;
      selfCopy = v106;
      v95 = v162;
LABEL_41:

      goto LABEL_42;
    }

    v101 = v15;
LABEL_26:
    if (v155 < 1)
    {
      LODWORD(v62) = 0;
      v147 = 1;
      v15 = v101;
      goto LABEL_34;
    }

    v15 = objc_msgSend_commandBuffer(selfCopy->_commandQueue, v90, v91);

    if (!v15)
    {
      sub_29579A3F4(v178);
      goto LABEL_46;
    }

    v127 = objc_msgSend_hbfParameters(v158, v125, v126);
    objc_msgSend_setParams_(selfCopy->_hbfgpuInstance, v128, v127);

    v130 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(selfCopy->_tvl1Instance, v129, v14, HIDWORD(v177));
    v133 = objc_msgSend_textureUVAtLevel_idx_swap_uv_(selfCopy->_tvl1Instance, v131, v14, HIDWORD(v177) ^ 1u);
    LODWORD(v134) = 1.0;
    v135 = v133;
    if (!v14)
    {
      v135 = selfCopy->_uv_tex_user_ref;
      *&v134 = v6;
    }

    objc_msgSend_doFilterWithCommandBuffer_in_I_tex_in_J_u32_tex_in_W_tex_out_tex_disparity_scaling_factor_(selfCopy->_hbfgpuInstance, v132, v15, v130, v153, 0, v135, v134);
    HIDWORD(v177) ^= 1u;
    if (*MEMORY[0x29EDB9270])
    {
      v138 = objc_msgSend_commandQueue(v15, v136, v137);
      v141 = objc_msgSend_commandBuffer(v138, v139, v140);

      objc_msgSend_setLabel_(v141, v142, @"KTRACE_MTLCMDBUF");
      v167[0] = MEMORY[0x29EDCA5F8];
      v167[1] = 3221225472;
      v167[2] = sub_2957896FC;
      v167[3] = &unk_29EDD8EF8;
      v168 = v14;
      objc_msgSend_addCompletedHandler_(v141, v143, v167);
      objc_msgSend_commit(v141, v144, v145);
      v165[0] = MEMORY[0x29EDCA5F8];
      v165[1] = 3221225472;
      v165[2] = sub_295789730;
      v165[3] = &unk_29EDD8EF8;
      v166 = v14;
      objc_msgSend_addCompletedHandler_(v15, v146, v165);
    }

    objc_msgSend_commit(v15, v136, v137);

    LODWORD(v62) = 0;
    v147 = 1;
LABEL_34:

    if (!v147)
    {
      break;
    }
  }

  while (v14-- > 0);

  return v62;
}

- (int)setOutputDisparity:(__CVBuffer *)disparity
{
  if (disparity)
  {
    if (CVPixelBufferGetWidth(disparity) == self->_outputDisparityResolution.width && CVPixelBufferGetHeight(disparity) == self->_outputDisparityResolution.height)
    {
      v6 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_mtlContext, v5, disparity, 25, 22, 0, self->_outputDisparityResolution.width);
      uv_tex_user_ref = self->_uv_tex_user_ref;
      self->_uv_tex_user_ref = v6;

      if (self->_uv_tex_user_ref)
      {
        return 0;
      }

      else
      {
        return -12786;
      }
    }

    else
    {
      sub_29579A5F8();
      return -12780;
    }
  }

  else
  {
    v9 = self->_uv_tex_user_ref;
    self->_uv_tex_user_ref = 0;

    return 0;
  }
}

- (int)estimateFocusPixelDisparityWithBox_cstr_range:(float)box_cstr_range disparity_scaling_factor:
{
  v5 = v4;
  v6 = *&box_cstr_range;
  v18 = *objc_msgSend_pyramidDimensions(self->_imagePyramid, a2, v3);
  v10 = objc_msgSend_pyramidDimensions(self->_imagePyramid, v8, v9);
  v11.f64[0] = v18;
  v11.f64[1] = *(v10 + 8);
  LODWORD(v12) = v5;
  v15 = objc_msgSend__computeFocusPixelDisparityFromResolution_box_cstr_range_disparity_scaling_factor_(self, v13, v14, COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(vrndmq_f64(v11)))), v6, v12);
  v16 = v15;
  if (v15)
  {
    sub_29579A66C(v15);
  }

  return v16;
}

- (int)_setupFPPipelines
{
  v3 = objc_msgSend_CreateKernelWithConst_constants_(self, a2, @"costNCC", 0);
  costNCCPipelineState = self->_costNCCPipelineState;
  self->_costNCCPipelineState = v3;

  if (!self->_costNCCPipelineState)
  {
    sub_29579AB9C(&v27);
    return v27;
  }

  v6 = objc_msgSend_CreateKernelWithConst_constants_(self, v5, @"filterVert", 0);
  filterVertPipelineState = self->_filterVertPipelineState;
  self->_filterVertPipelineState = v6;

  if (!self->_filterVertPipelineState)
  {
    sub_29579AAF0(&v27);
    return v27;
  }

  v9 = objc_msgSend_CreateKernelWithConst_constants_(self, v8, @"filterHorz", 0);
  filterHorzPipelineState = self->_filterHorzPipelineState;
  self->_filterHorzPipelineState = v9;

  if (!self->_filterHorzPipelineState)
  {
    sub_29579AA44(&v27);
    return v27;
  }

  v12 = objc_msgSend_CreateKernelWithConst_constants_(self, v11, @"interpolateAndSet", 0);
  interpolateAndSetPipelineState = self->_interpolateAndSetPipelineState;
  self->_interpolateAndSetPipelineState = v12;

  if (!self->_interpolateAndSetPipelineState)
  {
    sub_29579A998(&v27);
    return v27;
  }

  v15 = objc_msgSend_CreateKernelWithConst_constants_(self, v14, @"interpolateAndAccum", 0);
  interpolateAndAccumPipelineState = self->_interpolateAndAccumPipelineState;
  self->_interpolateAndAccumPipelineState = v15;

  if (!self->_interpolateAndAccumPipelineState)
  {
    sub_29579A8EC(&v27);
    return v27;
  }

  v18 = objc_msgSend_CreateKernelWithConst_constants_(self, v17, @"proximityOperator", 0);
  proximityOperatorPipelineState = self->_proximityOperatorPipelineState;
  self->_proximityOperatorPipelineState = v18;

  if (!self->_proximityOperatorPipelineState)
  {
    sub_29579A840(&v27);
    return v27;
  }

  v21 = objc_msgSend_CreateKernelWithConst_constants_(self, v20, @"fdp_local_regularization_kernel", 0);
  regularizationPipelineState = self->_regularizationPipelineState;
  self->_regularizationPipelineState = v21;

  if (!self->_regularizationPipelineState)
  {
    sub_29579A794(&v27);
    return v27;
  }

  v24 = objc_msgSend_CreateKernelWithConst_constants_(self, v23, @"correction_map_generation_kernel", 0);
  correctionMapGenerationPipelineState = self->_correctionMapGenerationPipelineState;
  self->_correctionMapGenerationPipelineState = v24;

  if (!self->_correctionMapGenerationPipelineState)
  {
    sub_29579A6E8(&v27);
    return v27;
  }

  return 0;
}

- (int)_doLocalRegularizationWithCommandBuffer:(id)buffer in_tex:(id)in_tex level:(int)level parameters:(id)parameters
{
  v7 = *&level;
  in_texCopy = in_tex;
  v94 = 0;
  v95 = 0;
  parametersCopy = parameters;
  bufferCopy = buffer;
  objc_msgSend_alpha(parametersCopy, v13, v14);
  v92[0] = v15;
  objc_msgSend_beta(parametersCopy, v16, v17);
  v92[1] = v18;
  objc_msgSend_gain(parametersCopy, v19, v20);
  v92[2] = v21;
  objc_msgSend_offset(parametersCopy, v22, v23);
  v92[3] = v24;
  objc_msgSend_segmentation_bias_foreground(parametersCopy, v25, v26);
  v92[4] = v27;
  objc_msgSend_segmentation_bias_background(parametersCopy, v28, v29);
  v31 = v30;

  v92[5] = v31;
  width = self->_outputDisparityResolution.width;
  v34 = objc_msgSend_width(in_texCopy, v32, v33);
  v35.f64[0] = width;
  v35.f64[1] = self->_outputDisparityResolution.height;
  __asm { FMOV            V0.2D, #-1.0 }

  v41 = vcvt_f32_f64(vaddq_f64(v35, _Q0));
  v44 = objc_msgSend_height(in_texCopy, v42, v43);
  v45.i64[0] = v34;
  v45.i64[1] = v44;
  v46.i64[0] = -1;
  v46.i64[1] = -1;
  v47 = vdiv_f32(v41, vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v45, v46))));
  v50 = objc_msgSend_width(self->_segmentationTexture, v48, v49);
  v51 = self->_outputDisparityResolution.width;
  *&width = v50 / v51;
  v54 = objc_msgSend_height(self->_segmentationTexture, v52, v53);
  height = self->_outputDisparityResolution.height;
  v93 = v47;
  v94 = __PAIR64__(v54 / height, LODWORD(width));
  v57 = objc_msgSend_textureRaAtLevel_(self->_tvl1Instance, v56, v7);
  v59 = objc_msgSend_textureRbAtLevel_(self->_tvl1Instance, v58, v7);
  v61 = objc_msgSend_textureRdAtLevel_(self->_tvl1Instance, v60, v7);
  v62 = self->_regularizationPipelineState;
  v65 = objc_msgSend_computeCommandEncoder(bufferCopy, v63, v64);

  if (v65)
  {
    objc_msgSend_setComputePipelineState_(v65, v66, v62);
    objc_msgSend_setTexture_atIndex_(v65, v67, in_texCopy, 0);
    objc_msgSend_setTexture_atIndex_(v65, v68, self->_segmentationTexture, 1);
    objc_msgSend_setTexture_atIndex_(v65, v69, self->_segmentationConfidenceTexture, 2);
    objc_msgSend_setTexture_atIndex_(v65, v70, v57, 3);
    objc_msgSend_setTexture_atIndex_(v65, v71, v59, 4);
    objc_msgSend_setTexture_atIndex_(v65, v72, v61, 5);
    objc_msgSend_setBytes_length_atIndex_(v65, v73, v92, 48, 0);
    v76 = objc_msgSend_threadExecutionWidth(v62, v74, v75);
    v79 = objc_msgSend_maxTotalThreadsPerThreadgroup(v62, v77, v78) / v76;
    v91[0] = objc_msgSend_width(in_texCopy, v80, v81);
    v91[1] = objc_msgSend_height(in_texCopy, v82, v83);
    v91[2] = 1;
    v90[0] = v76;
    v90[1] = v79;
    v90[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v65, v84, v91, v90);
    objc_msgSend_endEncoding(v65, v85, v86);
    v87 = 0;
  }

  else
  {
    sub_29579AC48(v91);
    v87 = v91[0];
  }

  return v87;
}

- (int)_computeCost:(id)cost texGreenPixels:(id)pixels texOutputResU:(id)u texOutputHesU:(id)hesU level:(unsigned int)level resolutionScale:(float)scale
{
  costCopy = cost;
  pixelsCopy = pixels;
  uCopy = u;
  hesUCopy = hesU;
  v200 = 0u;
  v201 = 0u;
  v199 = 0u;
  v20 = objc_msgSend_width(costCopy, v18, v19);
  v184 = costCopy;
  v23 = objc_msgSend_height(costCopy, v21, v22);
  LODWORD(u) = v23;
  v198[0] = __PAIR64__(v23, v20);
  LODWORD(costCopy) = objc_msgSend_width(pixelsCopy, v24, v25);
  v198[1] = __PAIR64__(objc_msgSend_height(pixelsCopy, v26, v27), costCopy);
  v29 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v28, 25, v20, u, 0);
  v32 = v29;
  if (!v29)
  {
    sub_29579B1D4(v202);
    v168 = v202[0];
    goto LABEL_28;
  }

  v33 = objc_msgSend_usage(v29, v30, v31);
  v183 = v32;
  objc_msgSend_setUsage_(v32, v34, v33 | 3);
  DWORD1(v200) = objc_msgSend_computeAlignedSize_pixelFormat_(self, v35, 16 * v20, 125) >> 2;
  v37 = objc_msgSend_objectAtIndexedSubscript_(self->_GChannelPyramid, v36, 0);
  v181 = objc_msgSend_width(pixelsCopy, v38, v39);
  v42 = objc_msgSend_width(v37, v40, v41);
  v45 = objc_msgSend_height(pixelsCopy, v43, v44);
  v48 = objc_msgSend_height(v37, v46, v47);
  v51 = objc_msgSend_width(v37, v49, v50);
  v176 = v37;
  *&v199 = __PAIR64__(objc_msgSend_height(v37, v52, v53), v51);
  v56 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v54, v55);
  objc_msgSend_microlensSpatialOffset(v56, v57, v58);
  v60 = v59;

  v63 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v61, v62);
  v66 = objc_msgSend_nView(v63, v64, v65);

  if (!v66)
  {
    v187 = 0;
    v152 = 0;
    v108 = 0;
    v32 = v183;
LABEL_23:
    v153 = objc_msgSend_commandBuffer(self->_commandQueue, v67, v68);
    if (v153)
    {
      v155 = v153;
      v156 = objc_msgSend__proximityOperator_dynCfg_texDisparityIn_texOutputResUOut_texOutputHesUOut_level_(self, v154, v153, v198, v184, uCopy, hesUCopy, level);
      if (!v156)
      {
        if (*MEMORY[0x29EDB9270])
        {
          v159 = objc_msgSend_commandQueue(v155, v157, v158);
          v162 = objc_msgSend_commandBuffer(v159, v160, v161);

          objc_msgSend_setLabel_(v162, v163, @"KTRACE_MTLCMDBUF");
          v190[0] = MEMORY[0x29EDCA5F8];
          v190[1] = 3221225472;
          v190[2] = sub_29578A888;
          v190[3] = &unk_29EDD8EF8;
          levelCopy = level;
          objc_msgSend_addCompletedHandler_(v162, v164, v190);
          objc_msgSend_commit(v162, v165, v166);
          v188[0] = MEMORY[0x29EDCA5F8];
          v188[1] = 3221225472;
          v188[2] = sub_29578A8BC;
          v188[3] = &unk_29EDD8EF8;
          levelCopy2 = level;
          objc_msgSend_addCompletedHandler_(v155, v167, v188);
        }

        objc_msgSend_commit(v155, v157, v158);

        v168 = 0;
        goto LABEL_28;
      }

      v168 = v156;
      fig_log_get_emitter();
      LODWORD(v170) = v168;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v170, v8, v8, v174, v175, v176, p_yRawBase, v180);
    }

    else
    {
      fig_log_get_emitter();
      LODWORD(v170) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v170, v8, v8, v174, v175, v176, p_yRawBase, v180);
      fig_log_get_emitter();
      v168 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v171, v172, v173);
    }

    goto LABEL_28;
  }

  v174 = hesUCopy;
  v175 = uCopy;
  v69 = 0;
  v186 = 0;
  v187 = 0;
  v70 = 0;
  v71 = 0;
  v72 = (v181 - 1) / (v42 - 1);
  v180 = self + 912;
  p_yRawBase = &self->_V1Metadata.yRawBase;
  v73 = (v45 - 1) / (v48 - 1);
  v182 = pixelsCopy;
  while (1)
  {
    if (v71 == 3)
    {
      p_V1Metadata = &self->_V1Metadata;
      p_V1ImTexture = &self->_V1ImTexture;
      v79 = 0.0;
      p_xRawBase = &self->_V1Metadata.xRawBase;
      p_yRawStep = &self->_V1Metadata.yRawStep;
      v78 = &self->_V1Metadata.yRawBase;
    }

    else if (v71 == 2)
    {
      p_V1Metadata = &self->_V0Metadata;
      p_V1ImTexture = &self->_V0ImTexture;
      v79 = 0.0;
      p_xRawBase = &self->_V0Metadata.xRawBase;
      p_yRawStep = &self->_V0Metadata.yRawStep;
      v78 = &self->_V0Metadata.yRawBase;
    }

    else
    {
      p_V1Metadata = &self->_H0Metadata;
      p_V1ImTexture = &self->_H0ImTexture;
      p_xRawBase = &self->_H0Metadata.xRawBase;
      p_yRawStep = &self->_H0Metadata.yRawStep;
      v78 = &self->_H0Metadata.yRawBase;
      v79 = v60;
      if (v71 == 1)
      {
        p_V1Metadata = &self->_H1Metadata;
        p_V1ImTexture = &self->_H1ImTexture;
        p_xRawBase = &self->_H1Metadata.xRawBase;
        p_yRawStep = &self->_H1Metadata.yRawStep;
        v78 = &self->_H1Metadata.yRawBase;
        v79 = -v60;
      }
    }

    v80 = *p_V1ImTexture;
    v81 = *v78;
    v82 = *p_yRawStep;
    xRawStep = p_V1Metadata->xRawStep;
    LODWORD(v200) = v71;
    v84 = *p_xRawBase;
    v87 = objc_msgSend_width(v80, v85, v86);
    *(&v199 + 1) = __PAIR64__(objc_msgSend_height(v80, v88, v89), v87);
    DWORD2(v200) = xRawStep;
    *(&v200 + 3) = v79 + v84;
    *&v201 = __PAIR64__(v82, LODWORD(v72));
    *(&v201 + 1) = __PAIR64__(LODWORD(v73), v81);
    v32 = v183;
    objc_msgSend_setPixelFormat_(v183, v90, 125);
    v93 = objc_msgSend_width(v80, v91, v92);
    objc_msgSend_setWidth_(v183, v94, v93);
    v97 = objc_msgSend_height(v80, v95, v96);
    objc_msgSend_setHeight_(v183, v98, v97);
    v101 = 16 * objc_msgSend_width(v80, v99, v100);
    v104 = objc_msgSend_pixelFormat(v183, v102, v103);
    v106 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v105, v101, v104);
    v108 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc1, v107, v183, 0, v106);

    if (!v108)
    {
      sub_29579B118(v70, v202);
      v168 = v202[0];
      v110 = v186;
      v70 = v187;
      pixelsCopy = v182;
      goto LABEL_38;
    }

    v110 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc2, v109, v183, 0, v106);

    pixelsCopy = v182;
    if (!v110)
    {
      sub_29579B06C(v202);
      v168 = v202[0];
      v110 = v187;
      goto LABEL_38;
    }

    objc_msgSend_setPixelFormat_(v183, v111, 115);
    v114 = 8 * objc_msgSend_width(v80, v112, v113);
    v117 = objc_msgSend_pixelFormat(v183, v115, v116);
    v119 = objc_msgSend_computeAlignedSize_pixelFormat_(self, v118, v114, v117);
    v121 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_bufTcLrc1, v120, v183, 0, v119);

    if (!v121)
    {
      sub_29579AFC0(v202);
      v168 = v202[0];
      goto LABEL_38;
    }

    v124 = v121;
    v125 = objc_msgSend_commandBuffer(self->_commandQueue, v122, v123);

    if (!v125)
    {
      sub_29579AF14(v202);
      v168 = v202[0];
      goto LABEL_37;
    }

    v70 = v125;
    LODWORD(v170) = level;
    *&v127 = scale;
    v128 = objc_msgSend__costNCC_dynCfg_texDisparityIn_texGreenPixelsIn_texFocusPixelsIn_texTcLrcOut_resolutionScale_level_(self, v126, v125, v198, v184, v182, v80, v108, v127, v170);
    if (v128)
    {
      v168 = v128;
      sub_29579ACF4();
      goto LABEL_37;
    }

    v130 = objc_msgSend__filterVert_texTcLrcIn_texTcLrcOut_dynCfg_(self, v129, v125, v108, v110, v198);
    if (v130)
    {
      v168 = v130;
      sub_29579AD7C();
      goto LABEL_37;
    }

    v132 = objc_msgSend__filterHorz_texTcLrcIn_texTcLrcOut_dynCfg_(self, v131, v125, v110, v124, v198);
    if (v132)
    {
      v168 = v132;
      sub_29579AE04();
      goto LABEL_37;
    }

    v134 = objc_msgSend__interpolateAndAccumulate_texTcLrcIn_dynCfg_(self, v133, v125, v124, v198);
    if (v134)
    {
      break;
    }

    v186 = v110;
    v187 = v124;
    if (*MEMORY[0x29EDB9270])
    {
      v137 = objc_msgSend_commandQueue(v125, v135, v136);
      v140 = objc_msgSend_commandBuffer(v137, v138, v139);

      objc_msgSend_setLabel_(v140, v141, @"KTRACE_MTLCMDBUF");
      v195[0] = MEMORY[0x29EDCA5F8];
      v195[1] = 3221225472;
      v195[2] = sub_29578A79C;
      v195[3] = &unk_29EDD8F18;
      levelCopy3 = level;
      v197 = v71;
      objc_msgSend_addCompletedHandler_(v140, v142, v195);
      objc_msgSend_commit(v140, v143, v144);
      v192[0] = MEMORY[0x29EDCA5F8];
      v192[1] = 3221225472;
      v192[2] = sub_29578A7CC;
      v192[3] = &unk_29EDD8F18;
      levelCopy4 = level;
      v194 = v71;
      objc_msgSend_addCompletedHandler_(v70, v145, v192);
    }

    objc_msgSend_commit(v70, v135, v136);

    ++v71;
    v148 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v146, v147);
    v151 = objc_msgSend_nView(v148, v149, v150);

    v69 = v108;
    if (v71 >= v151)
    {

      hesUCopy = v174;
      uCopy = v175;
      v152 = v186;
      goto LABEL_23;
    }
  }

  v168 = v134;
  sub_29579AE8C();
LABEL_37:
  v70 = v124;
LABEL_38:

  hesUCopy = v174;
  uCopy = v175;
LABEL_28:

  return v168;
}

- (int)_costNCC:(id)c dynCfg:(id *)cfg texDisparityIn:(id)in texGreenPixelsIn:(id)pixelsIn texFocusPixelsIn:(id)focusPixelsIn texTcLrcOut:(id)out resolutionScale:(float)scale level:(unsigned int)self0
{
  inCopy = in;
  pixelsInCopy = pixelsIn;
  focusPixelsInCopy = focusPixelsIn;
  outCopy = out;
  v232 = 0u;
  v233 = 0u;
  v231 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v226 = 0u;
  cCopy = c;
  v22 = objc_msgSend_width(pixelsInCopy, v20, v21);
  v25 = objc_msgSend_height(pixelsInCopy, v23, v24);
  v26.i64[0] = v22;
  v26.i64[1] = v25;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  *&v230 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v26, v27))), 0x3F0000003F000000);
  v30 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v28, v29);
  objc_msgSend_lensFieldCurvatureA0(v30, v31, v32);
  LODWORD(v231) = v33;

  v36 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v34, v35);
  objc_msgSend_lensFieldCurvatureA1(v36, v37, v38);
  DWORD1(v231) = v39;

  v42 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v40, v41);
  objc_msgSend_lensFieldCurvatureA2(v42, v43, v44);
  DWORD2(v231) = v45;

  v48 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v46, v47);
  objc_msgSend_lensFieldCurvatureA3(v48, v49, v50);
  HIDWORD(v231) = v51;

  v54 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v52, v53);
  objc_msgSend_lensFieldCurvatureA4(v54, v55, v56);
  LODWORD(v232) = v57;

  v60 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v58, v59);
  objc_msgSend_circleOfConfusionGain(v60, v61, v62);
  DWORD1(v232) = v63;

  v66 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v64, v65);
  objc_msgSend_circleOfConfusionOffset(v66, v67, v68);
  *(&v232 + 1) = __PAIR64__(LODWORD(scale), v69);

  if (objc_msgSend_quadraBinningFactor(self, v70, v71) == 2)
  {
    v74 = 2;
  }

  else
  {
    v74 = 1;
  }

  if (objc_msgSend_quadraBinningFactor(self, v72, v73, focusPixelsInCopy))
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  objc_msgSend_sensorCropRect(self, v75, v76);
  v217 = v78;
  objc_msgSend_sensorCropRect(self, v79, v80);
  v81.f64[0] = v217;
  v81.f64[1] = v82;
  v83 = vmovn_s64(vcvtq_s64_f64(v81));
  objc_msgSend_sensorReadoutRect(self, v84, v85);
  v218 = v86;
  objc_msgSend_sensorReadoutRect(self, v87, v88);
  v89.f64[0] = v218;
  v89.f64[1] = v90;
  v91 = vmovn_s64(vcvtq_s64_f64(v89));
  objc_msgSend_totalSensorCropRect(self, v92, v93);
  v219 = v94;
  objc_msgSend_totalSensorCropRect(self, v95, v96);
  v97.f64[0] = v219;
  v97.f64[1] = v98;
  v99 = vmovn_s64(vcvtq_s64_f64(v97));
  objc_msgSend_totalSensorCropRect(self, v100, v101);
  v220 = v102;
  objc_msgSend_totalSensorCropRect(self, v103, v104);
  v105.f64[0] = v220;
  v105.f64[1] = v106;
  v107 = vdup_n_s32(v74);
  v108 = vmla_s32(v83, vadd_s32(v99, v91), v107);
  v109 = vmul_s32(v107, vmovn_s64(vcvtq_s64_f64(v105)));
  WORD5(v230) = (v108.i32[1] & 0xFFF0FFFF) / v77;
  WORD4(v230) = (v108.i32[0] & 0xFFF0FFFF) / v77;
  HIWORD(v230) = (v109.i32[1] & 0xFFFCFFFF) / v77;
  WORD6(v230) = (v109.i32[0] & 0xFFFCFFFF) / v77;
  v112 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v110, v111);
  v114 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, level);
  v117 = objc_msgSend_costParameters(v114, v115, v116);
  objc_msgSend_step(v117, v118, v119);
  v216 = v120;

  if (self->_disparityCorrectionTex)
  {
    v123 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v121, v122);
    objc_msgSend_AGCHigh(v123, v124, v125);
    v127 = v126;
    v130 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v128, v129);
    objc_msgSend_AGCLow(v130, v131, v132);
    v134 = v127 - v133;

    if (v134 > 0.0)
    {
      imageAGC = self->_imageAGC;
      v136 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v121, v122);
      objc_msgSend_AGCLow(v136, v137, v138);
      v140 = fminf((imageAGC - v139) / v134, 1.0);

      v143 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v141, v142);
      v145 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, level);
      v148 = objc_msgSend_costParameters(v145, v146, v147);
      objc_msgSend_stepLowlight(v148, v149, v150);
      v216 = v216 + (v140 * (v151 - v216));
    }
  }

  LODWORD(v152) = cfg[1].var2.var0.var0;
  *&v153 = cfg[1].var2.var0.var1;
  HIDWORD(v152) = cfg[1].var2.var1.var0;
  *(&v153 + 1) = cfg[1].var2.var1.var1;
  *&v226 = v152;
  *(&v226 + 1) = v153;
  v154 = vcvt_f32_u32(vadd_s32(*&cfg->var0, 0x100000001));
  v155 = vdup_n_s32(0x4B400000u);
  v156 = vdup_n_s32(0xCB400000);
  v157 = vadd_f32(vadd_f32(vorr_s8(vand_s8(v108, 0xFFFF0000FFFFLL), v155), v156), 0xBF000000BF000000);
  __asm { FMOV            V1.2S, #1.0 }

  v163 = vadd_f32(vadd_f32(vorr_s8(vand_s8(v109, 0xFFFF0000FFFFLL), v155), v156), _D1);
  v221 = (objc_msgSend_width(outCopy, v121, v122) + 1);
  v166 = objc_msgSend_height(outCopy, v164, v165);
  v167.f32[0] = v221;
  v167.f32[1] = (v166 + 1);
  v222 = v167;
  if (objc_msgSend_quadraBinningFactor(self, v168, v169))
  {
    v172 = 2;
  }

  else
  {
    v172 = 1;
  }

  v173.i32[0] = LODWORD(cfg[1].var2.var0.var1);
  v174.f32[0] = cfg[1].var2.var0.var0;
  *&v175 = cfg[1].var2.var0.var2;
  v174.f32[1] = cfg[1].var2.var1.var0;
  v173.f32[1] = cfg[1].var2.var1.var1;
  v176 = vmul_n_f32(v174, v172);
  v177 = vmla_n_f32(vmul_f32(v176, 0xBF000000BF000000), v173, v172);
  v178 = vdiv_f32(vmul_f32(v222, v176), v222);
  v179 = vdiv_f32(v154, v163);
  *&v227 = vmul_f32(v179, v178);
  *(&v227 + 1) = vmla_f32(0xBF000000BF000000, v179, vmla_f32(vsub_f32(v177, v157), 0x3F0000003F000000, v178));
  HIDWORD(v175) = LODWORD(cfg[1].var2.var1.var2);
  *&v233 = v175;
  var0 = cfg[1].var0;
  if (var0 == 1)
  {
    *&v228 = 3212836864;
    *(&v228 + 1) = LODWORD(v216);
    v181 = v214;
  }

  else
  {
    v181 = v214;
    if (var0 == 2)
    {
      v183 = 0x3F80000000000000;
      LODWORD(v184) = 0;
      *(&v184 + 1) = -v216;
    }

    else
    {
      if (var0 == 3)
      {
        LODWORD(v182) = 0;
        *(&v182 + 1) = v216;
        *&v228 = 0xBF80000000000000;
        *(&v228 + 1) = v182;
        goto LABEL_21;
      }

      v183 = 1065353216;
      HIDWORD(v184) = 0;
      *&v184 = -v216;
    }

    *&v228 = v183;
    *(&v228 + 1) = v184;
  }

LABEL_21:
  *&v229 = vdiv_f32(vcvt_f32_u32(vadd_s32(*&cfg->var0, -1)), vcvt_f32_u32(vadd_s32(*&cfg->var2.var0.var0, -1)));
  v185 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v170, v171);
  WORD4(v229) = objc_msgSend_rigidWindowSupport(v185, v186, v187) >> 1;

  v190 = objc_msgSend_computeCommandEncoder(cCopy, v188, v189);

  if (v190)
  {
    objc_msgSend_setComputePipelineState_(v190, v191, self->_costNCCPipelineState);
    objc_msgSend_setTexture_atIndex_(v190, v192, v181, 0);
    objc_msgSend_setTexture_atIndex_(v190, v193, pixelsInCopy, 1);
    v194 = inCopy;
    objc_msgSend_setTexture_atIndex_(v190, v195, inCopy, 2);
    objc_msgSend_setTexture_atIndex_(v190, v196, self->_disparityCorrectionTex, 3);
    objc_msgSend_setTexture_atIndex_(v190, v197, self->_binaryLambdaTexture, 4);
    objc_msgSend_setTexture_atIndex_(v190, v198, outCopy, 5);
    objc_msgSend_setBytes_length_atIndex_(v190, v199, &v226, 128, 0);
    v202 = objc_msgSend_threadExecutionWidth(self->_costNCCPipelineState, v200, v201);
    v205 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_costNCCPipelineState, v203, v204);
    v206 = *&cfg->var2.var1.var1;
    *&v207 = v206;
    *(&v207 + 1) = HIDWORD(v206);
    v224 = v207;
    v225 = 1;
    v223[0] = v202;
    v223[1] = v205 / v202;
    v223[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v190, v208, &v224, v223);
    objc_msgSend_endEncoding(v190, v209, v210);
    v211 = 0;
  }

  else
  {
    sub_29579B280(&v224);
    v211 = v224;
    v194 = inCopy;
  }

  return v211;
}

- (int)_filterVert:(id)vert texTcLrcIn:(id)in texTcLrcOut:(id)out dynCfg:(id *)cfg
{
  inCopy = in;
  outCopy = out;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  vertCopy = vert;
  v16 = objc_msgSend_FPcostParameters(fpDisparityEstimatorParams, v14, v15);
  objc_msgSend_costMapAntialiasingStrength(v16, v17, v18);
  v20 = (v19 * LODWORD(cfg->var2.var1.var2)) / cfg->var1;

  *&v21 = roundf(v20 * 6.0);
  *&v22 = v20;
  LOWORD(v48) = objc_msgSend_computeFilterCurve_p3_array_(self, v23, v47, v21, v22);
  v26 = objc_msgSend_computeCommandEncoder(vertCopy, v24, v25);

  if (v26)
  {
    objc_msgSend_setComputePipelineState_(v26, v27, self->_filterVertPipelineState);
    objc_msgSend_setTexture_atIndex_(v26, v28, inCopy, 0);
    objc_msgSend_setTexture_atIndex_(v26, v29, outCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v26, v30, v47, 272, 0);
    v33 = objc_msgSend_threadExecutionWidth(self->_filterVertPipelineState, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_filterVertPipelineState, v34, v35);
    v37 = *&cfg->var2.var1.var1;
    *&v38 = v37;
    *(&v38 + 1) = HIDWORD(v37);
    v45 = v38;
    v46 = 1;
    v44[0] = v33;
    v44[1] = v36 / v33;
    v44[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v39, &v45, v44);
    objc_msgSend_endEncoding(v26, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_29579B32C(&v45);
    v42 = v45;
  }

  return v42;
}

- (int)_filterHorz:(id)horz texTcLrcIn:(id)in texTcLrcOut:(id)out dynCfg:(id *)cfg
{
  inCopy = in;
  outCopy = out;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  horzCopy = horz;
  v16 = objc_msgSend_FPcostParameters(fpDisparityEstimatorParams, v14, v15);
  objc_msgSend_costMapAntialiasingStrength(v16, v17, v18);
  v20 = (v19 * *&cfg->var2.var1.var1) / *&cfg->var0;

  *&v21 = roundf(v20 * 6.0);
  *&v22 = v20;
  LOWORD(v48) = objc_msgSend_computeFilterCurve_p3_array_(self, v23, v47, v21, v22);
  v26 = objc_msgSend_computeCommandEncoder(horzCopy, v24, v25);

  if (v26)
  {
    objc_msgSend_setComputePipelineState_(v26, v27, self->_filterHorzPipelineState);
    objc_msgSend_setTexture_atIndex_(v26, v28, inCopy, 0);
    objc_msgSend_setTexture_atIndex_(v26, v29, outCopy, 1);
    objc_msgSend_setBytes_length_atIndex_(v26, v30, v47, 272, 0);
    v33 = objc_msgSend_threadExecutionWidth(self->_filterHorzPipelineState, v31, v32);
    v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_filterHorzPipelineState, v34, v35);
    v37 = *&cfg->var2.var1.var1;
    *&v38 = v37;
    *(&v38 + 1) = HIDWORD(v37);
    v45 = v38;
    v46 = 1;
    v44[0] = v33;
    v44[1] = v36 / v33;
    v44[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v26, v39, &v45, v44);
    objc_msgSend_endEncoding(v26, v40, v41);
    v42 = 0;
  }

  else
  {
    sub_29579B3D8(&v45);
    v42 = v45;
  }

  return v42;
}

- (int)_interpolateAndAccumulate:(id)accumulate texTcLrcIn:(id)in dynCfg:(id *)cfg
{
  inCopy = in;
  v101 = 0;
  v102 = 0;
  v9 = 56;
  if (!cfg[1].var0)
  {
    v9 = 48;
  }

  v10 = *(&self->super.isa + v9);
  v11 = vadd_s32(*&cfg->var2.var0.var0, -1);
  v102 = vadd_s32(*&cfg->var0, -1);
  v103 = v11;
  v104 = vadd_s32(*&cfg->var2.var0.var2, -1);
  accumulateCopy = accumulate;
  if (objc_msgSend_quadraBinningFactor(self, v13, v14) == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = vcvt_f32_u32(*&cfg->var0);
  objc_msgSend_sensorCropRect(self, v15, v16);
  v93 = v19;
  objc_msgSend_sensorCropRect(self, v20, v21);
  v22.f64[0] = v93;
  v22.f64[1] = v23;
  v24 = vmovn_s64(vcvtq_s64_f64(v22));
  objc_msgSend_sensorReadoutRect(self, v25, v26);
  v94 = v27;
  objc_msgSend_sensorReadoutRect(self, v28, v29);
  v30.f64[0] = v94;
  v30.f64[1] = v31;
  v32 = vmovn_s64(vcvtq_s64_f64(v30));
  objc_msgSend_totalSensorCropRect(self, v33, v34);
  v95 = v35;
  objc_msgSend_totalSensorCropRect(self, v36, v37);
  v38.f64[0] = v95;
  v38.f64[1] = v39;
  v40 = vmovn_s64(vcvtq_s64_f64(v38));
  objc_msgSend_totalSensorCropRect(self, v41, v42);
  v96 = v43;
  objc_msgSend_totalSensorCropRect(self, v44, v45);
  v46.f64[0] = v96;
  v46.f64[1] = v47;
  v48 = vdup_n_s32(v17);
  v49 = vmla_s32(v24, vadd_s32(v40, v32), v48);
  *&v46.f64[0] = vmul_s32(v48, vmovn_s64(vcvtq_s64_f64(v46)));
  v50 = vdup_n_s32(0x4B400000u);
  v51 = vdup_n_s32(0xCB400000);
  v52 = vadd_f32(vadd_f32(vorr_s8((*&v49 & 0xFFF0FFFFFFF0FFFFLL), v50), v51), 0xBF000000BF000000);
  *&v46.f64[0] = vadd_f32(vorr_s8((*&v46.f64[0] & 0xFFFCFFFFFFFCFFFFLL), v50), v51);
  __asm { FMOV            V1.2S, #1.0 }

  v58 = vadd_f32(*&v46.f64[0], _D1);
  *&v96 = (objc_msgSend_width(inCopy, v59, v60) + 1);
  v63 = objc_msgSend_height(inCopy, v61, v62);
  v64.i32[0] = LODWORD(v96);
  v64.f32[1] = (v63 + 1);
  v97 = v64;
  if (objc_msgSend_quadraBinningFactor(self, v65, v66))
  {
    v69 = 2;
  }

  else
  {
    v69 = 1;
  }

  v70.i32[0] = LODWORD(cfg[1].var2.var0.var1);
  v71.f32[0] = cfg[1].var2.var0.var0;
  v71.f32[1] = cfg[1].var2.var1.var0;
  v72 = vmul_n_f32(v71, v69);
  v70.f32[1] = cfg[1].var2.var1.var1;
  v73 = vmla_n_f32(vmul_f32(v72, 0xBF000000BF000000), v70, v69);
  v74 = vdiv_f32(v97, vmul_f32(v97, v72));
  v75 = vdiv_f32(v58, v18);
  v105 = vmul_f32(v75, v74);
  v106 = vmla_f32(vmla_f32(0xBF000000BF000000, v74, vsub_f32(v52, v73)), v74, vmul_f32(v75, 0x3F0000003F000000));
  LOWORD(v101) = cfg[1].var1;
  v76 = objc_msgSend_computeCommandEncoder(accumulateCopy, v67, v68);

  if (v76)
  {
    objc_msgSend_setComputePipelineState_(v76, v77, v10);
    objc_msgSend_setTexture_atIndex_(v76, v78, inCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v76, v79, self->_costsBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v76, v80, &v101, 48, 1);
    v83 = objc_msgSend_threadExecutionWidth(v10, v81, v82);
    v86 = objc_msgSend_maxTotalThreadsPerThreadgroup(v10, v84, v85);
    *&v87 = *&cfg->var0;
    *(&v87 + 1) = HIDWORD(*&cfg->var0);
    v99 = v87;
    v100 = 1;
    v98[0] = v83;
    v98[1] = v86 / v83;
    v98[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v76, v88, &v99, v98);
    objc_msgSend_endEncoding(v76, v89, v90);
    v91 = 0;
  }

  else
  {
    sub_29579B484(&v99);
    v91 = v99;
  }

  return v91;
}

- (int)_debugInterpolate:(id)interpolate texTcLrcIn:(id)in dynCfg:(id *)cfg debugBuf:(id)buf
{
  inCopy = in;
  bufCopy = buf;
  v103 = 0;
  v104 = 0;
  v12 = self->_interpolateAndSetPipelineState;
  v13 = vadd_s32(*&cfg->var2.var0.var0, -1);
  v104 = vadd_s32(*&cfg->var0, -1);
  v105 = v13;
  v106 = vadd_s32(*&cfg->var2.var0.var2, -1);
  interpolateCopy = interpolate;
  if (objc_msgSend_quadraBinningFactor(self, v15, v16) == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = vcvt_f32_u32(*&cfg->var0);
  objc_msgSend_sensorCropRect(self, v17, v18);
  v95 = v21;
  objc_msgSend_sensorCropRect(self, v22, v23);
  v24.f64[0] = v95;
  v24.f64[1] = v25;
  v26 = vmovn_s64(vcvtq_s64_f64(v24));
  objc_msgSend_sensorReadoutRect(self, v27, v28);
  v96 = v29;
  objc_msgSend_sensorReadoutRect(self, v30, v31);
  v32.f64[0] = v96;
  v32.f64[1] = v33;
  v34 = vmovn_s64(vcvtq_s64_f64(v32));
  objc_msgSend_totalSensorCropRect(self, v35, v36);
  v97 = v37;
  objc_msgSend_totalSensorCropRect(self, v38, v39);
  v40.f64[0] = v97;
  v40.f64[1] = v41;
  v42 = vmovn_s64(vcvtq_s64_f64(v40));
  objc_msgSend_totalSensorCropRect(self, v43, v44);
  v98 = v45;
  objc_msgSend_totalSensorCropRect(self, v46, v47);
  v48.f64[0] = v98;
  v48.f64[1] = v49;
  v50 = vdup_n_s32(v19);
  v51 = vmla_s32(v26, vadd_s32(v42, v34), v50);
  *&v48.f64[0] = vmul_s32(v50, vmovn_s64(vcvtq_s64_f64(v48)));
  v52 = vdup_n_s32(0x4B400000u);
  v53 = vdup_n_s32(0xCB400000);
  v54 = vadd_f32(vadd_f32(vorr_s8((*&v51 & 0xFFF0FFFFFFF0FFFFLL), v52), v53), 0xBF000000BF000000);
  *&v48.f64[0] = vadd_f32(vorr_s8((*&v48.f64[0] & 0xFFFCFFFFFFFCFFFFLL), v52), v53);
  __asm { FMOV            V1.2S, #1.0 }

  v60 = vadd_f32(*&v48.f64[0], _D1);
  *&v98 = objc_msgSend_width(inCopy, v61, v62);
  v65 = objc_msgSend_height(inCopy, v63, v64);
  v66.i32[0] = LODWORD(v98);
  v66.f32[1] = v65;
  v99 = v66;
  if (objc_msgSend_quadraBinningFactor(self, v67, v68))
  {
    v71 = 2;
  }

  else
  {
    v71 = 1;
  }

  v72.i32[0] = LODWORD(cfg[1].var2.var0.var1);
  v73.f32[0] = cfg[1].var2.var0.var0;
  v73.f32[1] = cfg[1].var2.var1.var0;
  v74 = vmul_n_f32(v73, v71);
  v72.f32[1] = cfg[1].var2.var1.var1;
  v75 = vmla_n_f32(vmul_f32(v74, 0xBF000000BF000000), v72, v71);
  v76 = vdiv_f32(v99, vmul_f32(v99, v74));
  v77 = vdiv_f32(v60, v20);
  v107 = vmul_f32(v77, v76);
  v108 = vmla_f32(vmla_f32(0xBF000000BF000000, v76, vsub_f32(v54, v75)), v76, vmul_f32(v77, 0x3F0000003F000000));
  LOWORD(v103) = cfg[1].var1;
  v78 = objc_msgSend_computeCommandEncoder(interpolateCopy, v69, v70);

  if (v78)
  {
    objc_msgSend_setComputePipelineState_(v78, v79, v12);
    objc_msgSend_setTexture_atIndex_(v78, v80, inCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v78, v81, bufCopy, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v78, v82, &v103, 48, 1);
    v85 = objc_msgSend_threadExecutionWidth(v12, v83, v84);
    v88 = objc_msgSend_maxTotalThreadsPerThreadgroup(v12, v86, v87);
    *&v89 = *&cfg->var0;
    *(&v89 + 1) = HIDWORD(*&cfg->var0);
    v101 = v89;
    v102 = 1;
    v100[0] = v85;
    v100[1] = v88 / v85;
    v100[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v78, v90, &v101, v100);
    objc_msgSend_endEncoding(v78, v91, v92);
    v93 = 0;
  }

  else
  {
    sub_29579B530(&v101);
    v93 = v101;
  }

  return v93;
}

- (int)_proximityOperator:(id)operator dynCfg:(id *)cfg texDisparityIn:(id)in texOutputResUOut:(id)out texOutputHesUOut:(id)uOut level:(unsigned int)level
{
  inCopy = in;
  outCopy = out;
  uOutCopy = uOut;
  v171 = 0u;
  v172 = 0u;
  v170 = 0u;
  fpDisparityEstimatorParams = self->_fpDisparityEstimatorParams;
  operatorCopy = operator;
  v21 = objc_msgSend_levelsParameters(fpDisparityEstimatorParams, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, level);
  v26 = objc_msgSend_costParameters(v23, v24, v25);
  objc_msgSend_lambda(v26, v27, v28);
  v165 = v29;

  v32 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v30, v31);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, level);
  v37 = objc_msgSend_costParameters(v34, v35, v36);
  objc_msgSend_lambda_foreground(v37, v38, v39);
  v166 = v40;

  v43 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v41, v42);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, level);
  v48 = objc_msgSend_costParameters(v45, v46, v47);
  objc_msgSend_lambda_background(v48, v49, v50);
  v167 = v51;

  v54 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v52, v53);
  objc_msgSend_costEpsilon(v54, v55, v56);
  v162[0] = v57;

  v60 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v58, v59);
  objc_msgSend_foregroundPush(v60, v61, v62);
  DWORD1(v170) = v63;

  v66 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v64, v65);
  objc_msgSend_backgroundPush(v66, v67, v68);
  DWORD2(v170) = v69;

  v72 = objc_msgSend_levelsParameters(self->_fpDisparityEstimatorParams, v70, v71);
  v74 = objc_msgSend_objectAtIndexedSubscript_(v72, v73, level);
  v77 = objc_msgSend_costParameters(v74, v75, v76);
  objc_msgSend_step(v77, v78, v79);
  v162[1] = v80;

  var1 = cfg[1].var1;
  v83 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v81, v82);
  v164 = objc_msgSend_nView(v83, v84, v85);

  v88 = objc_msgSend_width(inCopy, v86, v87);
  v91 = objc_msgSend_height(inCopy, v89, v90);
  v92.i64[0] = v88;
  v92.i64[1] = v91;
  v93.i64[0] = -1;
  v93.i64[1] = -1;
  *&v171 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v92, v93))), 0x3F0000003F000000);
  v96 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v94, v95);
  objc_msgSend_radialExponent(v96, v97, v98);
  v169 = v99;

  v102 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v100, v101);
  objc_msgSend_radialGain(v102, v103, v104);
  v168 = v105;

  v108 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, v106, v107);
  objc_msgSend_radialMin(v108, v109, v110);
  LODWORD(v170) = v111;

  width = self->_outputDisparityResolution.width;
  v114 = objc_msgSend_width(outCopy, v112, v113);
  v115.f64[0] = width;
  v115.f64[1] = self->_outputDisparityResolution.height;
  __asm { FMOV            V0.2D, #-1.0 }

  v121 = vcvt_f32_f64(vaddq_f64(v115, _Q0));
  v124 = objc_msgSend_height(outCopy, v122, v123);
  v125.i64[0] = v114;
  v125.i64[1] = v124;
  v126.i64[0] = -1;
  v126.i64[1] = -1;
  v127 = vdiv_f32(v121, vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v125, v126))));
  v130 = objc_msgSend_width(self->_segmentationTexture, v128, v129);
  v131 = self->_outputDisparityResolution.width;
  *&width = v130 / v131;
  v134 = objc_msgSend_height(self->_segmentationTexture, v132, v133);
  height = self->_outputDisparityResolution.height;
  *(&v171 + 1) = v127;
  *&v172 = __PAIR64__(v134 / height, LODWORD(width));
  v138 = objc_msgSend_computeCommandEncoder(operatorCopy, v136, v137);

  if (v138)
  {
    objc_msgSend_setComputePipelineState_(v138, v139, self->_proximityOperatorPipelineState);
    objc_msgSend_setTexture_atIndex_(v138, v140, inCopy, 0);
    objc_msgSend_setTexture_atIndex_(v138, v141, self->_segmentationTexture, 1);
    objc_msgSend_setTexture_atIndex_(v138, v142, outCopy, 2);
    objc_msgSend_setTexture_atIndex_(v138, v143, uOutCopy, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v138, v144, self->_costsBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v138, v145, v162, 80, 1);
    v148 = objc_msgSend_threadExecutionWidth(self->_proximityOperatorPipelineState, v146, v147);
    v151 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_proximityOperatorPipelineState, v149, v150);
    *&v152 = *&cfg->var0;
    *(&v152 + 1) = HIDWORD(*&cfg->var0);
    v160 = v152;
    v161 = 1;
    v159[0] = v148;
    v159[1] = v151 / v148;
    v159[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v138, v153, &v160, v159);
    objc_msgSend_endEncoding(v138, v154, v155);
    v156 = 0;
  }

  else
  {
    sub_29579B5DC(&v160);
    v156 = v160;
  }

  return v156;
}

- (id)CreateKernelWithConst:(id)const constants:(id)constants
{
  constCopy = const;
  constantsCopy = constants;
  v10 = objc_msgSend_library(self->_mtlContext, v8, v9);
  v12 = v10;
  if (constantsCopy)
  {
    v23 = 0;
    v13 = objc_msgSend_newFunctionWithName_constantValues_error_(v10, v11, constCopy, constantsCopy, &v23);
    v14 = v23;

    if (v13)
    {
LABEL_3:
      v17 = objc_msgSend_device(self->_mtlContext, v15, v16);
      v22 = v14;
      v19 = objc_msgSend_newComputePipelineStateWithFunction_error_(v17, v18, v13, &v22);
      v20 = v22;

      v14 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = objc_msgSend_newFunctionWithName_(v10, v11, constCopy);

    v14 = 0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (int)computeFilterCurve:(float)curve p3:(float)p3 array:(float *)array
{
  arrayCopy = array;
  v6 = vcvtms_s32_f32(curve) | 1;
  if (v6 >= 63)
  {
    v6 = 63;
  }

  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v22 = -1.0 / ((p3 + p3) * p3);
  v21 = vdupq_n_s64(v7 - 1);
  v8 = vdup_n_s32((v7 - 1) >> 1);
  v9 = v7 + 1;
  v10 = 0x100000000;
  v11 = xmmword_2957A3580;
  v12 = array + 1;
  v13 = 0.0;
  v20 = vdupq_n_s64(2uLL);
  do
  {
    v25 = vmovn_s64(vcgeq_u64(v21, v11));
    v26 = v11;
    v14 = vcvt_f32_s32(vsub_s32(v10, v8));
    v15 = vmul_n_f32(vmul_f32(v14, v14), v22);
    v23 = v15.f32[0];
    v24 = expf(v15.f32[1]);
    *v16.i32 = expf(v23);
    *&v16.i32[1] = v24;
    if (v25.i8[0])
    {
      *(v12 - 1) = *v16.i32;
    }

    if (v25.i8[4])
    {
      *v12 = v24;
    }

    v17 = vbsl_s8(v25, v16, 0x8000000080000000);
    v13 = (v13 + *v17.i32) + *&v17.i32[1];
    v11 = vaddq_s64(v26, v20);
    v10 = vadd_s32(v10, 0x200000002);
    v12 += 2;
    v9 -= 2;
  }

  while (v9);
  v18 = v7;
  do
  {
    *arrayCopy = *arrayCopy / v13;
    ++arrayCopy;
    --v18;
  }

  while (v18);
  return v7;
}

- (unint64_t)computeAlignedSize:(unint64_t)size pixelFormat:(unint64_t)format
{
  v6 = objc_msgSend_device(self->_mtlContext, a2, size);
  v8 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v6, v7, format);

  if (size % v8)
  {
    return v8 + size - size % v8;
  }

  else
  {
    return size;
  }
}

- (int)_setCorrectionMapCoefficients:(float *)coefficients
{
  v5 = 0;
  correctionBasisCoefficients = self->_correctionBasisCoefficients;
  do
  {
    if (coefficients)
    {
      v7 = coefficients[v5];
      v8 = objc_msgSend_FPcostParameters(self->_fpDisparityEstimatorParams, a2, coefficients);
      v11 = objc_msgSend_correctionCoefficientsWeights(v8, v9, v10);
      v13 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v5);
      objc_msgSend_floatValue(v13, v14, v15);
      correctionBasisCoefficients[v5] = v7 * v16;
    }

    else
    {
      correctionBasisCoefficients[v5] = 0.0;
    }

    ++v5;
  }

  while (v5 != 20);
  return 0;
}

- (int)_generateCorrectionMap
{
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v10 = objc_msgSend_resourcePath(v7, v8, v9);

  if (!v10)
  {
    sub_29579BA94();
LABEL_14:
    v72 = -12780;
    goto LABEL_10;
  }

  v12 = MEMORY[0x29EDB8DA0];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%@/zernike_basis.f16", v10);
  v15 = objc_msgSend_dataWithContentsOfFile_(v12, v14, v13);

  if (!v15)
  {
    sub_29579BA1C();
    goto LABEL_14;
  }

  if (objc_msgSend_length(v15, v16, v17) != 1297920)
  {
    sub_29579B688(v15);
    goto LABEL_14;
  }

  v19 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v18, 25, 208, 156, 0);
  if (!v19)
  {
    sub_29579B958(v15, &v82);
LABEL_18:
    v72 = v82;
    goto LABEL_10;
  }

  v21 = v19;
  objc_msgSend_setUsage_(v19, v20, 3);
  v24 = objc_msgSend_device(self->_mtlContext, v22, v23);
  v26 = objc_msgSend_newTextureWithDescriptor_(v24, v25, v21);
  disparityCorrectionTex = self->_disparityCorrectionTex;
  self->_disparityCorrectionTex = v26;

  if (!self->_disparityCorrectionTex)
  {
    sub_29579B884(v15, v21, &v82);
    goto LABEL_18;
  }

  v29 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v28, 25, 208, 3120, 0);

  v32 = objc_msgSend_device(self->_mtlContext, v30, v31);
  v34 = objc_msgSend_newTextureWithDescriptor_(v32, v33, v29);

  if (!v34)
  {
    sub_29579B7B0(v15, v29, &v82);
    goto LABEL_18;
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = xmmword_2957A3590;
  v86 = 1;
  v35 = v15;
  v38 = objc_msgSend_bytes(v35, v36, v37);
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v34, v39, &v82, 0, 0, v38, 416, 1297920);
  v42 = objc_msgSend_commandQueue(self->_mtlContext, v40, v41);
  v45 = objc_msgSend_commandBuffer(v42, v43, v44);

  if (v45)
  {
    v48 = objc_msgSend_computeCommandEncoder(v45, v46, v47);
    if (v48)
    {
      v50 = v48;
      objc_msgSend_setComputePipelineState_(v48, v49, self->_correctionMapGenerationPipelineState);
      objc_msgSend_setTexture_atIndex_(v50, v51, v34, 0);
      objc_msgSend_setTexture_atIndex_(v50, v52, self->_disparityCorrectionTex, 1);
      objc_msgSend_setBytes_length_atIndex_(v50, v53, self->_correctionBasisCoefficients, 80, 0);
      v56 = objc_msgSend_threadExecutionWidth(self->_correctionMapGenerationPipelineState, v54, v55);
      v59 = v10;
      v60 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_correctionMapGenerationPipelineState, v57, v58) / v56;
      v63 = objc_msgSend_width(self->_disparityCorrectionTex, v61, v62);
      v66 = objc_msgSend_height(self->_disparityCorrectionTex, v64, v65);
      v82 = v63;
      v83 = v66;
      v84 = 1;
      v79 = v56;
      v80 = v60;
      v10 = v59;
      v81 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v50, v67, &v82, &v79);
      objc_msgSend_endEncoding(v50, v68, v69);
      objc_msgSend_commit(v45, v70, v71);

      v72 = 0;
    }

    else
    {
      fig_log_get_emitter();
      LODWORD(v74) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v74, v2, v77, v79, v80, v81, v82, v83);
      fig_log_get_emitter();
      v72 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v75, v76, v78);
    }
  }

  else
  {
    sub_29579B718(v15, v34, v29);
    v72 = -12786;
  }

LABEL_10:

  return v72;
}

- (CGSize)outputDisparityResolution
{
  width = self->_outputDisparityResolution.width;
  height = self->_outputDisparityResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)H0Metadata
{
  v2 = *&self->_H0Metadata.xRawBase;
  v3 = *&self->_H0Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)H1Metadata
{
  v2 = *&self->_H1Metadata.xRawBase;
  v3 = *&self->_H1Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)V0Metadata
{
  v2 = *&self->_V0Metadata.xRawBase;
  v3 = *&self->_V0Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)V1Metadata
{
  v2 = *&self->_V1Metadata.xRawBase;
  v3 = *&self->_V1Metadata.xRawStep;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (CGRect)sensorCropRect
{
  x = self->_sensorCropRect.origin.x;
  y = self->_sensorCropRect.origin.y;
  width = self->_sensorCropRect.size.width;
  height = self->_sensorCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sensorReadoutRect
{
  x = self->_sensorReadoutRect.origin.x;
  y = self->_sensorReadoutRect.origin.y;
  width = self->_sensorReadoutRect.size.width;
  height = self->_sensorReadoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)totalSensorCropRect
{
  x = self->_totalSensorCropRect.origin.x;
  y = self->_totalSensorCropRect.origin.y;
  width = self->_totalSensorCropRect.size.width;
  height = self->_totalSensorCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)_setupBuffer
{
  v3 = sub_29578C980();
  self->_res_pxbuf = v3;
  if (v3 && (v4 = sub_29578C980(), (self->_Hes_pxbuf = v4) != 0))
  {
    return 0;
  }

  else
  {
    return -12786;
  }
}

- (int)_setupTexture
{
  v4 = objc_msgSend_pyramidDimensions(self->_imagePyramid, a2, v2);
  if (objc_msgSend_countScales(self->_imagePyramid, v5, v6) < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v4 + 8;
  for (i = self; ; i = (i + 8))
  {
    v10 = sub_29578C944();
    v14 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v11, v12, v13, v10);
    v15 = i->_res_tex[0];
    i->_res_tex[0] = v14;

    if (!i->_res_tex[0])
    {
      break;
    }

    v16 = sub_29578C944();
    v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v17, v18, v19, v16);
    v21 = i->_Hes_tex[0];
    i->_Hes_tex[0] = v20;

    if (!i->_Hes_tex[0])
    {
      break;
    }

    ++v7;
    v8 += 16;
    if (v7 >= objc_msgSend_countScales(self->_imagePyramid, v22, v23))
    {
      return 0;
    }
  }

  return -12786;
}

@end