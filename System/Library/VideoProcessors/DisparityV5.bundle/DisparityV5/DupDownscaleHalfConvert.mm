@interface DupDownscaleHalfConvert
- (DupDownscaleHalfConvert)initWithMetalContext:(id)context;
- (int)AllocateResources;
- (int)DownscaleAndCrop:(float)crop outY:(__CVBuffer *)y inYuv420:(__CVBuffer *)yuv420;
- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)crop outCroppedLuma:(__CVBuffer *)luma inYuv420:(__CVBuffer *)yuv420;
- (int)GenerateImageY:(id)y inYuv420:(id)yuv420 waitForCompletion:(BOOL)completion;
- (int)GenerateImageYUVA:(__CVBuffer *)a outYuvaWidth:(unsigned int)width outYuvaHeight:(unsigned int)height outY:(__CVBuffer *)y inYuv420:(__CVBuffer *)yuv420 gainToApplyToOutputs:(float)outputs waitForCompletion:(BOOL)completion;
- (void)dealloc;
@end

@implementation DupDownscaleHalfConvert

- (DupDownscaleHalfConvert)initWithMetalContext:(id)context
{
  contextCopy = context;
  v42.receiver = self;
  v42.super_class = DupDownscaleHalfConvert;
  v6 = [(DupDownscaleHalfConvert *)&v42 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v6->_ResourcesAvailable = 0;
  objc_storeStrong(&v6->_MetalContext, context);
  v7->_ContextAvailable = 1;
  v14 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v8, @"kernelDownscalerConverterYUVA", 0, v9, v10, v11, v12, v13);
  KernelYUVA = v7->_KernelYUVA;
  v7->_KernelYUVA = v14;

  if (!v7->_KernelYUVA)
  {
    sub_2957672DC();
LABEL_12:
    v40 = 0;
    goto LABEL_7;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v16, @"kernelDownscalerConverterY", 0, v17, v18, v19, v20, v21);
  KernelY = v7->_KernelY;
  v7->_KernelY = v22;

  if (!v7->_KernelY)
  {
    sub_295767264();
    goto LABEL_12;
  }

  v30 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v24, @"kernelDownscaleConvertAndCenterCrop", 0, v25, v26, v27, v28, v29);
  KernelDownscaleConvertAndCenterCrop = v7->_KernelDownscaleConvertAndCenterCrop;
  v7->_KernelDownscaleConvertAndCenterCrop = v30;

  if (!v7->_KernelDownscaleConvertAndCenterCrop)
  {
    sub_2957671EC();
    goto LABEL_12;
  }

  v38 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v32, @"kernelDownscaleAndCrop", 0, v33, v34, v35, v36, v37);
  KernelDownscaleAndCrop = v7->_KernelDownscaleAndCrop;
  v7->_KernelDownscaleAndCrop = v38;

  if (!v7->_KernelDownscaleAndCrop)
  {
    sub_295767174();
    goto LABEL_12;
  }

LABEL_6:
  v40 = v7;
LABEL_7:

  return v40;
}

- (int)AllocateResources
{
  if (!self->_ContextAvailable)
  {
    return -12786;
  }

  result = 0;
  self->_ResourcesAvailable = 1;
  return result;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_MetalContext, a2, v2, v3, v4, v5, v6, v7, v8);
  objc_msgSend_ReleaseResources(self, v10, v11, v12, v13, v14, v15, v16, v17);
  v18.receiver = self;
  v18.super_class = DupDownscaleHalfConvert;
  [(DupDownscaleHalfConvert *)&v18 dealloc];
}

- (int)GenerateImageYUVA:(__CVBuffer *)a outYuvaWidth:(unsigned int)width outYuvaHeight:(unsigned int)height outY:(__CVBuffer *)y inYuv420:(__CVBuffer *)yuv420 gainToApplyToOutputs:(float)outputs waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  selfCopy = self;
  outputsCopy = outputs;
  if (!width || (selfCopy2 = height, Width = width, !height))
  {
    Width = CVPixelBufferGetWidth(a);
    self = CVPixelBufferGetHeight(a);
    selfCopy2 = self;
  }

  v180 = 0;
  v181 = 0;
  if (!selfCopy->_ContextAvailable)
  {
    sub_295767354(self, a2);
LABEL_20:
    y = 0;
    v32 = 0;
    v24 = 0;
    v19 = 0;
    v78 = 0;
    v61 = 0;
    completionCopy = -12780;
    goto LABEL_17;
  }

  if (!selfCopy->_ResourcesAvailable)
  {
    sub_2957673CC(self, a2);
    goto LABEL_20;
  }

  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(selfCopy->_MetalContext, a2, yuv420, 10, 17, 0, yuv420, completion, outputs);
  if (!v19)
  {
    sub_29576769C();
    y = 0;
    v32 = 0;
    v24 = 0;
LABEL_27:
    v78 = 0;
    v61 = 0;
    goto LABEL_28;
  }

  v24 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(selfCopy->_MetalContext, v16, yuv420, 30, 17, 1, v17, v18, v20);
  if (!v24)
  {
    sub_295767624();
    y = 0;
    v32 = 0;
    goto LABEL_27;
  }

  v32 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(selfCopy->_MetalContext, v21, a, 80, 22, 0, v22, v23, COERCE_FLOAT(COERCE_UNSIGNED_INT64(Width)), selfCopy2);
  if (!v32)
  {
    sub_2957675AC();
    y = 0;
    goto LABEL_27;
  }

  if (y)
  {
    y = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(selfCopy->_MetalContext, v25, y, 10, 22, 0, v30, v31, COERCE_FLOAT(COERCE_UNSIGNED_INT64(Width)), selfCopy2);
    if (!y)
    {
      sub_295767444();
      goto LABEL_27;
    }
  }

  v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(selfCopy->_KernelYUVA, v25, v26, v27, v28, v29, v30, v31, v33);
  v43 = objc_msgSend_threadExecutionWidth(selfCopy->_KernelYUVA, v35, v36, v37, v38, v39, v40, v41, v42);
  sub_29574A8BC(v34, v43, &v181, &v180, Width, selfCopy2);
  v52 = objc_msgSend_commandQueue(selfCopy->_MetalContext, v44, v45, v46, v47, v48, v49, v50, v51);
  v61 = objc_msgSend_commandBuffer(v52, v53, v54, v55, v56, v57, v58, v59, v60);

  if (!v61)
  {
    sub_295767534();
    v78 = 0;
LABEL_28:
    completionCopy = -12786;
    goto LABEL_17;
  }

  v70 = objc_msgSend_computeCommandEncoder(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v78 = v70;
  if (!v70)
  {
    sub_2957674BC();
    goto LABEL_28;
  }

  objc_msgSend_setComputePipelineState_(v70, v71, selfCopy->_KernelYUVA, v72, v73, v74, v75, v76, v77);
  objc_msgSend_setTexture_atIndex_(v78, v79, v19, 0, v80, v81, v82, v83, v84);
  objc_msgSend_setTexture_atIndex_(v78, v85, v24, 1, v86, v87, v88, v89, v90);
  objc_msgSend_setTexture_atIndex_(v78, v91, v32, 2, v92, v93, v94, v95, v96);
  objc_msgSend_setTexture_atIndex_(v78, v97, y, 3, v98, v99, v100, v101, v102);
  objc_msgSend_setBytes_length_atIndex_(v78, v103, &outputsCopy, 4, 0, v104, v105, v106, v107);
  v179[0] = Width / v181;
  v179[1] = selfCopy2 / v180;
  v179[2] = 1;
  v178[0] = v181;
  v178[1] = v180;
  v178[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v78, v108, v179, v178, v109, v110, v111, v112, v113);
  objc_msgSend_endEncoding(v78, v114, v115, v116, v117, v118, v119, v120, v121);
  if (*MEMORY[0x29EDB9270])
  {
    v130 = objc_msgSend_commandQueue(v61, v122, v123, v124, v125, v126, v127, v128, v129);
    v139 = objc_msgSend_commandBuffer(v130, v131, v132, v133, v134, v135, v136, v137, v138);

    objc_msgSend_setLabel_(v139, v140, @"KTRACE_MTLCMDBUF", v141, v142, v143, v144, v145, v146);
    objc_msgSend_addCompletedHandler_(v139, v147, &unk_2A1C9B258, v148, v149, v150, v151, v152, v153);
    objc_msgSend_commit(v139, v154, v155, v156, v157, v158, v159, v160, v161);
    objc_msgSend_addCompletedHandler_(v61, v162, &unk_2A1C9B278, v163, v164, v165, v166, v167, v168);
  }

  objc_msgSend_commit(v61, v122, v123, v124, v125, v126, v127, v128, v129);
  if (completionCopy)
  {
    objc_msgSend_waitUntilCompleted(v61, v169, v170, v171, v172, v173, v174, v175, v176);
    completionCopy = 0;
  }

LABEL_17:

  return completionCopy;
}

- (int)GenerateImageY:(id)y inYuv420:(id)yuv420 waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  yCopy = y;
  yuv420Copy = yuv420;
  v18 = objc_msgSend_width(yuv420Copy, v10, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_height(yuv420Copy, v19, v20, v21, v22, v23, v24, v25, v26);
  v36 = objc_msgSend_width(yCopy, v28, v29, v30, v31, v32, v33, v34, v35);
  v45 = objc_msgSend_height(yCopy, v37, v38, v39, v40, v41, v42, v43, v44);
  v200 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295767714(v45);
LABEL_23:
    v115 = 0;
    v98 = 0;
    completionCopy = -12780;
    goto LABEL_15;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_29576778C(v45);
    goto LABEL_23;
  }

  if (!yuv420Copy)
  {
    sub_295767AD4(v45);
    goto LABEL_23;
  }

  v54 = v45;
  if (objc_msgSend_pixelFormat(yuv420Copy, v46, v47, v48, v49, v50, v51, v52, v53) != 10)
  {
    sub_295767804();
    goto LABEL_23;
  }

  if (!yCopy)
  {
    sub_295767A5C();
    goto LABEL_23;
  }

  if (objc_msgSend_pixelFormat(yCopy, v55, v56, v57, v58, v59, v60, v61, v62) != 10)
  {
    sub_29576787C();
    goto LABEL_23;
  }

  if (v18 != 2 * v36 || 2 * v54 != v27)
  {
    sub_2957679E4();
    goto LABEL_23;
  }

  v71 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelY, v63, v64, v65, v66, v67, v68, v69, v70);
  v80 = objc_msgSend_threadExecutionWidth(self->_KernelY, v72, v73, v74, v75, v76, v77, v78, v79);
  sub_29574A8BC(v71, v80, &v200 + 1, &v200, v36, v54);
  v89 = objc_msgSend_commandQueue(self->_MetalContext, v81, v82, v83, v84, v85, v86, v87, v88);
  v98 = objc_msgSend_commandBuffer(v89, v90, v91, v92, v93, v94, v95, v96, v97);

  if (!v98)
  {
    sub_29576796C();
    v115 = 0;
LABEL_26:
    completionCopy = -12786;
    goto LABEL_15;
  }

  v107 = objc_msgSend_computeCommandEncoder(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v115 = v107;
  if (!v107)
  {
    sub_2957678F4();
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v107, v108, self->_KernelY, v109, v110, v111, v112, v113, v114);
  objc_msgSend_setTexture_atIndex_(v115, v116, yuv420Copy, 0, v117, v118, v119, v120, v121);
  objc_msgSend_setTexture_atIndex_(v115, v122, yCopy, 1, v123, v124, v125, v126, v127);
  v199[0] = v36 / HIDWORD(v200);
  v199[1] = v54 / v200;
  v199[2] = 1;
  v198[0] = HIDWORD(v200);
  v198[1] = v200;
  v198[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v115, v128, v199, v198, v129, v130, v131, v132, v133);
  objc_msgSend_endEncoding(v115, v134, v135, v136, v137, v138, v139, v140, v141);
  if (*MEMORY[0x29EDB9270])
  {
    v150 = objc_msgSend_commandQueue(v98, v142, v143, v144, v145, v146, v147, v148, v149);
    v159 = objc_msgSend_commandBuffer(v150, v151, v152, v153, v154, v155, v156, v157, v158);

    objc_msgSend_setLabel_(v159, v160, @"KTRACE_MTLCMDBUF", v161, v162, v163, v164, v165, v166);
    objc_msgSend_addCompletedHandler_(v159, v167, &unk_2A1C9B298, v168, v169, v170, v171, v172, v173);
    objc_msgSend_commit(v159, v174, v175, v176, v177, v178, v179, v180, v181);
    objc_msgSend_addCompletedHandler_(v98, v182, &unk_2A1C9B2B8, v183, v184, v185, v186, v187, v188);
  }

  objc_msgSend_commit(v98, v142, v143, v144, v145, v146, v147, v148, v149);
  if (completionCopy)
  {
    objc_msgSend_waitUntilCompleted(v98, v189, v190, v191, v192, v193, v194, v195, v196);
    completionCopy = 0;
  }

LABEL_15:

  return completionCopy;
}

- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)crop outCroppedLuma:(__CVBuffer *)luma inYuv420:(__CVBuffer *)yuv420
{
  Width = CVPixelBufferGetWidth(crop);
  Height = CVPixelBufferGetHeight(crop);
  v183 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295767B4C(Height);
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295767BC4(Height);
    return -12780;
  }

  v16 = Height;
  v17 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v12, yuv420, 10, 17, 0, v13, v14, v15);
  if (!v17)
  {
    sub_295767EB4();
    return -12786;
  }

  v22 = v17;
  v23 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v18, yuv420, 30, 17, 1, v19, v20, v21);
  if (!v23)
  {
    sub_295767E24(v22);
    return -12786;
  }

  v28 = v23;
  v29 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v24, crop, 80, 22, 0, v25, v26, v27);
  if (!v29)
  {
    sub_295767D8C(v28, v22);
    return -12786;
  }

  v34 = v29;
  v35 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v30, luma, 10, 22, 0, v31, v32, v33);
  if (!v35)
  {
    sub_295767CE4(v34, v28, v22);
    return -12786;
  }

  v44 = v35;
  v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleConvertAndCenterCrop, v36, v37, v38, v39, v40, v41, v42, v43);
  v54 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleConvertAndCenterCrop, v46, v47, v48, v49, v50, v51, v52, v53);
  sub_29574A8BC(v45, v54, &v183 + 1, &v183, Width, v16);
  v63 = objc_msgSend_commandQueue(self->_MetalContext, v55, v56, v57, v58, v59, v60, v61, v62);
  v72 = objc_msgSend_commandBuffer(v63, v64, v65, v66, v67, v68, v69, v70, v71);

  if (!v72)
  {
    sub_295767C3C(v44, v34, v28, v22);
    return -12786;
  }

  v81 = objc_msgSend_computeCommandEncoder(v72, v73, v74, v75, v76, v77, v78, v79, v80);
  if (!v81)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v176, v177, v178, v179, v180, v181);

    return -12786;
  }

  v89 = v81;
  objc_msgSend_setComputePipelineState_(v81, v82, self->_KernelDownscaleConvertAndCenterCrop, v83, v84, v85, v86, v87, v88);
  objc_msgSend_setTexture_atIndex_(v89, v90, v22, 0, v91, v92, v93, v94, v95);
  objc_msgSend_setTexture_atIndex_(v89, v96, v28, 1, v97, v98, v99, v100, v101);
  objc_msgSend_setTexture_atIndex_(v89, v102, v34, 2, v103, v104, v105, v106, v107);
  objc_msgSend_setTexture_atIndex_(v89, v108, v44, 3, v109, v110, v111, v112, v113);
  v180 = Width / HIDWORD(v183);
  v181 = v16 / v183;
  v182 = 1;
  v177 = HIDWORD(v183);
  v178 = v183;
  v179 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v89, v114, &v180, &v177, v115, v116, v117, v118, v119);
  objc_msgSend_endEncoding(v89, v120, v121, v122, v123, v124, v125, v126, v127);
  if (*MEMORY[0x29EDB9270])
  {
    v136 = objc_msgSend_commandQueue(v72, v128, v129, v130, v131, v132, v133, v134, v135);
    v145 = objc_msgSend_commandBuffer(v136, v137, v138, v139, v140, v141, v142, v143, v144);

    objc_msgSend_setLabel_(v145, v146, @"KTRACE_MTLCMDBUF", v147, v148, v149, v150, v151, v152);
    objc_msgSend_addCompletedHandler_(v145, v153, &unk_2A1C9B2D8, v154, v155, v156, v157, v158, v159);
    objc_msgSend_commit(v145, v160, v161, v162, v163, v164, v165, v166, v167);
    objc_msgSend_addCompletedHandler_(v72, v168, &unk_2A1C9B2F8, v169, v170, v171, v172, v173, v174);
  }

  objc_msgSend_commit(v72, v128, v129, v130, v131, v132, v133, v134, v135);

  return 0;
}

- (int)DownscaleAndCrop:(float)crop outY:(__CVBuffer *)y inYuv420:(__CVBuffer *)yuv420
{
  if (!self->_ContextAvailable)
  {
    sub_295767F2C(crop);
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295767FA4(crop);
    return -12780;
  }

  if (!yuv420)
  {
    sub_2957683B4(crop);
    return -12780;
  }

  if (!y)
  {
    sub_29576833C(crop);
    return -12780;
  }

  if (CVPixelBufferGetPixelFormatType(yuv420) != 875704422)
  {
    sub_29576801C();
    return -12780;
  }

  Width = CVPixelBufferGetWidth(yuv420);
  Height = CVPixelBufferGetHeight(yuv420);
  v11 = CVPixelBufferGetWidth(y);
  v15 = CVPixelBufferGetHeight(y);
  v17 = v15;
  if (Width <= v11 || Height <= v17)
  {
    sub_2957682C4();
    return -12780;
  }

  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v12, yuv420, 10, 17, 0, v13, v14, v16);
  if (!v19)
  {
    sub_29576824C();
    return -12786;
  }

  v24 = v19;
  v25 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v20, y, 10, 22, 0, v21, v22, v23);
  if (!v25)
  {
    sub_2957681BC(v24);
    return -12786;
  }

  v34 = v25;
  v162 = 0;
  v35 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleAndCrop, v26, v27, v28, v29, v30, v31, v32, v33);
  v44 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleAndCrop, v36, v37, v38, v39, v40, v41, v42, v43);
  sub_29574A8BC(v35, v44, &v162 + 1, &v162, v11, v15);
  v45 = (1.0 - (1.0 / crop)) * 0.5;
  v161[0] = Width / (v11 * crop);
  v161[1] = v45 * Width;
  v161[2] = Height / (v17 * crop);
  v161[3] = v45 * Height;
  v53 = objc_msgSend_commandQueue(self->_MetalContext, v46, v47, v48, v49, v50, v51, v52, v45 * Height);
  v62 = objc_msgSend_commandBuffer(v53, v54, v55, v56, v57, v58, v59, v60, v61);

  if (!v62)
  {
    sub_29576812C(v34, v24);
    return -12786;
  }

  v71 = objc_msgSend_computeCommandEncoder(v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (!v71)
  {
    sub_295768094(v34, v24, v62);
    return -12786;
  }

  v79 = v71;
  objc_msgSend_setComputePipelineState_(v71, v72, self->_KernelDownscaleAndCrop, v73, v74, v75, v76, v77, v78);
  objc_msgSend_setTexture_atIndex_(v79, v80, v24, 0, v81, v82, v83, v84, v85);
  objc_msgSend_setTexture_atIndex_(v79, v86, v34, 1, v87, v88, v89, v90, v91);
  objc_msgSend_setBytes_length_atIndex_(v79, v92, v161, 16, 0, v93, v94, v95, v96);
  v160[0] = v11 / HIDWORD(v162);
  v160[1] = v15 / v162;
  v160[2] = 1;
  v159[0] = HIDWORD(v162);
  v159[1] = v162;
  v159[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v79, v97, v160, v159, v98, v99, v100, v101, v102);
  objc_msgSend_endEncoding(v79, v103, v104, v105, v106, v107, v108, v109, v110);
  if (*MEMORY[0x29EDB9270])
  {
    v119 = objc_msgSend_commandQueue(v62, v111, v112, v113, v114, v115, v116, v117, v118);
    v128 = objc_msgSend_commandBuffer(v119, v120, v121, v122, v123, v124, v125, v126, v127);

    objc_msgSend_setLabel_(v128, v129, @"KTRACE_MTLCMDBUF", v130, v131, v132, v133, v134, v135);
    objc_msgSend_addCompletedHandler_(v128, v136, &unk_2A1C9B318, v137, v138, v139, v140, v141, v142);
    objc_msgSend_commit(v128, v143, v144, v145, v146, v147, v148, v149, v150);
    objc_msgSend_addCompletedHandler_(v62, v151, &unk_2A1C9B338, v152, v153, v154, v155, v156, v157);
  }

  objc_msgSend_commit(v62, v111, v112, v113, v114, v115, v116, v117, v118);

  return 0;
}

@end