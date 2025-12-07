@interface TPThumbnailImager
- (CGImage)newImage;
- (void)canvasDidValidateLayouts:(id)layouts;
- (void)canvasWillValidateLayouts:(id)layouts;
@end

@implementation TPThumbnailImager

- (void)canvasWillValidateLayouts:(id)layouts
{
  v273[1] = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v14 = objc_msgSend_documentRoot(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v15, v19, v20, v21, v22, v14, v16, v17, v18);

  v33 = objc_msgSend_infos(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_count(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

  if (v43)
  {
    if (v43 >= 3)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "[TPThumbnailImager canvasWillValidateLayouts:]", v45, v46, v47);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m", v55, v56, v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v63, v64, v65, v66, v67, v53, v62, 35, 0, "incorrect info count in the thumbnail imager");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v73, v74, v75, v76, v69, v70, v71, v72);
    }

    objc_opt_class();
    v86 = objc_msgSend_infos(self, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    v95 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, v91, v92, v93, v94, 0, v88, v89, v90);
    v96 = TSUDynamicCast();

    v106 = objc_msgSend_pageIndex(v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
    v116 = objc_msgSend_documentRoot(self, v107, v112, v113, v114, v115, v108, v109, v110, v111);
    LOBYTE(v86) = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v117, v120, v121, v122, v123, v106, v116, v118, v119);

    if ((v86 & 1) == 0)
    {
      v138 = objc_msgSend_pageIndex(v96, v124, v129, v130, v131, v132, v125, v126, v127, v128);
      if (v43 != 1)
      {
        objc_opt_class();
        v152 = objc_msgSend_infos(self, v143, v148, v149, v150, v151, v144, v145, v146, v147);
        v161 = objc_msgSend_objectAtIndexedSubscript_(v152, v153, v157, v158, v159, v160, 1, v154, v155, v156);
        v162 = TSUDynamicCast();

        if (objc_msgSend_pageIndex(v162, v163, v168, v169, v170, v171, v164, v165, v166, v167) <= v138)
        {
          v181 = MEMORY[0x277D81150];
          v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v177, v178, v179, v180, "[TPThumbnailImager canvasWillValidateLayouts:]", v174, v175, v176);
          v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m", v184, v185, v186);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v192, v193, v194, v195, v196, v182, v191, 48, 0, "second page is not after first");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v197, v202, v203, v204, v205, v198, v199, v200, v201);
        }

        v138 = objc_msgSend_pageIndex(v162, v172, v177, v178, v179, v180, v173, v174, v175, v176);
      }

      v206 = objc_msgSend_layoutController(layoutsCopy, v133, v139, v140, v141, v142, v134, v135, v136, v137);
      objc_msgSend_paginateThroughPageIndex_forLayoutController_(v23, v207, v210, v211, v212, v213, v138, v206, v208, v209);

      if (v138 > objc_msgSend_pageCount(v23, v214, v219, v220, v221, v222, v215, v216, v217, v218))
      {
        v232 = MEMORY[0x277D81150];
        v233 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v223, v228, v229, v230, v231, "[TPThumbnailImager canvasWillValidateLayouts:]", v225, v226, v227);
        v242 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v234, v238, v239, v240, v241, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPThumbnailImager.m", v235, v236, v237);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v232, v243, v244, v245, v246, v247, v233, v242, 58, 0, "thumbnailer was asked to lay out unexpected pages");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v248, v253, v254, v255, v256, v249, v250, v251, v252);
      }

      if (v138 == objc_msgSend_pageCount(v23, v223, v228, v229, v230, v231, v224, v225, v226, v227))
      {
        v273[0] = v96;
        v264 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v257, v260, v261, v262, v263, v273, 1, v258, v259);
        objc_msgSend_setInfos_(self, v265, v269, v270, v271, v272, v264, v266, v267, v268);
      }
    }
  }
}

- (void)canvasDidValidateLayouts:(id)layouts
{
  v72 = *MEMORY[0x277D85DE8];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = objc_msgSend_infos(self, a2, 0, v6, v7, v8, layouts, v3, v4, v5);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, v12, v13, v14, v15, &v67, v71, 16, v11);
  if (v16)
  {
    v17 = v16;
    v18 = *v68;
    do
    {
      v19 = 0;
      do
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v20 = TSUDynamicCast();
        if (v20)
        {
          objc_opt_class();
          v30 = objc_msgSend_canvas(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
          v40 = objc_msgSend_layoutController(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
          v49 = objc_msgSend_layoutForInfo_(v40, v41, v45, v46, v47, v48, v20, v42, v43, v44);
          v50 = TSUDynamicCast();

          objc_msgSend_evacuateOldChildLayoutCache(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, v62, v63, v64, v65, &v67, v71, 16, v61);
    }

    while (v17);
  }
}

- (CGImage)newImage
{
  v32 = 0;
  v33 = &v32;
  v6.n128_u64[0] = 0x2020000000;
  v34 = 0x2020000000;
  v35 = 0;
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v12, v16, v17, v18, v19, v11, v13, v14, v15);

  v31[0] = MEMORY[0x277D85DD0];
  v21.n128_u64[0] = 3221225472;
  v31[1] = 3221225472;
  v31[2] = sub_275FD9064;
  v31[3] = &unk_27A6A85F8;
  v31[4] = self;
  v31[5] = &v32;
  objc_msgSend_accquireLockAndPerformAction_(v20, v22, v21, v26, v27, v28, v31, v23, v24, v25);
  v29 = v33[3];

  _Block_object_dispose(&v32, 8);
  return v29;
}

@end