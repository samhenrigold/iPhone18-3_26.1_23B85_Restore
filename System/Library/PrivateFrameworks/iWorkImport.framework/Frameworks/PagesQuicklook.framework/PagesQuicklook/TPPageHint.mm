@interface TPPageHint
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)p_unarchiveHint:(id)hint fromArchive:(const void *)archive;
- (BOOL)syncsFlowRanges:(id)ranges withEndOfPageHint:(id)hint;
- (BOOL)syncsWithEndOfPageHint:(id)hint bodyStorage:(id)storage flowRanges:(id)ranges;
- (BOOL)terminatedByBreak;
- (TPPageHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDHint)firstChildHint;
- (TSDHint)lastChildHint;
- (TSUNoCopyDictionary)anchoredDrawablePositions;
- (TSWPTopicNumberHints)topicNumberHints;
- (_NSRange)anchoredRange;
- (_NSRange)footnoteAutoNumberRange;
- (_NSRange)footnoteLayoutRange;
- (_NSRange)p_range;
- (_NSRange)range;
- (_NSRange)rangeAndChildHints:(id *)hints;
- (id)copyForArchiving;
- (id)copyForCaching;
- (id)firstColumn;
- (id)firstHint;
- (id)flowHints;
- (id)flowTopicNumberHints;
- (id)hints;
- (id)lastColumn;
- (id)lastHint;
- (unint64_t)lineCount;
- (unint64_t)nextWidowPullsDownFromCharIndex;
- (void)offsetStartCharIndexBy:(int64_t)by charIndex:(unint64_t)index;
- (void)p_archiveHint:(id)hint intoArchive:(void *)archive;
- (void)p_archiveTopicNumberHints:(id)hints intoArchive:(void *)archive archiver:(id)archiver;
- (void)p_unarchiveTopicNumberHints:(id)hints fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context;
- (void)setFlowHints:(id)hints flowTopicNumberHints:(id)numberHints;
- (void)setHints:(id)hints topicNumberHints:(id)numberHints;
- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount;
- (void)updateRangeForIndexPath:(id)path withStorage:(id)storage;
@end

@implementation TPPageHint

- (id)copyForArchiving
{
  v288 = *MEMORY[0x277D85DE8];
  if (self->_isCopyForCaching)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint copyForArchiving]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 103, 0, "Should not copy TPPageHint that was created for caching");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  v35 = objc_alloc_init(objc_opt_class());
  v276 = v35;
  if (v35)
  {
    *(v35 + 3) = self->_pageColumn;
    *(v35 + 8) = *&self->_pageKind;
    v44 = objc_alloc(MEMORY[0x277CBEA60]);
    v52 = objc_msgSend_initWithArray_copyItems_(v44, v45, v48, v49, v50, v51, self->_hints, 1, v46, v47);
    v53 = *(v276 + 4);
    *(v276 + 4) = v52;

    v54 = objc_alloc_init(MEMORY[0x277D81278]);
    v55 = *(v276 + 5);
    *(v276 + 5) = v54;

    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v56 = self->_flowHints;
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, v59, v60, v61, v62, &v282, v287, 16, v58);
    if (v67)
    {
      v72 = *v283;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v283 != v72)
          {
            objc_enumerationMutation(v56);
          }

          v74 = *(*(&v282 + 1) + 8 * i);
          v75 = *(v276 + 5);
          v76 = objc_msgSend_objectForKeyedSubscript_(self->_flowHints, v63, v68, v69, v70, v71, v74, v64, v65, v66);
          v86 = objc_msgSend_copy(v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
          objc_msgSend_setObject_forUncopiedKey_(v75, v87, v90, v91, v92, v93, v86, v74, v88, v89);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v63, v68, v69, v70, v71, &v282, v287, 16, v66);
      }

      while (v67);
    }

    objc_storeStrong(v276 + 14, self->_flowTopicNumberHints);
    objc_msgSend_setFootnoteAutoNumberRange_(v276, v94, v97, v98, v99, v100, self->_footnoteAutoNumberRange.location, self->_footnoteAutoNumberRange.length, v95, v96);
    objc_msgSend_setFootnoteLayoutRange_(v276, v101, v104, v105, v106, v107, self->_footnoteLayoutRange.location, self->_footnoteLayoutRange.length, v102, v103);
    v108 = objc_alloc(MEMORY[0x277CBEB18]);
    v118 = objc_msgSend_count(self->_childHints, v109, v114, v115, v116, v117, v110, v111, v112, v113);
    v127 = objc_msgSend_initWithCapacity_(v108, v119, v123, v124, v125, v126, v118, v120, v121, v122);
    childHints = self->_childHints;
    v281[0] = MEMORY[0x277D85DD0];
    v129.n128_u64[0] = 3221225472;
    v281[1] = 3221225472;
    v281[2] = sub_275FE08F0;
    v281[3] = &unk_27A6A8790;
    v281[4] = v127;
    v275 = v127;
    objc_msgSend_enumerateObjectsUsingBlock_(childHints, v130, v129, v134, v135, v136, v281, v131, v132, v133);
    objc_msgSend_setChildHints_(v276, v137, v141, v142, v143, v144, v127, v138, v139, v140);
    v145 = objc_alloc(MEMORY[0x277D81278]);
    v155 = objc_msgSend_count(self->_anchoredDrawablePositions, v146, v151, v152, v153, v154, v147, v148, v149, v150);
    v164 = objc_msgSend_initWithCapacity_(v145, v156, v160, v161, v162, v163, v155, v157, v158, v159);
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v165 = self->_anchoredDrawablePositions;
    v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v166, v168, v169, v170, v171, &v277, v286, 16, v167);
    if (v176)
    {
      v181 = *v278;
      do
      {
        for (j = 0; j != v176; ++j)
        {
          if (*v278 != v181)
          {
            objc_enumerationMutation(v165);
          }

          v183 = *(*(&v277 + 1) + 8 * j);
          v184 = MEMORY[0x277CCAE60];
          v185 = objc_msgSend_objectForKeyedSubscript_(self->_anchoredDrawablePositions, v172, v177, v178, v179, v180, v183, v173, v174, v175);
          objc_msgSend_CGPointValue(v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);
          v204 = objc_msgSend_valueWithCGPoint_(v184, v195, v200, v201, v202, v203, v196, v197, v198, v199);

          objc_msgSend_setObject_forUncopiedKey_(v164, v205, v208, v209, v210, v211, v204, v183, v206, v207);
        }

        v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v172, v177, v178, v179, v180, &v277, v286, 16, v175);
      }

      while (v176);
    }

    objc_msgSend_setAnchoredDrawablePositions_(v276, v212, v216, v217, v218, v219, v164, v213, v214, v215);
    v229 = objc_msgSend_copy(self->_topicNumberHints, v220, v225, v226, v227, v228, v221, v222, v223, v224);
    v230 = *(v276 + 13);
    *(v276 + 13) = v229;

    v240 = objc_msgSend_copy(self->_startingPartitionedAttachments, v231, v236, v237, v238, v239, v232, v233, v234, v235);
    objc_msgSend_setStartingPartitionedAttachments_(v276, v241, v245, v246, v247, v248, v240, v242, v243, v244);
  }

  else
  {
    v249 = MEMORY[0x277D81150];
    v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v40, v41, v42, v43, "[TPPageHint copyForArchiving]", v37, v38, v39);
    v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, v255, v256, v257, v258, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v252, v253, v254);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v249, v260, v261, v262, v263, v264, v250, v259, 106, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v265, v270, v271, v272, v273, v266, v267, v268, v269);
  }

  return v276;
}

- (id)copyForCaching
{
  if (self->_isCopyForCaching)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint copyForCaching]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 147, 0, "Should not copy TPPageHint that was created for caching");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  v35 = objc_alloc_init(objc_opt_class());
  v44 = v35;
  if (v35)
  {
    *(v35 + 3) = self->_pageColumn;
    *(v35 + 8) = *&self->_pageKind;
    v35[120] = 1;
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v40, v41, v42, v43, "[TPPageHint copyForCaching]", v37, v38, v39);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v48, v49, v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v56, v57, v58, v59, v60, v46, v55, 150, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v66, v67, v68, v69, v62, v63, v64, v65);
  }

  return v44;
}

- (void)setHints:(id)hints topicNumberHints:(id)numberHints
{
  hintsCopy = hints;
  numberHintsCopy = numberHints;
  if (self->_pageKind == 5)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12, v13, v14, v15, "[TPPageHint setHints:topicNumberHints:]", v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 166, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  hints = self->_hints;
  self->_hints = hintsCopy;
  v43 = hintsCopy;

  topicNumberHints = self->_topicNumberHints;
  self->_topicNumberHints = numberHintsCopy;
}

- (void)setFlowHints:(id)hints flowTopicNumberHints:(id)numberHints
{
  hintsCopy = hints;
  numberHintsCopy = numberHints;
  if (self->_pageKind == 5)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v13, v14, v15, v16, "[TPPageHint setFlowHints:flowTopicNumberHints:]", v9, v10, v11);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v28, v29, v30, v31, v32, v18, v27, 172, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v38, v39, v40, v41, v34, v35, v36, v37);
  }

  v42 = objc_msgSend_count(self->_flowHints, v7, v13, v14, v15, v16, v8, v9, v10, v11);
  if (v42 != objc_msgSend_count(self->_flowTopicNumberHints, v43, v48, v49, v50, v51, v44, v45, v46, v47))
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v56, v57, v58, v59, "[TPPageHint setFlowHints:flowTopicNumberHints:]", v53, v54, v55);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v63, v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v71, v72, v73, v74, v75, v61, v70, 173, 0, "Mismatch between flow hints and flow topic number hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v81, v82, v83, v84, v77, v78, v79, v80);
  }

  flowHints = self->_flowHints;
  self->_flowHints = hintsCopy;
  v87 = hintsCopy;

  flowTopicNumberHints = self->_flowTopicNumberHints;
  self->_flowTopicNumberHints = numberHintsCopy;
}

- (id)firstColumn
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint firstColumn]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 179, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  return self;
}

- (id)lastColumn
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint lastColumn]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 184, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  return self;
}

- (id)firstHint
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint firstHint]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 189, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (self->_isCopyForCaching)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint firstHint]", v3, v4, v5);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v39, v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v47, v48, v49, v50, v51, v37, v46, 190, 0, "Cannot access first hint from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  hints = self->_hints;

  return objc_msgSend_firstObject(hints, a2, v6, v7, v8, v9, v2, v3, v4, v5);
}

- (id)lastHint
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint lastHint]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 196, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (self->_isCopyForCaching)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint lastHint]", v3, v4, v5);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v39, v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v47, v48, v49, v50, v51, v37, v46, 197, 0, "Cannot access last hint from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  hints = self->_hints;

  return objc_msgSend_lastObject(hints, a2, v6, v7, v8, v9, v2, v3, v4, v5);
}

- (id)hints
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint hints]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 203, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  if (self->_isCopyForCaching)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint hints]", v2, v3, v4);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 204, 0, "Cannot access hints from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
  }

  hints = self->_hints;

  return hints;
}

- (id)flowHints
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint flowHints]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 210, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  if (self->_isCopyForCaching)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint flowHints]", v2, v3, v4);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 211, 0, "Cannot access flow hints from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
  }

  flowHints = self->_flowHints;

  return flowHints;
}

- (id)flowTopicNumberHints
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint flowTopicNumberHints]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 217, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  if (self->_isCopyForCaching)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint flowTopicNumberHints]", v2, v3, v4);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 218, 0, "Cannot access flow topic numbers from page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
  }

  flowTopicNumberHints = self->_flowTopicNumberHints;

  return flowTopicNumberHints;
}

- (void)offsetStartCharIndexBy:(int64_t)by charIndex:(unint64_t)index
{
  if (self->_pageKind == 5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint offsetStartCharIndexBy:charIndex:]", index, v4, v5);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 224, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  if (self->_isCopyForCaching)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint offsetStartCharIndexBy:charIndex:]", index, v4, v5);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v40, v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v48, v49, v50, v51, v52, v38, v47, 225, 0, "Cannot modify page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v58, v59, v60, v61, v54, v55, v56, v57);
  }

  if (objc_msgSend_count(self->_hints, a2, v6, v7, v8, v9, by, index, v4, v5))
  {
    v69 = 0;
    v70 = ~by;
    v71 = MEMORY[0x277D81490];
    v72 = xmmword_27605FCE0;
    v162 = xmmword_27605FCE0;
    do
    {
      v73 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v62, v72, v66, v67, v68, v69, v63, v64, v65, v162);
      if (objc_msgSend_range(v73, v74, v79, v80, v81, v82, v75, v76, v77, v78) <= v70)
      {
        objc_msgSend_setRange_(v73, v83, v88, v89, v90, v91, *v71, v71[1], v86, v87);
        v105 = v162;
        *&self->_pageKind = v162;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v92 = objc_msgSend_range(v73, v83, v88, v89, v90, v91, v84, v85, v86, v87);
        objc_msgSend_setRange_(v73, v93, v96, v97, v98, v99, v92 + by, v93, v94, v95);
      }

      if (objc_msgSend_nextWidowPullsDownFromCharIndex(v73, v100, v105, v106, v107, v108, v101, v102, v103, v104) <= v70)
      {
        objc_msgSend_setNextWidowPullsDownFromCharIndex_(v73, v109, v114, v115, v116, v117, 0x7FFFFFFFFFFFFFFFLL, v111, v112, v113);
        v132 = v162;
        *&self->_pageKind = v162;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v73, v109, v114, v115, v116, v117, v110, v111, v112, v113);
        objc_msgSend_setNextWidowPullsDownFromCharIndex_(v73, v119, v123, v124, v125, v126, WidowPullsDownFromCharIndex + by, v120, v121, v122);
      }

      if (objc_msgSend_anchoredRange(v73, v127, v132, v133, v134, v135, v128, v129, v130, v131) <= v70)
      {
        objc_msgSend_setAnchoredRange_(v73, v136, v141, v142, v143, v144, *v71, v71[1], v139, v140);
        *&self->_pageKind = v162;
        self->_pageColumn = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v145 = objc_msgSend_anchoredRange(v73, v136, v141, v142, v143, v144, v137, v138, v139, v140);
        objc_msgSend_setAnchoredRange_(v73, v146, v149, v150, v151, v152, v145 + by, v146, v147, v148);
      }

      ++v69;
    }

    while (v69 < objc_msgSend_count(self->_hints, v153, v158, v159, v160, v161, v154, v155, v156, v157));
  }
}

- (BOOL)syncsWithEndOfPageHint:(id)hint bodyStorage:(id)storage flowRanges:(id)ranges
{
  hintCopy = hint;
  storageCopy = storage;
  rangesCopy = ranges;
  if (!hintCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v16, v17, v18, v19, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v12, v13, v14);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 265, 0, "invalid nil value for '%{public}s'", "otherPageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  if (self->_isCopyForCaching)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v16, v17, v18, v19, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v12, v13, v14);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v48, v49, v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v56, v57, v58, v59, v60, v46, v55, 266, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v66, v67, v68, v69, v62, v63, v64, v65);
  }

  v70 = objc_msgSend_range(self, v10, v16, v17, v18, v19, v11, v12, v13, v14);
  v80 = objc_msgSend_range(hintCopy, v71, v76, v77, v78, v79, v72, v73, v74, v75);
  if (&v81[v80] != v70 || (v90 = objc_msgSend_footnoteAutoNumberRange(hintCopy, v81, v86, v87, v88, v89, v82, v83, v84, v85), &v108[v90] != objc_msgSend_footnoteAutoNumberRange(self, v108, v95, v96, v97, v98, v91, v92, v93, v94)) || (v109 = objc_msgSend_footnoteLayoutRange(hintCopy, v99, v104, v105, v106, v107, v100, v101, v102, v103), &v127[v109] != objc_msgSend_footnoteLayoutRange(self, v127, v114, v115, v116, v117, v110, v111, v112, v113)) || (v128 = objc_msgSend_anchoredRange(hintCopy, v118, v123, v124, v125, v126, v119, v120, v121, v122), &v146[v128] != objc_msgSend_anchoredRange(self, v146, v133, v134, v135, v136, v129, v130, v131, v132)))
  {
    v168 = 0;
    goto LABEL_16;
  }

  v147 = objc_msgSend_firstChildHint(self, v137, v142, v143, v144, v145, v138, v139, v140, v141);
  v157 = objc_msgSend_lastChildHint(hintCopy, v148, v153, v154, v155, v156, v149, v150, v151, v152);
  v167 = v157;
  if (v147 && !v157 || v157 && !v147)
  {
    goto LABEL_13;
  }

  if (!v147 || !v157)
  {
LABEL_21:
    if (self->_pageKind != 1)
    {
      goto LABEL_35;
    }

    v207 = objc_msgSend_hints(self, v158, v163, v164, v165, v166, v159, v160, v161, v162);
    v217 = objc_msgSend_firstObject(v207, v208, v213, v214, v215, v216, v209, v210, v211, v212);

    v433 = v217;
    if (!v217)
    {
      v227 = MEMORY[0x277D81150];
      v228 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v218, v223, v224, v225, v226, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v220, v221, v222);
      v237 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v229, v233, v234, v235, v236, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v230, v231, v232);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v227, v238, v239, v240, v241, v242, v228, v237, 299, 0, "invalid nil value for '%{public}s'", "hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v243, v248, v249, v250, v251, v244, v245, v246, v247);
    }

    v430 = objc_msgSend_columnCount(v433, v218, v223, v224, v225, v226, v219, v220, v221, v222);
    v261 = objc_msgSend_range(hintCopy, v252, v257, v258, v259, v260, v253, v254, v255, v256);
    v432 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(storageCopy, v262, v265, v266, v267, v268, v261, 0, v263, v264);
    if (!v432)
    {
      v277 = MEMORY[0x277D81150];
      v278 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v269, v273, v274, v275, v276, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v270, v271, v272);
      v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v279, v283, v284, v285, v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v280, v281, v282);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v277, v288, v289, v290, v291, v292, v278, v287, 302, 0, "invalid nil value for '%{public}s'", "colStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v293, v298, v299, v300, v301, v294, v295, v296, v297);
    }

    objc_opt_class();
    v310 = objc_msgSend_objectForProperty_(v432, v302, v306, v307, v308, v309, 148, v303, v304, v305);
    v311 = TSUCheckedDynamicCast();

    v431 = v311;
    if (!v311)
    {
      v321 = MEMORY[0x277D81150];
      v322 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v312, v317, v318, v319, v320, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v314, v315, v316);
      v331 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v323, v327, v328, v329, v330, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v324, v325, v326);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v321, v332, v333, v334, v335, v336, v322, v331, 304, 0, "invalid nil value for '%{public}s'", "cols");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v337, v342, v343, v344, v345, v338, v339, v340, v341);
    }

    v350 = objc_msgSend_columnCount(v431, v312, v317, v318, v319, v320, v313, v314, v315, v316);
    if (!v350)
    {
      v355 = MEMORY[0x277D81150];
      v356 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v346, v351, v352, v353, v354, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v347, v348, v349);
      v365 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v357, v361, v362, v363, v364, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v358, v359, v360);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v355, v366, v367, v368, v369, v370, v356, v365, 306, 0, "Unexpected 0 curColCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v371, v376, v377, v378, v379, v372, v373, v374, v375);
    }

    if (!v430)
    {
      v380 = MEMORY[0x277D81150];
      v381 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v346, v351, v352, v353, v354, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v347, v348, v349);
      v390 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v382, v386, v387, v388, v389, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v383, v384, v385);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v380, v391, v392, v393, v394, v395, v381, v390, 307, 0, "Unexpected 0 nextColCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v396, v401, v402, v403, v404, v397, v398, v399, v400);
    }

    v168 = 0;
    if (v350)
    {
      if (v430 && v430 == v350)
      {
LABEL_35:
        v168 = objc_msgSend_syncsFlowRanges_withEndOfPageHint_(self, v158, v163, v164, v165, v166, rangesCopy, hintCopy, v161, v162);
      }
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v178 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v170, v174, v175, v176, v177, v70, v171, v172, v173);
  v179 = TSUDynamicCast();

  if (v179)
  {
    v189 = objc_msgSend_drawable(v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
    v199 = objc_msgSend_partitioner(v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);
    Hint_horizontally = objc_msgSend_didHint_syncWithNextHint_horizontally_(v199, v200, v202, v203, v204, v205, v167, v147, 0, v201);

    if (Hint_horizontally)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v405 = MEMORY[0x277D81150];
    v406 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v180, v185, v186, v187, v188, "[TPPageHint syncsWithEndOfPageHint:bodyStorage:flowRanges:]", v182, v183, v184);
    v415 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v407, v411, v412, v413, v414, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v408, v409, v410);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v405, v416, v417, v418, v419, v420, v406, v415, 286, 0, "invalid nil value for '%{public}s'", "attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v421, v426, v427, v428, v429, v422, v423, v424, v425);
  }

LABEL_13:
  v168 = 0;
LABEL_14:

LABEL_16:
  return v168;
}

- (BOOL)syncsFlowRanges:(id)ranges withEndOfPageHint:(id)hint
{
  v129 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  hintCopy = hint;
  v121 = hintCopy;
  if (self->_isCopyForCaching)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v13, v14, v15, v16, "[TPPageHint syncsFlowRanges:withEndOfPageHint:]", v10, v11, v12, hintCopy);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v28, v29, v30, v31, v32, v18, v27, 322, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v38, v39, v40, v41, v34, v35, v36, v37);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v42 = objc_msgSend_flowHints(self, v8, 0, v14, v15, v16, v9, v10, v11, v12, v121);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v45, v46, v47, v48, &v124, v128, 16, v44);
  if (v54)
  {
    v59 = *v125;
    obj = v42;
    while (2)
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v125 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v124 + 1) + 8 * i);
        v62 = objc_msgSend_flowHints(self, v49, v55, v56, v57, v58, v50, v51, v52, v53);
        v71 = objc_msgSend_objectForKeyedSubscript_(v62, v63, v67, v68, v69, v70, v61, v64, v65, v66);
        v81 = objc_msgSend_range(v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
        v83 = v82;

        v92 = objc_msgSend_objectForKeyedSubscript_(rangesCopy, v84, v88, v89, v90, v91, v61, v85, v86, v87);
        v102 = v92;
        v103 = v92 == 0;
        if (!v92 || (v104 = objc_msgSend_rangeValue(v92, v93, v98, v99, v100, v101, v94, v95, v96, v97), &v105[v104] != v81))
        {

          v42 = obj;
          goto LABEL_15;
        }

        v112 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v105, v108, v109, v110, v111, v81, v83, v106, v107);
        objc_msgSend_setObject_forUncopiedKey_(rangesCopy, v113, v116, v117, v118, v119, v112, v61, v114, v115);
      }

      v42 = obj;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, v55, v56, v57, v58, &v124, v128, 16, v53);
      v103 = 1;
      if (v54)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v103 = 1;
  }

LABEL_15:

  return v103;
}

- (void)updateRangeForIndexPath:(id)path withStorage:(id)storage
{
  v100[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  storageCopy = storage;
  if (self->_pageKind != 6)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v13, v14, v15, v16, "[TPPageHint updateRangeForIndexPath:withStorage:]", v9, v10, v11);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v28, v29, v30, v31, v32, v18, v27, 355, 0, "Unexpected page kind %lu", self->_pageKind);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v38, v39, v40, v41, v34, v35, v36, v37);
  }

  if (self->_isCopyForCaching)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v13, v14, v15, v16, "[TPPageHint updateRangeForIndexPath:withStorage:]", v9, v10, v11);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v45, v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v53, v54, v55, v56, v57, v43, v52, 356, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v63, v64, v65, v66, v59, v60, v61, v62);
  }

  v99 = *MEMORY[0x277D81490];
  v67 = objc_msgSend_sectionIndex(pathCopy, v7, v99, v14, v15, v16, v8, v9, v10, v11);
  v75 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(storageCopy, v68, v71, v72, v73, v74, v67, &v99, v69, v70);
  v76 = objc_opt_new();
  objc_msgSend_setRange_(v76, v77, v80, v81, v82, v83, v99.n128_i64[0], v99.n128_i64[1], v78, v79);
  v100[0] = v76;
  v91 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v84, v87, v88, v89, v90, v100, 1, v85, v86);
  objc_msgSend_setHints_topicNumberHints_(self, v92, v95, v96, v97, v98, v91, self->_topicNumberHints, v93, v94);
}

- (_NSRange)footnoteAutoNumberRange
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint footnoteAutoNumberRange]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 378, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  location = self->_footnoteAutoNumberRange.location;
  length = self->_footnoteAutoNumberRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footnoteLayoutRange
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint footnoteLayoutRange]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 383, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  location = self->_footnoteLayoutRange.location;
  length = self->_footnoteLayoutRange.length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSUNoCopyDictionary)anchoredDrawablePositions
{
  if (self->_pageKind == 5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint anchoredDrawablePositions]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 388, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  if (self->_isCopyForCaching)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint anchoredDrawablePositions]", v2, v3, v4);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 389, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
  }

  anchoredDrawablePositions = self->_anchoredDrawablePositions;

  return anchoredDrawablePositions;
}

- (TSDHint)firstChildHint
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint firstChildHint]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 395, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (self->_isCopyForCaching)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint firstChildHint]", v3, v4, v5);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v39, v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v47, v48, v49, v50, v51, v37, v46, 396, 0, "Can not get first child hint on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  v61 = objc_msgSend_firstObject(self->_childHints, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v62, v67, v68, v69, v70, v63, v64, v65, v66);
  if (v61 == v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = v61;
  }

  v73 = v72;

  return v72;
}

- (TSDHint)lastChildHint
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint lastChildHint]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 403, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (self->_isCopyForCaching)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint lastChildHint]", v3, v4, v5);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v39, v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v47, v48, v49, v50, v51, v37, v46, 404, 0, "Can not get last child hint on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  v61 = objc_msgSend_lastObject(self->_childHints, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v62, v67, v68, v69, v70, v63, v64, v65, v66);
  if (v61 == v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = v61;
  }

  v73 = v72;

  return v72;
}

- (TSWPTopicNumberHints)topicNumberHints
{
  if (self->_isCopyForCaching)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageHint topicNumberHints]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 411, 0, "Can not get topic numbers on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  topicNumberHints = self->_topicNumberHints;

  return topicNumberHints;
}

- (_NSRange)range
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint range]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 419, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  v36 = objc_msgSend_p_range(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  result.length = v37;
  result.location = v36;
  return result;
}

- (_NSRange)p_range
{
  if (self->_isCopyForCaching)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint p_range]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 424, 0, "Can not get range on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (objc_msgSend_count(self->_hints, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v45 = objc_msgSend_firstObject(self->_hints, v36, v41, v42, v43, v44, v37, v38, v39, v40);
    v55 = objc_msgSend_range(v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
    v57 = v56;
    v66 = objc_msgSend_lastObject(self->_hints, v56, v62, v63, v64, v65, v58, v59, v60, v61);
    v84.location = objc_msgSend_range(v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);
    v84.length = v76;
    v82.location = v55;
    v82.length = v57;
    v77 = NSUnionRange(v82, v84);
    location = v77.location;
    length = v77.length;
  }

  else
  {
    location = *MEMORY[0x277D81490];
    length = *(MEMORY[0x277D81490] + 8);
  }

  v80 = location;
  v81 = length;
  result.length = v81;
  result.location = v80;
  return result;
}

- (_NSRange)rangeAndChildHints:(id *)hints
{
  v12 = objc_msgSend_p_range(self, a2, v6, v7, v8, v9, hints, v3, v4, v5);
  v14 = v13;
  *hints = self->_childHints;
  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)anchoredRange
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint anchoredRange]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 438, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (objc_msgSend_count(self->_hints, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v45 = objc_msgSend_firstObject(self->_hints, v36, v41, v42, v43, v44, v37, v38, v39, v40);
    v55 = objc_msgSend_anchoredRange(v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
    v57 = v56;
    v66 = objc_msgSend_lastObject(self->_hints, v56, v62, v63, v64, v65, v58, v59, v60, v61);
    v84.location = objc_msgSend_anchoredRange(v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);
    v84.length = v76;
    v82.location = v55;
    v82.length = v57;
    v77 = NSUnionRange(v82, v84);
    location = v77.location;
    length = v77.length;
  }

  else
  {
    location = *MEMORY[0x277D81490];
    length = *(MEMORY[0x277D81490] + 8);
  }

  v80 = location;
  v81 = length;
  result.length = v81;
  result.location = v80;
  return result;
}

- (unint64_t)nextWidowPullsDownFromCharIndex
{
  if (self->_pageKind == 5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint nextWidowPullsDownFromCharIndex]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 443, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  v41 = objc_msgSend_lastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (v41 && objc_msgSend_count(self->_hints, v36, v42, v43, v44, v45, v37, v38, v39, v40))
  {
    v55 = objc_msgSend_lastHint(self, v46, v51, v52, v53, v54, v47, v48, v49, v50);
    WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  }

  else
  {
    WidowPullsDownFromCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return WidowPullsDownFromCharIndex;
}

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  v10 = objc_msgSend_lastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    HasListLabel = 0;
  }

  return HasListLabel;
}

- (BOOL)terminatedByBreak
{
  v10 = objc_msgSend_lastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_terminatedByBreak(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount
{
  targetCopy = target;
  if (self->_pageKind == 5)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v14, v15, v16, v17, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v11, v12, v13);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v29, v30, v31, v32, v33, v19, v28, 465, 0, "shouldn't ask for the properties of a dirty page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
  }

  if (self->_isCopyForCaching)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v14, v15, v16, v17, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v11, v12, v13);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v46, v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v54, v55, v56, v57, v58, v44, v53, 466, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v64, v65, v66, v67, v60, v61, v62, v63);
  }

  if (!objc_msgSend_count(self->_hints, v9, v14, v15, v16, v17, v10, v11, v12, v13))
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v73, v74, v75, v76, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v70, v71, v72);
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v80, v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v88, v89, v90, v91, v92, v78, v87, 468, 0, "bad page hint: no text hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v98, v99, v100, v101, v94, v95, v96, v97);
  }

  if (objc_msgSend_count(self->_hints, v68, v73, v74, v75, v76, v69, v70, v71, v72))
  {
    v110 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v102, v106, v107, v108, v109, 0, v103, v104, v105);
    v120 = objc_msgSend_range(v110, v111, v116, v117, v118, v119, v112, v113, v114, v115);

    if (v120 >= index)
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v126, v127, v128, v129, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v123, v124, v125);
      v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v133, v134, v135);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v141, v142, v143, v144, v145, v131, v140, 470, 0, "trimming will remove all characters from this page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v151, v152, v153, v154, v147, v148, v149, v150);
    }

    hints = self->_hints;
    v156 = objc_msgSend_count(hints, v121, v126, v127, v128, v129, v122, v123, v124, v125);
    v165 = objc_msgSend_objectAtIndexedSubscript_(hints, v157, v161, v162, v163, v164, v156 - 1, v158, v159, v160);
    v175 = objc_msgSend_range(v165, v166, v171, v172, v173, v174, v167, v168, v169, v170);
    if (&v176[v175] > index)
    {
      if (objc_msgSend_count(self->_childHints, v176, v181, v182, v183, v184, v177, v178, v179, v180))
      {
        v185 = objc_msgSend_lastObject(self->_childHints, v176, v181, v182, v183, v184, v177, v178, v179, v180);
        v195 = objc_msgSend_null(MEMORY[0x277CBEB68], v186, v191, v192, v193, v194, v187, v188, v189, v190);

        if (v185 != v195)
        {
          childHints = self->_childHints;
          v197 = objc_msgSend_count(childHints, v176, v181, v182, v183, v184, v177, v178, v179, v180);
          v205 = objc_msgSend_subarrayWithRange_(childHints, v198, v201, v202, v203, v204, 0, v197 - 1, v199, v200);
          v215 = objc_msgSend_null(MEMORY[0x277CBEB68], v206, v211, v212, v213, v214, v207, v208, v209, v210);
          v224 = objc_msgSend_arrayByAddingObject_(v205, v216, v220, v221, v222, v223, v215, v217, v218, v219);
          objc_msgSend_setChildHints_(self, v225, v229, v230, v231, v232, v224, v226, v227, v228);
        }
      }
    }

    if (objc_msgSend_nextWidowPullsDownFromCharIndex(v165, v176, v181, v182, v183, v184, v177, v178, v179, v180) < index || objc_msgSend_range(v165, v233, v238, v239, v240, v241, v234, v235, v236, v237) > index)
    {
      v243 = MEMORY[0x277D81150];
      v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v233, v238, v239, v240, v241, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v235, v236, v237);
      v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, v249, v250, v251, v252, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v246, v247, v248);
      v534.location = objc_msgSend_range(v165, v254, v259, v260, v261, v262, v255, v256, v257, v258);
      v263 = NSStringFromRange(v534);
      WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v165, v264, v269, v270, v271, v272, v265, v266, v267, v268);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v243, v274, v275, v276, v277, v278, v244, v253, 479, 0, "Bad charIndex: %lu %{public}@ %lu", index, v263, WidowPullsDownFromCharIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v279, v284, v285, v286, v287, v280, v281, v282, v283);
    }

    v288 = objc_msgSend_range(v165, v233, v238, v239, v240, v241, v242, v235, v236, v237);
    indexCopy2 = &v289[v288];
    if (&v289[v288] <= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = &v289[v288];
    }

    if (&v289[v288] >= index)
    {
      indexCopy2 = index;
    }

    v529 = indexCopy2;
    v300 = objc_msgSend_range(v165, v289, v294, v295, v296, v297, v290, v291, v292, v293);
    v310 = objc_msgSend_range(v165, v301, v306, v307, v308, v309, v302, v303, v304, v305);
    objc_msgSend_setRange_(v165, v311, v314, v315, v316, v317, v300, index - v310, v312, v313);
    objc_msgSend_setNextWidowPullsDownFromCharIndex_(v165, v318, v322, v323, v324, v325, index, v319, v320, v321);
    objc_msgSend_setLineFragmentCount_(v165, v326, v330, v331, v332, v333, 0x7FFFFFFFFFFFFFFFLL, v327, v328, v329);
    length = self->_footnoteAutoNumberRange.length;
    if (length < footnoteCount)
    {
      v344 = MEMORY[0x277D81150];
      v345 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v334, v339, v340, v341, v342, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v336, v337, v338);
      v354 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v346, v350, v351, v352, v353, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v347, v348, v349);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v344, v355, v356, v357, v358, v359, v345, v354, 488, 0, "Hint doesn't know about auto-numbered footnotes being removed");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v360, v365, v366, v367, v368, v361, v362, v363, v364);
      length = self->_footnoteAutoNumberRange.length;
    }

    v369 = length >= footnoteCount;
    v370 = length - footnoteCount;
    if (v369)
    {
      self->_footnoteAutoNumberRange.length = v370;
    }

    v371 = objc_msgSend_storage(targetCopy, v334, v339, v340, v341, v342, v335, v336, v337, v338);
    v381 = objc_msgSend_documentRoot(v371, v372, v377, v378, v379, v380, v373, v374, v375, v376);

    v391 = objc_msgSend_settings(v381, v382, v387, v388, v389, v390, v383, v384, v385, v386);
    v401 = objc_msgSend_footnoteKind(v391, v392, v397, v398, v399, v400, v393, v394, v395, v396);

    v411 = self->_footnoteLayoutRange.length;
    if (v401)
    {
      if (v411)
      {
        v412 = MEMORY[0x277D81150];
        v413 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v402, v407, v408, v409, v410, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v404, v405, v406);
        v422 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v414, v418, v419, v420, v421, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v415, v416, v417);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v412, v423, v424, v425, v426, v427, v413, v422, 501, 0, "Shouldn't have footnotes due to endnote setting");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v428, v433, v434, v435, v436, v429, v430, v431, v432);
      }
    }

    else
    {
      if (v411 < count)
      {
        v437 = MEMORY[0x277D81150];
        v438 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v402, v407, v408, v409, v410, "[TPPageHint trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v404, v405, v406);
        v447 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v439, v443, v444, v445, v446, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v440, v441, v442);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v437, v448, v449, v450, v451, v452, v438, v447, 496, 0, "Hint doesn't know about footnotes being removed");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v453, v458, v459, v460, v461, v454, v455, v456, v457);
        v411 = self->_footnoteLayoutRange.length;
      }

      v369 = v411 >= count;
      v462 = v411 - count;
      if (v369)
      {
        self->_footnoteLayoutRange.length = v462;
      }
    }

    v463 = indexCopy - v529;
    if (indexCopy - v529 - 1 <= 0x7FFFFFFFFFFFFFFDLL && objc_msgSend_count(self->_startingPartitionedAttachments, v402, v407, v408, v409, v410, v403, v404, v405, v406))
    {
      v473 = objc_msgSend_set(MEMORY[0x277CBEB58], v464, v469, v470, v471, v472, v465, v466, v467, v468);
      v483 = objc_msgSend_storage(targetCopy, v474, v479, v480, v481, v482, v475, v476, v477, v478);
      v484 = objc_opt_class();
      v532[0] = MEMORY[0x277D85DD0];
      v532[1] = 3221225472;
      v532[2] = sub_275FE39FC;
      v532[3] = &unk_27A6A87B8;
      v485 = v473;
      v533 = v485;
      objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v483, v486, v487, v488, v489, v490, v484, v529, v463, v532);

      if (objc_msgSend_count(v485, v491, v496, v497, v498, v499, v492, v493, v494, v495))
      {
        v509 = objc_msgSend_mutableCopy(self->_startingPartitionedAttachments, v500, v505, v506, v507, v508, v501, v502, v503, v504);
        objc_msgSend_minusSet_(v509, v510, v514, v515, v516, v517, v485, v511, v512, v513);
        v527 = objc_msgSend_copy(v509, v518, v523, v524, v525, v526, v519, v520, v521, v522);
        startingPartitionedAttachments = self->_startingPartitionedAttachments;
        self->_startingPartitionedAttachments = v527;
      }
    }
  }
}

- (unint64_t)lineCount
{
  if (self->_isCopyForCaching)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageHint lineCount]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 525, 0, "Do not call method on page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (!objc_msgSend_count(self->_hints, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 0;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = objc_msgSend_objectAtIndexedSubscript_(self->_hints, v36, v40, v41, v42, v43, v44, v37, v38, v39);
    v56 = objc_msgSend_lineFragmentCount(v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);

    if (v56 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v45 += v56;
    if (++v44 >= objc_msgSend_count(self->_hints, v57, v62, v63, v64, v65, v58, v59, v60, v61))
    {
      return v45;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (TPPageHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v21 = objc_msgSend_init(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  if (!v21)
  {
    goto LABEL_52;
  }

  v26 = 0;
  v27 = *(archive + 4);
  if ((~v27 & 0xC0) == 0 && *(archive + 59) >= 0x35u && *(archive + 60) == 1)
  {
    v28 = *(archive + 8);
    if (v28 >= 1)
    {
      v29 = objc_alloc(MEMORY[0x277CBEB18]);
      v38 = objc_msgSend_initWithCapacity_(v29, v30, v34, v35, v36, v37, v28, v31, v32, v33);
      v39 = 8;
      while (1)
      {
        v40 = objc_opt_new();
        if ((objc_msgSend_p_unarchiveHint_fromArchive_(v21, v41, v44, v45, v46, v47, v40, *(*(archive + 5) + v39), v42, v43) & 1) == 0)
        {
          break;
        }

        objc_msgSend_addObject_(v38, v48, v52, v53, v54, v55, v40, v49, v50, v51);

        v39 += 8;
        if (!--v28)
        {
          v56 = *(v21 + 32);
          *(v21 + 32) = v38;

          v27 = *(archive + 4);
          goto LABEL_10;
        }
      }

      goto LABEL_36;
    }

LABEL_10:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    v57 = *(archive + 58);
    *(v21 + 8) = v57;
    if (v57 == 1)
    {
      if (!objc_msgSend_count(*(v21 + 32), v16, v22, v23, v24, v25, v17, v18, v19, v20))
      {
        v67 = MEMORY[0x277D81150];
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v63, v64, v65, v66, "[TPPageHint initWithArchive:unarchiver:]", v60, v61, v62);
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v70, v71, v72);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v78, v79, v80, v81, v82, v68, v77, 734, 0, "text page hint has no text hints");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v88, v89, v90, v91, v84, v85, v86, v87);
      }

      if (!objc_msgSend_count(*(v21 + 32), v58, v63, v64, v65, v66, v59, v60, v61, v62))
      {
        goto LABEL_36;
      }

      v27 = *(archive + 4);
    }

    if ((v27 & 0x400) == 0 || (*(v21 + 16) = *(archive + 63), (v27 & 0x200) == 0))
    {
LABEL_36:
      v26 = 0;
      goto LABEL_53;
    }

    *(v21 + 24) = *(archive + 62);
    if (v27)
    {
      *(v21 + 48) = TSPNSRangeFromMessage();
      *(v21 + 56) = v92;
      v27 = *(archive + 4);
    }

    if ((v27 & 2) != 0)
    {
      *(v21 + 64) = TSPNSRangeFromMessage();
      *(v21 + 72) = v93;
    }

    v411[0] = MEMORY[0x277D85DD0];
    v411[1] = 3221225472;
    v411[2] = sub_275FE45C8;
    v411[3] = &unk_27A6A8508;
    v94 = v21;
    v412 = v94;
    sub_275FE451C(unarchiverCopy, archive + 72, &unk_288528398, v411);
    v103 = *(archive + 14);
    v405 = v94;
    if (v103 >= 1)
    {
      v104 = objc_alloc(MEMORY[0x277D81278]);
      v117 = objc_msgSend_initWithCapacity_(v104, v105, v109, v110, v111, v112, v103, v106, v107, v108);
      v122 = 8;
      v123 = MEMORY[0x277D80A10];
      while (1)
      {
        v124 = *(*(archive + 8) + v122);
        if ((*(v124 + 16) & 8) == 0)
        {
          break;
        }

        v125 = *(v124 + 48);
        v126 = *(v125 + 24);
        v127 = *(v125 + 32);
        v128 = *(v124 + 40);
        if (v128)
        {
          objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(unarchiverCopy, v113, v118, v119, v120, v121, v128, v114, v115, v116);
        }

        else
        {
          objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(unarchiverCopy, v113, v118, v119, v120, v121, v123, v114, v115, v116);
        }
        v129 = ;
        v130.n128_u64[0] = v126;
        v131.n128_u64[0] = v127;
        v139 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v132, v130, v131, v137, v138, v133, v134, v135, v136);
        objc_msgSend_setObject_forKey_(v117, v140, v143, v144, v145, v146, v139, v129, v141, v142);

        v122 += 8;
        if (!--v103)
        {
          v147 = v94[11];
          v94[11] = v117;

          goto LABEL_30;
        }
      }

      v212 = MEMORY[0x277D81150];
      v213 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v118, v119, v120, v121, "[TPPageHint initWithArchive:unarchiver:]", v114, v115, v116);
      v222 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v214, v218, v219, v220, v221, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v215, v216, v217);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v212, v223, v224, v225, v226, v227, v213, v222, 806, 0, "missing anchored drawable position");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v228, v233, v234, v235, v236, v229, v230, v231, v232);
      goto LABEL_38;
    }

LABEL_30:
    v148 = *(archive + 26);
    v117 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v95, v99, v100, v101, v102, v148, v96, v97, v98);
    if (v148)
    {
      v158 = 0;
      do
      {
        v159 = objc_alloc(MEMORY[0x277CCAD78]);
        v168 = objc_msgSend_tsp_initWithMessage_(v159, v160, v164, v165, v166, v167, *(*(archive + 14) + (v158 >> 29) + 8), v161, v162, v163);
        objc_msgSend_addObject_(v117, v169, v173, v174, v175, v176, v168, v170, v171, v172);

        v158 += 0x100000000;
        --v148;
      }

      while (v148);
    }

    v177 = objc_msgSend_copy(v117, v149, v154, v155, v156, v157, v150, v151, v152, v153);
    v178 = v405[12];
    v405[12] = v177;

    if ((*(archive + 16) & 0x10) == 0)
    {
      v187 = MEMORY[0x277D81150];
      v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, v183, v184, v185, v186, "[TPPageHint initWithArchive:unarchiver:]", v180, v181, v182);
      v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, v193, v194, v195, v196, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v190, v191, v192);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v198, v199, v200, v201, v202, v188, v197, 843, 0, "shouldn't need to upgrade page hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v203, v208, v209, v210, v211, v204, v205, v206, v207);
LABEL_38:

      goto LABEL_36;
    }

    v237 = *(archive + 28);
    v238 = objc_opt_new();
    v239 = v405[13];
    v405[13] = v238;

    objc_msgSend_p_unarchiveTopicNumberHints_fromArchive_unarchiver_(v405, v240, v242, v243, v244, v245, v405[13], v237, unarchiverCopy, v241);
    v254 = *(archive + 38);
    if (v254 != *(archive + 32) || v254 != *(archive + 44))
    {
      goto LABEL_38;
    }

    if ((v254 & 0x80000000) != 0)
    {
      v258 = MEMORY[0x277D81150];
      v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, v250, v251, v252, v253, "[TPPageHint initWithArchive:unarchiver:]", v247, v248, v249);
      v268 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, v264, v265, v266, v267, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v261, v262, v263);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v258, v269, v270, v271, v272, v273, v259, v268, 854, 0, "Invalid flow hint count %d", v254);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v274, v279, v280, v281, v282, v275, v276, v277, v278);
      v283 = MEMORY[0x277D81150];
      v292 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, v288, v289, v290, v291, "[TPPageHint initWithArchive:unarchiver:]", v285, v286, v287);
      v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v293, v297, v298, v299, v300, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v294, v295, v296);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v283, v302, v303, v304, v305, v306, v292, v301, 855, 0, "Invalid flow reference count %d", v254);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v307, v312, v313, v314, v315, v308, v309, v310, v311);
      v316 = MEMORY[0x277D81150];
      v325 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v317, v321, v322, v323, v324, "[TPPageHint initWithArchive:unarchiver:]", v318, v319, v320);
      v334 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v326, v330, v331, v332, v333, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v327, v328, v329);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v316, v335, v336, v337, v338, v339, v325, v334, 856, 0, "Invalid flow topic numbers count %d", v254);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v340, v345, v346, v347, v348, v341, v342, v343, v344);
    }

    else
    {
      v255 = v405;
      if (!v254)
      {
        v256 = 0;
        v257 = 0;
LABEL_51:
        v406[0] = MEMORY[0x277D85DD0];
        v406[1] = 3221225472;
        v406[2] = sub_275FE4808;
        v406[3] = &unk_27A6A87E0;
        v410 = v254;
        v400 = v256;
        v407 = v400;
        v408 = v257;
        v409 = v255;
        v401 = v257;
        sub_275FE4778(unarchiverCopy, archive + 120, v406);

LABEL_52:
        v26 = v21;
        goto LABEL_53;
      }
    }

    v349 = objc_alloc(MEMORY[0x277CBEB18]);
    v256 = objc_msgSend_initWithCapacity_(v349, v350, v354, v355, v356, v357, v254, v351, v352, v353);
    v358 = objc_alloc(MEMORY[0x277CBEB18]);
    v257 = objc_msgSend_initWithCapacity_(v358, v359, v363, v364, v365, v366, v254, v360, v361, v362);
    if (v254 >= 1)
    {
      v367 = v254;
      v368 = 8;
      v403 = v367;
      v404 = v256;
      v255 = v405;
      while (1)
      {
        v369 = objc_opt_new();
        if ((objc_msgSend_p_unarchiveHint_fromArchive_(v405, v370, v373, v374, v375, v376, v369, *(*(archive + 20) + v368), v371, v372) & 1) == 0)
        {
          break;
        }

        v377 = objc_opt_new();
        objc_msgSend_p_unarchiveTopicNumberHints_fromArchive_unarchiver_(v405, v378, v380, v381, v382, v383, v377, *(*(archive + 23) + v368), unarchiverCopy, v379);
        objc_msgSend_addObject_(v404, v384, v388, v389, v390, v391, v369, v385, v386, v387);
        objc_msgSend_addObject_(v257, v392, v396, v397, v398, v399, v377, v393, v394, v395);

        v368 += 8;
        if (!--v367)
        {
          LODWORD(v254) = v403;
          v256 = v404;
          goto LABEL_51;
        }
      }

      goto LABEL_38;
    }

    v255 = v405;
    goto LABEL_51;
  }

LABEL_53:

  return v26;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context
{
  v554 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  contextCopy = context;
  if (self->_isCopyForCaching)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v13, v14, v15, "[TPPageHint saveToArchive:archiver:context:]", v9, v10, v11);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 909, 0, "Cannot archive a page hint that is intended for caching only");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  *(archive + 4) |= 1u;
  if (!*(archive + 24))
  {
    v41 = *(archive + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 24) = MEMORY[0x277C92D40](v41);
  }

  TSPNSRangeCopyToMessage();
  *(archive + 4) |= 2u;
  if (!*(archive + 25))
  {
    v42 = *(archive + 1);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 25) = MEMORY[0x277C92D40](v42);
  }

  TSPNSRangeCopyToMessage();
  *(archive + 4) |= 0xC0u;
  v43.n128_u64[0] = 0x100000035;
  *(archive + 236) = 0x100000035;
  if (!objc_msgSend_count(self->_hints, v44, v43, v49, v50, v51, v45, v46, v47, v48))
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v56, v57, v58, v59, "[TPPageHint saveToArchive:archiver:context:]", v53, v54, v55);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v63, v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v71, v72, v73, v74, v75, v61, v70, 917, 0, "Page hint is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v81, v82, v83, v84, v77, v78, v79, v80);
  }

  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v85 = self->_hints;
  v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, v88, v89, v90, v91, &v545, v553, 16, v87);
  if (v95)
  {
    v100 = *v546;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v546 != v100)
        {
          objc_enumerationMutation(v85);
        }

        v102 = *(*(&v545 + 1) + 8 * i);
        v103 = *(archive + 5);
        if (!v103)
        {
          goto LABEL_23;
        }

        v104 = *(archive + 8);
        v105 = *v103;
        if (v104 < *v103)
        {
          *(archive + 8) = v104 + 1;
          objc_msgSend_p_archiveHint_intoArchive_(self, v92, v96, v97, v98, v99, v102, *&v103[2 * v104 + 2], v93, v94);
          continue;
        }

        if (v105 == *(archive + 9))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v103 = *(archive + 5);
          v105 = *v103;
        }

        *v103 = v105 + 1;
        v106 = sub_275FAF71C(*(archive + 3));
        v107 = *(archive + 8);
        v108 = *(archive + 5) + 8 * v107;
        *(archive + 8) = v107 + 1;
        *(v108 + 8) = v106;
        objc_msgSend_p_archiveHint_intoArchive_(self, v109, v112, v113, v114, v115, v102, v106, v110, v111);
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v92, v96, v97, v98, v99, &v545, v553, 16, v94);
    }

    while (v95);
  }

  v125 = objc_msgSend_anchoredDrawablePositions(self, v116, v121, v122, v123, v124, v117, v118, v119, v120);
  v542[0] = MEMORY[0x277D85DD0];
  v542[1] = 3221225472;
  v542[2] = sub_275FE57BC;
  v542[3] = &unk_27A6A8808;
  archiveCopy = archive;
  v524 = archiverCopy;
  v543 = v524;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v125, v126, v130, v131, v132, v133, v542, v127, v128, v129);

  v540 = 0u;
  v541 = 0u;
  v538 = 0u;
  v539 = 0u;
  v134 = self->_startingPartitionedAttachments;
  v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, v137, v138, v139, v140, &v538, v552, 16, v136);
  if (!v145)
  {
    goto LABEL_41;
  }

  v150 = *v539;
  do
  {
    for (j = 0; j != v145; ++j)
    {
      if (*v539 != v150)
      {
        objc_enumerationMutation(v134);
      }

      v152 = *(*(&v538 + 1) + 8 * j);
      v153 = *(archive + 14);
      if (!v153)
      {
        goto LABEL_37;
      }

      v154 = *(archive + 26);
      v155 = *v153;
      if (v154 < *v153)
      {
        *(archive + 26) = v154 + 1;
        objc_msgSend_tsp_saveToMessage_(v152, v141, v146, v147, v148, v149, *&v153[2 * v154 + 2], v142, v143, v144);
        continue;
      }

      if (v155 == *(archive + 27))
      {
LABEL_37:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 96));
        v153 = *(archive + 14);
        v155 = *v153;
      }

      *v153 = v155 + 1;
      v156 = MEMORY[0x277C92D20](*(archive + 12));
      v157 = *(archive + 26);
      v158 = *(archive + 14) + 8 * v157;
      *(archive + 26) = v157 + 1;
      *(v158 + 8) = v156;
      objc_msgSend_tsp_saveToMessage_(v152, v159, v163, v164, v165, v166, v156, v160, v161, v162);
    }

    v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v141, v146, v147, v148, v149, &v538, v552, 16, v144);
  }

  while (v145);
LABEL_41:

  v176 = objc_msgSend_count(self->_flowHints, v167, v172, v173, v174, v175, v168, v169, v170, v171);
  if (v176 != objc_msgSend_count(self->_flowTopicNumberHints, v177, v182, v183, v184, v185, v178, v179, v180, v181))
  {
    v195 = MEMORY[0x277D81150];
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v186, v191, v192, v193, v194, "[TPPageHint saveToArchive:archiver:context:]", v188, v189, v190);
    v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, v201, v202, v203, v204, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v198, v199, v200);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v206, v207, v208, v209, v210, v196, v205, 946, 0, "mismatch in _flowHints and _flowTopicNumberHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v211, v216, v217, v218, v219, v212, v213, v214, v215);
  }

  v220 = objc_msgSend_count(self->_flowHints, v186, v191, v192, v193, v194, v187, v188, v189, v190);
  if (v220 == objc_msgSend_count(self->_flowTopicNumberHints, v221, v226, v227, v228, v229, v222, v223, v224, v225))
  {
    v536 = 0u;
    v537 = 0u;
    v534 = 0u;
    v535 = 0u;
    v239 = self->_flowHints;
    v250 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v240, v242, v243, v244, v245, &v534, v551, 16, v241);
    if (!v250)
    {
      goto LABEL_52;
    }

    v255 = *v535;
    do
    {
      for (k = 0; k != v250; ++k)
      {
        if (*v535 != v255)
        {
          objc_enumerationMutation(v239);
        }

        v257 = objc_msgSend_objectForKeyedSubscript_(self->_flowTopicNumberHints, v246, v251, v252, v253, v254, *(*(&v534 + 1) + 8 * k), v247, v248, v249);
        v258 = v257 == 0;

        if (v258)
        {
LABEL_80:

          goto LABEL_81;
        }
      }

      v250 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v246, v251, v252, v253, v254, &v534, v551, 16, v249);
    }

    while (v250);
LABEL_52:

    v532 = 0u;
    v533 = 0u;
    v530 = 0u;
    v531 = 0u;
    v239 = self->_flowHints;
    v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v259, v261, v262, v263, v264, &v530, v550, 16, v260);
    if (!v269)
    {
      goto LABEL_80;
    }

    v274 = *v531;
    while (2)
    {
      v275 = 0;
LABEL_55:
      if (*v531 != v274)
      {
        objc_enumerationMutation(v239);
      }

      v276 = *(*(&v530 + 1) + 8 * v275);
      v280 = objc_msgSend_objectForKeyedSubscript_(self->_flowHints, v265, v270, v271, v272, v273, v276, v266, v267, v268);
      v285 = *(archive + 17);
      if (!v285)
      {
        goto LABEL_62;
      }

      v286 = *(archive + 32);
      v287 = *v285;
      if (v286 < *v285)
      {
        *(archive + 32) = v286 + 1;
        objc_msgSend_setWeakReference_message_(v524, v277, v281, v282, v283, v284, v276, *&v285[2 * v286 + 2], v278, v279);
        goto LABEL_64;
      }

      if (v287 == *(archive + 33))
      {
LABEL_62:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 120));
        v285 = *(archive + 17);
        v287 = *v285;
      }

      *v285 = v287 + 1;
      v295 = MEMORY[0x277C92D60](*(archive + 15));
      v296 = *(archive + 32);
      v297 = *(archive + 17) + 8 * v296;
      *(archive + 32) = v296 + 1;
      *(v297 + 8) = v295;
      objc_msgSend_setWeakReference_message_(v524, v298, v301, v302, v303, v304, v276, v295, v299, v300);
LABEL_64:
      v305 = *(archive + 20);
      if (!v305)
      {
        goto LABEL_69;
      }

      v306 = *(archive + 38);
      v307 = *v305;
      if (v306 < *v305)
      {
        *(archive + 38) = v306 + 1;
        objc_msgSend_p_archiveHint_intoArchive_(self, v288, v291, v292, v293, v294, v280, *&v305[2 * v306 + 2], v289, v290);
        goto LABEL_71;
      }

      if (v307 == *(archive + 39))
      {
LABEL_69:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 144));
        v305 = *(archive + 20);
        v307 = *v305;
      }

      *v305 = v307 + 1;
      v316 = sub_275FAF71C(*(archive + 18));
      v317 = *(archive + 38);
      v318 = *(archive + 20) + 8 * v317;
      *(archive + 38) = v317 + 1;
      *(v318 + 8) = v316;
      objc_msgSend_p_archiveHint_intoArchive_(self, v319, v322, v323, v324, v325, v280, v316, v320, v321);
LABEL_71:
      v328 = objc_msgSend_objectForKeyedSubscript_(self->_flowTopicNumberHints, v308, v312, v313, v314, v315, v276, v309, v310, v311);
      v333 = *(archive + 23);
      if (!v333)
      {
        goto LABEL_76;
      }

      v334 = *(archive + 44);
      v335 = *v333;
      if (v334 < *v333)
      {
        *(archive + 44) = v334 + 1;
        objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v326, v329, v330, v331, v332, v328, *&v333[2 * v334 + 2], v524, v327);
        goto LABEL_78;
      }

      if (v335 == *(archive + 45))
      {
LABEL_76:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 168));
        v333 = *(archive + 23);
        v335 = *v333;
      }

      *v333 = v335 + 1;
      v336 = sub_275FAFB4C(*(archive + 21));
      v337 = *(archive + 44);
      v338 = *(archive + 23) + 8 * v337;
      *(archive + 44) = v337 + 1;
      *(v338 + 8) = v336;
      objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v339, v341, v342, v343, v344, v328, v336, v524, v340);
LABEL_78:

      if (v269 == ++v275)
      {
        v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v265, v270, v271, v272, v273, &v530, v550, 16, v268);
        if (!v269)
        {
          goto LABEL_80;
        }

        continue;
      }

      goto LABEL_55;
    }
  }

LABEL_81:
  pageKind = self->_pageKind;
  *(archive + 4) |= 0x20u;
  *(archive + 58) = pageKind;
  if (pageKind != 5)
  {
    v346 = MEMORY[0x277CBEB18];
    v347 = objc_msgSend_count(self->_childHints, v230, v235, v236, v237, v238, v231, v232, v233, v234);
    v523 = objc_msgSend_arrayWithCapacity_(v346, v348, v352, v353, v354, v355, v347, v349, v350, v351);
    v528 = 0u;
    v529 = 0u;
    v526 = 0u;
    v527 = 0u;
    obj = self->_childHints;
    v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v356, v358, v359, v360, v361, &v526, v549, 16, v357);
    if (v362)
    {
      v363 = *v527;
      do
      {
        for (m = 0; m != v362; ++m)
        {
          if (*v527 != v363)
          {
            objc_enumerationMutation(obj);
          }

          v520 = &unk_288546710;
          v365 = TSUProtocolCast();
          if (v365)
          {
            v366 = objc_opt_class();
            v376 = objc_msgSend_archivedHintClass(v366, v367, v372, v373, v374, v375, v368, v369, v370, v371, &unk_288546710);
            if (!v376)
            {
              v385 = MEMORY[0x277D81150];
              v386 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v377, v381, v382, v383, v384, "[TPPageHint saveToArchive:archiver:context:]", v378, v379, v380);
              v395 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v387, v391, v392, v393, v394, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v388, v389, v390);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v385, v396, v397, v398, v399, v400, v386, v395, 984, 0, "invalid nil value for '%{public}s'", "archivedHintClass");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v401, v406, v407, v408, v409, v402, v403, v404, v405);
              v376 = 0;
            }
          }

          else
          {
            v376 = objc_opt_class();
          }

          v410 = [v376 alloc];
          v422 = objc_msgSend_initWithContext_hint_(v410, v411, v414, v415, v416, v417, contextCopy, v365, v412, v413);
          if (v422)
          {
            objc_msgSend_addObject_(v523, v418, v423, v424, v425, v426, v422, v419, v420, v421);
          }

          else
          {
            v427 = MEMORY[0x277D81150];
            v428 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v418, v423, v424, v425, v426, "[TPPageHint saveToArchive:archiver:context:]", v419, v420, v421);
            v437 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v429, v433, v434, v435, v436, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v430, v431, v432);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v427, v438, v439, v440, v441, v442, v428, v437, 993, 0, "invalid nil value for '%{public}s'", "archivedHint");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v443, v448, v449, v450, v451, v444, v445, v446, v447);
          }
        }

        v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v452, v454, v455, v456, v457, &v526, v549, 16, v453);
      }

      while (v362);
    }

    objc_msgSend_setStrongReferenceArray_message_(v524, v458, v461, v462, v463, v464, v523, archive + 72, v459, v460);
  }

  pageRow = self->_pageRow;
  if (HIDWORD(pageRow))
  {
    v470 = MEMORY[0x277D81150];
    v471 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v230, v235, v236, v237, v238, "[TPPageHint saveToArchive:archiver:context:]", v232, v233, v234);
    v480 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v472, v476, v477, v478, v479, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v473, v474, v475);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v470, v481, v482, v483, v484, v485, v471, v480, 1000, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v486, v491, v492, v493, v494, v487, v488, v489, v490);
    LODWORD(pageRow) = -1;
  }

  v466 = *(archive + 4) | 0x400;
  *(archive + 4) = v466;
  *(archive + 63) = pageRow;
  pageColumn = self->_pageColumn;
  if (HIDWORD(pageColumn))
  {
    v495 = MEMORY[0x277D81150];
    v496 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v230, v235, v236, v237, v238, "[TPPageHint saveToArchive:archiver:context:]", v232, v233, v234);
    v505 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v497, v501, v502, v503, v504, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v498, v499, v500);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v495, v506, v507, v508, v509, v510, v496, v505, 1001, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v511, v516, v517, v518, v519, v512, v513, v514, v515);
    v466 = *(archive + 4);
    LODWORD(pageColumn) = -1;
  }

  *(archive + 62) = pageColumn;
  *(archive + 4) = v466 | 0x210;
  v468 = *(archive + 28);
  if (!v468)
  {
    v469 = *(archive + 1);
    if (v469)
    {
      v469 = *(v469 & 0xFFFFFFFFFFFFFFFELL);
    }

    v468 = sub_275FAFB4C(v469);
    *(archive + 28) = v468;
  }

  objc_msgSend_p_archiveTopicNumberHints_intoArchive_archiver_(self, v230, v235, v236, v237, v238, self->_topicNumberHints, v468, v524, v234, v520);
}

- (void)p_archiveHint:(id)hint intoArchive:(void *)archive
{
  hintCopy = hint;
  objc_msgSend_frameBounds(hintCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = v19.n128_u64[0];
  v24 = v20.n128_u64[0];
  v25 = v21.n128_f64[0];
  v26 = v22.n128_f64[0];
  *(archive + 4) |= 0x10u;
  v27 = *(archive + 7);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = sub_275FAF560(v28);
    *(archive + 7) = v27;
  }

  *(v27 + 16) |= 3u;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(archive + 4) |= 0x20u;
  v29 = *(archive + 8);
  if (!v29)
  {
    v30 = *(archive + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = sub_275FAF5D4(v30);
    *(archive + 8) = v29;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  v31 = hintCopy;
  if (v25 > 0.0)
  {
    v19.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v25 > 1.79769313e308)
    {
      v163 = MEMORY[0x277D81150];
      v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPPageHint p_archiveHint:intoArchive:]", v16, v17, v18);
      v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, v169, v170, v171, v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v166, v167, v168);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v163, v174, v175, v176, v177, v178, v164, v173, 1017, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v184, v185, v186, v187, v180, v181, v182, v183);
      v188 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_40:
      v25 = *&v188;
LABEL_41:
      v31 = hintCopy;
      goto LABEL_14;
    }
  }

  if (v25 < 0.0)
  {
    v19.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v25 < -1.79769313e308)
    {
      v215 = MEMORY[0x277D81150];
      v216 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPPageHint p_archiveHint:intoArchive:]", v16, v17, v18);
      v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, v221, v222, v223, v224, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v218, v219, v220);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v215, v226, v227, v228, v229, v230, v216, v225, 1017, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v231, v236, v237, v238, v239, v232, v233, v234, v235);
      v188 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_40;
    }
  }

LABEL_14:
  *(v29 + 16) |= 1u;
  *(v29 + 24) = v25;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 > 0.0)
  {
    v19.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v26 > 1.79769313e308)
    {
      v189 = MEMORY[0x277D81150];
      v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPPageHint p_archiveHint:intoArchive:]", v16, v17, v18);
      v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v195, v196, v197, v198, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v192, v193, v194);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v200, v201, v202, v203, v204, v190, v199, 1018, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v210, v211, v212, v213, v206, v207, v208, v209);
      v214 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_43:
      v26 = *&v214;
      v31 = hintCopy;
      goto LABEL_19;
    }
  }

  if (v26 < 0.0)
  {
    v19.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v26 < -1.79769313e308)
    {
      v240 = MEMORY[0x277D81150];
      v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPPageHint p_archiveHint:intoArchive:]", v16, v17, v18);
      v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, v246, v247, v248, v249, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v243, v244, v245);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v240, v251, v252, v253, v254, v255, v241, v250, 1018, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v256, v261, v262, v263, v264, v257, v258, v259, v260);
      v214 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_43;
    }
  }

LABEL_19:
  *(v29 + 16) |= 2u;
  *(v29 + 32) = v26;
  objc_msgSend_range(v31, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  *(archive + 4) |= 4u;
  if (!*(archive + 5))
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 5) = MEMORY[0x277C92D40](v32);
  }

  TSPNSRangeCopyToMessage();
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(hintCopy, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  if (HIDWORD(WidowPullsDownFromCharIndex))
  {
    v113 = MEMORY[0x277D81150];
    v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v48, v49, v50, v51, "[TPPageHint p_archiveHint:intoArchive:]", v45, v46, v47);
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v116, v117, v118);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v124, v125, v126, v127, v128, v114, v123, 1029, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v129, v134, v135, v136, v137, v130, v131, v132, v133);
    LODWORD(WidowPullsDownFromCharIndex) = -1;
  }

  *(archive + 4) |= 0x40u;
  *(archive + 18) = WidowPullsDownFromCharIndex;
  objc_msgSend_anchoredRange(hintCopy, v43, v48, v49, v50, v51, v44, v45, v46, v47);
  *(archive + 4) |= 8u;
  if (!*(archive + 6))
  {
    v52 = *(archive + 1);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 6) = MEMORY[0x277C92D40](v52);
  }

  TSPNSRangeCopyToMessage();
  v62 = objc_msgSend_columnCount(hintCopy, v53, v58, v59, v60, v61, v54, v55, v56, v57);
  if (HIDWORD(v62))
  {
    v138 = MEMORY[0x277D81150];
    v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v68, v69, v70, v71, "[TPPageHint p_archiveHint:intoArchive:]", v65, v66, v67);
    v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v144, v145, v146, v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v141, v142, v143);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v149, v150, v151, v152, v153, v139, v148, 1033, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v159, v160, v161, v162, v155, v156, v157, v158);
    LODWORD(v62) = -1;
  }

  *(archive + 4) |= 0x80u;
  *(archive + 19) = v62;
  if (objc_msgSend_lineFragmentCount(hintCopy, v63, v68, v69, v70, v71, v64, v65, v66, v67) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v81 = objc_msgSend_lineFragmentCount(hintCopy, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  if (HIDWORD(v81))
  {
    v265 = MEMORY[0x277D81150];
    v266 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v77, v78, v79, v80, "[TPPageHint p_archiveHint:intoArchive:]", v74, v75, v76);
    v275 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v267, v271, v272, v273, v274, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v268, v269, v270);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v265, v276, v277, v278, v279, v280, v266, v275, 1035, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v281, v286, v287, v288, v289, v282, v283, v284, v285);
LABEL_32:
    LODWORD(v81) = -1;
  }

  *(archive + 4) |= 0x100u;
  *(archive + 20) = v81;
  HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(hintCopy, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  *(archive + 4) |= 0x400u;
  *(archive + 85) = HasListLabel;
  v92 = objc_msgSend_endOfLayout(hintCopy, v83, v88, v89, v90, v91, v84, v85, v86, v87);
  *(archive + 4) |= 0x200u;
  *(archive + 84) = v92;
  IsVertical = objc_msgSend_textIsVertical(hintCopy, v93, v98, v99, v100, v101, v94, v95, v96, v97);
  *(archive + 4) |= 0x800u;
  *(archive + 86) = IsVertical;
  v112 = objc_msgSend_terminatedByBreak(hintCopy, v103, v108, v109, v110, v111, v104, v105, v106, v107);
  *(archive + 4) |= 0x1000u;
  *(archive + 87) = v112;
}

- (BOOL)p_unarchiveHint:(id)hint fromArchive:(const void *)archive
{
  hintCopy = hint;
  v15 = hintCopy;
  if ((*(archive + 16) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(archive + 7);
  objc_msgSend_frameBounds(hintCopy, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v17.n128_u64[0] = *(v16 + 24);
  v18.n128_u64[0] = *(v16 + 32);
  objc_msgSend_setFrameBounds_(v15, v19, v17, v18, v24, v25, v20, v21, v22, v23);
  if ((*(archive + 16) & 0x20) == 0)
  {
    goto LABEL_12;
  }

  v35 = *(archive + 8);
  objc_msgSend_frameBounds(v15, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v36.n128_u64[0] = *(v35 + 24);
  v37.n128_u64[0] = *(v35 + 32);
  objc_msgSend_setFrameBounds_(v15, v38, v43, v44, v36, v37, v39, v40, v41, v42);
  if ((*(archive + 16) & 4) == 0)
  {
    goto LABEL_12;
  }

  v45 = TSPNSRangeFromMessage();
  objc_msgSend_setRange_(v15, v46, v49, v50, v51, v52, v45, v46, v47, v48);
  if ((*(archive + 16) & 0x40) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setNextWidowPullsDownFromCharIndex_(v15, v53, v57, v58, v59, v60, *(archive + 18), v54, v55, v56);
  if ((*(archive + 16) & 8) == 0)
  {
    goto LABEL_12;
  }

  v61 = TSPNSRangeFromMessage();
  objc_msgSend_setAnchoredRange_(v15, v62, v65, v66, v67, v68, v61, v62, v63, v64);
  if ((*(archive + 16) & 0x80) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setColumnCount_(v15, v69, v73, v74, v75, v76, *(archive + 19), v70, v71, v72);
  if ((*(archive + 17) & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setLineFragmentCount_(v15, v77, v81, v82, v83, v84, *(archive + 20), v78, v79, v80);
  if (objc_msgSend_lineFragmentCount(v15, v85, v90, v91, v92, v93, v86, v87, v88, v89) == 0xFFFFFFFFLL)
  {
    objc_msgSend_setLineFragmentCount_(v15, v94, v98, v99, v100, v101, 0x7FFFFFFFFFFFFFFFLL, v95, v96, v97);
  }

  if ((*(archive + 17) & 2) != 0 && (objc_msgSend_setEndOfLayout_(v15, v94, v98, v99, v100, v101, *(archive + 84), v95, v96, v97), (*(archive + 17) & 4) != 0))
  {
    objc_msgSend_setLastLineIsEmptyAndHasListLabel_(v15, v102, v106, v107, v108, v109, *(archive + 85), v103, v104, v105);
    v120 = *(archive + 4);
    if ((v120 & 0x800) != 0)
    {
      objc_msgSend_setTextIsVertical_(v15, v112, v116, v117, v118, v119, *(archive + 86), v113, v114, v115);
      v120 = *(archive + 4);
    }

    if ((v120 & 0x1000) != 0)
    {
      objc_msgSend_setTerminatedByBreak_(v15, v112, v116, v117, v118, v119, *(archive + 87), v113, v114, v115);
    }

    v110 = 1;
  }

  else
  {
LABEL_12:
    v110 = 0;
  }

  return v110;
}

- (void)p_archiveTopicNumberHints:(id)hints intoArchive:(void *)archive archiver:(id)archiver
{
  v205 = *MEMORY[0x277D85DE8];
  hintsCopy = hints;
  archiverCopy = archiver;
  v184 = hintsCopy;
  objc_msgSend_entryForListStyle(hintsCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  obj = v200 = 0u;
  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v18, v19, v20, v21, &v199, v204, 16, v17);
  if (v190)
  {
    v188 = *v200;
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v200 != v188)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v199 + 1) + 8 * i);
        v193 = objc_msgSend_objectForKey_(obj, v22, v26, v27, v28, v29, v30, v23, v24, v25);
        archiveCopy2 = archive;
        v39 = *(archive + 4);
        if (!v39)
        {
          goto LABEL_11;
        }

        v40 = *(archive + 6);
        v41 = *v39;
        if (v40 < *v39)
        {
          *(archive + 6) = v40 + 1;
          v42 = *&v39[2 * v40 + 2];
          goto LABEL_13;
        }

        if (v41 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          archiveCopy2 = archive;
          v39 = *(archive + 4);
          v41 = *v39;
        }

        *v39 = v41 + 1;
        v42 = sub_275FAFAC0(archiveCopy2[2]);
        v43 = *(archive + 6);
        v44 = *(archive + 4) + 8 * v43;
        *(archive + 6) = v43 + 1;
        *(v44 + 8) = v42;
LABEL_13:
        *(v42 + 16) |= 1u;
        v45 = *(v42 + 48);
        if (!v45)
        {
          v46 = *(v42 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x277C92D60](v46);
          *(v42 + 48) = v45;
        }

        objc_msgSend_setWeakReference_message_(archiverCopy, v31, v34, v35, v36, v37, v30, v45, v32, v33);
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v55 = objc_msgSend_topicNumbers(v193, v47, 0, v52, v53, v54, v48, v49, v50, v51);
        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v58, v59, v60, v61, &v195, v203, 16, v57);
        if (v67)
        {
          v72 = *v196;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v196 != v72)
              {
                objc_enumerationMutation(v55);
              }

              v74 = *(*(&v195 + 1) + 8 * j);
              v75 = *(v42 + 40);
              if (!v75)
              {
                goto LABEL_27;
              }

              v76 = *(v42 + 32);
              v77 = *v75;
              if (v76 < *v75)
              {
                *(v42 + 32) = v76 + 1;
                v78 = *&v75[2 * v76 + 2];
                goto LABEL_29;
              }

              if (v77 == *(v42 + 36))
              {
LABEL_27:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v42 + 24));
                v75 = *(v42 + 40);
                v77 = *v75;
              }

              *v75 = v77 + 1;
              v78 = sub_275FAFA4C(*(v42 + 24));
              v79 = *(v42 + 32);
              v80 = *(v42 + 40) + 8 * v79;
              *(v42 + 32) = v79 + 1;
              *(v80 + 8) = v78;
LABEL_29:
              v81 = objc_msgSend_number(v74, v62, v68, v69, v70, v71, v63, v64, v65, v66);
              if (HIDWORD(v81))
              {
                v112 = MEMORY[0x277D81150];
                v185 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v87, v88, v89, v90, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]", v84, v85, v86);
                v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v114, v115, v116);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v122, v123, v124, v125, v126, v185, v121, 1153, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v132, v133, v134, v135, v128, v129, v130, v131);
                LODWORD(v81) = -1;
              }

              *(v78 + 16) |= 1u;
              *(v78 + 24) = v81;
              v91 = objc_msgSend_numberType(v74, v82, v87, v88, v89, v90, v83, v84, v85, v86);
              if (v91 >= 0x100000000)
              {
                v136 = MEMORY[0x277D81150];
                v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v97, v98, v99, v100, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]", v94, v95, v96);
                v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v141, v142, v143, v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v138, v139, v140);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v146, v147, v148, v149, v150, v186, v145, 1154, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v156, v157, v158, v159, v152, v153, v154, v155);
                LODWORD(v91) = -1;
              }

              *(v78 + 16) |= 4u;
              *(v78 + 32) = v91;
              v101 = objc_msgSend_labelType(v74, v92, v97, v98, v99, v100, v93, v94, v95, v96);
              if (v101 >= 0x100000000)
              {
                v160 = MEMORY[0x277D81150];
                v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v107, v108, v109, v110, "[TPPageHint p_archiveTopicNumberHints:intoArchive:archiver:]", v104, v105, v106);
                v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, v165, v166, v167, v168, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v162, v163, v164);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v160, v170, v171, v172, v173, v174, v187, v169, 1155, 0, "Out-of-bounds type assignment was clamped to max");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v175, v180, v181, v182, v183, v176, v177, v178, v179);
                LODWORD(v101) = -1;
              }

              *(v78 + 16) |= 2u;
              *(v78 + 28) = v101;
              isTiered = objc_msgSend_isTiered(v74, v102, v107, v108, v109, v110, v103, v104, v105, v106);
              *(v78 + 16) |= 8u;
              *(v78 + 36) = isTiered;
            }

            v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v62, v68, v69, v70, v71, &v195, v203, 16, v66);
          }

          while (v67);
        }
      }

      v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v26, v27, v28, v29, &v199, v204, 16, v25);
    }

    while (v190);
  }
}

- (void)p_unarchiveTopicNumberHints:(id)hints fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  hintsCopy = hints;
  unarchiverCopy = unarchiver;
  v7 = *(archive + 6);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = *(*(archive + 4) + 8 * i + 8);
      v10 = *(v9 + 32);
      v16 = objc_opt_new();
      if (v10 == 9)
      {
        for (j = 0; j != 9; ++j)
        {
          v22 = *(*(v9 + 40) + 8 * j + 8);
          v23 = objc_msgSend_topicNumbers(v16, v11, v17, v18, v19, v20, v12, v13, v14, v15);
          v32 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, v28, v29, v30, v31, j, v25, v26, v27);

          objc_msgSend_setNumber_(v32, v33, v37, v38, v39, v40, *(v22 + 24), v34, v35, v36);
          objc_msgSend_setNumberType_(v32, v41, v45, v46, v47, v48, *(v22 + 32), v42, v43, v44);
          objc_msgSend_setLabelType_(v32, v49, v53, v54, v55, v56, *(v22 + 28), v50, v51, v52);
          objc_msgSend_setIsTiered_(v32, v57, v61, v62, v63, v64, *(v22 + 36), v58, v59, v60);
        }

        v65 = *(v9 + 48);
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = sub_275FE6AFC;
        v100[3] = &unk_27A6A8830;
        v101 = hintsCopy;
        v102 = v16;
        v66 = unarchiverCopy;
        v68 = objc_opt_class();
        if (v65)
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v66, v67, v69, v70, v71, v72, v65, v68, 0, v100);
        }

        else
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v66, v67, v69, v70, v71, v72, MEMORY[0x277D80A18], v68, 0, v100);
        }
      }

      else
      {
        v73 = MEMORY[0x277D81150];
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v17, v18, v19, v20, "[TPPageHint p_unarchiveTopicNumberHints:fromArchive:unarchiver:]", v13, v14, v15);
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm", v76, v77, v78);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v84, v85, v86, v87, v88, v74, v83, 1169, 0, "expected equality between %{public}s and %{public}s", "levelCount", "kMaxListLevel");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v94, v95, v96, v97, v90, v91, v92, v93);
      }
    }
  }
}

@end