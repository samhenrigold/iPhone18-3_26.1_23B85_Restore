@interface TSCHChartRadialAreaLayoutItem
- (CGRect)titleFrame;
- (id)renderersWithRep:(id)rep;
- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips;
- (void)buildSubTree;
- (void)layoutInward;
- (void)layoutOutward;
@end

@implementation TSCHChartRadialAreaLayoutItem

- (id)seriesIndexedPieNormalizedLabelDistancesFromWedgeTips
{
  v5 = objc_msgSend_bodyLayoutItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_seriesIndexedPieNormalizedLabelDistancesFromWedgeTips(v5, v6, v7, v8, v9);

  return v10;
}

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_gridLayoutItem(self, v4, v5, v6, v7);

  if (v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 51, 0, "expected nil value for '%{public}s'", "self.gridLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = [_TtC8TSCharts23TSCHChartGridLayoutItem alloc];
  v33 = objc_msgSend_initWithParent_(v28, v29, v30, v31, v32, self);
  objc_msgSend_setGridLayoutItem_(self, v34, v35, v36, v37, v33);

  v42 = objc_msgSend_gridLayoutItem(self, v38, v39, v40, v41);
  objc_msgSend_addObject_(v3, v43, v44, v45, v46, v42);

  v51 = objc_msgSend_titleElement(self, v47, v48, v49, v50);

  if (v51)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 55, 0, "expected nil value for '%{public}s'", "self.titleElement");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  v71 = [TSCHChartMainTitleLayoutItem alloc];
  v76 = objc_msgSend_initWithParent_(v71, v72, v73, v74, v75, self);
  objc_msgSend_setTitleElement_(self, v77, v78, v79, v80, v76);

  v85 = objc_msgSend_titleElement(self, v81, v82, v83, v84);
  objc_msgSend_addObject_(v3, v86, v87, v88, v89, v85);

  v94 = objc_msgSend_bodyLayoutItem(self, v90, v91, v92, v93);

  if (v94)
  {
    v99 = MEMORY[0x277D81150];
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHChartRadialAreaLayoutItem buildSubTree]");
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v106, v107, v108, v109, v100, v105, 59, 0, "expected nil value for '%{public}s'", "self.bodyLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
  }

  v114 = objc_alloc(objc_msgSend_bodyLayoutItemClass(self, v95, v96, v97, v98));
  v119 = objc_msgSend_initWithParent_(v114, v115, v116, v117, v118, self);
  objc_msgSend_setBodyLayoutItem_(self, v120, v121, v122, v123, v119);

  v128 = objc_msgSend_bodyLayoutItem(self, v124, v125, v126, v127);
  objc_msgSend_addObject_(v3, v129, v130, v131, v132, v128);

  v137 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v133, v134, v135, v136, v3);
  objc_msgSend_setChildren_(self, v138, v139, v140, v141, v137);

  v142.receiver = self;
  v142.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v142 buildSubTree];
}

- (void)layoutInward
{
  v204[3] = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_treeBuilt(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_buildSubTree(self, v6, v7, v8, v9);
  }

  objc_msgSend_layoutSize(self, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_bodyLayoutItem(self, v14, v10, v12, v15);
  objc_msgSend_bodySizeForOverhangSize_(v16, v17, v11, v13, v18);
  v20 = v19;
  v22 = v21;
  v26 = objc_msgSend_titleElement(self, v23, v19, v21, v24);
  if (v26)
  {
    v30 = objc_msgSend_titleElement(self, v25, v27, v28, v29);
    objc_msgSend_minSize(v30, v31, v32, v33, v34);
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v36 = *MEMORY[0x277CBF3A8];
    v38 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v44 = objc_msgSend_titleElement(self, v39, v40, v41, v42);
  v48 = 0.0;
  v49 = 0.0;
  if (v44 && v36 > 0.0 && v38 > 0.0)
  {
    v50 = objc_msgSend_titleElement(self, v43, v45, v46, v47);
    objc_msgSend_overhangMagnitudeForEdge_(v50, v51, v52, v53, v54, 3);
    v49 = v55;
  }

  v60 = objc_msgSend_titleElement(self, v56, v57, v58, v59);
  if (!objc_msgSend_shouldPlaceTitleAtCenter(v60, v61, v62, v63, v64))
  {
    v48 = v38 + v49;
  }

  if (v11 >= v13)
  {
    v67 = v13;
  }

  else
  {
    v67 = v11;
  }

  if (v67 >= v13 - v48)
  {
    v67 = v13 - v48;
  }

  if (v20 >= v22)
  {
    v68 = v22;
  }

  else
  {
    v68 = v20;
  }

  if (v68 >= v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = v68;
  }

  if (v69 < v22)
  {
    v22 = v69;
  }

  v70 = objc_msgSend_bodyLayoutItem(self, v65, v67, v68, v66, *&v36);
  objc_msgSend_setLayoutSize_(v70, v71, v69, v22, v72);

  v77 = objc_msgSend_bodyLayoutItem(self, v73, v74, v75, v76);
  objc_msgSend_layoutSize(v77, v78, v79, v80, v81);

  TSURectWithSize();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v201 = v88;
  v90 = objc_msgSend_bodyLayoutItem(self, v89, v82, v84, v86);
  objc_msgSend_overhangRect(v90, v91, v92, v93, v94);
  v197 = v96;
  v199 = v95;
  v193 = v98;
  v195 = v97;

  v103 = objc_msgSend_titleElement(self, v99, v100, v101, v102);
  if (objc_msgSend_shouldPlaceTitleAtCenter(v103, v104, v105, v106, v107))
  {
    objc_msgSend_layoutSettings(self, v108, v109, v110);

    if ((v203 & 1) == 0)
    {
      TSUCenterOfRect();
      TSURectWithCenterAndSize();
      goto LABEL_30;
    }
  }

  else
  {
  }

  TSURectWithOriginAndSize();
LABEL_30:
  v116 = v112;
  v117 = v113;
  v118 = v114;
  v119 = v115;
  v120 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v111, v83, v85, v87, v201);
  v204[0] = v120;
  v122 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v121, v199, v197, v195, v193);
  v204[1] = v122;
  v198 = v117;
  v200 = v116;
  v194 = v119;
  v196 = v118;
  v124 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v123, v116, v117, v118, v119);
  v204[2] = v124;
  v129 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v125, v126, v127, v128, v204, 3);

  objc_msgSend_outerRectForRects_(TSCHChartLayout, v130, v131, v132, v133, v129);
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;
  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    objc_msgSend_setLayoutSize_(self, v142, v139, v141, v143);
  }

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v142, v83, v85, v87, v201, v135, v137, v139, v141);
  v145 = v144;
  v147 = v146;
  v150 = objc_msgSend_bodyLayoutItem(self, v148, v144, v146, v149);
  objc_msgSend_setLayoutOffset_(v150, v151, v145, v147, v152);

  v157 = objc_msgSend_bodyLayoutItem(self, v153, v154, v155, v156);
  objc_msgSend_layoutRect(v157, v158, v159, v160, v161);
  v163 = v162;
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = objc_msgSend_gridLayoutItem(self, v170, v162, v164, v166);
  objc_msgSend_setLayoutRect_(v171, v172, v163, v165, v167, v169);

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v173, v200, v198, v196, v194, v135, v137, v139, v141);
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v183 = objc_msgSend_titleElement(self, v182, v174, v176, v178);
  objc_msgSend_setLayoutSize_(v183, v184, v179, v181, v185);

  v190 = objc_msgSend_titleElement(self, v186, v187, v188, v189);
  objc_msgSend_setLayoutOffset_(v190, v191, v175, v177, v192);

  v202.receiver = self;
  v202.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v202 layoutInward];
}

- (void)layoutOutward
{
  v286[3] = *MEMORY[0x277D85DE8];
  v285.receiver = self;
  v285.super_class = TSCHChartRadialAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v285 layoutOutward];
  v7 = objc_msgSend_bodyLayoutItem(self, v3, v4, v5, v6);
  objc_msgSend_layoutSize(v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v17 = v13 == v15;
  v18 = vabdd_f64(v13, v15);
  if (v13 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  if (v18 < 0.00999999978)
  {
    v17 = 1;
  }

  if (!v17)
  {
    v13 = v19;
  }

  v20 = objc_msgSend_titleElement(self, v16, v18, v19, 0.00999999978);

  if (v20)
  {
    v25 = objc_msgSend_titleElement(self, v21, v22, v23, v24);
    if (objc_msgSend_shouldPlaceTitleAtCenter(v25, v26, v27, v28, v29))
    {
      objc_msgSend_layoutSettings(self, v30, v31, v32);

      if ((v284 & 1) == 0)
      {
        objc_opt_class();
        v41 = objc_msgSend_bodyLayoutItem(self, v37, v38, v39, v40);
        v42 = TSUDynamicCast();

        v47 = objc_msgSend_model(v42, v43, v44, v45, v46);
        objc_msgSend_rootedLayoutRect(v42, v48, v49, v50, v51);
        objc_msgSend_bodySizeWithMinimumWedgeExplosionWithChartModel_bodySize_(TSCHStyleUtilities, v52, v53, v54, v53, v47);
        v56 = v55;

        v61 = objc_msgSend_titleElement(self, v57, v58, v59, v60);
        objc_msgSend_setChartBodyWidth_(v61, v62, v56, v63, v64);

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v42 = objc_msgSend_titleElement(self, v33, v34, v35, v36);
    objc_msgSend_setChartBodyWidth_(v42, v65, v13, v66, v67);
    goto LABEL_14;
  }

LABEL_15:
  v69 = objc_msgSend_titleElement(self, v21, v22, v23, v24);
  if (v69)
  {
    v73 = objc_msgSend_titleElement(self, v68, v70, v71, v72);
    objc_msgSend_minSize(v73, v74, v75, v76, v77);
    v79 = v78;
    v81 = v80;
  }

  else
  {
    v79 = *MEMORY[0x277CBF3A8];
    v81 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v85 = objc_msgSend_titleElement(self, v82, INFINITY, v83, v84);
  v90 = v85;
  v91 = 0.0;
  if (v79 > 0.0 && v85 && v81 > 0.0)
  {
    v92 = objc_msgSend_titleElement(self, v86, v87, v88, v89);
    objc_msgSend_overhangMagnitudeForEdge_(v92, v93, v94, v95, v96, 3);
    v91 = v97;
  }

  TSURectWithSize();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = objc_msgSend_bodyLayoutItem(self, v106, v98, v100, v102);
  objc_msgSend_overhangRect(v107, v108, v109, v110, v111);
  v279 = v113;
  v281 = v112;
  v277 = v115;
  v278 = v114;

  v120 = objc_msgSend_titleElement(self, v116, v117, v118, v119);
  if (objc_msgSend_shouldPlaceTitleAtCenter(v120, v121, v122, v123, v124))
  {
    objc_msgSend_layoutSettings(self, v125, v126, v127);

    if ((v283 & 1) == 0)
    {
      TSUCenterOfRect();
      TSURectWithCenterAndSize();
      v128 = v103;
      v130 = v129;
      v132 = v131;
      v133 = v105;
      v135 = v134;
      v137 = v136;
      objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v138, v99, v101, v128, v133, *&v128, *&v133);
      goto LABEL_27;
    }
  }

  else
  {
  }

  TSUCenterOfRect();
  TSURectWithCenterAndSize();
  v139 = v103;
  v130 = v140;
  v141 = v105;
  v135 = v142;
  v137 = v143;
  v132 = v101 - v143 - v91;
  objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v144, v99, v101, v139, v141, *&v139, *&v141);
  v145 = LABEL_27:;
  v286[0] = v145;
  v147 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v146, v130, v132, v135, v137);
  v286[1] = v147;
  v149 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v148, v281, v279, v278, v277);
  v286[2] = v149;
  v154 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v150, v151, v152, v153, v286, 3);
  v159 = objc_msgSend_mutableCopy(v154, v155, v156, v157, v158);

  objc_msgSend_outerRectForRects_(TSCHChartLayout, v160, v161, v162, v163, v159);
  v280 = v165;
  v282 = v164;
  v167 = v166;
  v169 = v168;
  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v170, v130, v132, v135, v137, v164, v165, v166, v168);
  v172 = v171;
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v180 = objc_msgSend_titleElement(self, v179, v171, v173, v175);
  objc_msgSend_setLayoutOffset_(v180, v181, v172, v174, v182);

  v187 = objc_msgSend_titleElement(self, v183, v184, v185, v186);
  objc_msgSend_setLayoutSize_(v187, v188, v176, v178, v189);

  objc_msgSend_normalizeRect_outerRect_(TSCHChartLayout, v190, v99, v101, v275, v276, v282, v280, v167, v169);
  v192 = v191;
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v200 = objc_msgSend_bodyLayoutItem(self, v199, v191, v193, v195);
  objc_msgSend_setLayoutOffset_(v200, v201, v192, v194, v202);

  v207 = objc_msgSend_bodyLayoutItem(self, v203, v204, v205, v206);
  objc_msgSend_setLayoutSize_(v207, v208, v196, v198, v209);

  v214 = objc_msgSend_bodyLayoutItem(self, v210, v211, v212, v213);
  objc_msgSend_layoutRect(v214, v215, v216, v217, v218);
  v220 = v219;
  v222 = v221;
  v224 = v223;
  v226 = v225;
  v228 = objc_msgSend_gridLayoutItem(self, v227, v219, v221, v223);
  objc_msgSend_setLayoutRect_(v228, v229, v220, v222, v224, v226);

  v234 = objc_msgSend_bodyLayoutItem(self, v230, v231, v232, v233);
  objc_msgSend_layoutSize(v234, v235, v236, v237, v238);

  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    v243 = MEMORY[0x277D81150];
    v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v239, v240, v241, v242, "[TSCHChartRadialAreaLayoutItem layoutOutward]");
    v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, v246, v247, v248, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialAreaLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v243, v250, v251, v252, v253, v244, v249, 199, 0, "We don't expect to ever get contrained on an outward layout.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v254, v255, v256, v257);
    v258 = MEMORY[0x277CCAE60];
    TSURectWithOriginAndSize();
    v263 = objc_msgSend_valueWithCGRect_(v258, v259, v260, v261, v262);
    objc_msgSend_setObject_atIndexedSubscript_(v159, v264, v265, v266, v267, v263, 0);

    objc_msgSend_outerRectForRects_(TSCHChartLayout, v268, v269, v270, v271, v159);
    v167 = v242;
    v169 = v272;
  }

  objc_msgSend_setLayoutSize_(self, v239, v167, v169, v242);
  objc_msgSend_setLayoutOffset_(self, v273, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v274);
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = TSCHChartRadialAreaLayoutItem;
  v6 = [(TSCHChartLayoutItem *)&v12 renderersWithRep:repCopy];

  objc_msgSend_addObjectsFromArray_(v5, v7, v8, v9, v10, v6);

  return v5;
}

- (CGRect)titleFrame
{
  v5 = objc_msgSend_titleElement(self, a2, v2, v3, v4);
  objc_msgSend_rootedLayoutRect(v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end