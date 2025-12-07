@interface TPTextWrapController
- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info;
- (BOOL)p_shouldTextFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column;
- (TPDocumentRoot)documentRoot;
- (TPTextWrapController)initWithDocumentRoot:(id)root;
- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info;
- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables;
- (id)p_groupInfoContainingWrappable:(id)wrappable;
- (id)p_wrapDrawables:(id)drawables userInfo:(id)info;
- (void)p_splitLine:(CGRect)line lineSegmentRects:(id)rects wrappable:(id)wrappable cookie:(id)cookie skipHint:(double *)hint;
- (void)setUpCanvasToWrapSpaceAffineTransformation:(CGAffineTransform *)transformation;
- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
@end

@implementation TPTextWrapController

- (TPTextWrapController)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v8.receiver = self;
  v8.super_class = TPTextWrapController;
  v5 = [(TPTextWrapController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentRoot, rootCopy);
  }

  return v6;
}

- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables
{
  v162 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  targetCopy = target;
  v9 = [TPTextWrapCookie alloc];
  v17 = objc_msgSend_initWithColumn_targetLayout_(v9, v10, v13, v14, v15, v16, columnCopy, targetCopy, v11, v12);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v149 = objc_msgSend_drawablesZOrder(WeakRetained, v19, v24, v25, v26, v27, v20, v21, v22, v23);

  v37 = objc_msgSend_storage(columnCopy, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  v46 = objc_msgSend_zOrderOfDrawable_(v149, v38, v42, v43, v44, v45, v37, v39, v40, v41);

  objc_opt_class();
  v56 = objc_msgSend_pageLayout(targetCopy, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v57 = TSUDynamicCast();

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v145 = v57;
  objc_msgSend_floatingDrawableLayouts(v57, v58, 0, v63, v64, v65, v59, v60, v61, v62);
  obj = v141 = self;
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, v68, v69, v70, v71, &v156, v161, 16, v67);
  if (v77)
  {
    v82 = *v157;
    v146 = *v157;
    do
    {
      v83 = 0;
      v147 = v77;
      do
      {
        if (*v157 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v84 = objc_msgSend_info(*(*(&v156 + 1) + 8 * v83), v72, v78, v79, v80, v81, v73, v74, v75, v76, v140);
        v93 = v46 < objc_msgSend_zOrderOfDrawable_(v149, v85, v89, v90, v91, v92, v84, v86, v87, v88);

        if (v93)
        {
          v98 = TSUProtocolCast();
          if (v98)
          {
            objc_msgSend_addFloatingWrappable_(v17, v94, v99, v100, v101, v102, v98, v95, v96, v97, &unk_28853CDB0);
            *wrappables = 1;
          }

          v140 = &unk_288510D20;
          v103 = TSUProtocolCast();
          v112 = v103;
          if (v103)
          {
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v113 = objc_msgSend_descendentWrappables(v103, v104, 0, v109, v110, v111, v105, v106, v107, v108, &unk_288510D20);
            v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v114, v116, v117, v118, v119, &v152, v160, 16, v115);
            v129 = v46;
            if (v124)
            {
              v130 = *v153;
              do
              {
                for (i = 0; i != v124; ++i)
                {
                  if (*v153 != v130)
                  {
                    objc_enumerationMutation(v113);
                  }

                  objc_msgSend_addFloatingWrappable_(v17, v120, v125, v126, v127, v128, *(*(&v152 + 1) + 8 * i), v121, v122, v123);
                  *wrappables = 1;
                }

                v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v120, v125, v126, v127, v128, &v152, v160, 16, v123);
              }

              while (v124);
            }

            v46 = v129;
            v82 = v146;
            v77 = v147;
          }
        }

        ++v83;
      }

      while (v83 != v77);
      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, v78, v79, v80, v81, &v156, v161, 16, v76);
    }

    while (v77);
  }

  v132 = *&p->c;
  v150[0] = *&p->a;
  v150[1] = v132;
  v151 = *&p->tx;
  objc_msgSend_setUpCanvasToWrapSpaceAffineTransformation_(v141, v133, v151, v132, v137, v138, v150, v134, v135, v136);

  return v17;
}

- (void)setUpCanvasToWrapSpaceAffineTransformation:(CGAffineTransform *)transformation
{
  v4 = *&transformation->a;
  v5 = *&transformation->c;
  *&self->_wrapSpaceToCanvasSpace.tx = *&transformation->tx;
  *&self->_wrapSpaceToCanvasSpace.c = v5;
  *&self->_wrapSpaceToCanvasSpace.a = v4;
  v6 = *&transformation->c;
  *&v8.a = *&transformation->a;
  *&v8.c = v6;
  *&v8.tx = *&transformation->tx;
  CGAffineTransformInvert(&v9, &v8);
  v7 = *&v9.c;
  *&self->_canvasSpaceToWrapSpace.a = *&v9.a;
  *&self->_canvasSpaceToWrapSpace.c = v7;
  *&self->_canvasSpaceToWrapSpace.tx = *&v9.tx;
}

- (id)p_groupInfoContainingWrappable:(id)wrappable
{
  v10 = objc_msgSend_info(wrappable, a2, v6, v7, v8, v9, wrappable, v3, v4, v5);
  v20 = objc_msgSend_parentInfo(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  if (v20)
  {
    while (1)
    {
      v21 = objc_opt_class();
      if (objc_msgSend_isMemberOfClass_(v20, v22, v26, v27, v28, v29, v21, v23, v24, v25))
      {
        break;
      }

      v39 = objc_msgSend_parentInfo(v20, v30, v35, v36, v37, v38, v31, v32, v33, v34);

      v20 = v39;
      if (!v39)
      {
        goto LABEL_6;
      }
    }

    v20 = v20;
  }

LABEL_6:

  return v20;
}

- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  y = line.origin.y;
  height = line.size.height;
  x = line.origin.x;
  width = line.size.width;
  v556 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  attachmentsCopy = attachments;
  infoCopy = info;
  objc_opt_class();
  v539 = TSUDynamicCast();
  v526 = objc_msgSend_column(v539, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v525 = objc_msgSend_target(v539, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  if (!v526)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]", v32, v33, v34);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm", v42, v43, v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v50, v51, v52, v53, v54, v40, v49, 134, 0, "invalid nil value for '%{public}s'", "column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }

  if (!v525)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]", v32, v33, v34);
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm", v67, v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v75, v76, v77, v78, v79, v65, v74, 135, 0, "invalid nil value for '%{public}s'", "target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v85, v86, v87, v88, v81, v82, v83, v84);
  }

  if (objc_msgSend_count(rectsCopy, v30, v35, v36, v37, v38, v31, v32, v33, v34))
  {
    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v94, v95, v96, v97, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]", v91, v92, v93);
    v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, v104, v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm", v101, v102, v103);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v109, v110, v111, v112, v113, v99, v108, 136, 0, "Unexpected rects already in segment list");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v119, v120, v121, v122, v115, v116, v117, v118);
  }

  objc_msgSend_makeEmpty(rectsCopy, v89, v94, v95, v96, v97, v90, v91, v92, v93);
  if (hint)
  {
    *hint = 1.0;
  }

  objc_msgSend_frameBounds(v526, v123, v128, v129, v130, v131, v124, v125, v126, v127);
  v132 = *&self->_canvasSpaceToWrapSpace.c;
  *&v552.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v552.c = v132;
  *&v552.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v558 = CGRectApplyAffineTransform(v557, &v552);
  v133 = v558.origin.x;
  v134 = v558.origin.y;
  v135 = v558.size.width;
  v136 = v558.size.height;
  v137 = rectsCopy;
  v559.origin.x = x;
  v559.size.width = width;
  v559.origin.y = y;
  v559.size.height = height;
  v598.origin.x = v133;
  v598.origin.y = v134;
  v598.size.width = v135;
  v598.size.height = v136;
  v147 = v137;
  v521 = v137;
  if (CGRectIntersectsRect(v559, v598))
  {
    v143.n128_f64[0] = x;
    v145.n128_f64[0] = width;
    v144.n128_f64[0] = y;
    v146.n128_f64[0] = height;
    objc_msgSend_addRect_(v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
    v148 = *&self->_canvasSpaceToWrapSpace.c;
    *&v552.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v552.c = v148;
    *&v552.tx = *&self->_canvasSpaceToWrapSpace.tx;
    if (CGAffineTransformIsIdentity(&v552))
    {
      v518 = objc_msgSend_interiorWrapSegments(v539, v149, v154, v155, v156, v157, v150, v151, v152, v153);
    }

    else
    {
      v167 = objc_msgSend_interiorWrapSegments(v539, v149, v154, v155, v156, v157, v150, v151, v152, v153);
      v168 = *&self->_canvasSpaceToWrapSpace.c;
      *&v552.a = *&self->_canvasSpaceToWrapSpace.a;
      *&v552.c = v168;
      *&v552.tx = *&self->_canvasSpaceToWrapSpace.tx;
      v518 = objc_msgSend_wrapSegmentsByApplyingAffineTransform_(v167, v169, *&v552.tx, v168, v173, v174, &v552, v170, v171, v172);
    }

    v175 = 0x277D80000uLL;
    v531 = v137;
    if (v518)
    {
      v176 = objc_opt_new();
      v177.n128_f64[0] = x;
      v178.n128_f64[0] = width;
      v179.n128_f64[0] = y;
      v180.n128_f64[0] = height;
      objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(MEMORY[0x277D80F88], v181, v177, v179, v178, v180, v176, v518, 0, 0);
      v182.n128_u64[0] = *MEMORY[0x277D810E0];
      v531 = objc_msgSend_horizontalIntersectionsOfRectList_withRectList_minWidth_(MEMORY[0x277D80F88], v183, v182, v186, v187, v188, v137, v176, v184, v185);
    }

    v189 = objc_msgSend_floatingWrappables(infoCopy, v158, v163, v164, v165, v166, v159, v160, v161, v162);
    v522 = v189;
    if (objc_msgSend_count(attachmentsCopy, v190, v195, v196, v197, v198, v191, v192, v193, v194))
    {
      v189 = objc_msgSend_mutableCopy(v189, v199, v204, v205, v206, v207, v200, v201, v202, v203);
      v550 = 0u;
      v551 = 0u;
      v548 = 0u;
      v549 = 0u;
      obj = attachmentsCopy;
      v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v208, v210, v211, v212, v213, &v548, v555, 16, v209);
      if (v214)
      {
        v535 = *v549;
        do
        {
          v537 = v214;
          for (i = 0; i != v537; ++i)
          {
            if (*v549 != v535)
            {
              objc_enumerationMutation(obj);
            }

            v225 = *(*(&v548 + 1) + 8 * i);
            v226 = objc_msgSend_target(v539, v215, v220, v221, v222, v223, v216, v217, v218, v219, v502);
            v235 = objc_msgSend_validatedLayoutForAnchoredDrawable_(v226, v227, v231, v232, v233, v234, v225, v228, v229, v230);

            v240 = TSUProtocolCast();
            if (v240)
            {
              objc_msgSend_addObject_(v189, v236, v241, v242, v243, v244, v240, v237, v238, v239, &unk_28853CDB0);
            }

            v502 = &unk_288510D20;
            v245 = TSUProtocolCast();
            v254 = v245;
            if (v245)
            {
              v546 = 0u;
              v547 = 0u;
              v544 = 0u;
              v545 = 0u;
              v255 = objc_msgSend_descendentWrappables(v245, v246, 0, v251, v252, v253, v247, v248, v249, v250, &unk_288510D20);
              v256 = v175;
              hintCopy = hint;
              v268 = objc_msgSend_countByEnumeratingWithState_objects_count_(v255, v258, v260, v261, v262, v263, &v544, v554, 16, v259);
              if (v268)
              {
                v273 = *v545;
                do
                {
                  for (j = 0; j != v268; ++j)
                  {
                    if (*v545 != v273)
                    {
                      objc_enumerationMutation(v255);
                    }

                    objc_msgSend_addObject_(v189, v264, v269, v270, v271, v272, *(*(&v544 + 1) + 8 * j), v265, v266, v267);
                  }

                  v268 = objc_msgSend_countByEnumeratingWithState_objects_count_(v255, v264, v269, v270, v271, v272, &v544, v554, 16, v267);
                }

                while (v268);
              }

              hint = hintCopy;
              v175 = v256;
            }
          }

          v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v215, v220, v221, v222, v223, &v548, v555, 16, v219);
        }

        while (v214);
      }
    }

    v542 = 0u;
    v543 = 0u;
    v540 = 0u;
    v541 = 0u;
    obja = v189;
    v281 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v275, v277, v278, v279, v280, &v540, v553, 16, v276);
    if (v281)
    {
      v536 = *v541;
      v282 = &v552;
      if (!hint)
      {
        v282 = 0;
      }

      v517 = v282;
      do
      {
        v538 = v281;
        for (k = 0; k != v538; ++k)
        {
          if (*v541 != v536)
          {
            objc_enumerationMutation(obja);
          }

          v284 = *(*(&v540 + 1) + 8 * k);
          v285 = objc_opt_new();
          v295 = objc_msgSend_wrapDirection(v284, v286, v291, v292, v293, v294, v287, v288, v289, v290);
          v305 = objc_msgSend_wrapFitType(v284, v296, v301, v302, v303, v304, v297, v298, v299, v300);
          v315 = objc_msgSend_wrapType(v284, v306, v311, v312, v313, v314, v307, v308, v309, v310);
          v324 = objc_msgSend_p_groupInfoContainingWrappable_(self, v316, v320, v321, v322, v323, v284, v317, v318, v319);
          v334 = v324;
          if (v324)
          {
            v335 = objc_msgSend_exteriorTextWrap(v324, v325, v330, v331, v332, v333, v326, v327, v328, v329);
            if ((objc_msgSend_isHTMLWrap(v335, v336, v341, v342, v343, v344, v337, v338, v339, v340) & 1) != 0 || objc_msgSend_isInlineWithText(v334, v345, v350, v351, v352, v353, v346, v347, v348, v349))
            {
              if (v335)
              {
                v295 = objc_msgSend_direction(v335, v345, v350, v351, v352, v353, v346, v347, v348, v349);
                v305 = objc_msgSend_fitType(v335, v354, v359, v360, v361, v362, v355, v356, v357, v358);
                v315 = objc_msgSend_type(v335, v363, v368, v369, v370, v371, v364, v365, v366, v367);
              }

              else
              {
                v315 = 0;
                v305 = 0;
                v295 = 2;
              }
            }
          }

          if (!v315 || v315 == 5)
          {
            goto LABEL_106;
          }

          if (v315 == 4)
          {
            if (objc_msgSend_p_shouldTextFlowAroundWrappable_inTarget_inColumn_(self, v372, v377, v378, v379, v380, v284, v525, v526, v376))
            {
              v295 = 2;
              v315 = 1;
            }

            else
            {
              v315 = 2;
            }
          }

          objc_msgSend_boundsInfluencingExteriorWrap(v284, v372, v377, v378, v379, v380, v373, v374, v375, v376, v502);
          v389 = v385.n128_f64[0];
          v390 = v386.n128_f64[0];
          v391 = v387.n128_f64[0];
          v392 = v388.n128_f64[0];
          if (v539)
          {
            objc_msgSend_targetInverseTransformInRoot(v539, v385, v386, v387, v388, v381, v382, v383, v384);
          }

          else
          {
            memset(&v552, 0, sizeof(v552));
          }

          v560.origin.x = v389;
          v560.origin.y = v390;
          v560.size.width = v391;
          v560.size.height = v392;
          v561 = CGRectApplyAffineTransform(v560, &v552);
          v393 = *&self->_canvasSpaceToWrapSpace.c;
          *&v552.a = *&self->_canvasSpaceToWrapSpace.a;
          *&v552.c = v393;
          *&v552.tx = *&self->_canvasSpaceToWrapSpace.tx;
          v562 = CGRectApplyAffineTransform(v561, &v552);
          v394 = v562.origin.x;
          v395 = v562.origin.y;
          v396 = v562.size.width;
          v397 = v562.size.height;
          v599.origin.x = x;
          v599.size.width = width;
          v599.origin.y = y;
          v599.size.height = height;
          if (!CGRectIntersectsRect(v562, v599))
          {
            v410 = v531;
            goto LABEL_105;
          }

          if (wrap && (objc_msgSend_indexOfObject_(v522, v398, v403, v404, v405, v406, v284, v400, v401, v402) != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_isHTMLWrap(v284, v398, v403, v404, v405, v406, v407, v408, v401, v402) & 1) == 0))
          {
            *wrap = 1;
          }

          if (v315 == 2)
          {
            if (hint)
            {
              v563.origin.x = v394;
              v563.origin.y = v395;
              v563.size.width = v396;
              v563.size.height = v397;
              MaxY = CGRectGetMaxY(v563);
              v564.origin.x = x;
              v564.size.width = width;
              v564.origin.y = y;
              v564.size.height = height;
              v403.n128_f64[0] = ceil(MaxY - CGRectGetMinY(v564));
              v404.n128_f64[0] = *hint;
              if (*hint >= v403.n128_f64[0])
              {
                v403.n128_f64[0] = *hint;
              }

              *hint = v403.n128_f64[0];
            }

            goto LABEL_104;
          }

          if (!v305)
          {
            v569.origin.x = x;
            v569.size.width = width;
            v569.origin.y = y;
            v569.size.height = height;
            MaxX = CGRectGetMaxX(v569);
            v570.origin.x = v394;
            v570.origin.y = v395;
            v570.size.width = v396;
            v570.size.height = v397;
            if (MaxX <= CGRectGetMaxX(v570) || (v571.origin.x = x, v571.size.width = width, v571.origin.y = y, v571.size.height = height, v446 = CGRectGetMinX(v571), v572.origin.x = v394, v572.origin.y = v395, v572.size.width = v396, v572.size.height = v397, v446 >= CGRectGetMinX(v572)))
            {
              v587.origin.x = v394;
              v587.origin.y = v395;
              v587.size.width = v396;
              v587.size.height = v397;
              v600.origin.x = x;
              v600.size.width = width;
              v600.origin.y = y;
              v600.size.height = height;
              v588 = CGRectIntersection(v587, v600);
              v463 = v588.origin.x;
              v464 = v588.origin.y;
              v465 = v588.size.width;
              v466 = v588.size.height;
              v467 = CGRectGetMaxX(v588);
              v589.origin.x = x;
              v589.size.width = width;
              v589.origin.y = y;
              v589.size.height = height;
              if (v467 >= CGRectGetMaxX(v589))
              {
                v469 = 0;
                v468 = x;
              }

              else
              {
                v590.origin.x = v463;
                v590.origin.y = v464;
                v590.size.width = v465;
                v590.size.height = v466;
                v468 = CGRectGetMaxX(v590);
                v469 = 1;
              }

              v591.origin.y = y;
              v470 = width - v465;
              v591.origin.x = v468;
              v591.size.width = v470;
              v591.size.height = height;
              v403.n128_f64[0] = CGRectGetWidth(v591);
              v404.n128_u64[0] = 20.0;
              if (v403.n128_f64[0] >= 20.0 && (v295 == 2 || v315 == 3 || v469 != (v295 == 0)))
              {
                v403.n128_f64[0] = v468;
                v404.n128_f64[0] = y;
                v406.n128_f64[0] = height;
                v405.n128_f64[0] = v470;
                objc_msgSend_addRect_(v285, v398, v403, v404, v405, v406, v471, v472, v401, v402);
              }
            }

            else
            {
              v573.origin.x = x;
              v573.origin.y = y;
              v573.size.width = width;
              v573.size.height = height;
              MinX = CGRectGetMinX(v573);
              v574.origin.x = x;
              v574.origin.y = y;
              v574.size.width = width;
              v574.size.height = height;
              MinY = CGRectGetMinY(v574);
              v575.origin.x = v394;
              v575.origin.y = v395;
              v575.size.width = v396;
              v575.size.height = v397;
              v506 = CGRectGetMinX(v575);
              v576.origin.x = x;
              v576.origin.y = y;
              v576.size.width = width;
              v576.size.height = height;
              v504 = CGRectGetMinX(v576);
              v577.origin.x = x;
              v577.origin.y = y;
              v577.size.width = width;
              v577.size.height = height;
              recta = CGRectGetHeight(v577);
              v578.origin.x = v394;
              v578.origin.y = v395;
              v578.size.width = v396;
              v578.size.height = v397;
              v516 = CGRectGetMaxX(v578);
              v579.origin.x = x;
              v579.size.width = width;
              v579.origin.y = y;
              v579.size.height = height;
              v514 = CGRectGetMinY(v579);
              v580.origin.x = x;
              v580.size.width = width;
              v580.origin.y = y;
              v580.size.height = height;
              v447 = CGRectGetMaxX(v580);
              v581.origin.x = v394;
              v581.origin.y = v395;
              v581.size.width = v396;
              v581.size.height = v397;
              v448 = CGRectGetMaxX(v581);
              v582.origin.x = x;
              v582.size.width = width;
              v582.origin.y = y;
              v582.size.height = height;
              v449 = CGRectGetHeight(v582);
              v583.origin.y = MinY;
              v583.origin.x = MinX;
              v583.size.width = v506 - v504;
              v583.size.height = recta;
              v459 = v447 - v448;
              if (CGRectGetWidth(v583) >= 20.0)
              {
                if ((v295 & 0xFFFFFFFD) == 0 || v315 == 3 && (v584.origin.y = MinY, v584.origin.x = MinX, v584.size.width = v506 - v504, v584.size.height = recta, v460 = CGRectGetWidth(v584), v585.origin.y = v514, v585.origin.x = v516, v585.size.width = v459, v585.size.height = v449, v460 >= CGRectGetWidth(v585)))
                {
                  v456.n128_f64[0] = MinY;
                  v455.n128_f64[0] = MinX;
                  v457.n128_f64[0] = v506 - v504;
                  v458.n128_f64[0] = recta;
                  objc_msgSend_addRect_(v285, v450, v455, v456, v457, v458, v451, v452, v453, v454);
                }
              }

              v586.origin.y = v514;
              v586.origin.x = v516;
              v586.size.width = v459;
              v586.size.height = v449;
              v403.n128_f64[0] = CGRectGetWidth(v586);
              v404.n128_u64[0] = 20.0;
              if (v403.n128_f64[0] >= 20.0)
              {
                if ((v295 - 1) < 2 || v315 == 3 && (v596.origin.y = MinY, v596.origin.x = MinX, v596.size.width = v506 - v504, v596.size.height = recta, v484 = CGRectGetWidth(v596), v597.origin.y = v514, v597.origin.x = v516, v597.size.width = v459, v597.size.height = v449, v484 < CGRectGetWidth(v597)))
                {
                  v404.n128_f64[0] = v514;
                  v403.n128_f64[0] = v516;
                  v405.n128_f64[0] = v459;
                  v406.n128_f64[0] = v449;
                  objc_msgSend_addRect_(v285, v398, v403, v404, v405, v406, v461, v462, v401, v402);
                }
              }
            }

            goto LABEL_104;
          }

          if (v305 != 1)
          {
            goto LABEL_104;
          }

          v552.a = 1.0;
          v403.n128_f64[0] = x;
          v405.n128_f64[0] = width;
          v404.n128_f64[0] = y;
          v406.n128_f64[0] = height;
          objc_msgSend_p_splitLine_lineSegmentRects_wrappable_cookie_skipHint_(self, v398, v403, v404, v405, v406, v285, v284, v539, v517);
          if (hint)
          {
            v416.n128_f64[0] = *hint;
            v417.n128_u64[0] = *&v552.a;
            if (*hint < v552.a)
            {
              v416.n128_f64[0] = v552.a;
            }

            *hint = v416.n128_f64[0];
          }

          if (!objc_msgSend_count(v285, v411, v416, v417, v418, v419, v412, v413, v414, v415))
          {
            goto LABEL_104;
          }

          objc_msgSend_rectAtIndex_(v285, v398, v403, v404, v405, v406, 0, v420, v401, v402);
          v513 = v422.n128_f64[0];
          v515 = v421.n128_f64[0];
          v509 = v424.n128_f64[0];
          v511 = v423.n128_f64[0];
          v430 = objc_msgSend_count(v285, v425, v421, v422, v423, v424, v426, v427, v428, v429);
          objc_msgSend_rectAtIndex_(v285, v431, v435, v436, v437, v438, v430 - 1, v432, v433, v434);
          v505 = v405.n128_f64[0];
          rect = v404.n128_f64[0];
          v503 = v406.n128_f64[0];
          v441 = v403.n128_f64[0];
          if (v315 == 3)
          {
            v565.origin.x = v394;
            v565.origin.y = v395;
            v565.size.width = v396;
            v565.size.height = v397;
            v442 = CGRectGetMinX(v565);
            v566.origin.x = x;
            v566.size.width = width;
            v566.origin.y = y;
            v566.size.height = height;
            v443 = CGRectGetMinX(v566);
            v567.origin.x = x;
            v567.size.width = width;
            v567.origin.y = y;
            v567.size.height = height;
            v444 = CGRectGetMaxX(v567);
            v568.origin.x = v394;
            v568.origin.y = v395;
            v568.size.width = v396;
            v568.size.height = v397;
            v403.n128_f64[0] = CGRectGetMaxX(v568);
            v404.n128_f64[0] = v442 - v443;
            v403.n128_f64[0] = v444 - v403.n128_f64[0];
            if (v442 - v443 < v403.n128_f64[0])
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v295 == 1)
            {
LABEL_101:
              objc_msgSend_makeEmpty(v285, v398, v403, v404, v405, v406, v439, v440, v401, v402);
              v594.origin.x = v441;
              v594.size.width = v505;
              v594.origin.y = rect;
              v594.size.height = v503;
              v476 = CGRectGetMaxX(v594);
              v595.origin.x = v394;
              v595.origin.y = v395;
              v595.size.width = v396;
              v595.size.height = v397;
              if (v476 >= CGRectGetMaxX(v595))
              {
                v403.n128_f64[0] = v441;
                v405.n128_f64[0] = v505;
                v404.n128_f64[0] = rect;
                v406.n128_f64[0] = v503;
                goto LABEL_103;
              }

              goto LABEL_104;
            }

            if (v295)
            {
              goto LABEL_104;
            }
          }

          objc_msgSend_makeEmpty(v285, v398, v403, v404, v405, v406, v439, v440, v401, v402);
          v592.origin.y = v513;
          v592.origin.x = v515;
          v592.size.height = v509;
          v592.size.width = v511;
          v473 = CGRectGetMinX(v592);
          v593.origin.x = v394;
          v593.origin.y = v395;
          v593.size.width = v396;
          v593.size.height = v397;
          if (v473 <= CGRectGetMinX(v593))
          {
            v404.n128_f64[0] = v513;
            v403.n128_f64[0] = v515;
            v406.n128_f64[0] = v509;
            v405.n128_f64[0] = v511;
LABEL_103:
            objc_msgSend_addRect_(v285, v398, v403, v404, v405, v406, v474, v475, v401, v402);
          }

LABEL_104:
          v403.n128_u64[0] = 20.0;
          v477 = objc_msgSend_horizontalIntersectionsOfRectList_withRectList_minWidth_(*(v175 + 3976), v398, v403, v404, v405, v406, v531, v285, v401, v402);

          v410 = v477;
LABEL_105:
          v531 = v410;
          if (!objc_msgSend_count(v410, v398, v403, v404, v405, v406, v399, v400, v401, v402))
          {

            goto LABEL_114;
          }

LABEL_106:
        }

        v281 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v478, v480, v481, v482, v483, &v540, v553, 16, v479);
      }

      while (v281);
    }

LABEL_114:

    v147 = v531;
    if (v531 != v521)
    {
      objc_msgSend_makeEmpty(v521, v485, v490, v491, v492, v493, v486, v487, v488, v489);
      objc_msgSend_addRectList_(v521, v494, v498, v499, v500, v501, v531, v495, v496, v497);
    }
  }
}

- (id)p_wrapDrawables:(id)drawables userInfo:(id)info
{
  v128 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  infoCopy = info;
  v114 = drawablesCopy;
  if (objc_msgSend_count(drawablesCopy, v6, v11, v12, v13, v14, v7, v8, v9, v10))
  {
    v24 = objc_msgSend_floatingWrappables(infoCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    v34 = objc_msgSend_mutableCopy(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = drawablesCopy;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, v37, v38, v39, v40, &v122, v127, 16, v36);
    if (v46)
    {
      v116 = *v123;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v123 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v122 + 1) + 8 * i);
          v53 = objc_msgSend_target(infoCopy, v41, v47, v48, v49, v50, v42, v43, v44, v45, v113);
          v62 = objc_msgSend_validatedLayoutForAnchoredDrawable_(v53, v54, v58, v59, v60, v61, v52, v55, v56, v57);

          v63 = TSUProtocolCast();
          v73 = v63;
          if (v63 && objc_msgSend_wrapType(v63, v64, v69, v70, v71, v72, v65, v66, v67, v68, &unk_28853CDB0) != 5)
          {
            objc_msgSend_addObject_(v34, v74, v78, v79, v80, v81, v73, v75, v76, v77);
          }

          v113 = &unk_288510D20;
          v82 = TSUProtocolCast();
          v91 = v82;
          if (v82)
          {
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v92 = objc_msgSend_descendentWrappables(v82, v83, 0, v88, v89, v90, v84, v85, v86, v87, &unk_288510D20);
            v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, v95, v96, v97, v98, &v118, v126, 16, v94);
            if (v104)
            {
              v109 = *v119;
              do
              {
                for (j = 0; j != v104; ++j)
                {
                  if (*v119 != v109)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v111 = *(*(&v118 + 1) + 8 * j);
                  if (objc_msgSend_wrapType(v111, v99, v105, v106, v107, v108, v100, v101, v102, v103) != 5)
                  {
                    objc_msgSend_addObject_(v34, v99, v105, v106, v107, v108, v111, v101, v102, v103);
                  }
                }

                v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v99, v105, v106, v107, v108, &v118, v126, 16, v103);
              }

              while (v104);
            }
          }
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, v47, v48, v49, v50, &v122, v127, 16, v45);
      }

      while (v46);
    }
  }

  else
  {
    v34 = objc_msgSend_floatingWrappables(infoCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }

  return v34;
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v326 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  infoCopy = info;
  v319 = objc_msgSend_target(infoCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v29 = objc_msgSend_p_wrapDrawables_userInfo_(self, v22, v25, v26, v27, v28, attachmentsCopy, infoCopy, v23, v24);
  v30 = MEMORY[0x277CBEB18];
  v318 = v29;
  v40 = objc_msgSend_count(v29, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v49 = objc_msgSend_arrayWithCapacity_(v30, v41, v45, v46, v47, v48, v40, v42, v43, v44);
  v50.n128_f64[0] = x;
  v51.n128_f64[0] = y;
  v52.n128_f64[0] = width;
  v53.n128_f64[0] = height;
  objc_msgSend_rectInRoot_(v319, v54, v50, v51, v52, v53, v55, v56, v57, v58);
  v59 = *&self->_canvasSpaceToWrapSpace.c;
  *&v324.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v324.c = v59;
  *&v324.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v328 = CGRectApplyAffineTransform(v327, &v324);
  v60 = v328.origin.x;
  v61 = v328.origin.y;
  v62 = v328.size.width;
  v63 = v328.size.height;
  v69 = objc_msgSend_column(infoCopy, v64, v328.origin, *&v328.origin.y, v328.size, *&v328.size.height, v65, v66, v67, v68);
  v314 = *&v63;
  v315 = *&v62;
  v316 = *&v61;
  v317 = *&v60;
  v310 = x;
  v311 = y;
  v312 = width;
  v313 = height;
  objc_msgSend_frameBounds(v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
  objc_msgSend_rectInRoot_(v319, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v88 = *&self->_canvasSpaceToWrapSpace.c;
  *&v324.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v324.c = v88;
  *&v324.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v330 = CGRectApplyAffineTransform(v329, &v324);
  v89 = v330.origin.x;
  v90 = v330.origin.y;
  v91 = v330.size.width;
  v92 = v330.size.height;

  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v93 = v318;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, v96, v97, v98, v99, &v320, v325, 16, v95);
  if (v105)
  {
    v110 = *v321;
    do
    {
      v111 = 0;
      do
      {
        if (*v321 != v110)
        {
          objc_enumerationMutation(v93);
        }

        v112 = *(*(&v320 + 1) + 8 * v111);
        objc_msgSend_boundsInfluencingExteriorWrap(v112, v100, v106, v107, v108, v109, v101, v102, v103, v104);
        v113 = *&self->_canvasSpaceToWrapSpace.c;
        *&v324.a = *&self->_canvasSpaceToWrapSpace.a;
        *&v324.c = v113;
        *&v324.tx = *&self->_canvasSpaceToWrapSpace.tx;
        v332 = CGRectApplyAffineTransform(v331, &v324);
        v114 = v332.origin.x;
        v115 = v332.origin.y;
        v116 = v332.size.width;
        v117 = v332.size.height;
        v333.origin.x = v89;
        v333.origin.y = v90;
        v333.size.width = v91;
        v333.size.height = v92;
        if (CGRectIntersectsRect(v332, v333))
        {
          v118 = objc_msgSend_wrapFitType(v112, v100, v106, v107, v108, v109, v101, v102, v103, v104);
          if (objc_msgSend_wrapType(v112, v119, v124, v125, v126, v127, v120, v121, v122, v123) == 2)
          {
            v133.n128_f64[0] = v89;
            v134.n128_f64[0] = v115;
            v135.n128_f64[0] = v91;
            v136.n128_f64[0] = v117;
            v137 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v128, v133, v134, v135, v136, v129, v130, v131, v132);
            goto LABEL_14;
          }

          if (v118)
          {
            if (v118 == 1)
            {
              v146 = *&self->_canvasSpaceToWrapSpace.c;
              *&v324.a = *&self->_canvasSpaceToWrapSpace.a;
              *&v324.c = v146;
              *&v324.tx = *&self->_canvasSpaceToWrapSpace.tx;
              if (CGAffineTransformIsIdentity(&v324))
              {
                v137 = objc_msgSend_wrapPath(v112, v147, v152, v153, v154, v155, v148, v149, v150, v151);
                goto LABEL_14;
              }

              v157 = objc_msgSend_wrapPath(v112, v147, v152, v153, v154, v155, v148, v149, v150, v151);
              v156 = objc_msgSend_copy(v157, v158, v163, v164, v165, v166, v159, v160, v161, v162);

              v167 = *&self->_canvasSpaceToWrapSpace.c;
              *&v324.a = *&self->_canvasSpaceToWrapSpace.a;
              *&v324.c = v167;
              *&v324.tx = *&self->_canvasSpaceToWrapSpace.tx;
              objc_msgSend_transformUsingAffineTransform_(v156, v168, *&v324.tx, v167, v172, v173, &v324, v169, v170, v171);
LABEL_15:
              if (v156)
              {
                objc_msgSend_addObject_(v49, v138, v142, v143, v144, v145, v156, v139, v140, v141);
              }
            }

            else
            {
              v156 = 0;
            }

            goto LABEL_19;
          }

          v133.n128_f64[0] = v114;
          v134.n128_f64[0] = v115;
          v135.n128_f64[0] = v116;
          v136.n128_f64[0] = v117;
          v137 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v128, v133, v134, v135, v136, v129, v130, v131, v132);
LABEL_14:
          v156 = v137;
          goto LABEL_15;
        }

LABEL_19:
        ++v111;
      }

      while (v105 != v111);
      v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v100, v106, v107, v108, v109, &v320, v325, 16, v104);
      v105 = v174;
    }

    while (v174);
  }

  if (objc_msgSend_count(v49, v175, v180, v181, v182, v183, v176, v177, v178, v179))
  {
    v192 = objc_msgSend_uniteBezierPaths_(MEMORY[0x277D81160], v184, v188, v189, v190, v191, v49, v185, v186, v187);
    if ((objc_msgSend_isFlat(v192, v193, v198, v199, v200, v201, v194, v195, v196, v197) & 1) == 0)
    {
      v211 = objc_msgSend_bezierPathByFlatteningPath(v192, v202, v207, v208, v209, v210, v203, v204, v205, v206);

      v192 = v211;
    }

    v212 = objc_alloc(MEMORY[0x277D803F0]);
    v221 = objc_msgSend_initWithPath_(v212, v213, v217, v218, v219, v220, v192, v214, v215, v216);
    v223.n128_u64[0] = v316;
    v222.n128_u64[0] = v317;
    v225.n128_u64[0] = v314;
    v224.n128_u64[0] = v315;
    objc_msgSend_unobstructedSpanForWrapSegments_startingSpan_columnBounds_(MEMORY[0x277D80F88], v226, v222, v223, v224, v225, v221, v227, v228, v229, v89, v90, v91, v92);
    v238 = v234.n128_f64[0];
    b = self->_wrapSpaceToCanvasSpace.b;
    d = self->_wrapSpaceToCanvasSpace.d;
    v241 = 0.0;
    v242 = 0.0;
    v243 = 0.0;
    ty = self->_wrapSpaceToCanvasSpace.ty;
    if (infoCopy)
    {
      objc_msgSend_targetInverseTransformInRoot(infoCopy, v234, v235, v236, v237, v230, v231, v232, v233);
      v243 = v324.b;
      v242 = v324.d;
      v241 = v324.ty;
    }

    v252.n128_f64[0] = v241 + (ty + v238 * d + b * 0.0) * v242 + v243 * 0.0;
  }

  else
  {
    v253 = *&self->_wrapSpaceToCanvasSpace.c;
    *&v324.a = *&self->_wrapSpaceToCanvasSpace.a;
    *&v324.c = v253;
    *&v324.tx = *&self->_wrapSpaceToCanvasSpace.tx;
    v254 = v310;
    *&v253 = v311;
    v255 = v312;
    v256 = v313;
    *v249.n128_u64 = CGRectApplyAffineTransform(*(&v253 - 8), &v324);
  }

  if ((v252.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v252.n128_f64[0] > 0.0)
  {
    v249.n128_u64[0] = 0x47EFFFFFE0000000;
    if (v252.n128_f64[0] > 3.40282347e38)
    {
      v259 = MEMORY[0x277D81150];
      v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, v249, v252, v250, v251, "[TPTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]", v246, v247, v248);
      v269 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v261, v265, v266, v267, v268, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm", v262, v263, v264);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v259, v270, v271, v272, v273, v274, v260, v269, 426, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v275, v280, v281, v282, v283, v276, v277, v278, v279);
      *&v284 = 3.4028e38;
LABEL_39:
      v257 = *&v284;
      goto LABEL_36;
    }
  }

  if (v252.n128_f64[0] < 0.0)
  {
    v249.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v252.n128_f64[0] < -3.40282347e38)
    {
      v285 = MEMORY[0x277D81150];
      v286 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, v249, v252, v250, v251, "[TPTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]", v246, v247, v248);
      v295 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v287, v291, v292, v293, v294, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm", v288, v289, v290);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v285, v296, v297, v298, v299, v300, v286, v295, 426, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v301, v306, v307, v308, v309, v302, v303, v304, v305);
      *&v284 = -3.4028e38;
      goto LABEL_39;
    }
  }

LABEL_35:
  v257 = v252.n128_f64[0];
LABEL_36:

  return v257;
}

- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info
{
  height = span.size.height;
  width = span.size.width;
  y = span.origin.y;
  x = span.origin.x;
  v90 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  infoCopy = info;
  v22 = objc_msgSend_target(infoCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v30 = objc_msgSend_p_wrapDrawables_userInfo_(self, v23, v26, v27, v28, v29, attachmentsCopy, infoCopy, v24, v25);
  if (objc_msgSend_count(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35))
  {
    v45.n128_f64[0] = x;
    v46.n128_f64[0] = y;
    v47.n128_f64[0] = width;
    v48.n128_f64[0] = height;
    objc_msgSend_rectInRoot_(v22, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v49 = *&self->_canvasSpaceToWrapSpace.c;
    *&v88.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v88.c = v49;
    *&v88.tx = *&self->_canvasSpaceToWrapSpace.tx;
    v92 = CGRectApplyAffineTransform(v91, &v88);
    v50 = v92.origin.x;
    v51 = v92.origin.y;
    v52 = v92.size.width;
    v53 = v92.size.height;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v54 = v30;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, v57, v58, v59, v60, &v84, v89, 16, v56);
    v82 = v22;
    v83 = attachmentsCopy;
    if (v66)
    {
      v71 = *v85;
      v72 = 1;
LABEL_4:
      v73 = 0;
      while (1)
      {
        if (*v85 != v71)
        {
          objc_enumerationMutation(v54);
        }

        v74 = *(*(&v84 + 1) + 8 * v73);
        objc_msgSend_boundsInfluencingExteriorWrap(v74, v61, v67, v68, v69, v70, v62, v63, v64, v65, v82, v83, v84);
        v75 = *&self->_canvasSpaceToWrapSpace.c;
        *&v88.a = *&self->_canvasSpaceToWrapSpace.a;
        *&v88.c = v75;
        *&v88.tx = *&self->_canvasSpaceToWrapSpace.tx;
        v94 = CGRectApplyAffineTransform(v93, &v88);
        v95.origin.x = v50;
        v95.origin.y = v51;
        v95.size.width = v52;
        v95.size.height = v53;
        if (CGRectIntersectsRect(v94, v95))
        {
          v76 = objc_msgSend_wrapType(v74, v61, v67, v68, v69, v70, v62, v63, v64, v65);
          if (!v76 || v76 == 5)
          {
            v78 = 1;
          }

          else
          {
            v72 = 0;
            v78 = 0;
          }

          v79 = !v76 || v76 == 5;
          if (!v79 && v78 == 0)
          {
            break;
          }
        }

        if (v66 == ++v73)
        {
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v61, v67, v68, v69, v70, &v84, v89, 16, v65);
          if (v66)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v72 = 1;
    }

    v22 = v82;
    attachmentsCopy = v83;
  }

  else
  {
    v72 = 1;
  }

  return v72 & 1;
}

- (BOOL)p_shouldTextFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column
{
  wrappableCopy = wrappable;
  targetCopy = target;
  columnCopy = column;
  if ((objc_msgSend_hasAlpha(wrappableCopy, v11, v16, v17, v18, v19, v12, v13, v14, v15) & 1) == 0)
  {
    objc_msgSend_boundsInRoot(wrappableCopy, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v30 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v30;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v64 = CGRectApplyAffineTransform(v63, &recta[1]);
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    recta[0] = *&v64.origin.x;
    v34.n128_f64[0] = CGRectGetWidth(v64);
    v60 = v34.n128_f64[0];
    objc_msgSend_frameBounds(columnCopy, v35, v34, v40, v41, v42, v36, v37, v38, v39);
    objc_msgSend_rectInRoot_(targetCopy, v43, v48, v49, v50, v51, v44, v45, v46, v47);
    v52 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v52;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v66 = CGRectApplyAffineTransform(v65, &recta[1]);
    x = v66.origin.x;
    v54 = v66.origin.y;
    v55 = v66.size.width;
    v56 = v66.size.height;
    v61 = CGRectGetWidth(v66);
    *&v67.origin.x = recta[0];
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MinX = CGRectGetMinX(v67);
    v68.origin.x = x;
    v68.origin.y = v54;
    v68.size.width = v55;
    v68.size.height = v56;
    if (MinX - CGRectGetMinX(v68) < 1.0 || (v69.origin.x = x, v69.origin.y = v54, v69.size.width = v55, v69.size.height = v56, MaxX = CGRectGetMaxX(v69), *&v70.origin.x = recta[0], v70.origin.y = y, v70.size.width = width, v70.size.height = height, MaxX - CGRectGetMaxX(v70) < 1.0))
    {
      v71.origin.x = x;
      v71.origin.y = v54;
      v71.size.width = v55;
      v71.size.height = v56;
      *&v73.origin.x = recta[0];
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v72 = CGRectIntersection(v71, v73);
      v29 = CGRectGetWidth(v72) < v61 * 0.800000012;
      goto LABEL_6;
    }

    if (v60 >= v61 * 0.333333343)
    {
      v29 = 0;
      goto LABEL_6;
    }
  }

  v29 = 1;
LABEL_6:

  return v29;
}

- (void)p_splitLine:(CGRect)line lineSegmentRects:(id)rects wrappable:(id)wrappable cookie:(id)cookie skipHint:(double *)hint
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  rectsCopy = rects;
  wrappableCopy = wrappable;
  v17 = *&self->_canvasSpaceToWrapSpace.c;
  *&v49.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v49.c = v17;
  *&v49.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v28 = objc_msgSend_transformedWrapSegmentsForWrappable_canvasSpaceToWrapSpaceTransform_(cookie, v18, *&v49.tx, v17, v21, v22, wrappableCopy, &v49, v19, v20);
  if (!v28)
  {
    objc_msgSend_frameInRoot(wrappableCopy, v23, v29, v30, v31, v32, v24, v25, v26, v27);
    v33 = *&self->_canvasSpaceToWrapSpace.c;
    *&v49.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v49.c = v33;
    *&v49.tx = *&self->_canvasSpaceToWrapSpace.tx;
    v51 = CGRectApplyAffineTransform(v50, &v49);
    v39 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v34, v51.origin, *&v51.origin.y, v51.size, *&v51.size.height, v35, v36, v37, v38);
    v40 = objc_alloc(MEMORY[0x277D803F0]);
    v28 = objc_msgSend_initWithPath_(v40, v41, v45, v46, v47, v48, v39, v42, v43, v44);
  }

  v29.n128_f64[0] = x;
  v30.n128_f64[0] = y;
  v31.n128_f64[0] = width;
  v32.n128_f64[0] = height;
  objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(MEMORY[0x277D80F88], v23, v29, v30, v31, v32, rectsCopy, v28, 1, hint);
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end