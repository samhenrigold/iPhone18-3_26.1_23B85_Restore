@interface TSCH3DChartStackedColumnSceneObject
- (void)sortElements:(id *)elements pipeline:(id)pipeline;
@end

@implementation TSCH3DChartStackedColumnSceneObject

- (void)sortElements:(id *)elements pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v10 = objc_msgSend_scene(pipelineCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v11, v12, v13, v14, v10);

  v287 = v15;
  if (v15)
  {
    objc_msgSend_rotation(v15, v17, v18, v19);
  }

  else
  {
    v306 = 0;
    v305 = 0;
  }

  objc_msgSend_processor(pipelineCopy, v16, v17, v18, v19);
  v295 = 1065353216;
  v297 = 0;
  v296 = 0;
  v298 = 1065353216;
  v299 = 0;
  v300 = 0;
  v301 = 1065353216;
  v303 = 0;
  v302 = 0;
  v286 = v304 = 1065353216;
  objc_msgSend_copyProjectionInto_(v286, v20, v21, v22, v23, &v295);
  v24 = objc_opt_class();
  isHorizontalChart = objc_msgSend_isHorizontalChart(v24, v25, v26, v27, v28);
  v30 = v305;
  selfCopy = self;
  v288 = pipelineCopy;
  v36 = objc_msgSend_processor(v288, v31, v32, v33, v34);
  v291 = v36;
  if (!v36)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  v55 = objc_msgSend_scene(v288, v35, v37, v38, v39);
  v293 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v56, v57, v58, v59, v55);

  elementsCopy = elements;
  v60 = *elements;
  __src = 0;
  v315 = 0;
  v316 = 0;
  v65 = objc_msgSend_count(v60, v61, v62, v63, v64);
  sub_276182010(&__src, v65);
  v69 = 0;
  if (isHorizontalChart)
  {
    v70 = *&v30;
  }

  else
  {
    v70 = *(&v30 + 1);
  }

  v290 = v70;
  v71 = 0.0078125;
  v292 = v60;
  while (v69 < objc_msgSend_count(v60, v66, v71, v67, v68))
  {
    v76 = objc_msgSend_objectAtIndexedSubscript_(v60, v72, v73, v74, v75, v69);
    objc_msgSend_pushMatrix(v36, v77, v78, v79, v80);
    v85 = objc_msgSend_properties(v76, v81, v82, v83, v84);
    v91 = objc_msgSend_series(v76, v86, v87, v88, v89);
    if (v76)
    {
      objc_msgSend_index(v76, v92, v93, v94);
    }

    else
    {
      *v307 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v85, v90, v92, v93, v94, v36, v91, v307, v293);

    *&v307[3] = 0;
    *&v307[1] = 0;
    v307[0] = 1065353216;
    v307[5] = 1065353216;
    v308 = 0;
    v309 = 0;
    v312 = 0;
    v311 = 0;
    v310 = 1065353216;
    v313 = 1065353216;
    objc_msgSend_copyTransformInto_(v36, v95, v96, v97, v98, v307);
    v99 = v76;
    v343 = 1056964608;
    v344 = 1056964608;
    v341 = 1056964608;
    v342 = 0;
    v339 = 0;
    v340 = 1056964608;
    v336 = 1056964608;
    v337 = 1056964608;
    v338 = 1065353216;
    v335 = 0x3F8000003F000000;
    v333 = 0x3F80000000000000;
    v334 = 1056964608;
    sub_276154744(&v343, v307, &v331, v100);
    sub_276154744(&v341, v307, &v329, v101);
    sub_276154744(&v339, v307, &v327, v102);
    sub_276154744(&v337, v307, &v325, v103);
    sub_276154744(&v335, v307, &v323, v104);
    sub_276154744(&v333, v307, &v321, v105);
    v294 = v69;
    v110 = v331.f32[0] - v329.f32[0];
    v111 = v331.f32[1] - v329.f32[1];
    v112 = v327.f32[0] - v331.f32[0];
    v113 = v327.f32[1] - v331.f32[1];
    v114 = v328 - v332;
    v115 = v323.f32[0] - v325.f32[0];
    v116 = v323.f32[1] - v325.f32[1];
    v117 = v324 - v326;
    v118 = 0.0 - v331.f32[0];
    v119 = 0.0 - v331.f32[1];
    v120 = 0.0 - v332;
    v121 = 0.0 - v323.f32[0];
    v122 = 0.0 - v323.f32[1];
    v123 = 0.0 - v324;
    v124 = (((0.0 - v331.f32[1]) * (v331.f32[1] - v329.f32[1])) + ((v331.f32[0] - v329.f32[0]) * (0.0 - v331.f32[0]))) + ((v332 - v330) * (0.0 - v332));
    if (v124 >= 0.0)
    {
      v125 = v332 - v330;
    }

    else
    {
      v110 = -(v331.f32[0] - v329.f32[0]);
      v111 = -(v331.f32[1] - v329.f32[1]);
      v125 = -(v332 - v330);
    }

    v126 = 1.0 / sqrtf(((v111 * v111) + (v110 * v110)) + (v125 * v125));
    v127 = v110 * v126;
    v128 = v111 * v126;
    v129 = v125 * v126;
    v130 = ((v119 * v113) + (v112 * v118)) + (v114 * v120);
    v131 = v130 < 0.0;
    if (v130 >= 0.0)
    {
      v132 = v327.f32[1] - v331.f32[1];
    }

    else
    {
      v114 = -v114;
      v132 = -v113;
    }

    if (v131)
    {
      v112 = -v112;
    }

    v133 = 1.0 / sqrtf(((v132 * v132) + (v112 * v112)) + (v114 * v114));
    v134 = v112 * v133;
    v135 = v132 * v133;
    v136 = v114 * v133;
    v137 = ((v122 * v116) + (v115 * v121)) + (v117 * v123);
    v138 = -v115;
    if (v137 < 0.0)
    {
      v139 = -v116;
    }

    else
    {
      v138 = v323.f32[0] - v325.f32[0];
      v139 = v323.f32[1] - v325.f32[1];
    }

    if (v137 < 0.0)
    {
      v140 = -v117;
    }

    else
    {
      v140 = v324 - v326;
    }

    v141 = 1.0 / sqrtf(((v139 * v139) + (v138 * v138)) + (v140 * v140));
    v142 = v138 * v141;
    v143 = v140 * v141;
    v144 = 1.0 / sqrtf(((v119 * v119) + (v118 * v118)) + (v120 * v120));
    v145 = v118 * v144;
    v146 = v119 * v144;
    v147 = v120 * v144;
    v148 = 1.0 / sqrtf(((v122 * v122) + (v121 * v121)) + (v123 * v123));
    v149 = v121 * v148;
    v150 = v123 * v148;
    v151 = ((v146 * v128) + (v127 * v145)) + (v129 * v147);
    v152 = ((v146 * v135) + (v134 * v145)) + (v136 * v147);
    if ((v151 > v152) | isHorizontalChart & 1)
    {
      v153 = v129;
    }

    else
    {
      v153 = v136;
    }

    if (isHorizontalChart)
    {
      v154 = (v124 >= 0.0) ^ (((v147 * v127) - (v153 * v145)) >= 0.0);
      v155 = (v137 >= 0.0) ^ (((v150 * v142) - (v143 * v149)) < 0.0);
    }

    else
    {
      v156 = v122 * v148;
      v157 = (((v122 * v148) * (v139 * v141)) + (v142 * v149)) + (v143 * v150);
      v158 = ((v122 * (v321.f32[1] - v323.f32[1])) + ((v321.f32[0] - v323.f32[0]) * v121)) + ((v322 - v324) * v123);
      v159 = v158 < 0.0;
      if (v158 >= 0.0)
      {
        v160 = v322 - v324;
      }

      else
      {
        v160 = -(v322 - v324);
      }

      v161 = -(v321.f32[0] - v323.f32[0]);
      if (!v159)
      {
        v161 = v321.f32[0] - v323.f32[0];
      }

      v162 = -(v321.f32[1] - v323.f32[1]);
      if (!v159)
      {
        v162 = v321.f32[1] - v323.f32[1];
      }

      v163 = 1.0 / sqrtf(((v162 * v162) + (v161 * v161)) + (v160 * v160));
      v164 = v160 * v163;
      v165 = v162 * v163;
      v166 = ((v156 * v165) + ((v161 * v163) * v149)) + (v164 * v150);
      v167 = v157 <= v166;
      if (v157 <= v166)
      {
        v168 = v165;
      }

      else
      {
        v168 = v139 * v141;
      }

      if (!v167)
      {
        v164 = v143;
      }

      if (v151 <= v152)
      {
        v128 = v135;
      }

      v155 = ((v156 * v164) - (v168 * v150)) < 0.0;
      v154 = ((v146 * v153) - (v128 * v147)) >= 0.0;
    }

    v169 = v323.f32[1] - v331.f32[1];
    LODWORD(v109) = -1.0;
    if ((v323.f32[0] - v331.f32[0]) >= 0.0)
    {
      *&v107 = 0.0;
    }

    else
    {
      *&v107 = -1.0;
    }

    if ((v323.f32[0] - v331.f32[0]) > 0.0)
    {
      *&v107 = 1.0;
    }

    v170 = v169 <= 0.0;
    if (v169 >= 0.0)
    {
      *&v108 = 0.0;
    }

    else
    {
      *&v108 = -1.0;
    }

    if (!v170)
    {
      *&v108 = 1.0;
    }

    v171 = isHorizontalChart;
    if (!isHorizontalChart)
    {
      *&v107 = *&v108;
    }

    v172 = *&v107 >= 0.0;
    v174 = objc_msgSend_properties(v99, v106, v107, v108, v109);
    if (!v174)
    {
      v178 = MEMORY[0x277D81150];
      v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, v175, v176, v177, "float (anonymous namespace)::MakeSortData::operator()(TSCH3DChartElementSceneObject *__strong, mat4cref, TSCH3DRenderElementInfo *__strong)");
      v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, v181, v182, v183, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartStackedColumnSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v178, v185, v186, v187, v188, v179, v184, 163, 0, "invalid nil value for '%{public}s'", "properties");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192);
    }

    v318 = 0;
    v319 = 0;
    v320 = 0;
    if (v76)
    {
      v60 = v292;
      objc_msgSend_index(v99, v175, v176, v177);
      if (!v174)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v317 = 0;
      v60 = v292;
      if (!v174)
      {
LABEL_70:
        v199 = 0;
        v318 = 0;
        v319 = 0;
        v198 = 1;
        v320 = 0;
        if (v76)
        {
          goto LABEL_68;
        }

        goto LABEL_71;
      }
    }

    objc_msgSend_barElementInfoAtIndex_(v174, v175, v176, v177);
    v193 = v319;
    v194 = v320;
    objc_msgSend_size(v174, v195, v196, v197);
    if (v193)
    {
      v198 = -1;
    }

    else
    {
      v198 = v194 + 1;
    }

    v199 = SHIDWORD(v317);
    if (v76)
    {
LABEL_68:
      objc_msgSend_index(v99, v175, v176, v177);
      v200 = SHIDWORD(v317);
      goto LABEL_72;
    }

LABEL_71:
    v200 = 0;
LABEL_72:
    v201 = v154 | v155 | v172;
    v202 = 0.0;
    isHorizontalChart = v171;
    if (((v201 ^ 1 | v154 & v155) & 1) == 0)
    {
      if ((v201 & ~v155 | v154))
      {
        if (v198 < 0)
        {
          v203 = ~v200;
        }

        else
        {
          v203 = v198;
        }

        *&v175 = (v203 + v199);
      }

      else
      {
        *&v175 = v200;
        if (v198 >= 0)
        {
          *&v175 = -v198;
        }
      }

      LODWORD(v176) = 0.5;
      v202 = *&v175 + 0.5;
    }

    if (v76)
    {
      objc_msgSend_index(v99, v175, v176, v177);
      v204 = v294;
      v205 = v317;
      if (v174)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v205 = 0;
      v204 = v294;
      if (v174)
      {
LABEL_83:
        objc_msgSend_size(v174, v175, v176, v177);
        v206 = v317;
        goto LABEL_86;
      }
    }

    v206 = 0;
LABEL_86:
    v207 = v206 + ~v205;
    if (v290 > 0.0)
    {
      v207 = v205;
    }

    v208 = -(v202 + (v207 * v199)) / (v206 * v199);

    v213 = v315;
    if (v315 >= v316)
    {
      v215 = __src;
      v216 = v315 - __src;
      v217 = (v315 - __src) >> 4;
      v218 = v217 + 1;
      if ((v217 + 1) >> 60)
      {
        sub_276161760();
      }

      v219 = v316 - __src;
      if ((v316 - __src) >> 3 > v218)
      {
        v218 = v219 >> 3;
      }

      v220 = v219 >= 0x7FFFFFFFFFFFFFF0;
      v221 = 0xFFFFFFFFFFFFFFFLL;
      if (!v220)
      {
        v221 = v218;
      }

      if (v221)
      {
        sub_2761820B0(&__src, v221);
      }

      v222 = (v315 - __src) >> 4;
      v223 = 16 * v217;
      *v223 = v208;
      *(v223 + 8) = v204;
      v214 = (16 * v217 + 16);
      v224 = (16 * v217 - 16 * v222);
      memcpy((v223 - 16 * v222), v215, v216);
      v225 = __src;
      __src = v224;
      v315 = v214;
      v316 = 0;
      if (v225)
      {
        operator delete(v225);
      }
    }

    else
    {
      *v315 = v208;
      *(v213 + 1) = v204;
      v214 = v213 + 4;
    }

    v36 = v291;
    v315 = v214;
    objc_msgSend_popMatrix(v291, v209, v210, v211, v212);

    v69 = v204 + 1;
  }

  v226 = 126 - 2 * __clz((v315 - __src) >> 4);
  if (v315 == __src)
  {
    v227 = 0;
  }

  else
  {
    v227 = v226;
  }

  sub_2761820F8(__src, v315, v307, v227, 1);
  v228 = MEMORY[0x277CBEB18];
  v233 = objc_msgSend_count(v60, v229, v230, v231, v232);
  v239 = objc_msgSend_arrayWithCapacity_(v228, v234, v235, v236, v237, v233);
  for (i = __src; i != v315; i += 4)
  {
    v244 = objc_msgSend_objectAtIndexedSubscript_(v60, v238, v240, v241, v242, *(i + 1));
    objc_msgSend_addObject_(v239, v245, v246, v247, v248, v244);
  }

  v249 = objc_msgSend_count(v60, v238, v240, v241, v242);
  if (v249 != objc_msgSend_count(v239, v250, v251, v252, v253))
  {
    v258 = MEMORY[0x277D81150];
    v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v254, v255, v256, v257, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v264 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, v261, v262, v263, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v269 = objc_msgSend_count(v60, v265, v266, v267, v268);
    v274 = objc_msgSend_count(v239, v270, v271, v272, v273);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v258, v275, v276, v277, v278, v259, v264, 59, 0, "size mismatch between elements and sorted %lu, %lu", v269, v274);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v279, v280, v281, v282);
  }

  v283 = v239;
  *elementsCopy = v239;

  if (__src)
  {
    v315 = __src;
    operator delete(__src);
  }
}

@end