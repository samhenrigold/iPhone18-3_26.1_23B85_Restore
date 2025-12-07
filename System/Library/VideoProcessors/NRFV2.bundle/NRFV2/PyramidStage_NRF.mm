@interface PyramidStage_NRF
+ (int)prewarmShaders:(id)shaders;
- (PyramidStage_NRF)initWithOptions:(id)options context:(id)context;
- (int)runGPUWithFilters:(PyramidFilterParams *)filters doShift:(BOOL)shift;
- (int)runM2MWithFilters:(PyramidFilterParams *)filters;
- (int)runWithFilters:(PyramidFilterParams *)filters;
- (int)setResourcesWithPyramid:(id)pyramid;
- (void)setColorSpace:(int)space withParams:(const ColorSpaceConversionParameters *)params;
@end

@implementation PyramidStage_NRF

- (PyramidStage_NRF)initWithOptions:(id)options context:(id)context
{
  contextCopy = context;
  v7 = loadDefaultsWritesWithPrefix();
  v91.receiver = self;
  v91.super_class = PyramidStage_NRF;
  v10 = [(PyramidStage_NRF *)&v91 init];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"PyrGen.UseHW", v9);
  isEqual = objc_msgSend_isEqual_(v11, v12, &unk_2A1CC4060, v13);

  if (isEqual)
  {
    v17 = 0;
    v10->_conf.use_m2m = 0;
  }

  else
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v7, v15, @"PyrGen.UseHW", v16);
    v10->_conf.use_m2m = objc_msgSend_intValue(v18, v19, v20, v21) == 1;

    v17 = 1;
  }

  v10->_forceHW = v17;
  v24 = objc_msgSend_objectForKeyedSubscript_(v7, v15, @"PyrGen.DoSync", v16);
  if (v24)
  {
    v25 = objc_msgSend_objectForKeyedSubscript_(v7, v22, @"PyrGen.DoSync", v23);
    v10->_conf.do_sync_at_end = objc_msgSend_BOOLValue(v25, v26, v27, v28);
  }

  else
  {
    v10->_conf.do_sync_at_end = 1;
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(v7, v29, @"PyrGen.CompensateGpuShift", v30);
  if (v33)
  {
    v34 = objc_msgSend_objectForKeyedSubscript_(v7, v31, @"PyrGen.CompensateGpuShift", v32);
    v10->_conf.compensate_gpu_shift = objc_msgSend_BOOLValue(v34, v35, v36, v37);
  }

  else
  {
    v10->_conf.compensate_gpu_shift = 0;
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(v7, v38, @"PyrGen.SupportFP16", v39);
  if (v42)
  {
    v43 = objc_msgSend_objectForKeyedSubscript_(v7, v40, @"PyrGen.SupportFP16", v41);
    v10->_conf.supportFP16 = objc_msgSend_BOOLValue(v43, v44, v45, v46);
  }

  else
  {
    v10->_conf.supportFP16 = 1;
  }

  objc_storeStrong(&v10->_metal, context);
  v47 = objc_alloc_init(MEMORY[0x29EDC0A18]);
  m2mController = v10->_m2mController;
  v10->_m2mController = v47;

  if (v10->_m2mController)
  {
    objc_msgSend_prewarmShaders_(PyramidStage_NRF, v49, v10->_metal, v50);
    v51 = 0;
    *&v10[1]._uniforms_Y[5] = xmmword_2958D59C0;
    *&v10[1]._uniforms_Y[7] = xmmword_2958D59D0;
    v10[1]._uniforms_Y[9] = 0x3F80000000000000;
    v92[0] = xmmword_2958D59E0;
    v92[1] = xmmword_2958D59F0;
    v92[2] = xmmword_2958D5A00;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v10->_band0ColorSpace = 0;
    do
    {
      *(&v93 + v51 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(v92[v51])), xmmword_2958D5A20, *&v92[v51], 1), xmmword_2958D5A30, v92[v51], 2);
      ++v51;
    }

    while (v51 != 3);
    v96.columns[0] = v93;
    v96.columns[1] = v94;
    v96.columns[2] = v95;
    *&v10->_colorSpaceConversionParameters.outputToLinearYCbCr = v93;
    *&v10[1]._conf.use_m2m = v96.columns[1];
    *&v10[1]._m2mController = v96.columns[2];
    v96.columns[3] = xmmword_2958D5A40;
    v97 = __invert_f4(v96);
    *&v10->_colorSpaceConversionParameters.transferFunctionFwd.linearScale = v97.columns[0];
    *&v10->_colorSpaceConversionParameters.transferFunctionFwd.nonLinearPower = v97.columns[1];
    *&v10->_colorSpaceConversionParameters.transferFunctionInv.nonLinearBias = v97.columns[2];
    *&v10[1]._uniforms_Y[10] = 1.0 / *(&v10[1]._uniforms_Y[10] + 1);
    v52 = MEMORY[0x29EDCA928];
    v97.columns[1] = *(MEMORY[0x29EDCA928] + 16);
    *&v10[1]._uniformsHeap = *MEMORY[0x29EDCA928];
    *&v10[1]._uniforms_Y[1] = v97.columns[1];
    *&v10[1]._uniforms_Y[3] = *(v52 + 32);
    HIDWORD(v10[1]._uniforms_Y[10]) = 1065353216;
    LODWORD(v10[1]._uniforms_Y[11]) = 65793;
    v53 = objc_opt_new();
    v56 = v53;
    if (v53)
    {
      objc_msgSend_setStorageMode_(v53, v54, 0, v55);
      objc_msgSend_setHazardTrackingMode_(v56, v57, 2, v58);
      objc_msgSend_setSize_(v56, v59, 655360, v60);
      v64 = objc_msgSend_device(v10->_metal, v61, v62, v63);
      v67 = objc_msgSend_newHeapWithDescriptor_(v64, v65, v56, v66);
      uniformsHeap = v10->_uniformsHeap;
      v10->_uniformsHeap = v67;

      if (v10->_uniformsHeap)
      {
        uniforms_UV = v10->_uniforms_UV;
        v73 = 20;
        while (1)
        {
          v74 = v10->_uniformsHeap;
          v75 = objc_msgSend_resourceOptions(v74, v69, v70, v71);
          v77 = objc_msgSend_newBufferWithLength_options_(v74, v76, 16, v75);
          v78 = *(uniforms_UV - 20);
          *(uniforms_UV - 20) = v77;

          if (!*(uniforms_UV - 20))
          {
            sub_295898D44(&v93);
            goto LABEL_28;
          }

          v82 = v10->_uniformsHeap;
          v83 = objc_msgSend_resourceOptions(v82, v79, v80, v81);
          v85 = objc_msgSend_newBufferWithLength_options_(v82, v84, 16, v83);
          v86 = *uniforms_UV;
          *uniforms_UV = v85;

          if (!*uniforms_UV)
          {
            break;
          }

          ++uniforms_UV;
          if (!--v73)
          {
            v87 = 0;
            goto LABEL_24;
          }
        }

        sub_295898C98(&v93);
      }

      else
      {
        sub_295898DF0(&v93);
      }
    }

    else
    {
      sub_295898E9C(&v93);
    }

LABEL_28:
    v87 = v93.i32[0];
LABEL_24:

    if (v87)
    {
      goto LABEL_25;
    }

LABEL_30:
    v88 = v10;
    goto LABEL_31;
  }

  sub_295898F48(&v93);
  if (!v93.i32[0])
  {
    goto LABEL_30;
  }

LABEL_25:
  v88 = 0;
LABEL_31:
  v89 = v88;

  return v89;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  while (2)
  {
    v8 = 0;
    v9 = v7;
    v10 = 1;
    do
    {
      v11 = v6;
      v12 = v10;
      v6 = objc_msgSend_compileShader_lumaWrite_chromaWrite_(PyramidStageShared_NRF, v3, shadersCopy, v5 & 1, v8 & 1);

      if (!v6)
      {
        goto LABEL_11;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v12 & 1) != 0);
    v7 = 0;
    v5 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

  if (objc_msgSend_isRec709DownsampleSupported(PyramidStageShared_NRF, v3, v13, v14))
  {
    v16 = 0;
    while (1)
    {
      v17 = objc_msgSend_compileShader_kernelType_(PyramidStageShared_NRF, v15, shadersCopy, v16);

      if (!v17)
      {
        break;
      }

      v16 = (v16 + 1);
      v6 = v17;
      if (v16 == 12)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    sub_295898FF4();
    v17 = 0;
    goto LABEL_13;
  }

  v17 = v6;
LABEL_13:

  return 0;
}

- (int)setResourcesWithPyramid:(id)pyramid
{
  pyramidCopy = pyramid;
  objc_storeStrong(&self->_pyr, pyramid);
  pyr = self->_pyr;
  levels = pyr->levels;
  if (levels >= 20)
  {
    sub_2958990A8(&v16);
    v8 = v16;
  }

  else if (self->_forceHW)
  {
    v8 = 0;
  }

  else
  {
    if (levels < 1)
    {
      v11 = 1;
    }

    else
    {
      v9 = 0;
      v10 = pyramidCopy + 664;
      v11 = 1;
      do
      {
        if (v11 && (v10[v9] & 1) == 0 && (v12 = *&v10[8 * v9 - 648]) != 0 && (PixelFormatType = CVPixelBufferGetPixelFormatType(v12), pyr = self->_pyr, PixelFormatType == 875704422) && (WidthOfPlane = CVPixelBufferGetWidthOfPlane(pyr->pixelBuffer[v9], 0), pyr = self->_pyr, (WidthOfPlane & 1) == 0))
        {
          v11 = (CVPixelBufferGetHeightOfPlane(pyr->pixelBuffer[v9], 0) & 1) == 0;
          pyr = self->_pyr;
        }

        else
        {
          v11 = 0;
        }

        ++v9;
      }

      while (v9 < pyr->levels);
    }

    v8 = 0;
    self->_conf.use_m2m = v11;
  }

  return v8;
}

- (int)runM2MWithFilters:(PyramidFilterParams *)filters
{
  v4 = 0;
  for (i = &filters->luma_param; ; i += 3)
  {
    pyr = self->_pyr;
    if (v4 >= pyr->levels - 1)
    {
      return 0;
    }

    v7 = &pyr->super.isa + v4;
    if (!v7[2])
    {
      sub_295899404(&v19);
      return v19;
    }

    v8 = v7[3];
    if (!v8)
    {
      sub_295899358(&v19);
      return v19;
    }

    if (CVPixelBufferGetPixelFormatType(v8) != 875704422)
    {
      sub_295899154(&v19);
      return v19;
    }

    v12 = *(i - 1);
    v13 = v12 == 2 ? 2 : v12 == 1;
    *&v10 = *i;
    *&v11 = i[1];
    if (objc_msgSend_setCustomFilter_alignment_src_dst_luma_param_chroma_param_(self->_m2mController, v9, v13, self->_conf.compensate_gpu_shift, self->_pyr->pixelBuffer[v4], self->_pyr->pixelBuffer[v4 + 1], v10, v11))
    {
      break;
    }

    v15 = self->_pyr;
    v16 = v4 == v15->levels - 2 && self->_conf.do_sync_at_end;
    v17 = objc_msgSend_downsample_dst_sync_m2m_(self->_m2mController, v14, v15->pixelBuffer[v4], v15->pixelBuffer[v4 + 1], v16);
    ++v4;
    if (v17)
    {
      sub_2958992AC(&v19);
      return v19;
    }
  }

  sub_295899200(&v19);
  return v19;
}

- (int)runGPUWithFilters:(PyramidFilterParams *)filters doShift:(BOOL)shift
{
  selfCopy = self;
  pyr = self->_pyr;
  if (pyr->levels >= 2)
  {
    v7 = 0;
    v8 = 0;
    if (shift)
    {
      *v8.i32 = 1.0;
    }

    v9 = vdup_lane_s32(v8, 0);
    uniforms_UV = self->_uniforms_UV;
    p_chroma_param = &filters->chroma_param;
    while (*(p_chroma_param - 2) == 1)
    {
      v12 = *(uniforms_UV - 20);
      v16 = objc_msgSend_contents(v12, v13, v14, v15);
      *v16 = *(p_chroma_param - 1);
      *(v16 + 8) = v9;
      v17 = *uniforms_UV++;
      v18 = v17;
      v22 = objc_msgSend_contents(v18, v19, v20, v21);
      *&v17 = *p_chroma_param;
      p_chroma_param += 3;
      *v22 = *&v17;
      *(v22 + 8) = v9;
      ++v7;
      pyr = selfCopy->_pyr;
      if (v7 >= pyr->levels - 1)
      {
        goto LABEL_7;
      }
    }

    sub_2958994B0(&v217);
    return v217;
  }

LABEL_7:
  v23 = objc_msgSend_pixelFormat(pyr->textureY[0], a2, filters, shift);
  v28 = v23 == 576 || v23 == 588 || selfCopy->_band0ColorSpace == 2;
  v29 = v28;
  v211 = v29;
  v212 = selfCopy;
  if (v28)
  {
    v30 = objc_msgSend_commandQueue(selfCopy->_metal, v24, v25, v26);
    v34 = objc_msgSend_commandBuffer(v30, v31, v32, v33);

    if (!v34)
    {
      sub_295899A10(&v217);
      return v217;
    }

    v35 = selfCopy->_pyr;
    if (BYTE3(selfCopy[1]._uniforms_Y[11]) == 1 && (textureYCbCrBand0 = v35->textureYCbCrBand0) != 0)
    {
      v37 = textureYCbCrBand0;
      v38 = 0;
      v39 = 2;
      v40 = 8;
    }

    else
    {
      v37 = v35->textureY[0];
      v38 = selfCopy->_pyr->textureUV[0];
      v39 = -1;
      v40 = 5;
    }

    v202 = v40;
    v42 = v38;
    v43 = selfCopy->_pyr->textureY[1];
    v44 = selfCopy->_pyr->textureUV[1];
    luma_param = filters->luma_param;
    chroma_param = filters->chroma_param;
    v205 = v34;
    v53 = objc_msgSend_computeCommandEncoder(v34, v47, v48, v49);
    v207 = v43;
    if (v53)
    {
      v54 = luma_param;
      if (chroma_param == 5)
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      v230 = 0;
      v231 = 0;
      if (chroma_param == 7)
      {
        v56 = 3;
      }

      else
      {
        v56 = v55;
      }

      if (v54 == 5)
      {
        v57 = 2;
      }

      else
      {
        v57 = 1;
      }

      v58 = *&selfCopy[1]._uniforms_Y[9];
      if (v54 == 7)
      {
        v59 = 3;
      }

      else
      {
        v59 = v57;
      }

      v227 = *&selfCopy[1]._uniforms_Y[7];
      v228 = v58;
      v229 = *&selfCopy[1]._uniforms_Y[11];
      v60 = *&selfCopy[1]._uniforms_Y[1];
      v223 = *&selfCopy[1]._uniformsHeap;
      v224 = v60;
      v61 = *&selfCopy[1]._uniforms_Y[5];
      v225 = *&selfCopy[1]._uniforms_Y[3];
      v226 = v61;
      v62 = *&selfCopy->_colorSpaceConversionParameters.outputToLinearYCbCr;
      v219 = *&selfCopy->_colorSpaceConversionParameters.transferFunctionInv.nonLinearBias;
      v220 = v62;
      v63 = *&selfCopy[1]._m2mController;
      v221 = *&selfCopy[1]._conf.use_m2m;
      v222 = v63;
      v64 = *&selfCopy->_colorSpaceConversionParameters.transferFunctionFwd.nonLinearPower;
      v217 = *&selfCopy->_colorSpaceConversionParameters.transferFunctionFwd.linearScale;
      v218 = v64;
      LOBYTE(v230) = selfCopy->_conf.compensate_gpu_shift;
      objc_msgSend_sharedInstance(PyramidStageShared_NRF, v50, v51, v52);
      v66 = v65 = selfCopy;
      v68 = objc_msgSend_getRec709DownsamplePipelineState_kernelType_(v66, v67, v65->_metal, (v39 + v59));

      objc_msgSend_setTexture_atIndex_(v53, v69, v37, 0);
      objc_msgSend_setTexture_atIndex_(v53, v70, v42, 1);
      objc_msgSend_setTexture_atIndex_(v53, v71, v43, 2);
      objc_msgSend_setBytes_length_atIndex_(v53, v72, &v217, 224, 0);
      v200 = v68;
      objc_msgSend_setComputePipelineState_(v53, v73, v68, v74);
      objc_msgSend_setImageblockWidth_height_(v53, v75, 32, 32);
      v209 = v42;
      v76 = v37;
      v77 = v59 + (v59 & 1);
      LODWORD(v66) = 16 - v77;
      v77 ^= 0xFu;
      *&v215 = (v77 + objc_msgSend_width(v43, v78, v79, v80)) / v66;
      *(&v215 + 1) = (v77 + objc_msgSend_height(v43, v81, v82, v83)) / v66;
      v216 = 1;
      v198 = vdupq_n_s64(0x10uLL);
      v213 = v198;
      v214 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v84, &v215, &v213);
      v88 = objc_msgSend_sharedInstance(PyramidStageShared_NRF, v85, v86, v87);
      v90 = objc_msgSend_getRec709DownsamplePipelineState_kernelType_(v88, v89, v65->_metal, (v202 + v56));

      v203 = v76;
      v91 = v76;
      v42 = v209;
      objc_msgSend_setTexture_atIndex_(v53, v92, v91, 0);
      objc_msgSend_setTexture_atIndex_(v53, v93, v209, 1);
      objc_msgSend_setTexture_atIndex_(v53, v94, v44, 2);
      objc_msgSend_setBytes_length_atIndex_(v53, v95, &v217, 224, 0);
      objc_msgSend_setComputePipelineState_(v53, v96, v90, v97);
      objc_msgSend_setImageblockWidth_height_(v53, v98, 32, 32);
      v99 = 16 - v56;
      v103 = v56 ^ 0xF;
      v104 = ((v56 ^ 0xF) + objc_msgSend_width(v44, v100, v101, v102)) / (16 - v56);
      v108 = objc_msgSend_height(v44, v105, v106, v107);
      *&v215 = v104;
      *(&v215 + 1) = (v103 + v108) / v99;
      v216 = 1;
      v213 = v198;
      v214 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v109, &v215, &v213);
      objc_msgSend_endEncoding(v53, v110, v111, v112);
      if (*MEMORY[0x29EDB9270])
      {
        v116 = objc_msgSend_commandQueue(v205, v113, v114, v115);
        v120 = objc_msgSend_commandBuffer(v116, v117, v118, v119);

        objc_msgSend_setLabel_(v120, v121, @"KTRACE_MTLCMDBUF", v122);
        objc_msgSend_addCompletedHandler_(v120, v123, &unk_2A1CA9440, v124);
        objc_msgSend_commit(v120, v125, v126, v127);
        objc_msgSend_addCompletedHandler_(v205, v128, &unk_2A1CA9460, v129);

        v42 = v209;
      }

      objc_msgSend_commit(v205, v113, v114, v115);

      v130 = v205;
      v41 = 0;
      v29 = v211;
      selfCopy = v212;
      v37 = v203;
    }

    else
    {
      sub_29589955C(&v217);
      v41 = v217;
      v130 = v205;
    }

    if (!v53)
    {
      return v41;
    }
  }

  else
  {
    v41 = 0;
  }

  v131 = objc_msgSend_commandQueue(selfCopy->_metal, v24, v25, v26);
  v135 = objc_msgSend_commandBuffer(v131, v132, v133, v134);

  v210 = v135;
  if (!v135)
  {
    sub_295899964(&v217);
    v197 = v217;
    goto LABEL_73;
  }

  v197 = v41;
  v139 = 0;
  v201 = &selfCopy->_uniforms_Y[v29];
  v204 = 8 * (v29 - 1);
  v206 = 8 * v29;
  v208 = v29 - 1;
  v199 = &selfCopy->_uniforms_UV[v204 / 8];
  while (1)
  {
    v140 = v208 + v139;
    v141 = selfCopy->_pyr;
    v142 = v141->levels - 1;
    if (v208 + v139 >= v142)
    {
      break;
    }

    v143 = v29 + v139;
    if (v29 + v139 >= v142)
    {
      v144 = 0;
    }

    else
    {
      v144 = *(&v141->textureY[v139 + 1] + v206);
    }

    v145 = v144;
    if (v140 < v29)
    {
      v146 = 0;
    }

    else
    {
      v146 = *(&selfCopy->_pyr->textureUV[v139 + 1] + v204);
    }

    v147 = v146;
    v151 = objc_msgSend_sharedInstance(PyramidStageShared_NRF, v148, v149, v150);
    v153 = objc_msgSend_getPipeline_lumaWrite_chromaWrite_(v151, v152, selfCopy->_metal, v143 < v142, v140 >= v29);

    if (v143 >= v142)
    {
      v160 = (objc_msgSend_width(v147, v154, v155, v156) + 1) >> 1;
      v161 = v147;
    }

    else
    {
      v160 = objc_msgSend_width(v145, v154, v155, v156);
      v161 = v145;
    }

    v162 = objc_msgSend_height(v161, v157, v158, v159);
    v166 = objc_msgSend_computeCommandEncoder(v210, v163, v164, v165);
    v169 = v166;
    if (!v166)
    {
      sub_2958998B8(&v217);
LABEL_69:
      v176 = 0;
      v197 = v217;
      goto LABEL_62;
    }

    objc_msgSend_setComputePipelineState_(v166, v167, v153, v168);
    objc_msgSend_setImageblockWidth_height_(v169, v170, 32, 32);
    if (v143 < v142)
    {
      v172 = *(&v212->_pyr->textureY[v139] + v206);
      if (!v172)
      {
        sub_29589980C(&v217);
        goto LABEL_69;
      }

      objc_msgSend_setTexture_atIndex_(v169, v171, v172, 0);
      if (!v145)
      {
        sub_295899760(&v217);
        goto LABEL_69;
      }

      objc_msgSend_setTexture_atIndex_(v169, v173, v145, 2);
    }

    if (v140 >= v211)
    {
      v174 = v212->_pyr + 8 * v139 + v204;
      if (!*(v174 + 504))
      {
        sub_2958996B4(&v217);
        goto LABEL_69;
      }

      objc_msgSend_setTexture_atIndex_(v169, v171, *(v174 + 496), 1);
      if (!v147)
      {
        sub_295899608(&v217);
        goto LABEL_69;
      }

      objc_msgSend_setTexture_atIndex_(v169, v175, v147, 3);
    }

    objc_msgSend_setBuffer_offset_atIndex_(v169, v171, *(v201 + 8 * v139), 0, 0);
    v176 = 1;
    objc_msgSend_setBuffer_offset_atIndex_(v169, v177, *(v199 + 8 * v139), 0, 1);
    *&v217 = v160;
    *(&v217 + 1) = v162;
    *&v218 = 1;
    v215 = xmmword_2959D5EB0;
    v216 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v169, v178, &v217, &v215);
    objc_msgSend_endEncoding(v169, v179, v180, v181);
LABEL_62:

    ++v139;
    v29 = v211;
    selfCopy = v212;
    if ((v176 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  if (*MEMORY[0x29EDB9270])
  {
    v182 = objc_msgSend_commandQueue(v210, v136, v137, v138);
    v186 = objc_msgSend_commandBuffer(v182, v183, v184, v185);

    objc_msgSend_setLabel_(v186, v187, @"KTRACE_MTLCMDBUF", v188);
    objc_msgSend_addCompletedHandler_(v186, v189, &unk_2A1CA9480, v190);
    objc_msgSend_commit(v186, v191, v192, v193);
    objc_msgSend_addCompletedHandler_(v210, v194, &unk_2A1CA94A0, v195);
  }

  objc_msgSend_commit(v210, v136, v137, v138);
LABEL_73:

  return v197;
}

- (int)runWithFilters:(PyramidFilterParams *)filters
{
  pyr = self->_pyr;
  if (pyr)
  {
    if (pyr->levels >= 2)
    {
      v7 = 0;
      do
      {
        v8 = &pyr->super.isa + v7++;
        CVBufferPropagateAttachments(v8[2], v8[3]);
        pyr = self->_pyr;
      }

      while (v7 < pyr->levels - 1);
    }

    if (self->_conf.use_m2m)
    {
      result = objc_msgSend_runM2MWithFilters_(self, a2, filters, v3);
      if (result)
      {
        sub_295899B68(&v11);
        return v11;
      }
    }

    else
    {
      result = objc_msgSend_runGPUWithFilters_doShift_(self, a2, filters, self->_conf.compensate_gpu_shift);
      if (result)
      {
        sub_295899ABC(&v10);
        return v10;
      }
    }
  }

  else
  {
    sub_295899C14(&v12);
    return v12;
  }

  return result;
}

- (void)setColorSpace:(int)space withParams:(const ColorSpaceConversionParameters *)params
{
  self->_band0ColorSpace = space;
  if (params)
  {
    *&self->_colorSpaceConversionParameters.transferFunctionFwd.linearScale = *&params->transferFunctionFwd.linearScale;
    v4 = *&params->transferFunctionFwd.nonLinearPower;
    v5 = *&params->transferFunctionInv.nonLinearBias;
    v6 = *&params[1].transferFunctionFwd.nonLinearBias;
    *&self->_colorSpaceConversionParameters.outputToLinearYCbCr = *&params->outputToLinearYCbCr;
    *&self[1]._conf.use_m2m = v6;
    *&self->_colorSpaceConversionParameters.transferFunctionFwd.nonLinearPower = v4;
    *&self->_colorSpaceConversionParameters.transferFunctionInv.nonLinearBias = v5;
    v7 = *&params[1].transferFunctionInv.nonLinearScale;
    v8 = *&params[1].finalScale;
    v9 = *&params[2].transferFunctionInv.linearThreshold;
    *&self[1]._uniforms_Y[1] = *&params[2].transferFunctionFwd.nonLinearScale;
    *&self[1]._uniforms_Y[3] = v9;
    *&self[1]._m2mController = v7;
    *&self[1]._uniformsHeap = v8;
    v10 = *&params[2].finalScaleFwd;
    v11 = *&params[3].transferFunctionFwd.linearThreshold;
    v12 = *&params[3].transferFunctionInv.nonLinearPower;
    *&self[1]._uniforms_Y[9] = *&params[3].transferFunctionInv.linearScale;
    *&self[1]._uniforms_Y[11] = v12;
    *&self[1]._uniforms_Y[5] = v10;
    *&self[1]._uniforms_Y[7] = v11;
  }
}

@end