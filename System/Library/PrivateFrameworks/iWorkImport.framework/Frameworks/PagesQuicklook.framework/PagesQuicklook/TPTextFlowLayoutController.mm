@interface TPTextFlowLayoutController
- (TPTextFlowLayoutController)initWithPageController:(id)controller;
- (id)hintForFlow:(id)flow pageIndex:(unint64_t)index;
- (id)p_flowForLayoutMgr:(id)mgr;
- (id)p_flowsOnPage:(id)page textBoxes:(id)boxes;
- (id)p_flowsOnPageIndex:(unint64_t)index;
- (id)p_layoutMgrForFlow:(id)flow;
- (id)p_orderedTextBoxesForFlow:(id)flow textBoxes:(id)boxes;
- (id)p_previousTextBoxForTarget:(id)target;
- (id)previousTargetLastColumnForTarget:(id)target;
- (id)textWrapper;
- (unint64_t)pageIndexNeedingLayoutPreviousToPageIndex:(unint64_t)index;
- (void)dealloc;
- (void)deflatePage:(id)page intoHints:(id)hints topicNumberHints:(id)numberHints;
- (void)i_trimFlow:(id)flow pageIndex:(unint64_t)index toCharIndex:(unint64_t)charIndex;
- (void)invalidateFlows:(id)flows startingPage:(id)page;
- (void)layOutFlowsIfNeededOnPage:(id)page;
- (void)layoutManagerNeedsLayout:(id)layout;
- (void)p_setLayoutMgr:(id)mgr forFlow:(id)flow;
- (void)processWidowAndInflationOnPage:(id)page;
- (void)teardown;
@end

@implementation TPTextFlowLayoutController

- (TPTextFlowLayoutController)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v68.receiver = self;
  v68.super_class = TPTextFlowLayoutController;
  v5 = [(TPTextFlowLayoutController *)&v68 init];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUCheckedDynamicCast();
    objc_storeWeak(&v5->_pageController, v6);

    v16 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v7, v12, v13, v14, v15, v8, v9, v10, v11);
    layoutMgrs = v5->_layoutMgrs;
    v5->_layoutMgrs = v16;

    v27 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], v18, v23, v24, v25, v26, v19, v20, v21, v22);
    flows = v5->_flows;
    v5->_flows = v27;

    WeakRetained = objc_loadWeakRetained(&v5->_pageController);
    v39 = objc_msgSend_documentRoot(WeakRetained, v30, v35, v36, v37, v38, v31, v32, v33, v34);

    v49 = objc_msgSend_flowInfoContainer(v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v59 = objc_msgSend_changeNotifier(v39, v50, v55, v56, v57, v58, v51, v52, v53, v54);
    objc_msgSend_addObserver_forChangeSource_(v59, v60, v63, v64, v65, v66, v5, v49, v61, v62);
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_tornDown)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPTextFlowLayoutController dealloc]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 83, 0, "Failed to tear down before dealloc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  v35.receiver = self;
  v35.super_class = TPTextFlowLayoutController;
  [(TPTextFlowLayoutController *)&v35 dealloc];
}

- (void)teardown
{
  v74 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v13 = objc_msgSend_documentRoot(WeakRetained, v4, v9, v10, v11, v12, v5, v6, v7, v8);

  v23 = objc_msgSend_flowInfoContainer(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v33 = objc_msgSend_changeNotifier(v13, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  objc_msgSend_removeObserver_forChangeSource_(v33, v34, v37, v38, v39, v40, self, v23, v35, v36);

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v41 = self->_layoutMgrs;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v44, v45, v46, v47, &v69, v73, 16, v43);
  if (v52)
  {
    v57 = *v70;
    do
    {
      v58 = 0;
      do
      {
        if (*v70 != v57)
        {
          objc_enumerationMutation(v41);
        }

        v59 = objc_msgSend_objectForKey_(self->_layoutMgrs, v48, v53, v54, v55, v56, *(*(&v69 + 1) + 8 * v58), v49, v50, v51, v69);
        objc_msgSend_clearOwner(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);

        ++v58;
      }

      while (v52 != v58);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v48, v53, v54, v55, v56, &v69, v73, 16, v51);
    }

    while (v52);
  }

  self->_tornDown = 1;
}

- (void)layOutFlowsIfNeededOnPage:(id)page
{
  v473 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v443 = objc_msgSend_layoutController(pageCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v438 = objc_msgSend_set(MEMORY[0x277CBEB58], v13, v18, v19, v20, v21, v14, v15, v16, v17);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v22, v25, v26, v27, v28, pageCopy, v438, v23, v24);
  v467 = 0u;
  v468 = 0u;
  v465 = 0u;
  obj = v466 = 0u;
  v439 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, v31, v32, v33, v34, &v465, v472, 16, v30);
  if (v439)
  {
    v437 = *v466;
    do
    {
      for (i = 0; i != v439; ++i)
      {
        if (*v466 != v437)
        {
          objc_enumerationMutation(obj);
        }

        v444 = *(*(&v465 + 1) + 8 * i);
        v452 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v35, v38, v39, v40, v41, v444, v438, v36, v37);
        if (objc_msgSend_count(v452, v42, v47, v48, v49, v50, v43, v44, v45, v46))
        {
          v64 = objc_msgSend_p_layoutMgrForFlow_(self, v51, v55, v56, v57, v58, v444, v52, v53, v54);
          if (!v64)
          {
            v69 = objc_alloc(MEMORY[0x277D80E78]);
            v79 = objc_msgSend_textStorage(v444, v70, v75, v76, v77, v78, v71, v72, v73, v74);
            v64 = objc_msgSend_initWithStorage_owner_(v69, v80, v83, v84, v85, v86, v79, self, v81, v82);

            objc_msgSend_p_setLayoutMgr_forFlow_(self, v87, v90, v91, v92, v93, v64, v444, v88, v89);
          }

          v449 = v64;
          for (j = objc_msgSend_pageIndex(pageCopy, v59, v65, v66, v67, v68, v60, v61, v62, v63); j != -1; --j)
          {
            WeakRetained = objc_loadWeakRetained(&self->_pageController);
            v113 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v105, v109, v110, v111, v112, j, v106, v107, v108);

            if (objc_msgSend_pageKind(v113, v114, v119, v120, v121, v122, v115, v116, v117, v118) && objc_msgSend_pageKind(v113, v123, v128, v129, v130, v131, v124, v125, v126, v127) != 5)
            {
              v141 = objc_msgSend_pageIndex(pageCopy, v132, v137, v138, v139, v140, v133, v134, v135, v136);
              v151 = objc_msgSend_flowHints(v113, v142, v147, v148, v149, v150, v143, v144, v145, v146);
              v160 = objc_msgSend_objectForKeyedSubscript_(v151, v152, v156, v157, v158, v159, v444, v153, v154, v155);
              v170 = v160;
              if (j != v141 || v160)
              {
                if (v160)
                {
                  v364 = objc_msgSend_range(v160, v161, v166, v167, v168, v169, v162, v163, v164, v165) == *MEMORY[0x277D81490] && v362 == *(MEMORY[0x277D81490] + 8);
                  v433 = v364;
                  v461 = 0u;
                  v462 = 0u;
                  v463 = 0u;
                  v464 = 0u;
                  v446 = v452;
                  v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v446, v365, v367, v368, v369, v370, &v461, v471, 16, v366);
                  v379 = 0;
                  if (v371)
                  {
                    v434 = *v462;
                    do
                    {
                      v432 = v371;
                      for (k = 0; k != v432; ++k)
                      {
                        if (*v462 != v434)
                        {
                          objc_enumerationMutation(v446);
                        }

                        v380 = *(*(&v461 + 1) + 8 * k);
                        v457 = 0u;
                        v458 = 0u;
                        v459 = 0u;
                        v460 = 0u;
                        v381 = objc_msgSend_layoutsForInfo_(v443, v372, 0, v376, v377, v378, v380, v373, v374, v375);
                        v448 = v381;
                        v393 = objc_msgSend_countByEnumeratingWithState_objects_count_(v381, v382, v384, v385, v386, v387, &v457, v470, 16, v383);
                        if (v393)
                        {
                          v451 = *v458;
                          while (2)
                          {
                            v398 = 0;
                            v399 = v379;
                            do
                            {
                              if (*v458 != v451)
                              {
                                objc_enumerationMutation(v448);
                              }

                              v400 = objc_msgSend_containedLayout(*(*(&v457 + 1) + 8 * v398), v388, v394, v395, v396, v397, v389, v390, v391, v392);
                              v401 = v400;
                              if (v399)
                              {
                                v402 = v399;
                              }

                              else
                              {
                                v402 = v400;
                              }

                              v440 = v402;

                              v412 = objc_msgSend_textLayoutValid(v401, v403, v408, v409, v410, v411, v404, v405, v406, v407);
                              if ((v412 & 1) == 0)
                              {

                                if (j == v141)
                                {
                                  v415 = v440;
                                  if (v433)
                                  {
                                    v445 = 0;
                                    Target = 0;
                                    v414 = 1;
                                    v450 = 1;
                                  }

                                  else
                                  {
                                    Target = objc_msgSend_layoutStateForLayoutWithHint_firstTarget_(v449, v416, v421, v422, v423, v424, v170, v440, v419, v420);
                                    v450 = 0;
                                    v414 = 1;
                                    v445 = 1;
                                  }
                                }

                                else
                                {
                                  v415 = v440;
                                  v425 = objc_msgSend_endOfLayout(v170, v416, v421, v422, v423, v424, v417, v418, v419, v420);
                                  Target = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(v449, v426, v428, v429, v430, v431, v170, v440, 0, v427);
                                  v450 = v425 | v433;
                                  v445 = (v425 | v433) ^ 1;
                                  v414 = 1;
                                }

                                goto LABEL_71;
                              }

                              ++v398;
                              v379 = v440;
                              v399 = v440;
                            }

                            while (v393 != v398);
                            v381 = v448;
                            v393 = objc_msgSend_countByEnumeratingWithState_objects_count_(v448, v388, v394, v395, v396, v397, &v457, v470, 16, v392);
                            if (v393)
                            {
                              continue;
                            }

                            break;
                          }
                        }
                      }

                      v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v446, v372, v413, v376, v377, v378, &v461, v471, 16, v375);
                    }

                    while (v371);
                  }

                  v414 = 0;
                  v450 = 0;
                  Target = 0;
                  v445 = 1;
                  v415 = v379;
LABEL_71:

                  if (!v414)
                  {
LABEL_72:
                    objc_msgSend_destroyLayoutState_(v449, v94, v100, v101, v102, v103, Target, v96, v97, v98);

                    goto LABEL_73;
                  }

LABEL_20:
                  for (m = 0; m < objc_msgSend_count(v452, v94, v100, v101, v102, v103, v95, v96, v97, v98); ++m)
                  {
                    v197 = objc_msgSend_objectAtIndexedSubscript_(v452, v94, v100, v101, v102, v103, m, v96, v97, v98);
                    v206 = objc_msgSend_layoutsForInfo_(v443, v198, v202, v203, v204, v205, v197, v199, v200, v201);
                    v455 = 0u;
                    v456 = 0u;
                    v453 = 0u;
                    v454 = 0u;
                    v207 = v206;
                    v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v208, v210, v211, v212, v213, &v453, v469, 16, v209);
                    if (v214)
                    {
                      v215 = 0;
                      v216 = *v454;
LABEL_24:
                      v217 = 0;
                      v218 = v215;
                      while (1)
                      {
                        if (*v454 != v216)
                        {
                          objc_enumerationMutation(v207);
                        }

                        v215 = *(*(&v453 + 1) + 8 * v217);

                        v228 = objc_msgSend_pageIndex(v215, v219, v224, v225, v226, v227, v220, v221, v222, v223);
                        if (objc_msgSend_pageIndex(pageCopy, v229, v234, v235, v236, v237, v230, v231, v232, v233) == v228)
                        {
                          break;
                        }

                        ++v217;
                        v218 = v215;
                        if (v214 == v217)
                        {
                          v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v238, v240, v241, v242, v243, &v453, v469, 16, v239);
                          if (v214)
                          {
                            goto LABEL_24;
                          }

                          goto LABEL_31;
                        }
                      }
                    }

                    else
                    {
LABEL_31:
                      v215 = 0;
                    }

                    objc_opt_class();
                    v244 = TSUCheckedDynamicCast();

                    v254 = objc_msgSend_info(v244, v245, v250, v251, v252, v253, v246, v247, v248, v249);
                    v263 = objc_msgSend_indexOfTextBox_(v444, v255, v259, v260, v261, v262, v254, v256, v257, v258);

                    if (v263 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v272 = MEMORY[0x277D81150];
                      v273 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v264, v268, v269, v270, v271, "[TPTextFlowLayoutController layOutFlowsIfNeededOnPage:]", v265, v266, v267);
                      v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v274, v278, v279, v280, v281, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v275, v276, v277);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v272, v283, v284, v285, v286, v287, v273, v282, 199, 0, "cannot find index of text box in flow");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v288, v293, v294, v295, v296, v289, v290, v291, v292);
                    }

                    else
                    {
                      objc_msgSend_setIndexInFlow_(v244, v264, v268, v269, v270, v271, v263, v265, v266, v267);
                    }

                    objc_msgSend_validate(v244, v297, v302, v303, v304, v305, v298, v299, v300, v301);
                    v315 = objc_msgSend_containedLayout(v244, v306, v311, v312, v313, v314, v307, v308, v309, v310);
                    objc_msgSend_setLayoutManager_(v315, v316, v320, v321, v322, v323, v449, v317, v318, v319);
                    if (v450)
                    {
                      if ((v445 & 1) == 0)
                      {
                        v333 = objc_msgSend_currentInlineDrawableLayouts(v315, v324, v329, v330, v331, v332, v325, v326, v327, v328);
                        objc_msgSend_killDrawableLayouts_(v315, v334, v338, v339, v340, v341, v333, v335, v336, v337);

                        v351 = objc_msgSend_columns(v315, v342, v347, v348, v349, v350, v343, v344, v345, v346);
                        objc_msgSend_removeAllObjects(v351, v352, v357, v358, v359, v360, v353, v354, v355, v356);
                      }

                      v361 = 1;
                    }

                    else
                    {
                      Target = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v449, v324, v329, v330, v331, v332, v315, Target, 0, v328);
                      v361 = Target == 0;
                    }

                    v450 = v361;
                    objc_msgSend_setTextLayoutValid_(v315, v324, v329, v330, v331, v332, 1, v326, v327, v328);

                    v445 = 0;
                  }

                  goto LABEL_72;
                }
              }

              else
              {
                v171 = MEMORY[0x277D81150];
                v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v166, v167, v168, v169, "[TPTextFlowLayoutController layOutFlowsIfNeededOnPage:]", v163, v164, v165);
                v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, v177, v178, v179, v180, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v174, v175, v176);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v182, v183, v184, v185, v186, v172, v181, 135, 0, "invalid nil value for '%{public}s'", "hint");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v187, v192, v193, v194, v195, v188, v189, v190, v191);
              }
            }
          }

          v450 = 0;
          Target = 0;
          v445 = 1;
          goto LABEL_20;
        }

LABEL_73:
      }

      v439 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, v38, v39, v40, v41, &v465, v472, 16, v37);
    }

    while (v439);
  }
}

- (void)deflatePage:(id)page intoHints:(id)hints topicNumberHints:(id)numberHints
{
  v607 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  hintsCopy = hints;
  numberHintsCopy = numberHints;
  v580 = pageCopy;
  v571 = objc_msgSend_layoutController(pageCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v567 = objc_msgSend_set(MEMORY[0x277CBEB58], v17, v22, v23, v24, v25, v18, v19, v20, v21);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v26, v29, v30, v31, v32, pageCopy, v567, v27, v28);
  v600 = 0u;
  v601 = 0u;
  v598 = 0u;
  obj = v599 = 0u;
  v566 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, v35, v36, v37, v38, &v598, v606, 16, v34);
  if (v566)
  {
    v565 = *v599;
    do
    {
      for (i = 0; i != v566; ++i)
      {
        if (*v599 != v565)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v598 + 1) + 8 * i);
        v47 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v39, v42, v43, v44, v45, v46, v567, v40, v41);
        v596 = 0u;
        v597 = 0u;
        v594 = 0u;
        v595 = 0u;
        v570 = v47;
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v570, v48, v50, v51, v52, v53, &v594, v605, 16, v49);
        if (v54)
        {
          v572 = *v595;
          v577 = v46;
          do
          {
            v573 = v54;
            for (j = 0; j != v573; ++j)
            {
              if (*v595 != v572)
              {
                objc_enumerationMutation(v570);
              }

              v64 = *(*(&v594 + 1) + 8 * j);
              v65 = objc_msgSend_objectForKeyedSubscript_(hintsCopy, v55, v59, v60, v61, v62, v46, v56, v57, v58);
              v574 = objc_msgSend_p_layoutMgrForFlow_(self, v66, v70, v71, v72, v73, v46, v67, v68, v69);
              if (!v574)
              {
                v82 = MEMORY[0x277D81150];
                v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v78, v79, v80, v81, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v75, v76, v77);
                v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v85, v86, v87);
                v102 = objc_msgSend_pageIndex(v580, v93, v98, v99, v100, v101, v94, v95, v96, v97);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v103, v104, v105, v106, v107, v83, v92, 242, 0, "Missing layout manager for a flow after layout on page #%lu", v102 + 1);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v113, v114, v115, v116, v109, v110, v111, v112);
                v46 = v577;
              }

              if (!v65)
              {
                v117 = objc_opt_new();
                objc_msgSend_setRange_(v117, v118, v121, v122, v123, v124, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v119, v120);
                objc_msgSend_setNextWidowPullsDownFromCharIndex_(v117, v125, v129, v130, v131, v132, 0, v126, v127, v128);
                objc_msgSend_setColumnCount_(v117, v133, v137, v138, v139, v140, 0, v134, v135, v136);
                objc_msgSend_setLineFragmentCount_(v117, v141, v145, v146, v147, v148, 0, v142, v143, v144);
                IsVertical = objc_msgSend_textIsVertical(v64, v149, v154, v155, v156, v157, v150, v151, v152, v153);
                objc_msgSend_setTextIsVertical_(v117, v159, v163, v164, v165, v166, IsVertical, v160, v161, v162);
                v65 = v117;
                objc_msgSend_setObject_forUncopiedKey_(hintsCopy, v167, v170, v171, v172, v173, v117, v46, v168, v169);
              }

              v174 = objc_msgSend_objectForKeyedSubscript_(hintsCopy, v74, v78, v79, v80, v81, v46, v75, v76, v77);
              v183 = objc_msgSend_layoutsForInfo_(v571, v175, v179, v180, v181, v182, v64, v176, v177, v178);
              v592 = 0u;
              v593 = 0u;
              v590 = 0u;
              v591 = 0u;
              v184 = v183;
              v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v185, v187, v188, v189, v190, &v590, v604, 16, v186);
              if (v191)
              {
                v192 = 0;
                v193 = *v591;
LABEL_17:
                v194 = 0;
                v195 = v192;
                while (1)
                {
                  if (*v591 != v193)
                  {
                    objc_enumerationMutation(v184);
                  }

                  v192 = *(*(&v590 + 1) + 8 * v194);

                  v205 = objc_msgSend_pageIndex(v192, v196, v201, v202, v203, v204, v197, v198, v199, v200);
                  if (objc_msgSend_pageIndex(v580, v206, v211, v212, v213, v214, v207, v208, v209, v210) == v205)
                  {
                    break;
                  }

                  ++v194;
                  v195 = v192;
                  if (v191 == v194)
                  {
                    v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v215, v217, v218, v219, v220, &v590, v604, 16, v216);
                    if (v191)
                    {
                      goto LABEL_17;
                    }

                    goto LABEL_24;
                  }
                }

                if (v192)
                {
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_24:
              }

              v230 = MEMORY[0x277D81150];
              v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v225, v226, v227, v228, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v222, v223, v224);
              v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, v236, v237, v238, v239, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v233, v234, v235);
              v250 = objc_msgSend_pageIndex(v580, v241, v246, v247, v248, v249, v242, v243, v244, v245);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v251, v252, v253, v254, v255, v231, v240, 264, 0, "Missing shape layout for a text box on page #%lu", v250 + 1);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v256, v261, v262, v263, v264, v257, v258, v259, v260);
              v192 = 0;
LABEL_27:
              v265 = objc_msgSend_containedLayout(v192, v221, v225, v226, v227, v228, v229, v222, v223, v224);
              v275 = objc_msgSend_columns(v265, v266, v271, v272, v273, v274, v267, v268, v269, v270);
              v285 = objc_msgSend_count(v275, v276, v281, v282, v283, v284, v277, v278, v279, v280);
              v295 = objc_msgSend_columnCount(v174, v286, v291, v292, v293, v294, v287, v288, v289, v290);
              objc_msgSend_setColumnCount_(v174, v296, v300, v301, v302, v303, v295 + v285, v297, v298, v299);

              v312 = objc_msgSend_p_layoutMgrForFlow_(self, v304, v308, v309, v310, v311, v577, v305, v306, v307);
              v322 = objc_msgSend_layoutFinished(v312, v313, v318, v319, v320, v321, v314, v315, v316, v317);
              objc_msgSend_setEndOfLayout_(v174, v323, v327, v328, v329, v330, v322, v324, v325, v326);

              v340 = objc_msgSend_columns(v265, v331, v336, v337, v338, v339, v332, v333, v334, v335);
              v589[0] = MEMORY[0x277D85DD0];
              v589[1] = 3221225472;
              v589[2] = sub_275FD6008;
              v589[3] = &unk_27A6A8530;
              v589[4] = v174;
              objc_msgSend_enumerateObjectsUsingBlock_(v340, v341, v345, v346, v347, v348, v589, v342, v343, v344);

              v46 = v577;
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v570, v55, v59, v60, v61, v62, &v594, v605, 16, v58);
          }

          while (v54);
        }
      }

      v566 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, v42, v43, v44, v45, &v598, v606, 16, v41);
    }

    while (v566);
  }

  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v349 = v567;
  v361 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v350, v352, v353, v354, v355, &v585, v603, 16, v351);
  if (v361)
  {
    v366 = *v586;
    do
    {
      for (k = 0; k != v361; ++k)
      {
        if (*v586 != v366)
        {
          objc_enumerationMutation(v349);
        }

        v372 = objc_msgSend_textFlow(*(*(&v585 + 1) + 8 * k), v356, v362, v363, v364, v365, v357, v358, v359, v360);
        if (!v372)
        {
          v377 = MEMORY[0x277D81150];
          v378 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v368, v373, v374, v375, v376, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v369, v370, v371);
          v387 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v379, v383, v384, v385, v386, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v380, v381, v382);
          v397 = objc_msgSend_pageIndex(v580, v388, v393, v394, v395, v396, v389, v390, v391, v392);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v377, v398, v399, v400, v401, v402, v378, v387, 280, 0, "After layout, the flow for a text box on page #%lu is nil.", v397 + 1);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v403, v408, v409, v410, v411, v404, v405, v406, v407);
        }
      }

      v361 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v356, v362, v363, v364, v365, &v585, v603, 16, v360);
    }

    while (v361);
  }

  v583 = 0u;
  v584 = 0u;
  v581 = 0u;
  v582 = 0u;
  v575 = obj;
  v422 = objc_msgSend_countByEnumeratingWithState_objects_count_(v575, v412, v414, v415, v416, v417, &v581, v602, 16, v413);
  if (v422)
  {
    v578 = *v582;
    v427 = "invalid nil value for '%{public}s'";
    do
    {
      for (m = 0; m != v422; ++m)
      {
        if (*v582 != v578)
        {
          objc_enumerationMutation(v575);
        }

        v429 = *(*(&v581 + 1) + 8 * m);
        v430 = objc_msgSend_p_layoutMgrForFlow_(self, v418, v423, v424, v425, v426, v429, v419, v420, v421);
        v439 = objc_msgSend_objectForKeyedSubscript_(hintsCopy, v431, v435, v436, v437, v438, v429, v432, v433, v434);
        v449 = v439;
        v450 = v349;
        if (!v430)
        {
          v489 = MEMORY[0x277D81150];
          v490 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v440, v445, v446, v447, v448, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v442, v443, v444);
          v499 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v491, v495, v496, v497, v498, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v492, v493, v494);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v489, v500, v501, v502, v503, v504, v490, v499, 286, 0, v427, "layoutMgr");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v505, v510, v511, v512, v513, v506, v507, v508, v509);
          if (v449)
          {
            goto LABEL_54;
          }

LABEL_51:
          v514 = MEMORY[0x277D81150];
          v515 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v440, v445, v446, v447, v448, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v442, v443, v444);
          v524 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v516, v520, v521, v522, v523, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v517, v518, v519);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v514, v525, v526, v527, v528, v529, v515, v524, 287, 0, v427, "targetHint");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v530, v535, v536, v537, v538, v531, v532, v533, v534);
          goto LABEL_54;
        }

        if (!v439)
        {
          goto LABEL_51;
        }

        if (objc_msgSend_range(v439, v440, v445, v446, v447, v448, v441, v442, v443, v444) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v460 = objc_msgSend_topicNumbers(v430, v451, v456, v457, v458, v459, v452, v453, v454, v455);
          v470 = objc_msgSend_range(v449, v461, v466, v467, v468, v469, v462, v463, v464, v465);
          v479 = objc_msgSend_hintsForCharIndex_(v460, v471, v475, v476, v477, v478, v470, v472, v473, v474);

          v488 = v427;
          if (v479)
          {
            objc_msgSend_setObject_forUncopiedKey_(numberHintsCopy, v480, v484, v485, v486, v487, v479, v429, v482, v483);
          }

          else
          {
            v539 = MEMORY[0x277D81150];
            v540 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v480, v484, v485, v486, v487, "[TPTextFlowLayoutController deflatePage:intoHints:topicNumberHints:]", v481, v482, v483);
            v549 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v541, v545, v546, v547, v548, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v542, v543, v544);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v539, v550, v551, v552, v553, v554, v540, v549, 290, 0, v488, "tnHints");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v555, v560, v561, v562, v563, v556, v557, v558, v559);
          }

          v427 = v488;
        }

LABEL_54:

        v349 = v450;
      }

      v422 = objc_msgSend_countByEnumeratingWithState_objects_count_(v575, v418, v423, v424, v425, v426, &v581, v602, 16, v421);
    }

    while (v422);
  }
}

- (void)processWidowAndInflationOnPage:(id)page
{
  v306 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v284 = objc_msgSend_pageIndex(pageCopy, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v286 = objc_msgSend_set(MEMORY[0x277CBEB58], v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_p_flowsOnPage_textBoxes_(self, v21, v24, v25, v26, v27, pageCopy, v286, v22, v23);
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  obj = v301 = 0u;
  v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v30, v31, v32, v33, &v300, v305, 16, v29);
  if (v287)
  {
    v285 = *v301;
    do
    {
      for (i = 0; i != v287; ++i)
      {
        if (*v301 != v285)
        {
          objc_enumerationMutation(obj);
        }

        v290 = *(*(&v300 + 1) + 8 * i);
        v288 = objc_msgSend_p_orderedTextBoxesForFlow_textBoxes_(self, v34, v37, v38, v39, v40, v290, v286, v35, v36);
        v50 = objc_msgSend_lastObject(v288, v41, v46, v47, v48, v49, v42, v43, v44, v45);
        objc_opt_class();
        v60 = objc_msgSend_layoutController(pageCopy, v51, v56, v57, v58, v59, v52, v53, v54, v55);
        v69 = objc_msgSend_layoutForInfo_(v60, v61, v65, v66, v67, v68, v50, v62, v63, v64);
        v291 = TSUCheckedDynamicCast();

        objc_opt_class();
        v79 = objc_msgSend_containedLayout(v291, v70, v75, v76, v77, v78, v71, v72, v73, v74);
        v293 = TSUCheckedDynamicCast();

        v89 = objc_msgSend_columns(v293, v80, v85, v86, v87, v88, v81, v82, v83, v84);
        v294 = objc_msgSend_lastObject(v89, v90, v95, v96, v97, v98, v91, v92, v93, v94);

        if (v294)
        {
          v108 = objc_msgSend_range(v294, v99, v104, v105, v106, v107, v100, v101, v102, v103);
          v110 = v108 + v109;
        }

        else
        {
          v111 = objc_msgSend_textStorage(v290, v99, v104, v105, v106, v107, v100, v101, v102, v103);
          v110 = objc_msgSend_length(v111, v112, v117, v118, v119, v120, v113, v114, v115, v116);
        }

        v298 = 0u;
        v299 = 0u;
        v296 = 0u;
        v297 = 0u;
        v121 = v288;
        v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, v124, v125, v126, v127, &v296, v304, 16, v123);
        if (v130)
        {
          v135 = *v297;
          do
          {
            for (j = 0; j != v130; ++j)
            {
              if (*v297 != v135)
              {
                objc_enumerationMutation(v121);
              }

              v137 = *(*(&v296 + 1) + 8 * j);
              if (v137 != v50)
              {
                objc_opt_class();
                v147 = objc_msgSend_layoutController(pageCopy, v138, v143, v144, v145, v146, v139, v140, v141, v142);
                v156 = objc_msgSend_layoutForInfo_(v147, v148, v152, v153, v154, v155, v137, v149, v150, v151);
                v157 = TSUCheckedDynamicCast();

                objc_opt_class();
                v167 = objc_msgSend_containedLayout(v157, v158, v163, v164, v165, v166, v159, v160, v161, v162);
                v168 = TSUCheckedDynamicCast();

                v178 = objc_msgSend_columns(v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);
                v188 = objc_msgSend_lastObject(v178, v179, v184, v185, v186, v187, v180, v181, v182, v183);

                if (v188)
                {
                  v198 = objc_msgSend_range(v188, v189, v194, v195, v196, v197, v190, v191, v192, v193);
                  v206 = &v199[v198];
                  if (&v199[v198] != v110)
                  {
                    if (&v199[v198] >= v110)
                    {
                      v207 = v110;
                    }

                    else
                    {
                      v207 = &v199[v198];
                    }

                    if (&v199[v198] <= v110)
                    {
                      v206 = v110;
                    }

                    objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v168, v199, v202, v203, v204, v205, v207, &v206[-v207], v200, v201);
                  }
                }
              }
            }

            v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v128, v131, v132, v133, v134, &v296, v304, 16, v129);
          }

          while (v130);
        }

        WeakRetained = objc_loadWeakRetained(&self->_pageController);
        v217 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v209, v213, v214, v215, v216, v284, v210, v211, v212);

        v227 = objc_msgSend_flowHints(v217, v218, v223, v224, v225, v226, v219, v220, v221, v222);
        v236 = objc_msgSend_objectForKeyedSubscript_(v227, v228, v232, v233, v234, v235, v290, v229, v230, v231);
        v246 = v236;
        if (v294)
        {
          if (v236)
          {
            v247 = objc_msgSend_range(v294, v237, v242, v243, v244, v245, v238, v239, v240, v241);
            v249 = v248;
            v258 = objc_msgSend_range(v246, v248, v254, v255, v256, v257, v250, v251, v252, v253);
            v264 = &v249[v247];
            v265 = &v259[v258];
            if (&v259[v258] != v264)
            {
              objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v294, v259, v260, v261, v262, v263, v265, v293, 0, 0);
              if (v265 <= v264)
              {
                v273 = v264;
              }

              else
              {
                v273 = v265;
              }

              if (v265 >= v264)
              {
                objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v293, v266, v269, v270, v271, v272, v264, v273 - v264, v267, v268);
              }

              else
              {
                objc_msgSend_discardLayoutsForDrawableAttachmentsInRange_(v293, v266, v269, v270, v271, v272, v265, v273 - v265, v267, v268);
              }

              objc_msgSend_setNeedsDisplay(v293, v274, v279, v280, v281, v282, v275, v276, v277, v278);
            }
          }
        }
      }

      v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, v37, v38, v39, v40, &v300, v305, 16, v36);
    }

    while (v287);
  }
}

- (void)invalidateFlows:(id)flows startingPage:(id)page
{
  v188 = *MEMORY[0x277D85DE8];
  flowsCopy = flows;
  pageCopy = page;
  v14 = objc_msgSend_pageIndex(pageCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v171 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v168 = objc_msgSend_layoutController(pageCopy, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  obj = flowsCopy;
  v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, v35, v36, v37, v38, &v181, v187, 16, v34);
  if (v163)
  {
    v165 = *v182;
    do
    {
      for (i = 0; i != v163; ++i)
      {
        if (*v182 != v165)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v181 + 1) + 8 * i);
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v169 = objc_msgSend_textboxes(v47, v39, 0, v44, v45, v46, v40, v41, v42, v43, flowsCopy);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v48, v50, v51, v52, v53, &v177, v186, 16, v49);
        if (v54)
        {
          v55 = *v178;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v178 != v55)
              {
                objc_enumerationMutation(v169);
              }

              v57 = *(*(&v177 + 1) + 8 * j);
              WeakRetained = objc_loadWeakRetained(&self->_pageController);
              v68 = objc_msgSend_documentRoot(WeakRetained, v59, v64, v65, v66, v67, v60, v61, v62, v63);
              v78 = objc_msgSend_floatingDrawables(v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
              v87 = objc_msgSend_pageIndexForDrawable_(v78, v79, v83, v84, v85, v86, v57, v80, v81, v82);

              v96 = objc_msgSend_containsIndex_(v171, v88, v92, v93, v94, v95, v87, v89, v90, v91);
              if (v87 < v14)
              {
                v105 = 1;
              }

              else
              {
                v105 = v96;
              }

              if ((v105 & 1) == 0)
              {
                v175 = 0u;
                v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                v106 = objc_msgSend_layoutsForInfo_(v168, v97, 0, v102, v103, v104, v57, v98, v99, v100);
                v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, v109, v110, v111, v112, &v173, v185, 16, v108);
                if (v118)
                {
                  v123 = *v174;
                  do
                  {
                    for (k = 0; k != v118; ++k)
                    {
                      if (*v174 != v123)
                      {
                        objc_enumerationMutation(v106);
                      }

                      v125 = objc_msgSend_containedLayout(*(*(&v173 + 1) + 8 * k), v113, v119, v120, v121, v122, v114, v115, v116, v117);
                      objc_msgSend_invalidateTextLayout(v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);
                    }

                    v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v113, v119, v120, v121, v122, &v173, v185, 16, v117);
                  }

                  while (v118);
                }

                objc_msgSend_addIndex_(v171, v135, v139, v140, v141, v142, v87, v136, v137, v138);
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v169, v97, v101, v102, v103, v104, &v177, v186, 16, v100);
          }

          while (v54);
        }
      }

      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, v143, v44, v45, v46, &v181, v187, 16, v43);
    }

    while (v163);
  }

  if (objc_msgSend_count(v171, v144, v149, v150, v151, v152, v145, v146, v147, v148))
  {
    v153 = objc_loadWeakRetained(&self->_pageController);
    v172[0] = MEMORY[0x277D85DD0];
    v154.n128_u64[0] = 3221225472;
    v172[1] = 3221225472;
    v172[2] = sub_275FD6BA0;
    v172[3] = &unk_27A6A8418;
    v172[4] = v171;
    v172[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v153, v155, v154, v159, v160, v161, v172, v156, v157, v158);
  }
}

- (id)hintForFlow:(id)flow pageIndex:(unint64_t)index
{
  flowCopy = flow;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v16 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v8, v12, v13, v14, v15, index, v9, v10, v11);

  if (v16)
  {
    v26 = objc_msgSend_flowHints(v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v35 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v31, v32, v33, v34, flowCopy, v28, v29, v30);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (unint64_t)pageIndexNeedingLayoutPreviousToPageIndex:(unint64_t)index
{
  indexCopy = index;
  v114 = *MEMORY[0x277D85DE8];
  v105 = objc_msgSend_p_flowsOnPageIndex_(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v106 = objc_msgSend_count(v105, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (indexCopy && v106)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB58]);
    v34 = objc_msgSend_initWithCapacity_(v20, v21, v25, v26, v27, v28, v106, v22, v23, v24);
    v39 = indexCopy;
    while (v106 > objc_msgSend_count(v34, v29, v35, v36, v37, v38, v30, v31, v32, v33) && indexCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_pageController);
      v108 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v41, v45, v46, v47, v48, --indexCopy, v42, v43, v44);

      if (v108)
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v57 = objc_msgSend_flowHints(v108, v49, 0, v54, v55, v56, v50, v51, v52, v53);
        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, v60, v61, v62, v63, &v109, v113, 16, v59);
        if (v68)
        {
          v73 = *v110;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v110 != v73)
              {
                objc_enumerationMutation(v57);
              }

              v75 = *(*(&v109 + 1) + 8 * i);
              if ((objc_msgSend_containsObject_(v34, v64, v69, v70, v71, v72, v75, v65, v66, v67) & 1) == 0)
              {
                objc_msgSend_addObject_(v34, v64, v69, v70, v71, v72, v75, v65, v66, v67);
                if (indexCopy < v39)
                {
                  v76 = objc_msgSend_p_layoutMgrForFlow_(self, v64, v69, v70, v71, v72, v75, v65, v66, v67);
                  v86 = objc_msgSend_flowHints(v108, v77, v82, v83, v84, v85, v78, v79, v80, v81);
                  v95 = objc_msgSend_objectForKeyedSubscript_(v86, v87, v91, v92, v93, v94, v75, v88, v89, v90);

                  if (objc_msgSend_needsLayoutInColumn_(v76, v96, v100, v101, v102, v103, v95, v97, v98, v99))
                  {
                    v39 = indexCopy;
                  }
                }
              }
            }

            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v64, v69, v70, v71, v72, &v109, v113, 16, v67);
          }

          while (v68);
        }
      }
    }
  }

  else
  {
    v39 = indexCopy;
  }

  return v39;
}

- (void)layoutManagerNeedsLayout:(id)layout
{
  v172 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v163 = objc_msgSend_p_flowForLayoutMgr_(self, v4, v8, v9, v10, v11, layoutCopy, v5, v6, v7);
  v162 = objc_msgSend_dirtyRanges(layoutCopy, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_superRange(v162, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v160 = v31;
  v161 = v30;
  v32 = objc_opt_new();
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = objc_msgSend_textboxes(v163, v33, 0, v38, v39, v40, v34, v35, v36, v37);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, v43, v44, v45, v46, &v167, v171, 16, v42);
  if (v47)
  {
    v48 = *v168;
    do
    {
      v49 = 0;
      do
      {
        if (*v168 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v167 + 1) + 8 * v49);
        WeakRetained = objc_loadWeakRetained(&self->_pageController);
        v61 = objc_msgSend_documentRoot(WeakRetained, v52, v57, v58, v59, v60, v53, v54, v55, v56);
        v71 = objc_msgSend_floatingDrawables(v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);
        v80 = objc_msgSend_pageIndexForDrawable_(v71, v72, v76, v77, v78, v79, v50, v73, v74, v75);

        if (v80 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v106 = MEMORY[0x277D81150];
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v85, v86, v87, v88, "[TPTextFlowLayoutController layoutManagerNeedsLayout:]", v82, v83, v84);
          v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v109, v110, v111);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v117, v118, v119, v120, v121, v107, v116, 470, 0, "invalid page index");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v127, v128, v129, v130, v123, v124, v125, v126);
        }

        else if ((objc_msgSend_containsIndex_(v32, v81, v85, v86, v87, v88, v80, v82, v83, v84) & 1) == 0)
        {
          if (objc_msgSend_count(v32, v89, v94, v95, v96, v97, v90, v91, v92, v93))
          {
            objc_msgSend_addIndex_(v32, v98, v102, v103, v104, v105, v80, v99, v100, v101);
          }

          else
          {
            v131 = objc_loadWeakRetained(&self->_pageController);
            v166[0] = MEMORY[0x277D85DD0];
            v166[1] = 3221225472;
            v166[2] = sub_275FD7404;
            v166[3] = &unk_27A6A8580;
            v166[4] = self;
            v166[5] = v163;
            v166[8] = v80;
            v166[9] = v161;
            v166[10] = v160;
            v166[6] = v162;
            v166[7] = v32;
            objc_msgSend_accquireLockAndPerformAction_(v131, v132, v136, v137, v138, v139, v166, v133, v134, v135);
          }
        }

        ++v49;
      }

      while (v47 != v49);
      v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, v94, v95, v96, v97, &v167, v171, 16, v93);
      v47 = v140;
    }

    while (v140);
  }

  if (objc_msgSend_count(v32, v141, v146, v147, v148, v149, v142, v143, v144, v145))
  {
    v150 = objc_loadWeakRetained(&self->_pageController);
    v165[0] = MEMORY[0x277D85DD0];
    v151.n128_u64[0] = 3221225472;
    v165[1] = 3221225472;
    v165[2] = sub_275FD7564;
    v165[3] = &unk_27A6A8418;
    v165[4] = v32;
    v165[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v150, v152, v151, v156, v157, v158, v165, v153, v154, v155);
  }
}

- (id)textWrapper
{
  v3 = [TPShapeTextWrapController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v14 = objc_msgSend_documentRoot(WeakRetained, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = objc_msgSend_initWithDocumentRoot_(v3, v15, v19, v20, v21, v22, v14, v16, v17, v18);

  return v23;
}

- (id)p_previousTextBoxForTarget:(id)target
{
  targetCopy = target;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  objc_opt_class();
  v14 = objc_msgSend_parent(v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v15 = TSUDynamicCast();

  v25 = objc_msgSend_info(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  v35 = objc_msgSend_textFlow(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v45 = v35;
  if (v35)
  {
    v46 = objc_msgSend_textboxes(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
    v55 = objc_msgSend_indexOfObject_(v46, v47, v51, v52, v53, v54, v25, v48, v49, v50);
    if (v55)
    {
      v64 = v55 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      v65 = 0;
    }

    else
    {
      v65 = objc_msgSend_objectAtIndexedSubscript_(v46, v56, v60, v61, v62, v63, v55 - 1, v57, v58, v59);
    }
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

- (id)previousTargetLastColumnForTarget:(id)target
{
  targetCopy = target;
  v310 = 0;
  v311 = &v310;
  v5.n128_u64[0] = 0x3032000000;
  v312 = 0x3032000000;
  v313 = sub_275FD7F10;
  v314 = sub_275FD7F20;
  v315 = 0;
  v13 = objc_msgSend_p_previousTextBoxForTarget_(self, v6, v5, v10, v11, v12, targetCopy, v7, v8, v9);
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pageController);
    v24 = objc_msgSend_documentRoot(WeakRetained, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    v34 = objc_msgSend_floatingDrawables(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    v43 = objc_msgSend_pageIndexForDrawable_(v34, v35, v39, v40, v41, v42, v13, v36, v37, v38);

    v53 = objc_msgSend_layoutController(targetCopy, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v62 = objc_msgSend_layoutsForInfo_(v53, v54, v58, v59, v60, v61, v13, v55, v56, v57);
    v72 = objc_msgSend_anyObject(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);

    v307 = v72;
    v82 = objc_msgSend_containedLayout(v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
    v92 = objc_msgSend_columns(v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
    v308 = objc_msgSend_lastObject(v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);

    v115 = objc_msgSend_textFlow(v13, v102, v107, v108, v109, v110, v103, v104, v105, v106);
    if (!v115)
    {
      v120 = MEMORY[0x277D81150];
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v116, v117, v118, v119, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]", v112, v113, v114);
      v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v126, v127, v128, v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v123, v124, v125);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v131, v132, v133, v134, v135, v121, v130, 559, 0, "invalid nil value for '%{public}s'", "flow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v141, v142, v143, v144, v137, v138, v139, v140);
    }

    if (v43 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v204 = MEMORY[0x277D81150];
      v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v116, v117, v118, v119, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]", v112, v113, v114);
      v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, v210, v211, v212, v213, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v207, v208, v209);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v204, v215, v216, v217, v218, v219, v205, v214, 560, 0, "invalid page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v225, v226, v227, v228, v221, v222, v223, v224);
      v238 = objc_msgSend_context(v13, v229, v234, v235, v236, v237, v230, v231, v232, v233);

      if (!v238 && *MEMORY[0x277D81430] != -1)
      {
        sub_2760381C4();
      }

      v248 = objc_msgSend_documentRoot(v13, v239, v244, v245, v246, v247, v240, v241, v242, v243);

      if (!v248 && *MEMORY[0x277D81430] != -1)
      {
        sub_2760381EC();
      }

      if ((objc_msgSend_tsp_isInDocument(v13, v249, v254, v255, v256, v257, v250, v251, v252, v253) & 1) == 0 && *MEMORY[0x277D81430] != -1)
      {
        sub_276038214();
      }
    }

    else if (v308)
    {
      objc_opt_class();
      v154 = objc_msgSend_parent(targetCopy, v145, v150, v151, v152, v153, v146, v147, v148, v149);
      v164 = objc_msgSend_info(v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
      v165 = TSUCheckedDynamicCast();

      v306 = v165;
      if (v165)
      {
        v174 = objc_loadWeakRetained(&self->_pageController);
        v184 = objc_msgSend_documentRoot(v174, v175, v180, v181, v182, v183, v176, v177, v178, v179);
        v194 = objc_msgSend_floatingDrawables(v184, v185, v190, v191, v192, v193, v186, v187, v188, v189);
        v203 = objc_msgSend_pageIndexForDrawable_(v194, v195, v199, v200, v201, v202, v165, v196, v197, v198);
      }

      else
      {
        v267 = MEMORY[0x277D81150];
        v268 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v170, v171, v172, v173, "[TPTextFlowLayoutController previousTargetLastColumnForTarget:]", v167, v168, v169);
        v277 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v269, v273, v274, v275, v276, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v270, v271, v272);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v267, v278, v279, v280, v281, v282, v268, v277, 570, 0, "invalid nil value for '%{public}s'", "currentTextBox");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v283, v288, v289, v290, v291, v284, v285, v286, v287);
        v203 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v203 == v43)
      {
        v292 = v311;
        v293 = v308;
        v294 = v292[5];
        v292[5] = v293;
      }

      else
      {
        v295 = [TPVisibleColumnProxy alloc];
        v294 = objc_loadWeakRetained(&self->_pageController);
        v302 = objc_msgSend_initWithPageIndex_pageController_flowInfo_(v295, v296, v298, v299, v300, v301, v43, v294, v115, v297);
        v303 = v311[5];
        v311[5] = v302;
      }
    }

    else
    {
      v258 = objc_loadWeakRetained(&self->_pageController);
      v309[0] = MEMORY[0x277D85DD0];
      v259.n128_u64[0] = 3221225472;
      v309[1] = 3221225472;
      v309[2] = sub_275FD7FF4;
      v309[3] = &unk_27A6A85A8;
      v309[4] = self;
      v309[5] = v115;
      v309[6] = &v310;
      v309[7] = v43;
      objc_msgSend_accquireLockAndPerformAction_(v258, v260, v259, v264, v265, v266, v309, v261, v262, v263);
    }
  }

  v304 = v311[5];

  _Block_object_dispose(&v310, 8);

  return v304;
}

- (void)i_trimFlow:(id)flow pageIndex:(unint64_t)index toCharIndex:(unint64_t)charIndex
{
  flowCopy = flow;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v17 = objc_msgSend_i_pageHintForPageIndex_(WeakRetained, v9, v13, v14, v15, v16, index, v10, v11, v12);

  v27 = objc_msgSend_flowHints(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  v36 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v32, v33, v34, v35, flowCopy, v29, v30, v31);

  if (v36)
  {
    objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v36, v37, v38, v39, v40, v41, charIndex, 0, 0, 0);
  }
}

- (id)p_flowsOnPage:(id)page textBoxes:(id)boxes
{
  v86 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  boxesCopy = boxes;
  v5 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v14 = objc_msgSend_children(pageCopy, v6, 0, v11, v12, v13, v7, v8, v9, v10);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v17, v18, v19, v20, &v81, v85, 16, v16);
  if (v21)
  {
    v22 = *v82;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v82 != v22)
        {
          objc_enumerationMutation(v14);
        }

        objc_opt_class();
        v24 = TSUDynamicCast();
        v34 = v24;
        if (v24)
        {
          v35 = objc_msgSend_info(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29, pageCopy);
          v49 = objc_msgSend_textFlow(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v49)
          {
            objc_msgSend_addObject_(boxesCopy, v45, v50, v51, v52, v53, v35, v46, v47, v48);
            v63 = objc_msgSend_textFlow(v35, v54, v59, v60, v61, v62, v55, v56, v57, v58);
            objc_msgSend_addObject_(v5, v64, v68, v69, v70, v71, v63, v65, v66, v67);
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v72, v74, v75, v76, v77, &v81, v85, 16, v73);
    }

    while (v21);
  }

  return v5;
}

- (id)p_flowsOnPageIndex:(unint64_t)index
{
  v110 = *MEMORY[0x277D85DE8];
  v104 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v15 = objc_msgSend_documentRoot(WeakRetained, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v25 = objc_msgSend_floatingDrawables(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  v34 = objc_msgSend_drawablesOnPageIndex_(v25, v26, v30, v31, v32, v33, index, v27, v28, v29);

  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v37, v38, v39, v40, &v105, v109, 16, v36);
  if (v41)
  {
    v42 = *v106;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v106 != v42)
        {
          objc_enumerationMutation(v34);
        }

        objc_opt_class();
        v44 = TSUDynamicCast();
        if (objc_msgSend_isLinked(v44, v45, v50, v51, v52, v53, v46, v47, v48, v49))
        {
          v67 = objc_msgSend_textFlow(v44, v54, v59, v60, v61, v62, v55, v56, v57, v58);
          if (v67)
          {
            objc_msgSend_addObject_(v104, v63, v68, v69, v70, v71, v67, v64, v65, v66);
          }

          else
          {
            v72 = MEMORY[0x277D81150];
            v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v68, v69, v70, v71, "[TPTextFlowLayoutController p_flowsOnPageIndex:]", v64, v65, v66);
            v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextFlowLayoutController.mm", v75, v76, v77);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v83, v84, v85, v86, v87, v73, v82, 630, 0, "invalid nil value for '%{public}s'", "flow");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v93, v94, v95, v96, v89, v90, v91, v92);
          }
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v97, v99, v100, v101, v102, &v105, v109, 16, v98);
    }

    while (v41);
  }

  return v104;
}

- (id)p_orderedTextBoxesForFlow:(id)flow textBoxes:(id)boxes
{
  v55 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  boxesCopy = boxes;
  v13 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(boxesCopy, v7, v9, v10, v11, v12, &v50, v54, 16, v8);
  if (v19)
  {
    v24 = *v51;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(boxesCopy);
        }

        v26 = *(*(&v50 + 1) + 8 * i);
        v27 = objc_msgSend_textFlow(v26, v14, v20, v21, v22, v23, v15, v16, v17, v18);
        v28 = v27 == flowCopy;

        if (v28)
        {
          if (!v13)
          {
            v13 = objc_opt_new();
          }

          objc_msgSend_addObject_(v13, v14, v20, v21, v22, v23, v26, v16, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(boxesCopy, v14, v20, v21, v22, v23, &v50, v54, 16, v18);
    }

    while (v19);
  }

  v38 = objc_msgSend_textboxes(flowCopy, v29, v34, v35, v36, v37, v30, v31, v32, v33);
  v47 = v38;
  if (v13)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v43.n128_u64[0] = 3221225472;
    v49[1] = 3221225472;
    v49[2] = sub_275FD8838;
    v49[3] = &unk_27A6A85D0;
    v49[4] = v38;
    objc_msgSend_sortUsingComparator_(v13, v39, v43, v44, v45, v46, v49, v40, v41, v42);
  }

  return v13;
}

- (void)p_setLayoutMgr:(id)mgr forFlow:(id)flow
{
  mgrCopy = mgr;
  flowCopy = flow;
  objc_msgSend_setObject_forKey_(self->_layoutMgrs, v7, v10, v11, v12, v13, mgrCopy, flowCopy, v8, v9);
  objc_msgSend_setObject_forKey_(self->_flows, v14, v17, v18, v19, v20, flowCopy, mgrCopy, v15, v16);
}

- (id)p_layoutMgrForFlow:(id)flow
{
  v10 = objc_msgSend_objectForKey_(self->_layoutMgrs, a2, v6, v7, v8, v9, flow, v3, v4, v5);

  return v10;
}

- (id)p_flowForLayoutMgr:(id)mgr
{
  v10 = objc_msgSend_objectForKey_(self->_flows, a2, v6, v7, v8, v9, mgr, v3, v4, v5);

  return v10;
}

@end