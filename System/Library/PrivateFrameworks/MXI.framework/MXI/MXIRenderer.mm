@interface MXIRenderer
- (MXIRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(int64_t)count error:(id *)error;
- (void)renderScene:(id)scene withEncoder:(id)encoder context:(MXIRenderingContext *)context;
@end

@implementation MXIRenderer

- (MXIRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(int64_t)count error:(id *)error
{
  deviceCopy = device;
  v193.receiver = self;
  v193.super_class = MXIRenderer;
  v15 = [(MXIRenderer *)&v193 init];
  if (v15)
  {
    v16 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v12, @"com.apple.mxi", v13, v14);
    v19 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v17, v16, 0, v18);
    v15->_stencilSupport = pixelFormat == 260;
    if (pixelFormat == 260)
    {
      v20 = 260;
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_opt_new();
    objc_msgSend_setLabel_(v21, v22, @"mxi_pipeline", v23, v24);
    v28 = objc_msgSend_newFunctionWithName_(v19, v25, @"vert_mxi", v26, v27);
    objc_msgSend_setVertexFunction_(v21, v29, v28, v30, v31);

    v35 = objc_msgSend_newFunctionWithName_(v19, v32, @"frag_mxi", v33, v34);
    objc_msgSend_setFragmentFunction_(v21, v36, v35, v37, v38);

    objc_msgSend_setRasterSampleCount_(v21, v39, count, v40, v41);
    v46 = objc_msgSend_colorAttachments(v21, v42, v43, v44, v45);
    v50 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 0, v48, v49);
    objc_msgSend_setPixelFormat_(v50, v51, format, v52, v53);

    v58 = objc_msgSend_colorAttachments(v21, v54, v55, v56, v57);
    v62 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 0, v60, v61);
    objc_msgSend_setBlendingEnabled_(v62, v63, 1, v64, v65);

    v70 = objc_msgSend_colorAttachments(v21, v66, v67, v68, v69);
    v74 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 0, v72, v73);
    objc_msgSend_setSourceRGBBlendFactor_(v74, v75, 1, v76, v77);

    v82 = objc_msgSend_colorAttachments(v21, v78, v79, v80, v81);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 0, v84, v85);
    objc_msgSend_setRgbBlendOperation_(v86, v87, 0, v88, v89);

    v94 = objc_msgSend_colorAttachments(v21, v90, v91, v92, v93);
    v98 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 0, v96, v97);
    objc_msgSend_setDestinationRGBBlendFactor_(v98, v99, 5, v100, v101);

    v106 = objc_msgSend_colorAttachments(v21, v102, v103, v104, v105);
    v110 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 0, v108, v109);
    objc_msgSend_setSourceAlphaBlendFactor_(v110, v111, 1, v112, v113);

    v118 = objc_msgSend_colorAttachments(v21, v114, v115, v116, v117);
    v122 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, 0, v120, v121);
    objc_msgSend_setAlphaBlendOperation_(v122, v123, 0, v124, v125);

    v130 = objc_msgSend_colorAttachments(v21, v126, v127, v128, v129);
    v134 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, 0, v132, v133);
    objc_msgSend_setDestinationAlphaBlendFactor_(v134, v135, 5, v136, v137);

    objc_msgSend_setDepthAttachmentPixelFormat_(v21, v138, pixelFormat, v139, v140);
    objc_msgSend_setStencilAttachmentPixelFormat_(v21, v141, v20, v142, v143);
    if (objc_msgSend_supportsVertexAmplificationCount_(deviceCopy, v144, 2, v145, v146))
    {
      objc_msgSend_setMaxVertexAmplificationCount_(v21, v147, 2, v148, v149);
    }

    v150 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(deviceCopy, v147, v21, 0, v149);
    texturePipelineState = v15->_texturePipelineState;
    v15->_texturePipelineState = v150;

    v155 = objc_msgSend_newFunctionWithName_(v19, v152, @"frag_mxi_array", v153, v154);
    objc_msgSend_setFragmentFunction_(v21, v156, v155, v157, v158);

    v161 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(deviceCopy, v159, v21, 0, v160);
    arrayPipelineState = v15->_arrayPipelineState;
    v15->_arrayPipelineState = v161;

    if (pixelFormat)
    {
      v163 = objc_opt_new();
      objc_msgSend_setDepthWriteEnabled_(v163, v164, 1, v165, v166);
      objc_msgSend_setDepthCompareFunction_(v163, v167, 1, v168, v169);
      v173 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v170, v163, v171, v172);
      depthStateDefault = v15->_depthStateDefault;
      v15->_depthStateDefault = v173;

      objc_msgSend_setDepthCompareFunction_(v163, v175, 4, v176, v177);
      v181 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v178, v163, v179, v180);
      depthStateInvZ = v15->_depthStateInvZ;
      v15->_depthStateInvZ = v181;

      objc_msgSend_setDepthCompareFunction_(v163, v183, 7, v184, v185);
      v189 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v186, v163, v187, v188);
      depthStateAlways = v15->_depthStateAlways;
      v15->_depthStateAlways = v189;

      v15->_useStencil = 0;
    }

    v191 = v15;
  }

  return v15;
}

- (void)renderScene:(id)scene withEncoder:(id)encoder context:(MXIRenderingContext *)context
{
  v299 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  encoderCopy = encoder;
  if (!objc_msgSend_triangleCount(sceneCopy, v10, v11, v12, v13))
  {
    goto LABEL_53;
  }

  v18 = objc_msgSend_colorTextures(sceneCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

  if (v23 < 0x21)
  {
    if (self->_stencilSupport && self->_useStencil == (*&context[13].var4 == 7))
    {
      v39 = objc_opt_new();
      objc_msgSend_setDepthWriteEnabled_(v39, v40, 1, v41, v42);
      self->_useStencil = 0;
      if (*&context[13].var4 != 7)
      {
        v46 = objc_opt_new();
        objc_msgSend_setStencilCompareFunction_(v46, v47, *&context[13].var4, v48, v49);
        objc_msgSend_setStencilFailureOperation_(v46, v50, 0, v51, v52);
        objc_msgSend_setDepthFailureOperation_(v46, v53, 0, v54, v55);
        objc_msgSend_setDepthStencilPassOperation_(v46, v56, 0, v57, v58);
        objc_msgSend_setReadMask_(v46, v59, *&context[13].var6, v60, v61);
        objc_msgSend_setWriteMask_(v46, v62, 0, v63, v64);
        objc_msgSend_setFrontFaceStencil_(v39, v65, v46, v66, v67);
        objc_msgSend_setBackFaceStencil_(v39, v68, v46, v69, v70);
        self->_useStencil = 1;
      }

      objc_msgSend_setDepthCompareFunction_(v39, v43, 1, v44, v45);
      v75 = objc_msgSend_device(encoderCopy, v71, v72, v73, v74);
      v79 = objc_msgSend_newDepthStencilStateWithDescriptor_(v75, v76, v39, v77, v78);
      depthStateDefault = self->_depthStateDefault;
      self->_depthStateDefault = v79;

      objc_msgSend_setDepthCompareFunction_(v39, v81, 4, v82, v83);
      v88 = objc_msgSend_device(encoderCopy, v84, v85, v86, v87);
      v92 = objc_msgSend_newDepthStencilStateWithDescriptor_(v88, v89, v39, v90, v91);
      depthStateInvZ = self->_depthStateInvZ;
      self->_depthStateInvZ = v92;

      objc_msgSend_setDepthCompareFunction_(v39, v94, 7, v95, v96);
      v101 = objc_msgSend_device(encoderCopy, v97, v98, v99, v100);
      v105 = objc_msgSend_newDepthStencilStateWithDescriptor_(v101, v102, v39, v103, v104);
      depthStateAlways = self->_depthStateAlways;
      self->_depthStateAlways = v105;
    }

    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    *buf = 0u;
    v280 = 0u;
    memset(v278, 0, sizeof(v278));
    v107 = objc_msgSend_colorTextures(sceneCopy, v25, v26, v27, v28);
    v112 = objc_msgSend_count(v107, v108, v109, v110, v111);

    if (v112)
    {
      for (i = 0; ; ++i)
      {
        v118 = objc_msgSend_colorTextures(sceneCopy, v113, v114, v115, v116);
        v123 = objc_msgSend_count(v118, v119, v120, v121, v122);

        if (v123 <= i)
        {
          break;
        }

        v128 = objc_msgSend_colorTextures(sceneCopy, v124, v125, v126, v127);
        v132 = objc_msgSend_objectAtIndex_(v128, v129, i, v130, v131);
        v133 = *&buf[8 * i];
        *&buf[8 * i] = v132;

        *(v278 + i) = objc_msgSend_gpuResourceID(v132, v134, v135, v136, v137);
      }

      v138 = objc_msgSend_colorTextures(sceneCopy, v124, v125, v126, v127);
      v143 = objc_msgSend_count(v138, v139, v140, v141, v142);
      objc_msgSend_useResources_count_usage_stages_(encoderCopy, v144, buf, v143, 1, 2);
    }

    v145 = 0;
    v146 = *&context[8].var3;
    v147 = *&context[8].var6;
    v148 = *&context[9].var4;
    v149 = *&context[10].var3;
    v150 = *&context[3].var4;
    v151 = *&context[4].var3;
    v152 = *&context[4].var6;
    v274 = *&context[2].var6;
    v275 = v150;
    v276 = v151;
    v277 = v152;
    do
    {
      *(&v295 + v145) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v146, COERCE_FLOAT(*(&v274 + v145))), v147, *(&v274 + v145), 1), v148, *(&v274 + v145), 2), v149, *(&v274 + v145), 3);
      v145 += 16;
    }

    while (v145 != 64);
    v153 = 0;
    v154 = v295;
    v155 = v296;
    v156 = v297;
    v157 = v298;
    v158 = *&context->var3;
    v159 = *&context->var6;
    v160 = *&context[1].var4;
    v161 = *&context[2].var3;
    v274 = *&context->var3;
    v275 = v159;
    v276 = v160;
    v277 = v161;
    do
    {
      *(&v295 + v153) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v154, COERCE_FLOAT(*(&v274 + v153))), v155, *(&v274 + v153), 1), v156, *(&v274 + v153), 2), v157, *(&v274 + v153), 3);
      v153 += 16;
    }

    while (v153 != 64);
    v266 = v295;
    v267 = v296;
    v268 = v297;
    v269 = v298;
    if (LOBYTE(context[14].var3) == 1)
    {
      v162 = 0;
      v163 = *&context[10].var6;
      v164 = *&context[11].var4;
      v165 = *&context[12].var3;
      v166 = *&context[12].var6;
      v167 = *&context[6].var3;
      v168 = *&context[6].var6;
      v169 = *&context[7].var4;
      v274 = *&context[5].var4;
      v275 = v167;
      v276 = v168;
      v277 = v169;
      do
      {
        *(&v295 + v162) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v163, COERCE_FLOAT(*(&v274 + v162))), v164, *(&v274 + v162), 1), v165, *(&v274 + v162), 2), v166, *(&v274 + v162), 3);
        v162 += 16;
      }

      while (v162 != 64);
      v170 = 0;
      v171 = v295;
      v172 = v296;
      v173 = v297;
      v174 = v298;
      v274 = v158;
      v275 = v159;
      v276 = v160;
      v277 = v161;
      do
      {
        *(&v295 + v170) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, COERCE_FLOAT(*(&v274 + v170))), v172, *(&v274 + v170), 1), v173, *(&v274 + v170), 2), v174, *(&v274 + v170), 3);
        v170 += 16;
      }

      while (v170 != 64);
      v270 = v295;
      v271 = v296;
      v272 = v297;
      v273 = v298;
    }

    LOBYTE(v274) = objc_msgSend_isPremultipliedAlpha(sceneCopy, v113, v114, v115, v116, v266, *&v267, *&v268, *&v269, v270, *&v271, *&v272, *&v273, v274, v275, v276, v277);
    v179 = objc_msgSend_device(encoderCopy, v175, v176, v177, v178);
    v183 = objc_msgSend_supportsVertexAmplificationCount_(v179, v180, 2, v181, v182);

    if (v183)
    {
      v295 = xmmword_22FA07EC0;
      if (LOBYTE(context[14].var3))
      {
        objc_msgSend_setVertexAmplificationCount_viewMappings_(encoderCopy, v184, 2, &v295, v187);
      }

      else
      {
        objc_msgSend_setVertexAmplificationCount_viewMappings_(encoderCopy, v184, 1, &v295, v187);
      }
    }

    v188 = objc_msgSend_colorTextures(sceneCopy, v184, v185, v186, v187);
    v193 = objc_msgSend_count(v188, v189, v190, v191, v192);
    v197 = 16;
    if (!v193)
    {
      v197 = 8;
    }

    objc_msgSend_setRenderPipelineState_(encoderCopy, v194, *(&self->super.isa + v197), v195, v196);

    objc_msgSend_setStencilReferenceValue_(encoderCopy, v198, *(&context[13].var6 + 1), v199, v200);
    v205 = objc_msgSend_vertexPositions(sceneCopy, v201, v202, v203, v204);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v206, v205, 0, 1);

    v211 = objc_msgSend_vertexUVs(sceneCopy, v207, v208, v209, v210);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v212, v211, 0, 2);

    v217 = objc_msgSend_triangleIndices(sceneCopy, v213, v214, v215, v216);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v218, v217, 0, 0);

    v223 = objc_msgSend_triangleSliceIndices(sceneCopy, v219, v220, v221, v222);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v224, v223, 0, 3);

    objc_msgSend_setVertexBytes_length_atIndex_(encoderCopy, v225, &v266, 128, 4);
    objc_msgSend_setFragmentBytes_length_atIndex_(encoderCopy, v226, &v274, 1, 0);
    v231 = objc_msgSend_colorTextures(sceneCopy, v227, v228, v229, v230);
    v236 = objc_msgSend_count(v231, v232, v233, v234, v235) == 0;

    if (v236)
    {
      v245 = objc_msgSend_colorTexture(sceneCopy, v237, v238, v239, v240);
      objc_msgSend_setFragmentTexture_atIndex_(encoderCopy, v246, v245, 0, v247);
    }

    else
    {
      objc_msgSend_setFragmentBytes_length_atIndex_(encoderCopy, v237, v278, 256, 1);
    }

    v252 = objc_msgSend_opaqueTriangleCount(sceneCopy, v241, v242, v243, v244);
    v253 = (3 * v252);
    if (v252 <= 0)
    {
      v254 = 0;
    }

    else
    {
      v254 = v253;
    }

    v262 = 3 * objc_msgSend_triangleCount(sceneCopy, v248, v249, v250, v251) - v254;
    if (objc_msgSend_opaqueTriangleCount(sceneCopy, v255, v256, v257, v258))
    {
      v263 = self->_depthStateDefault;
      if (v263)
      {
        if ((*&context[10].var4 - *&context[9].var6) >= ((*&context[10].var4 + (*&context[9].var6 * -100.0)) / 100.0))
        {
          objc_msgSend_setDepthStencilState_(encoderCopy, v259, self->_depthStateInvZ, v260, v261);
        }

        else
        {
          objc_msgSend_setDepthStencilState_(encoderCopy, v259, v263, v260, v261);
        }
      }

      if (v252 >= 1)
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(encoderCopy, v259, 3, 0, v253);
      }

      if (v262 <= 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v264 = self->_depthStateAlways;
      if (v264)
      {
        objc_msgSend_setDepthStencilState_(encoderCopy, v259, v264, v260, v261);
      }

      if (v262 < 1)
      {
        goto LABEL_51;
      }
    }

    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(encoderCopy, v259, 3, v254, v262);
LABEL_51:
    for (j = 248; j != -8; j -= 8)
    {
    }

    goto LABEL_53;
  }

  v29 = _mxi_log(v24);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v34 = objc_msgSend_colorTextures(sceneCopy, v30, v31, v32, v33);
    *buf = 67109376;
    *&buf[4] = objc_msgSend_count(v34, v35, v36, v37, v38);
    *&buf[8] = 1024;
    *&buf[10] = 32;
    _os_log_impl(&dword_22F9C3000, v29, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIRenderer.mm:118] [MXI] scene.colorTextures.count (%d) > ATLAS_SLICES_CAPACITY (%d)", buf, 0xEu);
  }

LABEL_53:
}

@end