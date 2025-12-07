@interface TPCanvasSelection
+ (id)canvasSelectionFromCanvasSelection:(id)selection withToggledInfo:(id)info;
+ (id)canvasSelectionFromSelection:(id)selection;
+ (id)canvasSelectionFromSelection:(id)selection withInfos:(id)infos;
+ (id)emptySelection;
+ (id)selectionWithInfos:(id)infos;
- (BOOL)containsKindOfClass:(Class)class;
- (BOOL)containsUnlockedKindOfClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (NSSet)infos;
- (NSSet)unlockedInfos;
- (NSString)description;
- (TPCanvasSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TPCanvasSelection)initWithTextSelection:(id)selection infos:(id)infos excludedInfos:(id)excludedInfos additionalInfos:(id)additionalInfos;
- (TPCanvasSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index infos:(id)infos excludedInfos:(id)self0 additionalInfos:(id)self1;
- (TPCanvasSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 infos:(id)self2 excludedInfos:(id)self3 additionalInfos:(id)self4;
- (id)UUIDDescription;
- (id)copyExcludingInfo:(id)info;
- (id)copyIncludingInfo:(id)info;
- (id)copyWithNewRange:(_NSRange)range;
- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity;
- (id)copyWithNewType:(int64_t)type;
- (id)copyWithNewType:(int64_t)type range:(_NSRange)range;
- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail;
- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line;
- (id)copyWithZone:(_NSZone *)zone;
- (id)infosOfClass:(Class)class;
- (id)p_UUIDDescriptionsForInfosSet:(id)set;
- (unint64_t)canvasSelectionKind;
- (unint64_t)hash;
- (unint64_t)infoCount;
- (unint64_t)unlockedInfoCount;
- (void)p_commonCopyTo:(id)to;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TPCanvasSelection

+ (id)canvasSelectionFromSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  v4 = TSUDynamicCast();
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = v4;
  if (selectionCopy && !v4)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v7 = [TPCanvasSelection alloc];
      v17 = objc_msgSend_infos(v6, v8, v13, v14, v15, v16, v9, v10, v11, v12);
      IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithInfos_(v7, v18, v22, v23, v24, v25, v17, v19, v20, v21);
    }

    else
    {
      objc_opt_class();
      v17 = TSUDynamicCast();
      if (v17)
      {
        v122 = [TPCanvasSelection alloc];
        v121 = objc_msgSend_type(v17, v26, v31, v32, v33, v34, v27, v28, v29, v30);
        v44 = objc_msgSend_ranges(v17, v35, v40, v41, v42, v43, v36, v37, v38, v39);
        valid = objc_msgSend_validVisualRanges(v17, v45, v50, v51, v52, v53, v46, v47, v48, v49);
        v64 = objc_msgSend_styleInsertionBehavior(v17, v55, v60, v61, v62, v63, v56, v57, v58, v59);
        v74 = objc_msgSend_caretLFAffinity(v17, v65, v70, v71, v72, v73, v66, v67, v68, v69);
        IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(v17, v75, v80, v81, v82, v83, v76, v77, v78, v79);
        v94 = objc_msgSend_leadingCharIndex(v17, v85, v90, v91, v92, v93, v86, v87, v88, v89);
        v104 = objc_msgSend_headCharIndex(v17, v95, v100, v101, v102, v103, v96, v97, v98, v99);
        v114 = objc_msgSend_tailCharIndex(v17, v105, v110, v111, v112, v113, v106, v107, v108, v109);
        IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_(v122, v115, v116, v117, v118, v119, v121, v44, valid, v64, v74, IsLeadingEdge, v94, v104, v114);
      }

      else
      {
        IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex = 0;
      }
    }
  }

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex;
}

+ (id)canvasSelectionFromSelection:(id)selection withInfos:(id)infos
{
  infosCopy = infos;
  v20 = objc_msgSend_canvasSelectionFromSelection_(self, v7, v11, v12, v13, v14, selection, v8, v9, v10);
  if (infosCopy)
  {
    v25 = objc_msgSend_copy(infosCopy, v15, v21, v22, v23, v24, v16, v17, v18, v19);
    v26 = v20[13];
    v20[13] = v25;

    if (!v20[13])
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "+[TPCanvasSelection canvasSelectionFromSelection:withInfos:]", v28, v29, v30);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm", v38, v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 86, 0, "invalid nil value for '%{public}s'", "result->mAdditionalInfos");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
    }
  }

  return v20;
}

+ (id)canvasSelectionFromCanvasSelection:(id)selection withToggledInfo:(id)info
{
  selectionCopy = selection;
  infoCopy = info;
  if ((objc_msgSend_isValid(selectionCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11) & 1) == 0)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v21, v22, v23, v24, "+[TPCanvasSelection canvasSelectionFromCanvasSelection:withToggledInfo:]", v18, v19, v20);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm", v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v36, v37, v38, v39, v40, v26, v35, 95, 0, "Selection should be valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v46, v47, v48, v49, v42, v43, v44, v45);
  }

  if (!infoCopy || !objc_msgSend_isValid(selectionCopy, v16, v21, v22, v23, v24, v17, v18, v19, v20))
  {
    v105 = selectionCopy;
    goto LABEL_12;
  }

  v58 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v50, v54, v55, v56, v57, selectionCopy[12], v51, v52, v53);
  v242 = v58;
  v67 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v59, v63, v64, v65, v66, selectionCopy[13], v60, v61, v62);
  v241 = v67;
  v77 = objc_msgSend_rawInfos(selectionCopy, v68, v73, v74, v75, v76, v69, v70, v71, v72);
  v86 = objc_msgSend_containsObject_(v77, v78, v82, v83, v84, v85, infoCopy, v79, v80, v81);

  if (!v86)
  {
    v106 = objc_msgSend_containsObject_(v67, v87, v91, v92, v93, v94, infoCopy, v88, v89, v90);
    v104 = v67;
    if (!v106)
    {
      goto LABEL_7;
    }

LABEL_10:
    objc_msgSend_removeObject_(v104, v95, v100, v101, v102, v103, infoCopy, v96, v97, v98);
    goto LABEL_11;
  }

  v99 = objc_msgSend_containsObject_(v58, v87, v91, v92, v93, v94, infoCopy, v88, v89, v90);
  v104 = v58;
  if (v99)
  {
    goto LABEL_10;
  }

LABEL_7:
  objc_msgSend_addObject_(v104, v95, v100, v101, v102, v103, infoCopy, v96, v97, v98);
LABEL_11:
  v240 = [TPCanvasSelection alloc];
  v239 = objc_msgSend_type(selectionCopy, v107, v112, v113, v114, v115, v108, v109, v110, v111);
  v125 = objc_msgSend_ranges(selectionCopy, v116, v121, v122, v123, v124, v117, v118, v119, v120);
  valid = objc_msgSend_validVisualRanges(selectionCopy, v126, v131, v132, v133, v134, v127, v128, v129, v130);
  v144 = objc_msgSend_styleInsertionBehavior(selectionCopy, v135, v140, v141, v142, v143, v136, v137, v138, v139);
  v154 = objc_msgSend_caretLFAffinity(selectionCopy, v145, v150, v151, v152, v153, v146, v147, v148, v149);
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(selectionCopy, v155, v160, v161, v162, v163, v156, v157, v158, v159);
  v174 = objc_msgSend_leadingCharIndex(selectionCopy, v165, v170, v171, v172, v173, v166, v167, v168, v169);
  v184 = objc_msgSend_headCharIndex(selectionCopy, v175, v180, v181, v182, v183, v176, v177, v178, v179);
  v194 = objc_msgSend_tailCharIndex(selectionCopy, v185, v190, v191, v192, v193, v186, v187, v188, v189);
  v204 = objc_msgSend_rawInfos(selectionCopy, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  v105 = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(v240, v205, v206, v207, v208, v209, v239, v125, valid, v144, v154, IsLeadingEdge, v174, v184, v194, v204, v242, v241);

  v219 = objc_msgSend_headCharIndex(selectionCopy, v210, v215, v216, v217, v218, v211, v212, v213, v214);
  v229 = objc_msgSend_tailCharIndex(selectionCopy, v220, v225, v226, v227, v228, v221, v222, v223, v224);
  objc_msgSend_i_setHeadCharIndex_tailCharIndex_(v105, v230, v233, v234, v235, v236, v219, v229, v231, v232);

LABEL_12:

  return v105;
}

- (TPCanvasSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 infos:(id)self2 excludedInfos:(id)self3 additionalInfos:(id)self4
{
  edgeCopy = edge;
  visualRangesCopy = visualRanges;
  rangesCopy = ranges;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v59.receiver = self;
  v59.super_class = TPCanvasSelection;
  v27 = [(TSWPSelection *)&v59 initWithType:type ranges:rangesCopy validVisualRanges:visualRangesCopy styleInsertionBehavior:behavior caretAffinity:affinity caretIsLeadingEdge:edgeCopy leadingCharIndex:index headCharIndex:charIndex tailCharIndex:tailCharIndex];
  if (v27)
  {
    v32 = objc_msgSend_copy(infosCopy, v22, v28, v29, v30, v31, v23, v24, v25, v26);
    mInfos = v27->mInfos;
    v27->mInfos = v32;

    v43 = objc_msgSend_copy(excludedInfosCopy, v34, v39, v40, v41, v42, v35, v36, v37, v38);
    mExcludedInfos = v27->mExcludedInfos;
    v27->mExcludedInfos = v43;

    v54 = objc_msgSend_copy(additionalInfosCopy, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    mAdditionalInfos = v27->mAdditionalInfos;
    v27->mAdditionalInfos = v54;
  }

  return v27;
}

- (TPCanvasSelection)initWithType:(int64_t)type range:(_NSRange)range styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index infos:(id)infos excludedInfos:(id)self0 additionalInfos:(id)self1
{
  edgeCopy = edge;
  length = range.length;
  location = range.location;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v28 = objc_msgSend_rangeArrayWithRange_(MEMORY[0x277D80EE8], v21, v24, v25, v26, v27, location, length, v22, v23);
  valid = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v29, v30, v31, v32, v33, type, v28, 0, behavior, affinity, edgeCopy, index, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, infosCopy, excludedInfosCopy, additionalInfosCopy);

  return valid;
}

- (unint64_t)canvasSelectionKind
{
  v99 = *MEMORY[0x277D85DE8];
  isValid = objc_msgSend_isValid(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  result = objc_msgSend_infoCount(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (isValid)
  {
    if (result)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (result)
  {
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v30 = objc_msgSend_infos(self, v22, 0, v27, v28, v29, v23, v24, v25, v26, 0, 0);
    v37 = 0;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v33, v34, v35, v36, &v94, v98, 16, v32);
    if (v38)
    {
      v39 = *v95;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v95 != v39)
          {
            objc_enumerationMutation(v30);
          }

          objc_opt_class();
          v41 = TSUDynamicCast();
          v51 = v41;
          if (v41)
          {
            v52 = objc_msgSend_wpKind(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
            if (v52 == 2)
            {
              v53 = 2;
            }

            else
            {
              v53 = 4;
            }

            if (v52 == 1)
            {
              v54 = 1;
            }

            else
            {
              v54 = v53;
            }
          }

          else
          {
            v54 = 4;
          }

          v37 |= v54;
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v55, v57, v58, v59, v60, &v94, v98, 16, v56);
      }

      while (v38);
    }

    if ((v37 ^ (v37 - 1)) <= v37 - 1)
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "[TPCanvasSelection canvasSelectionKind]", v62, v63, v64);
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPCanvasSelection.mm", v72, v73, v74);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v80, v81, v82, v83, v84, v70, v79, 248, 0, "Improper mix of text storage kinds and/or drawable infos.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v90, v91, v92, v93, v86, v87, v88, v89);
    }

    if (v37 == 2)
    {
      return 4;
    }

    else
    {
      return 2 * (v37 == 4);
    }
  }

  return result;
}

- (NSString)description
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_count(self->mInfos, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = objc_msgSend_count(self->mInfos, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_stringWithFormat_(v30, v32, v36, v37, v38, v39, @"infos (%u) %p", v33, v34, v35, v31, self->mInfos);
    objc_msgSend_addObject_(v11, v41, v45, v46, v47, v48, v40, v42, v43, v44);
  }

  if (objc_msgSend_count(self->mExcludedInfos, v21, v26, v27, v28, v29, v22, v23, v24, v25))
  {
    v58 = MEMORY[0x277CCACA8];
    v59 = objc_msgSend_count(self->mExcludedInfos, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v68 = objc_msgSend_stringWithFormat_(v58, v60, v64, v65, v66, v67, @"excluded (%u) %p", v61, v62, v63, v59, self->mExcludedInfos);
    objc_msgSend_addObject_(v11, v69, v73, v74, v75, v76, v68, v70, v71, v72);
  }

  if (objc_msgSend_count(self->mAdditionalInfos, v49, v54, v55, v56, v57, v50, v51, v52, v53))
  {
    v86 = MEMORY[0x277CCACA8];
    v87 = objc_msgSend_count(self->mAdditionalInfos, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    v96 = objc_msgSend_stringWithFormat_(v86, v88, v92, v93, v94, v95, @"additional (%u) %p", v89, v90, v91, v87, self->mAdditionalInfos);
    objc_msgSend_addObject_(v11, v97, v101, v102, v103, v104, v96, v98, v99, v100);
  }

  v105 = objc_msgSend_componentsJoinedByString_(v11, v77, v82, v83, v84, v85, @", ", v79, v80, v81);
  v106 = MEMORY[0x277CCACA8];
  v118.receiver = self;
  v118.super_class = TPCanvasSelection;
  v107 = [(TSWPSelection *)&v118 description];
  v116 = objc_msgSend_stringWithFormat_(v106, v108, v112, v113, v114, v115, @"%@ %@", v109, v110, v111, v107, v105);

  return v116;
}

- (id)UUIDDescription
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_count(self->mInfos, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = objc_msgSend_count(self->mInfos, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v32, v36, v37, v38, v39, self->mInfos, v33, v34, v35);
    v49 = objc_msgSend_stringWithFormat_(v30, v41, v45, v46, v47, v48, @"infos (%u) %@", v42, v43, v44, v31, v40);
    objc_msgSend_addObject_(v11, v50, v54, v55, v56, v57, v49, v51, v52, v53);
  }

  if (objc_msgSend_count(self->mExcludedInfos, v21, v26, v27, v28, v29, v22, v23, v24, v25))
  {
    v67 = MEMORY[0x277CCACA8];
    v68 = objc_msgSend_count(self->mExcludedInfos, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    v77 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v69, v73, v74, v75, v76, self->mExcludedInfos, v70, v71, v72);
    v86 = objc_msgSend_stringWithFormat_(v67, v78, v82, v83, v84, v85, @"excluded (%u) %@", v79, v80, v81, v68, v77);
    objc_msgSend_addObject_(v11, v87, v91, v92, v93, v94, v86, v88, v89, v90);
  }

  if (objc_msgSend_count(self->mAdditionalInfos, v58, v63, v64, v65, v66, v59, v60, v61, v62))
  {
    v104 = MEMORY[0x277CCACA8];
    v105 = objc_msgSend_count(self->mAdditionalInfos, v95, v100, v101, v102, v103, v96, v97, v98, v99);
    v114 = objc_msgSend_p_UUIDDescriptionsForInfosSet_(self, v106, v110, v111, v112, v113, self->mAdditionalInfos, v107, v108, v109);
    v123 = objc_msgSend_stringWithFormat_(v104, v115, v119, v120, v121, v122, @"additional (%u) %@", v116, v117, v118, v105, v114);
    objc_msgSend_addObject_(v11, v124, v128, v129, v130, v131, v123, v125, v126, v127);
  }

  v132 = objc_msgSend_componentsJoinedByString_(v11, v95, v100, v101, v102, v103, @", ", v97, v98, v99);
  v133 = MEMORY[0x277CCACA8];
  v145.receiver = self;
  v145.super_class = TPCanvasSelection;
  v134 = [(TSWPSelection *)&v145 description];
  v143 = objc_msgSend_stringWithFormat_(v133, v135, v139, v140, v141, v142, @"%@ %@", v136, v137, v138, v134, v132);

  return v143;
}

- (id)p_UUIDDescriptionsForInfosSet:(id)set
{
  v82 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v13 = objc_msgSend_count(setCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v14.n128_u64[0] = 10.0;
  v15.n128_f64[0] = fmin(v13, 10.0);
  v22 = objc_msgSend_initWithCapacity_(v3, v16, v15, v14, v20, v21, v15.n128_f64[0], v17, v18, v19);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = setCopy;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v25, v26, v27, v28, &v77, v81, 16, v24);
  if (v29)
  {
    v75 = 0;
    v30 = *v78;
LABEL_3:
    v31 = 0;
    v32 = v75 <= 0xA;
    v33 = 10 - v75;
    v75 += v29;
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    while (1)
    {
      if (*v78 != v30)
      {
        objc_enumerationMutation(obj);
      }

      if (v34 == v31)
      {
        break;
      }

      v35 = *(*(&v77 + 1) + 8 * v31);
      objc_opt_class();
      v36 = TSUCheckedDynamicCast();
      v46 = objc_msgSend_objectUUIDPath(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
      v47 = MEMORY[0x277CCACA8];
      v48 = objc_opt_class();
      v53 = NSStringFromClass(v48);
      if (v46)
      {
        objc_msgSend_stringWithFormat_(v47, v49, v54, v55, v56, v57, @"%@ %p %@", v50, v51, v52, v53, v35, v46, setCopy);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v47, v49, v54, v55, v56, v57, @"%@ %p", v50, v51, v52, v53, v35);
      }
      v58 = ;
      objc_msgSend_addObject_(v22, v59, v63, v64, v65, v66, v58, v60, v61, v62);

      if (v29 == ++v31)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, v69, v70, v71, v72, &v77, v81, 16, v68);
        if (v29)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v22;
}

+ (id)selectionWithInfos:(id)infos
{
  infosCopy = infos;
  v4 = [TPCanvasSelection alloc];
  v13 = objc_msgSend_initWithInfos_(v4, v5, v9, v10, v11, v12, infosCopy, v6, v7, v8);

  return v13;
}

+ (id)emptySelection
{
  v2 = [TPCanvasSelection alloc];
  v10 = objc_msgSend_initWithRange_(v2, v3, v6, v7, v8, v9, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v4, v5);

  return v10;
}

- (TPCanvasSelection)initWithTextSelection:(id)selection infos:(id)infos excludedInfos:(id)excludedInfos additionalInfos:(id)additionalInfos
{
  selectionCopy = selection;
  infosCopy = infos;
  excludedInfosCopy = excludedInfos;
  additionalInfosCopy = additionalInfos;
  v20 = objc_msgSend_type(selectionCopy, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_ranges(selectionCopy, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  valid = objc_msgSend_validVisualRanges(selectionCopy, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v50 = objc_msgSend_styleInsertionBehavior(selectionCopy, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v60 = objc_msgSend_caretLFAffinity(selectionCopy, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(selectionCopy, v61, v66, v67, v68, v69, v62, v63, v64, v65);
  v80 = objc_msgSend_leadingCharIndex(selectionCopy, v71, v76, v77, v78, v79, v72, v73, v74, v75);
  v90 = objc_msgSend_headCharIndex(selectionCopy, v81, v86, v87, v88, v89, v82, v83, v84, v85);
  v107 = objc_msgSend_tailCharIndex(selectionCopy, v91, v96, v97, v98, v99, v92, v93, v94, v95);
  v105 = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v100, v101, v102, v103, v104, v20, v30, valid, v50, v60, IsLeadingEdge, v80, v90, v107, infosCopy, excludedInfosCopy, additionalInfosCopy);

  return v105;
}

- (id)copyWithNewType:(int64_t)type range:(_NSRange)range
{
  v15.receiver = self;
  v15.super_class = TPCanvasSelection;
  v9 = [(TSWPSelection *)&v15 copyWithNewType:type range:range.location, range.length];
  if (v9)
  {
    objc_msgSend_p_commonCopyTo_(self, v5, v10, v11, v12, v13, v9, v6, v7, v8);
  }

  return v9;
}

- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail
{
  v16.receiver = self;
  v16.super_class = TPCanvasSelection;
  tail = [(TSWPSelection *)&v16 copyWithNewVisualTypeRange:range.location head:range.length tail:head, tail];
  if (tail)
  {
    objc_msgSend_p_commonCopyTo_(self, v6, v11, v12, v13, v14, tail, v7, v8, v9);
  }

  return tail;
}

- (id)copyWithNewType:(int64_t)type
{
  v14.receiver = self;
  v14.super_class = TPCanvasSelection;
  v8 = [(TSWPSelection *)&v14 copyWithNewType:type];
  if (v8)
  {
    objc_msgSend_p_commonCopyTo_(self, v4, v9, v10, v11, v12, v8, v5, v6, v7);
  }

  return v8;
}

- (id)copyWithNewRange:(_NSRange)range
{
  v14.receiver = self;
  v14.super_class = TPCanvasSelection;
  v8 = [(TSWPSelection *)&v14 copyWithNewRange:range.location, range.length];
  if (v8)
  {
    objc_msgSend_p_commonCopyTo_(self, v4, v9, v10, v11, v12, v8, v5, v6, v7);
  }

  return v8;
}

- (id)copyWithNewStyleInsertionBehavior:(int64_t)behavior newCaretAffinity:(int64_t)affinity
{
  v15.receiver = self;
  v15.super_class = TPCanvasSelection;
  v9 = [(TSWPSelection *)&v15 copyWithNewStyleInsertionBehavior:behavior newCaretAffinity:affinity];
  if (v9)
  {
    objc_msgSend_p_commonCopyTo_(self, v5, v10, v11, v12, v13, v9, v6, v7, v8);
  }

  return v9;
}

- (id)copyWithVisualRanges:(id)ranges headCharIndex:(unint64_t)index tailCharIndex:(unint64_t)charIndex rightToLeft:(BOOL)left sameLine:(BOOL)line
{
  v18.receiver = self;
  v18.super_class = TPCanvasSelection;
  v12 = [(TSWPSelection *)&v18 copyWithVisualRanges:ranges headCharIndex:index tailCharIndex:charIndex rightToLeft:left sameLine:line];
  if (v12)
  {
    objc_msgSend_p_commonCopyTo_(self, v8, v13, v14, v15, v16, v12, v9, v10, v11);
  }

  return v12;
}

- (NSSet)infos
{
  v10 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], a2, v5, v6, v7, v8, self->mInfos, v2, v3, v4);
  objc_msgSend_minusSet_(v10, v11, v15, v16, v17, v18, self->mExcludedInfos, v12, v13, v14);
  objc_msgSend_unionSet_(v10, v19, v23, v24, v25, v26, self->mAdditionalInfos, v20, v21, v22);

  return v10;
}

- (unint64_t)infoCount
{
  v10 = objc_msgSend_infos(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_count(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v54.receiver = self;
  v54.super_class = TPCanvasSelection;
  if ([(TSWPSelection *)&v54 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = objc_msgSend_infos(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    objc_opt_class();
    v15 = TSUDynamicCast();
    if (objc_msgSend_count(v14, v16, v21, v22, v23, v24, v17, v18, v19, v20))
    {
      v34 = objc_msgSend_infos(v15, v25, v30, v31, v32, v33, v26, v27, v28, v29);
      isEqual = objc_msgSend_isEqual_(v14, v35, v39, v40, v41, v42, v34, v36, v37, v38);
    }

    else
    {
      v34 = objc_msgSend_infos(v15, v25, v30, v31, v32, v33, v26, v27, v28, v29);
      isEqual = objc_msgSend_count(v34, v44, v49, v50, v51, v52, v45, v46, v47, v48) == 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v73.receiver = self;
  v73.super_class = TPCanvasSelection;
  v4 = [(TSWPSelection *)&v73 hash];
  objc_msgSend_addUnsignedInteger_(v3, v5, v9, v10, v11, v12, v4, v6, v7, v8);
  v22 = objc_msgSend_infos(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v32 = objc_msgSend_allObjects(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v42 = objc_msgSend_mutableCopy(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);

  objc_msgSend_sortUsingComparator_(v42, v43, v47, v48, v49, v50, &unk_288501158, v44, v45, v46);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_275FDCA84;
  v71[3] = &unk_27A6A8690;
  v51 = v3;
  v72 = v51;
  objc_msgSend_enumerateObjectsUsingBlock_(v42, v52, v56, v57, v58, v59, v71, v53, v54, v55);
  v69 = objc_msgSend_hashValue(v51, v60, v65, v66, v67, v68, v61, v62, v63, v64);

  return v69;
}

- (BOOL)containsKindOfClass:(Class)class
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = objc_msgSend_infos(self, a2, 0, v6, v7, v8, class, v3, v4, v5, 0, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v12, v13, v14, v15, &v27, v31, 16, v11);
  if (v16)
  {
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v9);
        }

        if (objc_opt_isKindOfClass())
        {
          v25 = 1;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v19, v21, v22, v23, v24, &v27, v31, 16, v20);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_11:

  return v25;
}

- (NSSet)unlockedInfos
{
  v10 = objc_msgSend_infos(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v19 = objc_msgSend_objectsPassingTest_(v10, v11, v15, v16, v17, v18, &unk_288501178, v12, v13, v14);

  return v19;
}

- (unint64_t)unlockedInfoCount
{
  v10 = objc_msgSend_unlockedInfos(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_count(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)containsUnlockedKindOfClass:(Class)class
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = objc_msgSend_infos(self, a2, 0, v6, v7, v8, class, v3, v4, v5, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v12, v13, v14, v15, &v31, v35, 16, v11);
  if (v16)
  {
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isLocked(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24) & 1) == 0)
        {
          v29 = 1;
          goto LABEL_12;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v20, v25, v26, v27, v28, &v31, v35, 16, v24);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0;
LABEL_12:

  return v29;
}

- (id)infosOfClass:(Class)class
{
  v11 = objc_msgSend_infos(self, a2, v6, v7, v8, v9, class, v3, v4, v5);
  v22[0] = MEMORY[0x277D85DD0];
  v12.n128_u64[0] = 3221225472;
  v22[1] = 3221225472;
  v22[2] = sub_275FDCF30;
  v22[3] = &unk_27A6A86D0;
  v22[4] = class;
  v20 = objc_msgSend_objectsPassingTest_(v11, v13, v12, v17, v18, v19, v22, v14, v15, v16);

  return v20;
}

- (id)copyIncludingInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isInsertionPoint(self, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v23 = objc_msgSend_copyWithNewRange_(self, v14, v19, v20, v21, v22, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v17, v18);
  }

  else
  {
    v23 = objc_msgSend_copy(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  }

  v33 = v23;
  if (objc_msgSend_isFloatingAboveText(infoCopy, v24, v29, v30, v31, v32, v25, v26, v27, v28) & 1) != 0 || (objc_msgSend_isAttachedToBodyText(infoCopy, v34, v39, v40, v41, v42, v35, v36, v37, v38))
  {
    v43 = 0;
    v44 = 1;
  }

  else
  {
    objc_opt_class();
    v54 = objc_msgSend_owningAttachmentNoRecurse(infoCopy, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    v55 = TSUDynamicCast();
    v43 = objc_msgSend_parentStorage(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);

    v44 = 0;
  }

  v112 = MEMORY[0x277D85DD0];
  v113 = 3221225472;
  v114 = sub_275FDD1FC;
  v115 = &unk_27A6A86F8;
  v117 = v44;
  v65 = v43;
  v116 = v65;
  v66 = _Block_copy(&v112);
  v66[2](v66, (v33 + 11));
  v66[2](v66, (v33 + 12));
  v66[2](v66, (v33 + 13));
  v76 = v33[12];
  if (v76)
  {
    v77 = objc_msgSend_mutableCopy(v76, v67, v72, v73, v74, v75, v68, v69, v70, v71, v112, v113, v114, v115);
    objc_msgSend_removeObject_(v77, v78, v82, v83, v84, v85, infoCopy, v79, v80, v81, v112, v113, v114, v115);
  }

  else
  {
    v77 = 0;
    objc_msgSend_removeObject_(0, v67, v72, v73, v74, v75, infoCopy, v69, v70, v71, v112, v113, v114, v115);
  }

  v95 = objc_msgSend_copy(v77, v86, v91, v92, v93, v94, v87, v88, v89, v90);
  v96 = v33[12];
  v33[12] = v95;

  v97 = v33[13];
  if (v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v107 = v98;
  v108 = objc_msgSend_setByAddingObject_(v98, v99, v103, v104, v105, v106, infoCopy, v100, v101, v102);
  v109 = v33[13];
  v33[13] = v108;

  v110 = v33;
  return v110;
}

- (id)copyExcludingInfo:(id)info
{
  infoCopy = info;
  v19 = objc_msgSend_copy(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = v19[13];
  if (v24)
  {
    v25 = objc_msgSend_mutableCopy(v24, v14, v20, v21, v22, v23, v15, v16, v17, v18);
    objc_msgSend_removeObject_(v25, v26, v30, v31, v32, v33, infoCopy, v27, v28, v29);
  }

  else
  {
    v25 = 0;
    objc_msgSend_removeObject_(0, v14, v20, v21, v22, v23, infoCopy, v16, v17, v18);
  }

  v43 = objc_msgSend_copy(v25, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  v44 = v19[13];
  v19[13] = v43;

  v45 = v19[12];
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v55 = v46;
  v56 = objc_msgSend_setByAddingObject_(v46, v47, v51, v52, v53, v54, infoCopy, v48, v49, v50);
  v57 = v19[12];
  v19[12] = v56;

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37.receiver = self;
  v37.super_class = TPCanvasSelection;
  v9 = [(TSWPSelection *)&v37 copyWithZone:?];
  if (v9)
  {
    v14 = objc_msgSend_copyWithZone_(self->mInfos, v5, v10, v11, v12, v13, zone, v6, v7, v8);
    v15 = v9[11];
    v9[11] = v14;

    v24 = objc_msgSend_copyWithZone_(self->mExcludedInfos, v16, v20, v21, v22, v23, zone, v17, v18, v19);
    v25 = v9[12];
    v9[12] = v24;

    v34 = objc_msgSend_copyWithZone_(self->mAdditionalInfos, v26, v30, v31, v32, v33, zone, v27, v28, v29);
    v35 = v9[13];
    v9[13] = v34;
  }

  return v9;
}

- (TPCanvasSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 26) < 1)
  {
    v34 = MEMORY[0x277D80EE8];
    v35 = TSPNSRangeFromMessage();
    v25 = objc_msgSend_rangeArrayWithRange_(v34, v36, v39, v40, v41, v42, v35, v36, v37, v38);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D80EA8]);
    if (*(archive + 26) >= 1)
    {
      v16 = 0;
      do
      {
        sub_275FDE414(archive + 96, v16);
        v17 = TSPNSRangeFromMessage();
        objc_msgSend_addRange_(v11, v18, v21, v22, v23, v24, v17, v18, v19, v20);
        ++v16;
      }

      while (v16 < *(archive + 26));
    }

    v25 = objc_msgSend_copy(v11, v6, v12, v13, v14, v15, v7, v8, v9, v10);
  }

  v43 = objc_msgSend_rangeAtIndex_(v25, v26, v30, v31, v32, v33, 0, v27, v28, v29);
  objc_msgSend_superRange(v25, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  if (v53)
  {
    v62 = 1;
  }

  else
  {
    v62 = objc_msgSend_rangeAtIndex_(v25, 0, v58, v59, v60, v61, 0, v55, v56, v57) == *MEMORY[0x277D81490] && v53 == *(MEMORY[0x277D81490] + 8);
  }

  v122 = v62;
  v64 = *(archive + 4);
  v65 = archive + 156;
  if ((v64 & 0x80) == 0)
  {
    v65 = archive + 136;
  }

  v66 = *v65;
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = 8;
  }

  v68 = *(archive + 36);
  v121 = *(archive + 35);
  v69 = (*(archive + 4) & 0x20) == 0;
  v70 = *(archive + 148);
  if ((v64 & 0x40) != 0)
  {
    v43 = TSPNSUIntegerFromUInt32();
  }

  v71 = objc_msgSend_superRange(v25, v53, v58, v59, v60, v61, v54, v55, v56, v57);
  v81 = objc_msgSend_superRange(v25, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  valid = objc_msgSend_initWithType_ranges_validVisualRanges_styleInsertionBehavior_caretAffinity_leadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_infos_excludedInfos_additionalInfos_(self, v82, v83, v84, v85, v86, v67, v25, (v67 == 7) & v122, v121, v68, (v69 | v70) & 1, v43, v71, &v82[v81], 0, 0, 0);
  if (valid)
  {
    if (*(archive + 16))
    {
      v103 = TSPNSRangeFromMessage();
      objc_msgSend_setVisualDefinitionRange_(valid, v104, v107, v108, v109, v110, v103, v104, v105, v106);
    }

    else
    {
      objc_msgSend_setVisualDefinitionRange_(valid, v87, v91, v92, v93, v94, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v88, v89);
    }

    objc_msgSend_setI_validVisualRanges_(valid, v95, v99, v100, v101, v102, 0, v96, v97, v98);
    objc_msgSend_i_setHeadCharIndex_tailCharIndex_(valid, v111, v114, v115, v116, v117, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, v112, v113);
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = sub_275FDDAC0;
    v128[3] = &unk_27A6A8508;
    v118 = valid;
    v129 = v118;
    sub_275FDDA14(unarchiverCopy, archive + 24, &unk_2885108A0, v128);
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = sub_275FDDB6C;
    v126[3] = &unk_27A6A8508;
    v119 = v118;
    v127 = v119;
    sub_275FDDA14(unarchiverCopy, archive + 48, &unk_2885108A0, v126);
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = sub_275FDDC18;
    v124[3] = &unk_27A6A8508;
    v125 = v119;
    sub_275FDDA14(unarchiverCopy, archive + 72, &unk_2885108A0, v124);
  }

  return valid;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  if (objc_msgSend_type(self, v7, v12, v13, v14, v15, v8, v9, v10, v11) == 8)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_type(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  }

  *(archive + 4) |= 4u;
  *(archive + 34) = v25;
  v26 = objc_msgSend_type(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  *(archive + 4) |= 0x80u;
  *(archive + 39) = v26;
  v36 = objc_msgSend_ranges(self, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v116[0] = MEMORY[0x277D85DD0];
  v37.n128_u64[0] = 3221225472;
  v116[1] = 3221225472;
  v116[2] = sub_275FDDED0;
  v116[3] = &unk_27A6A8718;
  v116[4] = archive;
  objc_msgSend_enumerateRanges_(v36, v38, v37, v42, v43, v44, v116, v39, v40, v41);

  objc_msgSend_visualDefinitionRange(self, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  *(archive + 4) |= 1u;
  if (!*(archive + 15))
  {
    v54 = *(archive + 1);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 15) = MEMORY[0x277C92D40](v54);
  }

  TSPNSRangeCopyToMessage();
  v64 = objc_msgSend_styleInsertionBehavior(self, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  *(archive + 4) |= 8u;
  *(archive + 35) = v64;
  v74 = objc_msgSend_caretLFAffinity(self, v65, v70, v71, v72, v73, v66, v67, v68, v69);
  *(archive + 4) |= 0x10u;
  *(archive + 36) = v74;
  IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(self, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  *(archive + 4) |= 0x20u;
  *(archive + 148) = IsLeadingEdge;
  objc_msgSend_leadingCharIndex(self, v85, v90, v91, v92, v93, v86, v87, v88, v89);
  v94 = TSPUInt32FromNSUInteger();
  *(archive + 4) |= 0x40u;
  *(archive + 38) = v94;
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v95, v98, v99, v100, v101, self->mInfos, archive + 24, v96, v97);
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v102, v105, v106, v107, v108, self->mExcludedInfos, archive + 48, v103, v104);
  objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v109, v112, v113, v114, v115, self->mAdditionalInfos, archive + 72, v110, v111);
}

- (void)p_commonCopyTo:(id)to
{
  toCopy = to;
  v13 = objc_msgSend_copy(self->mInfos, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v14 = toCopy[11];
  toCopy[11] = v13;

  v24 = objc_msgSend_copy(self->mExcludedInfos, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v25 = toCopy[12];
  toCopy[12] = v24;

  v35 = objc_msgSend_copy(self->mAdditionalInfos, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v36 = toCopy[13];
  toCopy[13] = v35;
}

@end