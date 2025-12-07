@interface TSCH3DPrefilteredLineRendererRenderCacheObject
- (TSCH3DPrefilteredLineRendererRenderCacheObject)init;
- (id)p_box;
- (id)p_diffuseTexcoords;
- (id)p_geometry;
- (id)p_normals;
- (id)p_originalGeometry;
- (id)p_texcoords;
- (void)allocateDynamicResourcesIntoArray:(id)array;
- (void)renderWithLineRenderer:(id)renderer setting:(id)setting fromVertex:(const void *)vertex toVertex:(const void *)toVertex;
- (void)submitResourcesWithLineRenderer:(id)renderer setting:(id)setting;
@end

@implementation TSCH3DPrefilteredLineRendererRenderCacheObject

- (TSCH3DPrefilteredLineRendererRenderCacheObject)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DPrefilteredLineRendererRenderCacheObject;
  return [(TSCH3DSceneRenderCacheObject *)&v3 init];
}

- (void)allocateDynamicResourcesIntoArray:(id)array
{
  arrayCopy = array;
  if (objc_msgSend_count(arrayCopy, v4, v5, v6, v7, arrayCopy))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DPrefilteredLineRendererRenderCacheObject allocateDynamicResourcesIntoArray:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 367, 0, "array must be empty for indexing to work");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
  v83 = arrayCopy;
  v28 = v27;
  v33 = objc_msgSend_count(v83, v29, v30, v31, v32);
  if (v33 <= 5)
  {
    v38 = v33 - 6;
    do
    {
      objc_msgSend_addObject_(v83, v34, v35, v36, v37, v28);
    }

    while (!__CFADD__(v38++, 1));
  }

  v44 = &qword_2764D6828;
  v45 = 6;
  v46 = &qword_2764D6828;
  do
  {
    v47 = *v46;
    v46 += 2;
    v48 = objc_msgSend_bufferWithCapacity_dimension_(TSCH3DVectorDataBuffer, v40, v41, v42, v43, 0, v47);
    v53 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v49, v50, v51, v52, v48);

    objc_msgSend_replaceObjectAtIndex_withObject_(v83, v54, v55, v56, v57, *(v44 - 2), v53);
    v44 = v46;
    --v45;
  }

  while (v45);
  v58 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41, v42, v43);
  v63 = objc_msgSend_indexOfObject_(v83, v59, v60, v61, v62, v58);

  if (v63 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCH3DPrefilteredLineRendererRenderCacheObject allocateDynamicResourcesIntoArray:]");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 395, 0, "not all objects are replaced with resource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }
}

- (id)p_geometry
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 0);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_geometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 401, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_texcoords
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 1);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_texcoords]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 408, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_box
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 2);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_box]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 415, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_originalGeometry
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 3);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_originalGeometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 422, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_normals
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_normals]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 429, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_diffuseTexcoords
{
  v6 = objc_msgSend_resourceAtIndex_(self, a2, v2, v3, v4, 5);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DPrefilteredLineRendererRenderCacheObject p_diffuseTexcoords]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 436, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (void)submitResourcesWithLineRenderer:(id)renderer setting:(id)setting
{
  rendererCopy = renderer;
  settingCopy = setting;
  v370 = rendererCopy;
  v374 = settingCopy;
  v369 = objc_msgSend_pipeline(rendererCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_processor(v369, v12, v13, v14, v15);
  if (settingCopy)
  {
    objc_msgSend_strokeColor(settingCopy, v18, v19, v20);
  }

  else
  {
    v379 = 0;
    v380 = 0;
  }

  objc_msgSend_lineWidth(settingCopy, v16, v18, v19, v20);
  *&v24 = *&v24 * 0.83337;
  if (*&v24 > 1.0)
  {
    *&v24 = 1.0;
  }

  LODWORD(v22) = HIDWORD(v380);
  *&v24 = *&v24 * *(&v380 + 1);
  HIDWORD(v380) = LODWORD(v24);
  v25 = objc_msgSend_effectsStates(v17, v21, v24, v22, v23);
  v30 = objc_msgSend_stateSharingID(TSCH3DPrefilteredLineOutputColorShaderEffect, v26, v27, v28, v29);
  sub_276212340(v25, v30, &v379);

  memset(&v378[12], 0, 13);
  memset(v378, 0, 11);
  if (settingCopy)
  {
    objc_msgSend_filterRadius(settingCopy, v32, v33, v34);
  }

  else
  {
    *v376 = 0uLL;
  }

  v35 = 0;
  __asm { FMOV            V1.4S, #1.5 }

  v41 = vand_s8(vmovn_s32(vcgtq_f32(_Q1, *v376)), 0x1000100010001);
  v42 = COERCE_DOUBLE(vuzp1_s8(v41, v41));
  LODWORD(v377) = LODWORD(v42);
  LOBYTE(v43) = 1;
  do
  {
    while ((v43 & 1) == 0)
    {
      LOBYTE(v43) = 0;
      if (++v35 == 4)
      {
        goto LABEL_17;
      }
    }

    v43 = v378[v35++ - 8];
  }

  while (v35 != 4);
  if (v43)
  {
    v373 = objc_msgSend_texture(TSCH3DBoxTexture, v31, v42, COERCE_DOUBLE(0x1000100010001), v34);
    goto LABEL_18;
  }

LABEL_17:
  v373 = objc_msgSend_texture(TSCH3DGaussTexture, v31, v42, COERCE_DOUBLE(0x1000100010001), v34);
LABEL_18:
  v48 = objc_msgSend_variableTexture(TSCH3DPrefilteredLineShaderEffect, v44, v45, v46, v47);
  v53 = objc_msgSend_texture_resource_attributes_(v17, v49, v50, v51, v52, v48, v373, v378);

  v377 = v53;
  v58 = objc_msgSend_effectsStates(v17, v54, v55, v56, v57);
  v63 = objc_msgSend_stateSharingID(TSCH3DPrefilteredLineShaderEffect, v59, v60, v61, v62);
  sub_2762123DC(v58, v63, &v377);

  v64 = v374;
  v69 = objc_msgSend_stroke(v374, v65, v66, v67, v68);

  if (v69)
  {
    *&v376[17] = 0;
    *&v376[12] = 0;
    *v376 = 0;
    *&v376[7] = 0;
    strokeTexture = self->_strokeTexture;
    if (!strokeTexture || (objc_msgSend_stroke(strokeTexture, v70, v71, v72, v73), v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stroke(v374, v76, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v75, v81, v82, v83, v84, v80), v80, v75, v64 = v374, (isEqual & 1) == 0))
    {
      v90 = [TSCH3DStrokePatternTexture alloc];
      v95 = objc_msgSend_stroke(v64, v91, v92, v93, v94);
      v100 = objc_msgSend_initWithStroke_(v90, v96, v97, v98, v99, v95);
      v101 = self->_strokeTexture;
      self->_strokeTexture = v100;
    }

    v102 = objc_msgSend_variableTexture(TSCH3DStrokePatternShaderEffect, v86, v87, v88, v89);
    v107 = objc_msgSend_texture_resource_attributes_(v17, v103, v104, v105, v106, v102, self->_strokeTexture, v376);

    v375 = v107;
    v112 = objc_msgSend_effectsStates(v17, v108, v109, v110, v111);
    v117 = objc_msgSend_stateSharingID(TSCH3DStrokePatternShaderEffect, v113, v114, v115, v116);
    sub_2762123DC(v112, v117, &v375);

    v64 = v374;
  }

  v372 = objc_msgSend_p_geometry(self, v70, v71, v72, v73);
  v122 = objc_msgSend_buffer(v372, v118, v119, v120, v121);
  v127 = objc_msgSend_count(v122, v123, v124, v125, v126);

  if (v127)
  {
    objc_msgSend_geometry_(v17, v128, v129, v130, v131, v372);
    v371 = objc_msgSend_p_texcoords(self, v132, v133, v134, v135);
    v140 = objc_msgSend_buffer(v371, v136, v137, v138, v139);
    v145 = objc_msgSend_count(v140, v141, v142, v143, v144);

    if (v145 != v127)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v161 = objc_msgSend_buffer(v371, v157, v158, v159, v160);
      v166 = objc_msgSend_count(v161, v162, v163, v164, v165);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v167, v168, v169, v170, v151, v156, 483, 0, "buffer size mismatch %lu should be %lu", v166, v127);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173, v174);
    }

    v175 = objc_msgSend_variablePrefilterBoxTextureCoordinate(TSCH3DPrefilteredLineShaderEffect, v146, v147, v148, v149);
    memset(v376, 0, 24);
    v367 = v175;
    objc_msgSend_attribute_resource_specs_(v17, v176, v177, v178, v179, v175, v371, v376);
    v184 = objc_msgSend_p_box(self, v180, v181, v182, v183);
    v368 = v184;
    v189 = objc_msgSend_buffer(v184, v185, v186, v187, v188);
    v194 = objc_msgSend_count(v189, v190, v191, v192, v193);

    if (v194 != v127)
    {
      v199 = MEMORY[0x277D81150];
      v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, v196, v197, v198, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, v202, v203, v204, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v210 = objc_msgSend_buffer(v184, v206, v207, v208, v209);
      v215 = objc_msgSend_count(v210, v211, v212, v213, v214);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v216, v217, v218, v219, v200, v205, 492, 0, "buffer size mismatch %lu should be %lu", v215, v127);

      v184 = v368;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
    }

    v224 = objc_msgSend_variablePrefilterBox(TSCH3DPrefilteredLineShaderEffect, v195, v196, v197, v198);
    memset(v376, 0, 24);
    objc_msgSend_attribute_resource_specs_(v17, v225, v226, v227, v228, v224, v184, v376);

    v233 = objc_msgSend_p_normals(self, v229, v230, v231, v232);
    v238 = objc_msgSend_buffer(v233, v234, v235, v236, v237);
    v243 = objc_msgSend_count(v238, v239, v240, v241, v242);

    if ((((v243 == 0) ^ objc_msgSend_useNormals(v374, v244, v245, v246, v247)) & 1) == 0)
    {
      v252 = MEMORY[0x277D81150];
      v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v248, v249, v250, v251, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
      v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v254, v255, v256, v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      v263 = objc_msgSend_useNormals(v374, v259, v260, v261, v262);
      v268 = objc_msgSend_buffer(v233, v264, v265, v266, v267);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v252, v269, v270, v271, v272, v253, v258, 501, 0, "setting for normal %ld mismatch with supplied buffer %@(%lu)", v263, v268, v243);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v273, v274, v275, v276);
    }

    if (v243)
    {
      v277 = objc_msgSend_buffer(v233, v248, v249, v250, v251);
      v282 = objc_msgSend_count(v277, v278, v279, v280, v281);

      if (v282 != v127)
      {
        v287 = MEMORY[0x277D81150];
        v288 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v284, v285, v286, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
        v293 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v289, v290, v291, v292, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v298 = objc_msgSend_buffer(v233, v294, v295, v296, v297);
        v303 = objc_msgSend_count(v298, v299, v300, v301, v302);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v287, v304, v305, v306, v307, v288, v293, 503, 0, "buffer size mismatch %lu should be %lu", v303, v127);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v308, v309, v310, v311);
      }

      objc_msgSend_normals_(v17, v283, v284, v285, v286, v233);
    }

    v312 = objc_msgSend_p_diffuseTexcoords(self, v248, v249, v250, v251);
    v317 = objc_msgSend_buffer(v312, v313, v314, v315, v316);
    v322 = objc_msgSend_count(v317, v318, v319, v320, v321);

    if (v322)
    {
      v327 = objc_msgSend_buffer(v312, v323, v324, v325, v326);
      v332 = objc_msgSend_count(v327, v328, v329, v330, v331);

      if (v332 != v127)
      {
        v337 = MEMORY[0x277D81150];
        v338 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v333, v334, v335, v336, "[TSCH3DPrefilteredLineRendererRenderCacheObject submitResourcesWithLineRenderer:setting:]");
        v343 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v339, v340, v341, v342, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v348 = objc_msgSend_buffer(v312, v344, v345, v346, v347);
        v353 = objc_msgSend_count(v348, v349, v350, v351, v352);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v337, v354, v355, v356, v357, v338, v343, 509, 0, "buffer size mismatch %lu should be %lu", v353, v127);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v358, v359, v360, v361);
      }

      objc_msgSend_texcoords_(v17, v333, v334, v335, v336, v312);
    }

    v362 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v323, v324, v325, v326, 1);
    objc_msgSend_submit_(v17, v363, v364, v365, v366, v362);

    v64 = v374;
  }
}

- (void)renderWithLineRenderer:(id)renderer setting:(id)setting fromVertex:(const void *)vertex toVertex:(const void *)toVertex
{
  rendererCopy = renderer;
  settingCopy = setting;
  if ((sub_2762139C0(vertex, toVertex) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    v22 = sub_276213A5C(vertex);
    v23 = sub_276213A5C(toVertex);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v24, v25, v26, v27, v16, v21, 529, 0, "inconsistent state for v0 %@ v1 %@", v22, v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = 0.0;
  v527 = 0;
  v528 = 0.0;
  v525 = 0;
  v526 = 0.0;
  v33 = *(vertex + 1);
  if (v33)
  {
    v34 = *(toVertex + 1);
    if (v34)
    {
      if (rendererCopy)
      {
        objc_msgSend_normalMatrix(rendererCopy, 0.0, v13, v14);
        v33 = *(vertex + 1);
        v35 = *(&__y + 1);
        v36 = *&__y;
        v37 = *(&v520 + 3);
        v38 = *(&v520 + 2);
        v39 = *(&__y + 3);
        LODWORD(v40) = DWORD2(__y);
        LODWORD(v41) = DWORD1(v520);
        v42 = *&v520;
        LODWORD(v43) = v521;
        v34 = *(toVertex + 1);
      }

      else
      {
        LODWORD(v521) = 0;
        v43 = 0.0;
        v41 = 0.0;
        v40 = 0.0;
        __y = 0u;
        v520 = 0u;
        v37 = 0.0;
        v42 = 0.0;
        v35 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v36 = 0.0;
      }

      v44 = v33[1];
      v45 = v33[2];
      v46 = ((v44 * v42) + (v35 * *v33)) + (v37 * v45);
      v47 = ((v44 * *&v41) + (*&v40 * *v33)) + (*&v43 * v45);
      v527.f32[0] = ((v39 * v44) + (v36 * *v33)) + (v38 * v45);
      v527.f32[1] = v46;
      v528 = v47;
      v48 = v34[1];
      v49 = (v39 * v48) + (v36 * *v34);
      v50 = v34[2];
      v51 = ((v42 * v48) + (v35 * *v34)) + (v37 * v50);
      *&v41 = *&v41 * v48;
      *&v40 = *&v41 + (*&v40 * *v34);
      *&v43 = *&v40 + (*&v43 * v50);
      v525.f32[0] = v49 + (v38 * v50);
      v525.f32[1] = v51;
      v526 = *&v43;
      if (objc_msgSend_cullBackfaces(settingCopy, v11, v43, v40, v41))
      {
        *&v53 = v528;
        if (v528 < 0.0)
        {
          *&v53 = v526;
          if (v526 < 0.0)
          {
            goto LABEL_137;
          }
        }
      }

      v56 = objc_msgSend_p_normals(self, v52, v53, v54, v55);
      v57 = sub_27618C648(v56);
      sub_276213B6C(v57, &v527, &v525);
    }
  }

  if (*(vertex + 2) && *(vertex + 6) != 1 && *(toVertex + 2) && *(toVertex + 6) != 1)
  {
    v58 = objc_msgSend_p_diffuseTexcoords(self, v11, v32, v13, v14);
    v59 = sub_27618C374(v58);
    v60 = *(vertex + 2);
    v61 = *(toVertex + 2);
    sub_276161E1C(v59, v60);
    sub_276161E1C(v59, v61);
    sub_276161E1C(v59, v61);
    sub_276161E1C(v59, v60);
    sub_276161E1C(v59, v61);
    sub_276161E1C(v59, v60);
  }

  v62 = *vertex;
  if (rendererCopy)
  {
    objc_msgSend_modelMatrix(rendererCopy, v32, v13, v14);
  }

  else
  {
    v521 = 0u;
    *v522 = 0u;
    __y = 0u;
    v520 = 0u;
  }

  *&v63 = sub_276154744(v62, &__y, &v523, v14);
  v66 = *toVertex;
  if (rendererCopy)
  {
    objc_msgSend_modelMatrix(rendererCopy, v63, v64, v65);
  }

  else
  {
    v521 = 0u;
    *v522 = 0u;
    __y = 0u;
    v520 = 0u;
  }

  sub_276154744(v66, &__y, &v517, v65);
  v68 = 0.0;
  v69 = 0.0;
  v70 = 0.0;
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  v79 = 0.0;
  v80 = 0.0;
  v81 = 0.0;
  v82 = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  if (rendererCopy)
  {
    objc_msgSend_normalizedProjection(rendererCopy, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    v80 = *(&__y + 1);
    v84 = *&__y;
    v79 = *(&v520 + 1);
    v83 = *&v520;
    v78 = *(&v521 + 1);
    v82 = *&v521;
    v81 = v522[0];
    v77 = v522[1];
    v72 = *(&__y + 3);
    v76 = *(&__y + 2);
    v71 = *(&v520 + 3);
    v75 = *(&v520 + 2);
    v70 = *(&v521 + 3);
    v74 = *(&v521 + 2);
    v73 = v522[2];
    v69 = v522[3];
  }

  v479 = v83;
  v480 = v84;
  v481 = v75;
  v482 = v79;
  v483 = v80;
  v484 = v76;
  v485 = v74;
  v486 = v71;
  v488 = v82;
  v490 = v72;
  v492 = v70;
  v494 = v78;
  v498 = v73;
  v503 = v81;
  v85 = 0.0;
  v86 = 0.0;
  v87 = 0.0;
  v88 = v523;
  v89 = 0.0;
  v90 = v524;
  v91 = 0.0;
  v92 = 0.0;
  v507 = 0.0;
  v93 = 0.0;
  v94 = 0.0;
  v509 = 0.0;
  v511 = 0;
  v95 = 0.0;
  v96 = 0.0;
  v97 = 0.0;
  if (rendererCopy)
  {
    objc_msgSend_normalizedProjection(rendererCopy, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    v511 = *(&__y + 4);
    v97 = *&__y;
    v509 = *(&v520 + 1);
    v96 = *&v520;
    v93 = *(&v521 + 1);
    v95 = *&v521;
    *&v94 = v522[0];
    *&v92 = v522[1];
    v87 = *(&__y + 3);
    v86 = *(&v520 + 3);
    v507 = *(&v520 + 2);
    v85 = *(&v521 + 3);
    v91 = *(&v521 + 2);
    *&v89 = v522[2];
    v68 = v522[3];
  }

  v468 = v91;
  v469 = v95;
  v470 = v86;
  v471 = v93;
  v472 = v87;
  v473 = v85;
  v474 = *&v94;
  v475 = *&v89;
  v476 = *&v92;
  v477 = v69;
  v478 = v68;
  v98 = v517;
  v99 = v518;
  v516 = 0uLL;
  objc_msgSend_lineWidth(settingCopy, v67, v92, v89, v94);
  v466 = *&v100;
  v104 = objc_msgSend_pipeline(rendererCopy, v101, v100, v102, v103);

  if (!v104)
  {
    v109 = MEMORY[0x277D81150];
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v116, v117, v118, v119, v110, v115, 568, 0, "invalid nil value for '%{public}s'", "renderer.pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
  }

  v124 = objc_msgSend_pipeline(rendererCopy, v105, v106, v107, v108);
  objc_msgSend_superSamples(v124, v125, v126, v127, v128);
  v465 = v129;

  if (settingCopy)
  {
    objc_msgSend_filterRadius(settingCopy, v131, v132, v133);
    v132 = *(&__y + 1);
    v464 = vcvtq_f64_f32(*&__y);
    v134 = vcvtq_f64_f32(*(&__y + 8));
  }

  else
  {
    __y = 0uLL;
    v134 = 0uLL;
    v464 = 0u;
  }

  v463 = v134;
  v135 = objc_msgSend_pipeline(rendererCopy, v130, v134.f64[0], v132, v133);
  objc_msgSend_superSamples(v135, v136, v137, v138, v139);
  v462 = v140;

  if (rendererCopy)
  {
    objc_msgSend_viewport(rendererCopy, v142, v143, v144);
    v143 = *&__y;
    v145 = COERCE_DOUBLE(vcvt_f32_s32(vsub_s32(*(&__y + 8), *&__y)));
  }

  else
  {
    v145 = 0.0;
  }

  v467 = *&v145;
  v146 = objc_msgSend_p_geometry(self, v141, v145, v143, v144);
  v147 = sub_27618C648(v146);

  v148 = v147[1] - *v147;
  sub_2761EDA00(v147, 0xAAAAAAAAAAAAAAABLL * (v148 >> 2) + 6);
  v154 = objc_msgSend_stroke(settingCopy, v149, v150, v151, v152);
  if (v154)
  {
    v158 = objc_msgSend_stroke(settingCopy, v153, v155, v156, v157);
    v159 = sub_276213BE8(v158);
    v164 = objc_msgSend_pipeline(rendererCopy, v160, v161, v162, v163);
    objc_msgSend_superSamples(v164, v165, v166, v167, v168);
    v506 = (v169 * v159);
  }

  else
  {
    v506 = 0.0;
  }

  v170 = ((v98.f32[1] * v96) + (v97 * v98.f32[0])) + (v469 * v99);
  v171 = ((v98.f32[1] * v470) + (v472 * v98.f32[0])) + (v473 * v99);
  v172 = v77 + (((v88.f32[1] * v482) + (v483 * v88.f32[0])) + (v494 * v90));
  v173 = v498 + (((v88.f32[1] * v481) + (v484 * v88.f32[0])) + (v485 * v90));
  v174 = v477 + (((v88.f32[1] * v486) + (v490 * v88.f32[0])) + (v492 * v90));
  v175 = (v503 + (((v88.f32[1] * v479) + (v480 * v88.f32[0])) + (v488 * v90))) / v174;
  v176 = v172 / v174;
  v177 = v173 / v174;
  v178 = (v474 + v170) / (v68 + v171);
  v179 = (v476 + (((v98.f32[1] * v509) + (*&v511 * v98.f32[0])) + (v471 * v99))) / (v478 + v171);
  v180 = (v475 + (((v98.f32[1] * v507) + (*(&v511 + 1) * v98.f32[0])) + (v468 * v99))) / (v478 + v171);

  v513 = v178;
  v512 = v179;
  v508 = v175;
  v510 = v176;
  if (*(vertex + 1) && *(toVertex + 1))
  {
    if ((objc_msgSend_disableColorOutput(settingCopy, v181, v182, v183, v184) & 1) == 0)
    {
      v189 = MEMORY[0x277D81150];
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, "[TSCH3DPrefilteredLineRendererRenderCacheObject renderWithLineRenderer:setting:fromVertex:toVertex:]");
      v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v192, v193, v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v196, v197, v198, v199, v190, v195, 585, 0, "cannot use normal and generate_2pixel_quad unless color is disabled");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v200, v201, v202, v203);
    }

    v204 = (v175 * v467.f32[0]);
    v205 = vmuls_lane_f32(v176, v467, 1);
    v206 = (v178 * v467.f32[0]);
    v207 = vmuls_lane_f32(v179, v467, 1);
    v208 = v180;
    v209 = (*v147 + v148);
    v210 = v206 - v204;
    v211 = v207 - v205;
    v212 = (v206 - v204) * (1.0 / sqrt(v211 * v211 + v210 * v210));
    v213 = -v212;
    if (v212 >= 0.0)
    {
      v213 = v212;
    }

    v214 = vaddq_f64(vcvtq_f64_f32(v527), vcvtq_f64_f32(v525));
    v215 = vmulq_n_f64(v214, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v214, v214).f64[1]) + v214.f64[0] * v214.f64[0]));
    v216.i64[0] = v213 <= 0.707106781;
    v216.i64[1] = v213 > 0.707106781;
    __asm
    {
      FMOV            V19.2D, #-1.0
      FMOV            V20.2D, #1.0
    }

    v222 = (v204 + 0.5);
    v223 = vbslq_s8(vcgtzq_f64(v215), _Q20, vandq_s8(_Q19, vcltzq_f64(v215)));
    v224 = (v205 + 0.5);
    v225 = (0.5 - v177);
    v226 = vmulq_f64(v223, vcvtq_f64_u64(v216));
    v227 = (v206 + 0.5);
    v228 = (v207 + 0.5);
    v229 = (0.5 - v208);
    v230 = v227 - v226.f64[0];
    v231 = v226.f64[0] + v227;
    v232 = v226.f64[1] + v228;
    v504 = v226;
    v233 = v226.f64[0] + v222;
    v234 = v226.f64[1] + v224;
    if ((v227 - v226.f64[0] - (v222 - v226.f64[0])) * (v226.f64[1] + v224 - (v224 - v226.f64[1])) - (v228 - v226.f64[1] - (v224 - v226.f64[1])) * (v226.f64[0] + v222 - (v222 - v226.f64[0])) >= 0.0)
    {
      v235 = v226.f64[0] + v222;
      v236 = v226.f64[1] + v224;
      v237 = v226.f64[0] + v227;
      v238 = v226.f64[1] + v228;
      v231 = v230;
      v232 = v228 - v226.f64[1];
      v233 = v222 - v226.f64[0];
      v234 = v224 - v226.f64[1];
    }

    else
    {
      v235 = v222 - v226.f64[0];
      v236 = v224 - v226.f64[1];
      v237 = v227 - v226.f64[0];
      v238 = v228 - v226.f64[1];
    }

    v313 = 0.0 - v210;
    *&v210 = v229;
    v314 = v233;
    v315 = v234;
    v316 = v231;
    *v209 = v314;
    v209[1] = v315;
    v317 = v232;
    v318 = v237;
    v319 = v238;
    v209[2] = v225;
    v209[3] = v316;
    v320 = v235;
    v321 = v236;
    v209[4] = v317;
    v209[5] = v229;
    v209[6] = v318;
    v209[7] = v319;
    v209[8] = v229;
    v209[9] = v314;
    v209[10] = v315;
    v209[11] = v225;
    v209[12] = v318;
    v209[13] = v319;
    v209[14] = v229;
    v209[15] = v320;
    v209[16] = v321;
    v209[17] = v225;
    if (v213 > 0.707106781)
    {
      v345 = 0.0;
      if (v313 < 0.0)
      {
        v345 = -1.0;
      }

      if (v313 <= 0.0)
      {
        v323 = v345;
      }

      else
      {
        v323 = 1.0;
      }

      if (v323 == 0.0)
      {
        v346 = MEMORY[0x277D81150];
        v497 = v204;
        v501 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v345, 1.0, v210, "double (anonymous namespace)::generate_2pixel_quad(const dvec3 &, const dvec3 &, const dvec3 &, const dvec3 &, const dvec4 &, double, vec3 *, vec4 &, dvec3 &)");
        v351 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v347, v348, v349, v350, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v352 = MEMORY[0x277CCACA8];
        sub_276152FD4(&__y, "dvec2(%f, %f)", v211, v313);
        if ((SBYTE7(v520) & 0x80u) == 0)
        {
          objc_msgSend_stringWithUTF8String_(v352, v353, v354, v355, v356, &__y);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v352, v353, v354, v355, v356, __y);
        }
        v358 = ;
        if (SBYTE7(v520) < 0)
        {
          operator delete(__y);
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v346, v357, v359, v360, v361, v501, v351, 249, 0, "invalid normal for horizontal line %@", v358);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v362, v363, v364, v365);
        v204 = v497;
      }

      v344 = 0;
    }

    else
    {
      v322 = 0.0;
      if (v211 < 0.0)
      {
        v322 = -1.0;
      }

      if (v211 <= 0.0)
      {
        v323 = v322;
      }

      else
      {
        v323 = 1.0;
      }

      if (v323 == 0.0)
      {
        v324 = MEMORY[0x277D81150];
        v496 = v204;
        v500 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v322, 1.0, v210, "double (anonymous namespace)::generate_2pixel_quad(const dvec3 &, const dvec3 &, const dvec3 &, const dvec3 &, const dvec4 &, double, vec3 *, vec4 &, dvec3 &)");
        v329 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v325, v326, v327, v328, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
        v330 = MEMORY[0x277CCACA8];
        sub_276152FD4(&__y, "dvec2(%f, %f)", v211, v313);
        if ((SBYTE7(v520) & 0x80u) == 0)
        {
          objc_msgSend_stringWithUTF8String_(v330, v331, v332, v333, v334, &__y);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v330, v331, v332, v333, v334, __y);
        }
        v336 = ;
        if (SBYTE7(v520) < 0)
        {
          operator delete(__y);
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v324, v335, v337, v338, v339, v500, v329, 243, 0, "invalid normal for vertical line %@", v336);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v340, v341, v342, v343);
        v204 = v496;
      }

      v344 = 1.0;
    }

    if (v323 < 0.0)
    {
      v211 = -v211;
      v313 = -v313;
    }

    v366 = v513;
    *&v367 = v211;
    *&v368 = v313;
    v369 = v313 * v205 + v211 * v204;
    v516.i64[0] = __PAIR64__(v368, v367);
    v516.f32[2] = -v369;
    v516.i32[3] = v344;
    v370 = v229 - v225;
    v371 = (v232 - v234) * (v232 - v234);
    v372 = v371 + (v231 - v233) * (v231 - v233) + v370 * v370;
    v309 = sqrt(v372);
  }

  else
  {
    v239 = objc_msgSend_stroke(settingCopy, v181, v182, v183, v184);
    isRoundDash = objc_msgSend_isRoundDash(v239, v240, v241, v242, v243);
    v247 = 0.0;
    if (isRoundDash)
    {
      v247 = v506;
    }

    v505 = v247;
    v248 = objc_msgSend_pipeline(rendererCopy, v245, v247, v506, v246);
    objc_msgSend_superSamples(v248, v249, v250, v251, v252);
    v254 = fmaxf(v466, 1.0);
    v255 = vmulq_n_f64(v464, v462);
    v256 = vmulq_n_f64(v463, v462);
    v257 = (v175 * v467.f32[0]);
    v258 = vmuls_lane_f32(v176, v467, 1);
    v259 = -v177;
    v260 = (v178 * v467.f32[0]);
    v261 = vmuls_lane_f32(v179, v467, 1);
    v262 = -v180;
    v263 = (*v147 + v148);
    v264 = sqrt((v261 - v258) * (v261 - v258) + (v260 - v257) * (v260 - v257) + (v262 - v259) * (v262 - v259));
    v265 = (v260 - v257) * (1.0 / v264);
    v266 = (v261 - v258) * (1.0 / v264);
    v267 = (v262 - v259) * (1.0 / v264);
    v268 = v267 * -0.0 - v266;
    v269 = v265 + v267 * 0.0;
    v270 = v266 * -0.0 + v265 * 0.0;
    v271 = 1.0 / sqrt(v269 * v269 + v268 * v268 + v270 * v270);
    v272 = v268 * v271;
    v273 = v269 * v271;
    v274 = v270 * v271;
    v275.f64[1] = v256.f64[1];
    v275.f64[0] = v264;
    v276.f64[0] = v256.f64[0];
    v276.f64[1] = ((v254 + -0.9) * v465);
    v277 = vaddq_f64(v276, vaddq_f64(v255, v275));
    v278 = v257 - v265 * v255.f64[0];
    v279 = v258 - v266 * v255.f64[0];
    v280 = v259 - v267 * v255.f64[0];
    v281 = v276.f64[1] * 0.5 + v255.f64[1];
    v282 = v281 * v272;
    v283 = v281 * v273;
    v284 = v281 * v274;
    v285 = v278 - v281 * v272;
    v286 = v279 - v281 * v273;
    v287 = v280 - v281 * v274;
    v288 = v265 * v256.f64[0] + v260;
    v289 = v266 * v256.f64[0] + v261;
    v290 = v267 * v256.f64[0] + v262;
    v291 = v288 - v282;
    v292 = v289 - v283;
    v293 = v290 - v284;
    v294 = v276.f64[1] * 0.5 + v256.f64[1];
    v295 = v294 * v272;
    v296 = v294 * v273;
    v297 = v294 * v274;
    v298 = v278 + v295;
    v299 = v279 + v296;
    v300 = v280 + v297;
    v301 = v291 - v285;
    v302 = v289 - v283 - v286;
    v303 = sqrt(v302 * v302 + v301 * v301 + (v290 - v284 - v287) * (v290 - v284 - v287));
    if (v505 <= 0.0)
    {
      v310 = v288 + v295;
      v311 = v289 + v296;
      v312 = v290 + v297;
      v309 = v303;
    }

    else
    {
      v487 = (v254 * v253);
      *&__y = 0;
      v495 = v256;
      v499 = v255;
      v491 = v300;
      v493 = v285;
      v489 = v277;
      v304 = modf(v303 / v505, &__y);
      v277 = v489;
      v300 = v491;
      v285 = v493;
      v256 = v495;
      v255 = v499;
      v305 = v505 * *&__y;
      if (v505 * v304 >= v487)
      {
        v305 = v505 + v505 * *&__y;
      }

      v306 = v265 * v305;
      v307 = v266 * v305;
      v308 = v267 * v305;
      v309 = v305;
      v291 = v493 + v265 * v305;
      v292 = v286 + v266 * v305;
      v293 = v287 + v308;
      v310 = v298 + v306;
      v311 = v299 + v307;
      v312 = v491 + v308;
      v301 = v291 - v493;
      v302 = v292 - v286;
    }

    v516 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v255, v277)), vdivq_f64(vsubq_f64(v277, v256), v277));
    v373 = v301 * (v299 - v286) - v302 * (v298 - v285);
    _NF = v373 < 0.0;
    if (v373 < 0.0)
    {
      v375 = v298;
    }

    else
    {
      v375 = v285;
    }

    if (_NF)
    {
      v376 = v299;
    }

    else
    {
      v376 = v286;
    }

    v377 = v375;
    v378 = v376;
    *v263 = v377;
    v263[1] = v378;
    if (_NF)
    {
      v379 = v310;
    }

    else
    {
      v379 = v291;
    }

    if (_NF)
    {
      v380 = v300;
    }

    else
    {
      v380 = v287;
    }

    v381 = v380;
    v382 = v379;
    v263[2] = v381;
    v263[3] = v382;
    if (_NF)
    {
      v383 = v285;
    }

    else
    {
      v383 = v298;
    }

    if (_NF)
    {
      v384 = v286;
    }

    else
    {
      v384 = v299;
    }

    if (_NF)
    {
      v385 = v287;
    }

    else
    {
      v385 = v300;
    }

    if (_NF)
    {
      v310 = v291;
    }

    if (_NF)
    {
      v386 = v292;
    }

    else
    {
      v386 = v311;
    }

    if (_NF)
    {
      v292 = v311;
    }

    if (_NF)
    {
      v387 = v312;
    }

    else
    {
      v387 = v293;
    }

    v388 = v292;
    v389 = v387;
    v390 = v310;
    v391 = v386;
    v263[4] = v388;
    v263[5] = v389;
    v263[6] = v390;
    v263[7] = v391;
    if (_NF)
    {
      v312 = v293;
    }

    v392 = v312;
    v393 = v383;
    v394 = v384;
    v263[8] = v392;
    v263[9] = v377;
    v263[10] = v378;
    v263[11] = v381;
    v263[12] = v390;
    v263[13] = v391;
    v263[14] = v392;
    v263[15] = v393;
    v395 = v385;
    v263[16] = v394;
    v263[17] = v395;

    v372 = 0.0;
    v504 = 0u;
    v366 = v513;
  }

  if (*(vertex + 6) == 1 && *(toVertex + 6) == 1)
  {
    v502 = v309;
    if (rendererCopy)
    {
      objc_msgSend_viewport(rendererCopy, v372, v370, v371);
      v396 = DWORD2(__y);
      v397 = HIDWORD(__y);
      v398 = __y;
      v399 = DWORD1(__y);
      objc_msgSend_viewport(rendererCopy, v400, v401, v402);
      v403 = (v397 - v399);
      v404 = (v396 - v398);
      v405 = __y;
      v406 = SDWORD1(__y);
    }

    else
    {
      v403 = 0.0;
      v404 = 0.0;
      v406 = 0.0;
      v405 = 0.0;
    }

    v407 = v405 + (v404 * v508 + 0.5);
    v408 = v406 + (v403 * v510 + 0.5);
    v409 = v405 + (v404 * v366 + 0.5);
    v410 = v406 + (v403 * v512 + 0.5);
    v411 = v408 - v504.f64[1];
    v412 = v504.f64[0] + v409;
    v413 = v504.f64[1] + v410;
    v414 = v504.f64[0] + v407;
    v415 = v504.f64[1] + v408;
    if ((v409 - v504.f64[0] - (v407 - v504.f64[0])) * (v504.f64[1] + v408 - v411) - (v410 - v504.f64[1] - v411) * (v504.f64[0] + v407 - (v407 - v504.f64[0])) >= 0.0)
    {
      v416 = v504.f64[0] + v407;
      v417 = v504.f64[1] + v408;
      v418 = v504.f64[0] + v409;
      v419 = v504.f64[1] + v410;
      v412 = v409 - v504.f64[0];
      v413 = v410 - v504.f64[1];
      v414 = v407 - v504.f64[0];
      v415 = v408 - v504.f64[1];
    }

    else
    {
      v416 = v407 - v504.f64[0];
      v417 = v408 - v504.f64[1];
      v418 = v409 - v504.f64[0];
      v419 = v410 - v504.f64[1];
    }

    v420 = objc_msgSend_p_diffuseTexcoords(self, v185, v407 - v504.f64[0], v411, v410 - v504.f64[1]);
    v421 = sub_27618C374(v420);

    v422 = v421[1] - *v421;
    sub_2761FAFF8(v421, (v422 >> 4) + 6);
    *&v423 = v414;
    *&v424 = v415;
    v515 = __PAIR64__(v424, v423);
    sub_2761B63E0(&v515, (vertex + 28), &__y);
    v426 = DWORD1(__y);
    v425 = __y;
    *&v427 = v412;
    *&v428 = v413;
    v515 = __PAIR64__(v428, v427);
    sub_2761B63E0(&v515, (toVertex + 28), &__y);
    v429 = __y;
    *&v430 = v418;
    *&v431 = v419;
    v515 = __PAIR64__(v431, v430);
    sub_2761B63E0(&v515, (toVertex + 28), &__y);
    v432 = __y;
    *&v433 = v416;
    *&v434 = v417;
    v515 = __PAIR64__(v434, v433);
    sub_2761B63E0(&v515, (vertex + 28), &__y);
    v372 = *&__y;
    v435 = *v421 + v422;
    *v435 = __PAIR64__(v426, v425);
    v370 = 0.0078125;
    *(v435 + 8) = 0x3F80000000000000;
    *(v435 + 16) = v429;
    *(v435 + 24) = 0x3F80000000000000;
    *(v435 + 32) = v432;
    *(v435 + 40) = 0x3F80000000000000;
    *(v435 + 48) = __PAIR64__(v426, v425);
    *(v435 + 56) = 0x3F80000000000000;
    *(v435 + 64) = v432;
    *(v435 + 72) = 0x3F80000000000000;
    *(v435 + 80) = v372;
    *(v435 + 88) = 0x3F80000000000000;
    v309 = v502;
  }

  v436 = objc_msgSend_stroke(settingCopy, v185, v372, v370, v371);
  v437 = v309;

  if (v436)
  {
    v439 = v506;
    if (v506 > 0.0)
    {
      *&v439 = v506;
      v437 = v437 / *&v439;
    }
  }

  v442 = objc_msgSend_p_box(self, v438, v439, v440, v441);
  v443 = sub_27618C374(v442);

  v444 = 6;
  do
  {
    sub_276161E1C(v443, &v516);
    --v444;
  }

  while (v444);
  v449 = objc_msgSend_p_texcoords(self, v445, v446, v447, v448);
  v450 = sub_27618C374(v449);

  __y = xmmword_2764D5F20;
  sub_276213D54(v450, &__y);
  *&__y = 1065353216;
  *(&__y + 1) = LODWORD(v437) | 0x3F80000000000000;
  sub_276213D54(v450, &__y);
  __asm { FMOV            V9.2S, #1.0 }

  *&__y = _D9;
  *(&__y + 1) = LODWORD(v437) | 0x3F80000000000000;
  sub_276213D54(v450, &__y);
  __y = xmmword_2764D5F20;
  sub_276213D54(v450, &__y);
  *&__y = _D9;
  *(&__y + 1) = LODWORD(v437) | 0x3F80000000000000;
  sub_276213D54(v450, &__y);
  __y = xmmword_2764D62A0;
  sub_276213D54(v450, &__y);
  if (objc_msgSend_disableColorOutput(settingCopy, v452, v453, v454, v455))
  {
    v460 = objc_msgSend_p_originalGeometry(self, v456, v457, v458, v459);
    v461 = sub_27618C648(v460);
    sub_276213B6C(v461, &v523, &v517);
  }

LABEL_137:
}

@end