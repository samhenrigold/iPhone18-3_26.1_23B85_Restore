@interface AdaptiveClamping
- (AdaptiveClamping)initWithMetalContext:(id)context;
- (int)_initShaders;
- (int)clampFromPixelBuffer:(__CVBuffer *)buffer Mask:(__CVBuffer *)mask MaxDisparity:(float)disparity Percentiles:(id)percentiles CommandBuffer:;
@end

@implementation AdaptiveClamping

- (AdaptiveClamping)initWithMetalContext:(id)context
{
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = AdaptiveClamping;
  v6 = [(AdaptiveClamping *)&v37 init];
  v7 = v6;
  if (!v6)
  {
    sub_29576503C();
LABEL_14:
    v35 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if (!v7->_metalContext)
  {
    v16 = MEMORY[0x29EDB9F48];
    v17 = objc_opt_class();
    v25 = objc_msgSend_bundleForClass_(v16, v18, v17, v19, v20, v21, v22, v23, v24);
    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x29EDC0A40]);
      inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v26, v27, v25, 0, v28, v29, v30, v31, v32);
      metalContext = v7->_metalContext;
      v7->_metalContext = inited;

      if (v7->_metalContext)
      {

        goto LABEL_6;
      }

      sub_295764F4C();
    }

    else
    {
      sub_295764FC4();
    }

    goto LABEL_14;
  }

LABEL_6:
  if (objc_msgSend__initShaders(v7, v8, v9, v10, v11, v12, v13, v14, v15))
  {
    sub_295764EC0();
    goto LABEL_14;
  }

  v35 = v7;
LABEL_8:

  return v35;
}

- (int)clampFromPixelBuffer:(__CVBuffer *)buffer Mask:(__CVBuffer *)mask MaxDisparity:(float)disparity Percentiles:(id)percentiles CommandBuffer:
{
  v278 = v6;
  disparityCopy = disparity;
  percentilesCopy = percentiles;
  if (!buffer)
  {
    sub_2957657BC();
LABEL_46:
    v156 = 0;
    v69 = 0;
    mask = 0;
    goto LABEL_47;
  }

  if (!mask)
  {
    sub_295765744();
    v156 = 0;
    v69 = 0;
LABEL_47:
    v38 = 0;
    v60 = 0;
    v22 = 0;
    v275 = -12780;
    goto LABEL_26;
  }

  if (CVPixelBufferGetPixelFormatType(buffer) != 1278226536 && CVPixelBufferGetPixelFormatType(buffer) != 1751411059)
  {
    sub_2957650B4();
    goto LABEL_46;
  }

  if (CVPixelBufferGetPixelFormatType(mask) != 1380411457)
  {
    sub_29576512C();
    goto LABEL_46;
  }

  if (disparity <= 0.0)
  {
    sub_2957656CC();
    goto LABEL_46;
  }

  v13 = v278;
  if (v278.n128_f32[0] < 0.0 || (v12.n128_u32[0] = 1.0, v278.n128_f32[0] > 1.0))
  {
    sub_295765654(v12, v278);
    goto LABEL_46;
  }

  v12.n128_u32[0] = v278.n128_u32[1];
  if (v278.n128_f32[1] < 0.0 || (v13.n128_u32[0] = 1.0, v278.n128_f32[1] > 1.0))
  {
    sub_2957655DC(v12, v13);
    goto LABEL_46;
  }

  if ((CVPixelBufferGetWidth(buffer) & 3) != 0)
  {
    sub_2957651A4();
    goto LABEL_46;
  }

  if (percentilesCopy)
  {
    v22 = percentilesCopy;
  }

  else
  {
    v23 = objc_msgSend_commandQueue(self->_metalContext, v14, v15, v16, v17, v18, v19, v20, v21);
    v22 = objc_msgSend_commandBuffer(v23, v24, v25, v26, v27, v28, v29, v30, v31);

    if (!v22)
    {
      sub_295765564();
      v156 = 0;
      v69 = 0;
      mask = 0;
      v38 = 0;
LABEL_37:
      v60 = 0;
LABEL_40:
      v275 = -12786;
      goto LABEL_26;
    }
  }

  metalContext = self->_metalContext;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v38 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(metalContext, v35, buffer, 25, 1, 0, v36, v37, *&Width, Height);
  if (!v38)
  {
    sub_2957654EC();
    v156 = 0;
    v69 = 0;
    mask = 0;
    goto LABEL_37;
  }

  v39 = self->_metalContext;
  v40 = CVPixelBufferGetWidth(mask);
  v41 = CVPixelBufferGetHeight(mask);
  mask = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v39, v42, mask, 115, 1, 0, v43, v44, *&v40, v41);
  if (!mask)
  {
    sub_295765474();
    v156 = 0;
    v69 = 0;
    goto LABEL_37;
  }

  v60 = objc_msgSend_computeCommandEncoder(v22, v45, v46, v47, v48, v49, v50, v51, v52);
  if (!v60)
  {
    sub_2957653FC();
    v156 = 0;
    v69 = 0;
    goto LABEL_40;
  }

  v62 = objc_msgSend_device(self->_metalContext, v53, v54, v55, v56, v57, v58, v59, v61);
  v69 = objc_msgSend_newBufferWithLength_options_(v62, v63, 4100, 0, v64, v65, v66, v67, v68);

  if (!v69)
  {
    sub_295765384();
    v156 = 0;
    goto LABEL_40;
  }

  v70 = v69;
  v79 = objc_msgSend_contents(v70, v71, v72, v73, v74, v75, v76, v77, v78);
  bzero(v79, 0x1004uLL);
  if (objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[0], v80, v81, v82, v83, v84, v85, v86, v87) <= 0x3FF)
  {
    sub_29576530C();
    v156 = 0;
    v275 = -12782;
    goto LABEL_26;
  }

  v277 = v22;
  v96 = percentilesCopy;
  v97 = ((objc_msgSend_width(v38, v88, v89, v90, v91, v92, v93, v94, v95) >> 1) + 31) >> 5;
  v106 = ((objc_msgSend_height(v38, v98, v99, v100, v101, v102, v103, v104, v105) >> 1) + 31) >> 5;
  objc_msgSend_setComputePipelineState_(v60, v107, self->_pipelineStates[0], v108, v109, v110, v111, v112, v113);
  objc_msgSend_setTexture_atIndex_(v60, v114, v38, 0, v115, v116, v117, v118, v119);
  objc_msgSend_setTexture_atIndex_(v60, v120, mask, 1, v121, v122, v123, v124, v125);
  objc_msgSend_setBuffer_offset_atIndex_(v60, v126, v69, 0, 0, v127, v128, v129, v130);
  objc_msgSend_setBytes_length_atIndex_(v60, v131, &disparityCopy, 4, 1, v132, v133, v134, v135);
  v281.i64[0] = v97;
  v281.i64[1] = v106;
  v282 = 1;
  v279 = vdupq_n_s64(0x20uLL);
  v280 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v60, v136, &v281, &v279, v137, v138, v139, v140, *v279.i32);
  v149 = objc_msgSend_device(self->_metalContext, v141, v142, v143, v144, v145, v146, v147, v148);
  v156 = objc_msgSend_newBufferWithLength_options_(v149, v150, 8, 0, v151, v152, v153, v154, v155);

  if (!v156)
  {
    sub_295765294();
LABEL_44:
    v275 = -12786;
    goto LABEL_24;
  }

  v157 = v156;
  *objc_msgSend_contents(v157, v158, v159, v160, v161, v162, v163, v164, v165) = v278.n128_u64[0];
  objc_msgSend_setComputePipelineState_(v60, v166, self->_pipelineStates[1], v167, v168, v169, v170, v171, v278.n128_f32[0]);
  objc_msgSend_setBuffer_offset_atIndex_(v60, v172, v69, 0, 0, v173, v174, v175, v176);
  objc_msgSend_setBuffer_offset_atIndex_(v60, v177, v156, 0, 1, v178, v179, v180, v181);
  objc_msgSend_setBytes_length_atIndex_(v60, v182, &disparityCopy, 4, 2, v183, v184, v185, v186);
  v281 = vdupq_n_s64(1uLL);
  v282 = 1;
  v279 = v281;
  v280 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v60, v187, &v281, &v279, v188, v189, v190, v191, *v281.i32);
  v192 = self->_metalContext;
  v193 = vcvts_n_f32_u64(CVPixelBufferGetWidth(buffer), 2uLL);
  v194 = CVPixelBufferGetHeight(buffer);
  v198 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(v192, v195, buffer, 115, 3, 0, v196, v197, *&v193, v194);

  if (!v198)
  {
    sub_29576521C();
    v38 = 0;
    goto LABEL_44;
  }

  objc_msgSend_setComputePipelineState_(v60, v199, self->_pipelineStates[2], v200, v201, v202, v203, v204, v205);
  objc_msgSend_setTexture_atIndex_(v60, v206, v198, 0, v207, v208, v209, v210, v211);
  objc_msgSend_setBuffer_offset_atIndex_(v60, v212, v156, 0, 0, v213, v214, v215, v216);
  v225 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[2], v217, v218, v219, v220, v221, v222, v223, v224);
  v234 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[2], v226, v227, v228, v229, v230, v231, v232, v233) / v225;
  v243 = objc_msgSend_width(v198, v235, v236, v237, v238, v239, v240, v241, v242);
  v252 = objc_msgSend_height(v198, v244, v245, v246, v247, v248, v249, v250, v251);
  v281.i64[0] = v243;
  v281.i64[1] = v252;
  v282 = 1;
  v279.i64[0] = v225;
  v279.i64[1] = v234;
  v280 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v60, v253, &v281, &v279, v254, v255, v256, v257, v258);
  objc_msgSend_endEncoding(v60, v259, v260, v261, v262, v263, v264, v265, v266);
  percentilesCopy = v96;
  if (!v96)
  {
    v22 = v277;
    objc_msgSend_commit(v277, v267, v268, v269, v270, v271, v272, v273, v274);
    v275 = 0;
    v38 = v198;
    goto LABEL_26;
  }

  v275 = 0;
  v38 = v198;
LABEL_24:
  v22 = v277;
LABEL_26:

  return v275;
}

- (int)_initShaders
{
  v8 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, a2, @"DisparityHistogramKernel", 0, v2, v3, v4, v5, v6);
  v9 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v8;

  if (self->_pipelineStates[0])
  {
    v16 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v10, @"DisparityComputeClampingValues", 0, v11, v12, v13, v14, v15);
    v17 = self->_pipelineStates[1];
    self->_pipelineStates[1] = v16;

    if (self->_pipelineStates[1])
    {
      v24 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v18, @"DisparityClampingKernel", 0, v19, v20, v21, v22, v23);
      v25 = self->_pipelineStates[2];
      self->_pipelineStates[2] = v24;

      if (self->_pipelineStates[2])
      {
        return 0;
      }

      else
      {
        sub_295765834(&v27);
        return v27;
      }
    }

    else
    {
      sub_2957658E4(&v28);
      return v28;
    }
  }

  else
  {
    sub_295765994(&v29);
    return v29;
  }
}

@end