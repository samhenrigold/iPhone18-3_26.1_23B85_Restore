@interface TPFootnoteLayoutController
- (TPFootnoteLayoutController)initWithPaginatedPageController:(id)controller;
- (TSWPFootnoteMarkProvider)footnoteMarkProvider;
- (_NSRange)endnoteRangeForSectionCharRange:(_NSRange)range isLastSection:(BOOL)section sectionHint:(id)hint;
- (_NSRange)footnoteLayoutRangeForPageCharRange:(_NSRange)range;
- (_NSRange)layOutFootnotesFromIndex:(unint64_t)index intoFootnoteContainer:(id)container maxBlockHeight:(double)height pageCharRange:(_NSRange)range sectionCharRange:(_NSRange)charRange isLastSection:(BOOL)section sectionHint:(id)hint pageHintIndex:(unint64_t)self0;
- (id)p_footnoteReferenceStoragesInFootnoteIndexRange:(_NSRange)range;
- (id)p_layoutForFootnoteReferenceStorage:(id)storage;
- (unint64_t)p_layoutFootnotesInRange:(_NSRange)range intoFootnoteContainer:(id)container maxBlockHeight:(double)height measure:(BOOL)measure inflating:(BOOL)inflating;
- (void)inflateFootnotesInRange:(_NSRange)range intoFootnoteContainer:(id)container;
- (void)removeDeletedFootnoteInContainer:(id)container;
@end

@implementation TPFootnoteLayoutController

- (TPFootnoteLayoutController)initWithPaginatedPageController:(id)controller
{
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = TPFootnoteLayoutController;
  v5 = [(TPFootnoteLayoutController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, controllerCopy);
    v16 = objc_msgSend_documentRoot(controllerCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    objc_storeWeak(&v6->_documentRoot, v16);
  }

  return v6;
}

- (_NSRange)layOutFootnotesFromIndex:(unint64_t)index intoFootnoteContainer:(id)container maxBlockHeight:(double)height pageCharRange:(_NSRange)range sectionCharRange:(_NSRange)charRange isLastSection:(BOOL)section sectionHint:(id)hint pageHintIndex:(unint64_t)self0
{
  length = charRange.length;
  location = charRange.location;
  v12 = range.length;
  v13 = range.location;
  containerCopy = container;
  hintCopy = hint;
  v263 = containerCopy;
  if (!containerCopy)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v22, v23, v24, v25, "[TPFootnoteLayoutController layOutFootnotesFromIndex:intoFootnoteContainer:maxBlockHeight:pageCharRange:sectionCharRange:isLastSection:sectionHint:pageHintIndex:]", v18, v19, v20);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v29, v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v37, v38, v39, v40, v41, v27, v36, 49, 0, "invalid nil value for '%{public}s'", "footnoteContainer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v47, v48, v49, v50, v43, v44, v45, v46);
  }

  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v264 = objc_msgSend_bodyStorage(WeakRetained, v52, v57, v58, v59, v60, v53, v54, v55, v56);

  v61 = objc_loadWeakRetained(&self->_documentRoot);
  v71 = objc_msgSend_footnoteKind(v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);

  v81 = objc_msgSend_pageHints(hintCopy, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  v90 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, v86, v87, v88, v89, hintIndex, v83, v84, v85);

  if (!v71)
  {
    v100 = objc_msgSend_pageKind(v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);
    if (!hintIndex || v100 != 4)
    {
      goto LABEL_24;
    }

    v101 = objc_loadWeakRetained(&self->_documentRoot);
    if (objc_msgSend_laysOutBodyVertically(v101, v102, v107, v108, v109, v110, v103, v104, v105, v106))
    {
      v111 = objc_loadWeakRetained(&self->_documentRoot);
      v121 = objc_msgSend_settings(v111, v112, v117, v118, v119, v120, v113, v114, v115, v116);
      hasFacingPages = objc_msgSend_hasFacingPages(v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);

      if (hasFacingPages)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v141 = MEMORY[0x277D81150];
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v137, v138, v139, v140, "[TPFootnoteLayoutController layOutFootnotesFromIndex:intoFootnoteContainer:maxBlockHeight:pageCharRange:sectionCharRange:isLastSection:sectionHint:pageHintIndex:]", v134, v135, v136);
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v144, v145, v146);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v152, v153, v154, v155, v156, v142, v151, 59, 0, "Unexpected endnote page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v157, v162, v163, v164, v165, v158, v159, v160, v161);
LABEL_18:
    v166 = objc_msgSend_pageHints(hintCopy, v132, v137, v138, v139, v140, v133, v134, v135, v136);
    v175 = objc_msgSend_objectAtIndexedSubscript_(v166, v167, v171, v172, v173, v174, hintIndex - 1, v168, v169, v170);

    v13 = objc_msgSend_range(v175, v176, v181, v182, v183, v184, v177, v178, v179, v180);
    v12 = v185;

    goto LABEL_24;
  }

  if (v13 + v12 == location + length)
  {
    if (v71 == 2)
    {
      v13 = location;
      v12 = length;
      goto LABEL_24;
    }

    if (v71 == 1 && section)
    {
      if (self->_bumpedDocumentEndnotesForPageBreak || (v186 = objc_msgSend_length(v264, v91, v96, v97, v98, v99, v92, v93, v94, v95), index) || !v186 || (v187 = objc_msgSend_range(v264, v91, v96, v97, v98, v99, v92, v93, v94, v95), objc_msgSend_characterAtIndex_(v264, v188, v192, v193, v194, v195, &v188[v187 - 1], v189, v190, v191) != 5))
      {
        self->_bumpedDocumentEndnotesForPageBreak = 0;
        v13 = objc_msgSend_range(v264, v91, v96, v97, v98, v99, v92, v93, v94, v95);
        v12 = v91;
        goto LABEL_24;
      }

      self->_bumpedDocumentEndnotesForPageBreak = 1;
      objc_msgSend_removeAllFootnoteLayouts(v263, v91, v96, v97, v98, v99, v92, v93, v94, v95);
    }
  }

  v13 = 0;
  v12 = 0;
LABEL_24:
  if (self->_bumpedDocumentEndnotesForPageBreak)
  {
    indexCopy4 = 0;
    v197 = 0;
    v198 = v263;
    goto LABEL_45;
  }

  v199 = objc_msgSend_footnoteRangeForTextRange_(v264, v91, v96, v97, v98, v99, v13, v12, v94, v95);
  v201 = v199 + v200;
  indexCopy4 = index;
  if (v12)
  {
    indexCopy2 = v199 + v200;
  }

  else
  {
    indexCopy2 = index;
  }

  v203 = objc_loadWeakRetained(&self->_documentRoot);
  if (objc_msgSend_laysOutBodyVertically(v203, v204, v209, v210, v211, v212, v205, v206, v207, v208))
  {
    v213 = objc_loadWeakRetained(&self->_documentRoot);
    v223 = objc_msgSend_settings(v213, v214, v219, v220, v221, v222, v215, v216, v217, v218);
    if (objc_msgSend_hasFacingPages(v223, v224, v229, v230, v231, v232, v225, v226, v227, v228) && !v12 && objc_msgSend_pageKind(v90, v233, v238, v239, v240, v241, v234, v235, v236, v237) == 1)
    {
      objc_msgSend_range(v90, v242, v247, v248, v249, v250, v243, v244, v245, v246);
      v252 = v251;

      if (!v252)
      {
        indexCopy2 = v201;
      }

      indexCopy4 = index;
      goto LABEL_38;
    }

    indexCopy4 = index;
  }

LABEL_38:
  if (indexCopy2 <= indexCopy4)
  {
    v258 = indexCopy4;
  }

  else
  {
    v258 = indexCopy2;
  }

  if (indexCopy2 >= indexCopy4)
  {
    v259 = indexCopy4;
  }

  else
  {
    v259 = indexCopy2;
  }

  v198 = v263;
  v254.n128_f64[0] = height;
  v197 = objc_msgSend_p_layoutFootnotesInRange_intoFootnoteContainer_maxBlockHeight_measure_inflating_(self, v253, v254, v255, v256, v257, v259, v258 - v259, v263, v71 != 0, 0);
LABEL_45:

  v260 = indexCopy4;
  v261 = v197;
  result.length = v261;
  result.location = v260;
  return result;
}

- (void)inflateFootnotesInRange:(_NSRange)range intoFootnoteContainer:(id)container
{
  if (range.length)
  {
    v4.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    objc_msgSend_p_layoutFootnotesInRange_intoFootnoteContainer_maxBlockHeight_measure_inflating_(self, a2, v4, v5, v6, v7, range.location, range.length, container, 0, 1);
  }
}

- (_NSRange)endnoteRangeForSectionCharRange:(_NSRange)range isLastSection:(BOOL)section sectionHint:(id)hint
{
  sectionCopy = section;
  length = range.length;
  location = range.location;
  v127 = *MEMORY[0x277D85DE8];
  hintCopy = hint;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v20 = objc_msgSend_bodyStorage(WeakRetained, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  v21 = *MEMORY[0x277D81490];
  v22 = *(MEMORY[0x277D81490] + 8);
  v23 = objc_loadWeakRetained(&self->_documentRoot);
  v33 = objc_msgSend_footnoteKind(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

  if (v33)
  {
    if (v33 == 1)
    {
      if (sectionCopy)
      {
        v21 = objc_msgSend_range(v20, v34, v39, v40, v41, v42, v35, v36, v37, v38);
        v22 = v34;
      }
    }

    else if (v33 == 2)
    {
      v22 = length;
      v21 = location;
    }
  }

  else
  {
    v43 = objc_loadWeakRetained(&self->_documentRoot);
    if (objc_msgSend_laysOutBodyVertically(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48))
    {
      v53 = objc_loadWeakRetained(&self->_documentRoot);
      v63 = objc_msgSend_settings(v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);
      hasFacingPages = objc_msgSend_hasFacingPages(v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);

      if (hasFacingPages)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        obj = objc_msgSend_pageHints(hintCopy, v34, 0, v40, v41, v42, v74, v75, v37, v38);
        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, v78, v79, v80, v81, &v122, v126, 16, v77);
        if (v82)
        {
          v92 = v82;
          v93 = *v123;
          v94 = v22;
          v95 = v21;
LABEL_11:
          v96 = 0;
          while (1)
          {
            if (*v123 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v97 = *(*(&v122 + 1) + 8 * v96);
            if (objc_msgSend_pageKind(v97, v83, v88, v89, v90, v91, v84, v85, v86, v87) == 5)
            {
              break;
            }

            if (objc_msgSend_pageColumn(v97, v98, v103, v104, v105, v106, v99, v100, v101, v102) == 1 && (objc_msgSend_hasForcedFootnotes(v97, v107, v112, v113, v114, v115, v108, v109, v110, v111) & 1) == 0)
            {
              v95 = objc_msgSend_range(v97, v107, v112, v113, v114, v115, v108, v109, v110, v111);
              v94 = v83;
            }

            else if (objc_msgSend_pageKind(v97, v107, v112, v113, v114, v115, v108, v109, v110, v111) != 4)
            {
              v94 = v22;
              v95 = v21;
            }

            if (v92 == ++v96)
            {
              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, v88, v89, v90, v91, &v122, v126, 16, v87);
              if (v92)
              {
                goto LABEL_11;
              }

              break;
            }
          }
        }

        else
        {
          v94 = v22;
          v95 = v21;
        }

        v22 = v94;
        v21 = v95;
      }
    }

    else
    {
    }
  }

  v116 = 0x7FFFFFFFFFFFFFFFLL;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v117 = 0;
  }

  else
  {
    v116 = objc_msgSend_footnoteRangeForTextRange_(v20, v34, v39, v40, v41, v42, v21, v22, v37, v38);
    v117 = v118;
  }

  v119 = v116;
  v120 = v117;
  result.length = v120;
  result.location = v119;
  return result;
}

- (_NSRange)footnoteLayoutRangeForPageCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v16 = objc_msgSend_footnoteKind(WeakRetained, v7, v12, v13, v14, v15, v8, v9, v10, v11);

  if (v16)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0;
  }

  else
  {
    v19 = objc_loadWeakRetained(&self->_documentRoot);
    v29 = objc_msgSend_bodyStorage(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v37 = objc_msgSend_footnoteRangeForTextRange_(v29, v30, v33, v34, v35, v36, location, length, v31, v32);
    v39 = v38;

    v17 = v37;
    v18 = v39;
  }

  result.length = v18;
  result.location = v17;
  return result;
}

- (void)removeDeletedFootnoteInContainer:(id)container
{
  v61 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v13 = objc_msgSend_children(containerCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_copy(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = v23;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v27, v28, v29, v30, &v56, v60, 16, v26);
  if (v31)
  {
    v41 = v31;
    v42 = *v57;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(v24);
        }

        v44 = *(*(&v56 + 1) + 8 * i);
        v45 = objc_msgSend_storage(v44, v32, v37, v38, v39, v40, v33, v34, v35, v36, v56);
        v55 = objc_msgSend_documentRoot(v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);

        if (!v55)
        {
          objc_msgSend_removeFootnoteLayout_(containerCopy, v32, v37, v38, v39, v40, v44, v34, v35, v36);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v32, v37, v38, v39, v40, &v56, v60, 16, v36);
    }

    while (v41);
  }
}

- (unint64_t)p_layoutFootnotesInRange:(_NSRange)range intoFootnoteContainer:(id)container maxBlockHeight:(double)height measure:(BOOL)measure inflating:(BOOL)inflating
{
  measureCopy = measure;
  length = range.length;
  location = range.location;
  v292 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v278 = objc_msgSend_layoutController(containerCopy, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (!v278)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v25, v26, v27, v28, "[TPFootnoteLayoutController p_layoutFootnotesInRange:intoFootnoteContainer:maxBlockHeight:measure:inflating:]", v22, v23, v24);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v32, v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v40, v41, v42, v43, v44, v30, v39, 190, 0, "invalid nil value for '%{public}s'", "layoutController");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v50, v51, v52, v53, v46, v47, v48, v49);
  }

  v54 = objc_msgSend_children(containerCopy, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v275 = v54;
  if (objc_msgSend_count(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59))
  {
    v73 = objc_alloc(MEMORY[0x277D81308]);
    v83 = objc_msgSend_count(v54, v74, v79, v80, v81, v82, v75, v76, v77, v78);
    v92 = objc_msgSend_initWithCapacity_(v73, v84, v88, v89, v90, v91, v83, v85, v86, v87);
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v93 = v54;
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, v96, v97, v98, v99, &v286, v291, 16, v95);
    if (v100)
    {
      v110 = v100;
      v111 = *v287;
      do
      {
        for (i = 0; i != v110; ++i)
        {
          if (*v287 != v111)
          {
            objc_enumerationMutation(v93);
          }

          v113 = *(*(&v286 + 1) + 8 * i);
          v114 = objc_msgSend_info(v113, v101, v106, v107, v108, v109, v102, v103, v104, v105);
          objc_msgSend_setObject_forUncopiedKey_(v92, v115, v118, v119, v120, v121, v113, v114, v116, v117);
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v101, v106, v107, v108, v109, &v286, v291, 16, v105);
      }

      while (v110);
    }
  }

  else
  {
    v92 = 0;
  }

  objc_msgSend_removeAllFootnoteLayouts(containerCopy, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  if (length)
  {
    v280 = containerCopy;
    objc_msgSend_p_footnoteReferenceStoragesInFootnoteIndexRange_(self, v122, v126, v127, v128, v129, location, length, v124, v125);
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    obj = v285 = 0u;
    v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v130, v132, v133, v134, v135, &v282, v290, 16, v131);
    v274 = length;
    if (v136)
    {
      v137 = v136;
      v138 = 0;
      v139 = *v283;
      while (2)
      {
        v140 = 0;
        v276 = v138 + v137;
        do
        {
          if (*v283 != v139)
          {
            objc_enumerationMutation(obj);
          }

          v141 = *(*(&v282 + 1) + 8 * v140);
          objc_opt_class();
          v151 = objc_msgSend_first(v141, v142, v147, v148, v149, v150, v143, v144, v145, v146);
          v152 = TSUCheckedDynamicCast();

          objc_opt_class();
          v162 = objc_msgSend_second(v141, v153, v158, v159, v160, v161, v154, v155, v156, v157);
          v163 = TSUCheckedDynamicCast();

          if (objc_msgSend_BOOLValue(v163, v164, v169, v170, v171, v172, v165, v166, v167, v168))
          {
            v181 = 0;
          }

          else
          {
            v182 = objc_msgSend_objectForKeyedSubscript_(v92, v173, v177, v178, v179, v180, v152, v174, v175, v176);
            if (v182)
            {
              v181 = v182;
              objc_msgSend_invalidateForFootnoteNumberingChange(v182, v183, v188, v189, v190, v191, v184, v185, v186, v187);
            }

            else
            {
              v181 = objc_msgSend_p_layoutForFootnoteReferenceStorage_(self, v183, v188, v189, v190, v191, v152, v185, v186, v187);
            }

            objc_msgSend_addFootnoteLayout_(v280, v192, v196, v197, v198, v199, v181, v193, v194, v195);
            if (measureCopy)
            {
              objc_msgSend_validateLayoutWithDependencies_(v278, v200, v204, v205, v206, v207, v280, v201, v202, v203);
              objc_msgSend_blockHeight(v280, v208, v213, v214, v215, v216, v209, v210, v211, v212);
              if (v221.n128_f64[0] > height)
              {
                objc_msgSend_removeFootnoteLayout_(v280, v217, v221, v222, v223, v224, v181, v218, v219, v220);

                goto LABEL_32;
              }
            }
          }

          ++v140;
          ++v138;
        }

        while (v137 != v140);
        v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v225, v227, v228, v229, v230, &v282, v290, 16, v226);
        v138 = v276;
        if (v137)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v138 = 0;
    }

LABEL_32:

    v231 = v278;
    containerCopy = v280;
    objc_msgSend_validateLayoutWithDependencies_(v278, v232, v236, v237, v238, v239, v280, v233, v234, v235);
    if (v138 > v274)
    {
      v248 = MEMORY[0x277D81150];
      v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v240, v244, v245, v246, v247, "[TPFootnoteLayoutController p_layoutFootnotesInRange:intoFootnoteContainer:maxBlockHeight:measure:inflating:]", v241, v242, v243);
      v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v250, v254, v255, v256, v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v251, v252, v253);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v248, v259, v260, v261, v262, v263, v249, v258, 246, 0, "Found %lu footnoteStorages vs. %lu in the text range", v138, v274);

      containerCopy = v280;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v264, v269, v270, v271, v272, v265, v266, v267, v268);
    }
  }

  else
  {
    v231 = v278;
    objc_msgSend_validateLayoutWithDependencies_(v278, v122, v126, v127, v128, v129, containerCopy, v123, v124, v125);
    v138 = 0;
  }

  return v138;
}

- (id)p_layoutForFootnoteReferenceStorage:(id)storage
{
  storageCopy = storage;
  v13 = objc_alloc(objc_msgSend_layoutClass(storageCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8));
  v22 = objc_msgSend_initWithInfo_(v13, v14, v18, v19, v20, v21, storageCopy, v15, v16, v17);

  return v22;
}

- (id)p_footnoteReferenceStoragesInFootnoteIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPFootnoteLayoutController p_footnoteReferenceStoragesInFootnoteIndexRange:]", range.length, v3, v4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 261, 0, "Bogus footnote index range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v5, v6, v7, v8, range.location, range.length, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v48 = objc_msgSend_bodyStorage(WeakRetained, v39, v44, v45, v46, v47, v40, v41, v42, v43);

  if (location < location + length)
  {
    do
    {
      v128 = 0;
      v60 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v48, v49, v52, v53, v54, v55, location, &v128, v50, v51);
      if (v60)
      {
        hasHiddenTextAtCharIndex = objc_msgSend_hasHiddenTextAtCharIndex_(v48, v56, v61, v62, v63, v64, v128, v57, v58, v59);
        v66 = MEMORY[0x277D812A8];
        v76 = objc_msgSend_containedStorage(v60, v67, v72, v73, v74, v75, v68, v69, v70, v71);
        v85 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v77, v81, v82, v83, v84, hasHiddenTextAtCharIndex, v78, v79, v80);
        v93 = objc_msgSend_pairWithFirst_second_(v66, v86, v89, v90, v91, v92, v76, v85, v87, v88);

        objc_msgSend_addObject_(v37, v94, v98, v99, v100, v101, v93, v95, v96, v97);
      }

      else
      {
        v102 = MEMORY[0x277D81150];
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v61, v62, v63, v64, "[TPFootnoteLayoutController p_footnoteReferenceStoragesInFootnoteIndexRange:]", v57, v58, v59);
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteLayoutController.m", v105, v106, v107);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v113, v114, v115, v116, v117, v103, v112, 269, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v123, v124, v125, v126, v119, v120, v121, v122);
      }

      ++location;
      --length;
    }

    while (length);
  }

  return v37;
}

- (TSWPFootnoteMarkProvider)footnoteMarkProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end