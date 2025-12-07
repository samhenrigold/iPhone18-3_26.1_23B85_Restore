@interface TPUIState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUIState:(id)state;
- (CGRect)visibleRect;
- (TPUIState)init;
- (TPUIState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)UIStateForChart:(id)chart;
- (id)archivedUIStateInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)resetForInitialViewing;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context;
- (void)setSelectionPath:(id)path;
- (void)setUIState:(id)state forChart:(id)chart;
@end

@implementation TPUIState

- (TPUIState)init
{
  v7.receiver = self;
  v7.super_class = TPUIState;
  v2 = [(TPUIState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x277CBF398] + 16);
    v2->_visibleRect.origin = *MEMORY[0x277CBF398];
    v2->_visibleRect.size = v4;
    v2->_wordCountHUDType = 1;
    v2->_wordCountHUDPosition = xmmword_27605FCF8;
    v2->_showsComments = 1;
    selectedInspectorSwitchSegmentIdentifier = v2->_selectedInspectorSwitchSegmentIdentifier;
    v2->_selectedInspectorSwitchSegmentIdentifier = @"TPMacInspectorSegmentIdentifierFormat";

    *&v3->_showUserDefinedGuides = 257;
    v3->_presentationAutoScrollSpeed = -1.0;
  }

  return v3;
}

- (void)setSelectionPath:(id)path
{
  pathCopy = path;
  selectionPath = self->_selectionPath;
  p_selectionPath = &self->_selectionPath;
  if (selectionPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_selectionPath, path);
    pathCopy = v8;
  }
}

- (id)UIStateForChart:(id)chart
{
  v11 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], a2, v6, v7, v8, v9, chart, v3, v4, v5);
  v20 = objc_msgSend_objectForKeyedSubscript_(self->_chartUIState, v12, v16, v17, v18, v19, v11, v13, v14, v15);

  return v20;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  v14 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], v6, v10, v11, v12, v13, chart, v7, v8, v9);
  v24 = objc_msgSend_mutableCopy(self->_chartUIState, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v27 = v26;

  objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v31, v32, v33, v34, stateCopy, v14, v29, v30);
  v44 = objc_msgSend_copy(v27, v35, v40, v41, v42, v43, v36, v37, v38, v39);
  chartUIState = self->_chartUIState;
  self->_chartUIState = v44;
}

- (BOOL)isEqualToUIState:(id)state
{
  stateCopy = state;
  if (!CGRectEqualToRect(self->_visibleRect, *(stateCopy + 7)))
  {
    goto LABEL_41;
  }

  v5 = *(stateCopy + 15);
  v6 = self->_selectionPath;
  v7 = v5;
  if (v6 | v7)
  {
    v17 = v7;
    isEqual = objc_msgSend_isEqual_(v6, v8, v13, v14, v15, v16, v7, v10, v11, v12);

    if (!isEqual)
    {
      goto LABEL_41;
    }
  }

  if (self->_sectionTemplateDrawablesSelectable != stateCopy[8] || self->_rulersVisible != stateCopy[98] || self->_layoutBordersVisible != stateCopy[99] || self->_wordCountHUDVisible != stateCopy[24] || self->_wordCountHUDType != *(stateCopy + 7))
  {
    goto LABEL_41;
  }

  v19 = 0;
  if (self->_wordCountHUDPosition.x == *(stateCopy + 4))
  {
    v13.n128_u64[0] = *&self->_wordCountHUDPosition.y;
    v14.n128_u64[0] = *(stateCopy + 5);
    if (v13.n128_f64[0] == v14.n128_f64[0])
    {
      if (self->_showsComments == stateCopy[100] && self->_hasShowsCTMarkup == stateCopy[101] && self->_showsCTMarkup == stateCopy[102] && self->_hasShowsCTDeletions == stateCopy[103] && self->_showsCTDeletions == stateCopy[104] && self->_changeTrackingPaused == stateCopy[105] && self->_showsFlowMode == stateCopy[106])
      {
        objc_msgSend_tsu_CGFloatValue(self->_flowModeFontScale, v8, v13, v14, v15, v16, v9, v10, v11, v12);
        v21 = v20.n128_f64[0];
        objc_msgSend_tsu_CGFloatValue(*(stateCopy + 17), v22, v20, v27, v28, v29, v23, v24, v25, v26);
        if (v21 == v30 && self->_showsPageNavigator == stateCopy[107] && self->_showsTOCNavigator == stateCopy[108] && self->_pencilAnnotationsHidden == stateCopy[109] && self->_showsActivityStream == stateCopy[110] && self->_tocOrPageNavWidth == *(stateCopy + 26) && self->_activityOrAnnotationWidth == *(stateCopy + 27) && self->_shouldShowCommentSidebar == stateCopy[48] && self->_viewScaleMode == *(stateCopy + 2) && self->_pageViewState == *(stateCopy + 18) && self->_viewScale == *(stateCopy + 19) && CGRectEqualToRect(self->_windowFrame, *(stateCopy + 56)) && sub_275FE7F28(self->_selectedInspectorSwitchSegmentIdentifier, *(stateCopy + 11)) && self->_inspectorHidden == stateCopy[96] && self->_showUserDefinedGuides == stateCopy[111] && sub_275FE7F28(self->_authorForFilteringName, *(stateCopy + 20)) && sub_275FE7EB0(self->_authorForFiltering, *(stateCopy + 21)) && sub_275FE7EB0(self->_freehandDrawingToolkitUIState, *(stateCopy + 22)) && sub_275FE7EB0(self->_pencilAnnotationUIState, *(stateCopy + 23)) && self->_viewScaleModeiOS == *(stateCopy + 24) && self->_presentationAutoScrollSpeed == *(stateCopy + 25) && self->_showUserDefinedPageTemplateGuides == stateCopy[112])
        {
          v19 = self->_editingDisabled == stateCopy[97];
          goto LABEL_42;
        }
      }

LABEL_41:
      v19 = 0;
    }
  }

LABEL_42:

  return v19;
}

- (id)archivedUIStateInContext:(id)context
{
  contextCopy = context;
  v5 = [TPArchivedUIState alloc];
  v13 = objc_msgSend_initWithContext_uiState_(v5, v6, v9, v10, v11, v12, contextCopy, self, v7, v8);

  return v13;
}

- (TPUIState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v16 = objc_msgSend_init(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);

  if (!v16)
  {
    goto LABEL_114;
  }

  v26 = *(archive + 4);
  v284 = unarchiverCopy;
  v285 = v16;
  if ((v26 & 4) == 0)
  {
LABEL_3:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    v139 = objc_alloc(MEMORY[0x277D806C8]);
    if (*(archive + 22))
    {
      v147 = objc_msgSend_initWithArchive_unarchiver_(v139, v140, v143, v144, v145, v146, *(archive + 22), unarchiverCopy, v141, v142);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  TSPCGPointFromMessage(*(archive + 9));
  v16[28] = v138;
  v16[29] = v23.n128_u64[0];
  v22 = *MEMORY[0x277CBF3A8];
  *(v16 + 15) = *MEMORY[0x277CBF3A8];
  v26 = *(archive + 4);
  if ((v26 & 0x20) == 0)
  {
    if ((~v26 & 0x30000) == 0)
    {
      v23.n128_u64[0] = 0x4088000000000000;
      v24.n128_u64[0] = 0x4090000000000000;
      if (*(archive + 188))
      {
        v23.n128_f64[0] = 1024.0;
      }

      v22.n128_f64[0] = v23.n128_f64[0] / *(archive + 46);
      v16[30] = v22.n128_u64[0];
    }

    goto LABEL_3;
  }

  TSPCGSizeCreateFromMessage(*(archive + 12));
  v16[30] = v22.n128_u64[0];
  v16[31] = v23.n128_u64[0];
  v26 = *(archive + 4);
  if ((v26 & 0x8000) != 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  if ((v26 & 0x200) != 0)
  {
    v139 = objc_alloc(MEMORY[0x277D806C8]);
    if (*(archive + 16))
    {
      v147 = objc_msgSend_initWithArchive_unarchiver_(v139, v140, v143, v144, v145, v146, *(archive + 16), unarchiverCopy, v141, v142);
LABEL_32:
      v148 = v16[15];
      v16[15] = v147;
      goto LABEL_33;
    }

LABEL_30:
    v147 = objc_msgSend_initWithArchive_unarchiver_(v139, v140, v143, v144, v145, v146, MEMORY[0x277D80750], unarchiverCopy, v141, v142);
    goto LABEL_32;
  }

  if ((v26 & 0x100) == 0 || ((v27 = objc_alloc(MEMORY[0x277D806C8]), *(archive + 15)) ? (v35 = objc_msgSend_initWithArchive_unarchiver_(v27, v28, v31, v32, v33, v34, *(archive + 15), unarchiverCopy, v29, v30)) : (v35 = objc_msgSend_initWithArchive_unarchiver_(v27, v28, v31, v32, v33, v34, MEMORY[0x277D80750], unarchiverCopy, v29, v30)), v36 = v35, v36, !v36))
  {
    if ((~*(archive + 4) & 0x18) != 0)
    {
      goto LABEL_34;
    }

    v261 = *(archive + 10);
    v309[0] = 0;
    v309[1] = v309;
    v309[2] = 0x3032000000;
    v309[3] = sub_275FE8D64;
    v309[4] = sub_275FE8D74;
    v310 = 0;
    v308[0] = MEMORY[0x277D85DD0];
    v308[1] = 3221225472;
    v308[2] = sub_275FE8E28;
    v308[3] = &unk_27A6A8890;
    v308[4] = v309;
    sub_275FE8D7C(unarchiverCopy, v261, &unk_2885242D8, v308);
    v306[0] = 0;
    v306[1] = v306;
    v306[2] = 0x3032000000;
    v306[3] = sub_275FE8D64;
    v306[4] = sub_275FE8D74;
    v307 = 0;
    if (*(archive + 11))
    {
      v262 = *(archive + 11);
    }

    else
    {
      v262 = MEMORY[0x277D80A18];
    }

    v305[0] = MEMORY[0x277D85DD0];
    v305[1] = 3221225472;
    v305[2] = sub_275FE8EE4;
    v305[3] = &unk_27A6A88B8;
    v305[4] = v306;
    sub_275FE8E38(unarchiverCopy, v262, &unk_288510140, v305);
    v272 = objc_msgSend_context(unarchiverCopy, v263, v268, v269, v270, v271, v264, v265, v266, v267);
    v301[0] = MEMORY[0x277D85DD0];
    v301[1] = 3221225472;
    v301[2] = sub_275FE8EF4;
    v301[3] = &unk_27A6A88E0;
    v304 = v309;
    v303 = v306;
    v301[4] = v272;
    v302 = v16;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v273, v277, v278, v279, v280, v301, v274, v275, v276);

    _Block_object_dispose(v306, 8);
    _Block_object_dispose(v309, 8);
    v148 = v310;
LABEL_33:

    goto LABEL_34;
  }

  v37 = v36;
  v282 = v37;
  v47 = objc_msgSend_orderedSelections(v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  archiveCopy = archive;
  v57 = objc_msgSend_count(v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);

  if (v57)
  {
    v58 = 0;
    do
    {
      objc_opt_class();
      v68 = objc_msgSend_orderedSelections(v37, v59, v64, v65, v66, v67, v60, v61, v62, v63);
      v77 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, v73, v74, v75, v76, v58, v70, v71, v72);
      v78 = TSUDynamicCast();

      isRange = objc_msgSend_isRange(v78, v79, v84, v85, v86, v87, v80, v81, v82, v83);
      v89 = TSUProtocolCast();
      v99 = objc_msgSend_infoCount(v89, v90, v95, v96, v97, v98, v91, v92, v93, v94, &unk_2885226A8);

      v109 = v58 + 1;
      if (v58 + 1 < v57)
      {
        v283 = v37;
        v110 = objc_msgSend_orderedSelections(v37, v100, v105, v106, v107, v108, v101, v102, v103, v104);
        v119 = objc_msgSend_objectAtIndexedSubscript_(v110, v111, v115, v116, v117, v118, v58 + 1, v112, v113, v114);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (v99)
        {
          v128 = 0;
        }

        else
        {
          v128 = isRange;
        }

        if ((v128 & isKindOfClass) == 1)
        {
          v129 = objc_msgSend_copyWithNewRange_(v78, v121, v124, v125, v126, v127, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v122, v123);
          v137 = objc_msgSend_selectionPathReplacingMostSpecificLocationOfSelection_withSelection_(v283, v130, v133, v134, v135, v136, v78, v129, v131, v132);

          v109 = v58 + 2;
          v37 = v137;
        }

        else
        {
          v37 = v283;
        }
      }

      v58 = v109;
    }

    while (v109 < v57);
  }

  v16 = v285;
  objc_storeStrong(v285 + 15, v37);

  archive = archiveCopy;
LABEL_34:
  if ((*(archive + 18) & 4) != 0)
  {
    *(v16 + 8) = *(archive + 189);
  }

  archiveCopy2 = archive;
  v150 = *(archive + 10);
  if (v150 >= 1)
  {
    v151 = 8;
    do
    {
      v152 = *(*(archive + 6) + v151);
      v153 = objc_alloc(MEMORY[0x277D80038]);
      v162 = objc_msgSend_initWithArchive_(v153, v154, v158, v159, v160, v161, v152, v155, v156, v157);
      v163 = *(v152 + 48);
      v298[0] = MEMORY[0x277D85DD0];
      v298[1] = 3221225472;
      v298[2] = sub_275FE90B8;
      v298[3] = &unk_27A6A8908;
      v299 = v285;
      v164 = v162;
      v300 = v164;
      v165 = v284;
      v166 = v298;
      v168 = objc_opt_class();
      if (v163)
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v165, v167, v169, v170, v171, v172, v163, v168, 0, v166);
      }

      else
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v165, v167, v169, v170, v171, v172, MEMORY[0x277D80A18], v168, 0, v166);
      }

      v151 += 8;
      --v150;
    }

    while (v150);
  }

  v173 = *(archive + 5);
  v16 = v285;
  if ((v173 & 0x100) != 0)
  {
    *(v285 + 98) = *(archive + 244);
  }

  v174 = *(archive + 4);
  if ((v174 & 0x80000) != 0)
  {
    *(v285 + 99) = *(archive + 190);
  }

  if ((v174 & 0x100000) != 0)
  {
    *(v285 + 24) = *(archive + 191);
  }

  unarchiverCopy = v284;
  if ((v174 & 0x400000) != 0)
  {
    *(v285 + 7) = *(archive + 49);
  }

  if ((~v174 & 0x10800000) == 0)
  {
    v22.n128_f64[0] = *(archive + 50);
    v23.n128_f64[0] = *(archive + 52);
    v285[4] = v22.n128_u64[0];
    v285[5] = v23.n128_u64[0];
  }

  if ((v173 & 0x200) != 0)
  {
    *(v285 + 100) = *(archive + 245);
  }

  *(v285 + 101) = (v173 & 0x800) != 0;
  if ((v173 & 0x800) != 0)
  {
    *(v285 + 102) = *(archive + 247);
  }

  *(v285 + 103) = (v173 & 0x2000) != 0;
  if ((v173 & 0x2000) != 0)
  {
    *(v285 + 104) = *(archive + 252);
    if ((v174 & 0x8000000) == 0)
    {
LABEL_58:
      if ((v173 & 4) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_74;
    }
  }

  else if ((v174 & 0x8000000) == 0)
  {
    goto LABEL_58;
  }

  *(v285 + 105) = *(archive + 207);
  if ((v173 & 4) == 0)
  {
LABEL_59:
    if ((v173 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v285 + 106) = *(archive + 223);
  if ((v173 & 0x40) == 0)
  {
LABEL_60:
    if ((v174 & 0x1000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_75:
  v22.n128_u32[0] = *(archive + 59);
  v176 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v22, v23, v24, v25, v18, v19, v20, v21);
  v177 = v285[17];
  v285[17] = v176;

  v174 = *(archive + 4);
  if ((v174 & 0x1000000) != 0)
  {
LABEL_61:
    *(v285 + 107) = *(archive + 204);
  }

LABEL_62:
  v175 = *(archive + 5);
  if (v175)
  {
    *(v285 + 108) = *(archive + 221);
    if ((v174 & 0x80000000) == 0)
    {
LABEL_64:
      if ((v175 & 8) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_79;
    }
  }

  else if ((v174 & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  *(v285 + 109) = *(archive + 220);
  if ((v175 & 8) == 0)
  {
LABEL_65:
    if ((v175 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v285 + 110) = *(archive + 224);
  if ((v175 & 0x10) == 0)
  {
LABEL_66:
    if ((v175 & 0x20) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_81;
  }

LABEL_80:
  v22.n128_f64[0] = *(archive + 57);
  v285[26] = v22.n128_u64[0];
  if ((v175 & 0x20) == 0)
  {
LABEL_67:
    if ((v174 & 0x4000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_82;
  }

LABEL_81:
  v22.n128_f64[0] = *(archive + 58);
  v285[27] = v22.n128_u64[0];
  if ((v174 & 0x4000000) == 0)
  {
LABEL_68:
    if ((v174 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v285 + 48) = *(archive + 206);
  if ((v174 & 0x200000) == 0)
  {
LABEL_69:
    if ((v174 & 0x20000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_84;
  }

LABEL_83:
  v285[2] = *(archive + 48);
  if ((v174 & 0x20000000) == 0)
  {
LABEL_70:
    if ((v175 & 0x80) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_84:
  v285[18] = *(archive + 53);
  if ((v175 & 0x80) != 0)
  {
LABEL_85:
    TSPCGFloatFromFloat(*(archive + 60));
    v285[19] = v22.n128_u64[0];
    v174 = *(archive + 4);
  }

LABEL_86:
  if ((~v174 & 0xC0) == 0)
  {
    TSPCGPointFromMessage(*(archive + 13));
    v285[7] = v178;
    v285[8] = v179;
    if (*(archive + 14))
    {
      v180 = *(archive + 14);
    }

    else
    {
      v180 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v180);
    v285[9] = v22.n128_u64[0];
    v285[10] = v23.n128_u64[0];
    v174 = *(archive + 4);
  }

  if (v174)
  {
    v181 = objc_alloc(MEMORY[0x277CCACA8]);
    v190 = objc_msgSend_tsp_initWithProtobufString_(v181, v182, v186, v187, v188, v189, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL, v183, v184, v185);
    v191 = v285[11];
    v285[11] = v190;

    v174 = *(archive + 4);
  }

  if ((v174 & 0x2000000) != 0)
  {
    *(v285 + 96) = *(archive + 205);
  }

  if ((*(archive + 21) & 4) != 0)
  {
    *(v285 + 111) = *(archive + 246);
  }

  if ((v174 & 2) != 0)
  {
    v192 = objc_alloc(MEMORY[0x277CCACA8]);
    v201 = objc_msgSend_tsp_initWithProtobufString_(v192, v193, v197, v198, v199, v200, *(archive + 8) & 0xFFFFFFFFFFFFFFFELL, v194, v195, v196);
    v202 = v285[20];
    v285[20] = v201;

    v174 = *(archive + 4);
  }

  if ((v174 & 0x400) != 0)
  {
    v203 = *(archive + 17);
    v296[0] = MEMORY[0x277D85DD0];
    v296[1] = 3221225472;
    v296[2] = sub_275FE9188;
    v296[3] = &unk_27A6A8930;
    v297 = v285;
    v204 = v284;
    v205 = v296;
    v206 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v204, v207, v208, v209, v210, v211, v203, v206, 0, v205);

    v174 = archiveCopy2[4];
  }

  if ((v174 & 0x800) != 0)
  {
    v221 = *(archiveCopy2 + 18);
    v294[0] = MEMORY[0x277D85DD0];
    v294[1] = 3221225472;
    v294[2] = sub_275FE9194;
    v294[3] = &unk_27A6A8958;
    v295 = v285;
    v222 = v284;
    v223 = v294;
    v224 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v222, v225, v226, v227, v228, v229, v221, v224, 0, v223);

    v212 = v295;
  }

  else
  {
    v212 = objc_msgSend_context(v284, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v291[0] = MEMORY[0x277D85DD0];
    v291[1] = 3221225472;
    v291[2] = sub_275FE9214;
    v291[3] = &unk_27A6A8418;
    v292 = v285;
    v293 = v212;
    objc_msgSend_addFinalizeHandler_(v284, v213, v217, v218, v219, v220, v291, v214, v215, v216);
  }

  if ((*(archiveCopy2 + 17) & 0x20) != 0)
  {
    v248 = *(archiveCopy2 + 20);
    v289[0] = MEMORY[0x277D85DD0];
    v289[1] = 3221225472;
    v289[2] = sub_275FE9264;
    v289[3] = &unk_27A6A8980;
    v290 = v285;
    v249 = v284;
    v250 = v289;
    v251 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v249, v252, v253, v254, v255, v256, v248, v251, 0, v250);

    v239 = v290;
  }

  else
  {
    v239 = objc_msgSend_context(v284, v230, v235, v236, v237, v238, v231, v232, v233, v234);
    v286[0] = MEMORY[0x277D85DD0];
    v286[1] = 3221225472;
    v286[2] = sub_275FE9270;
    v286[3] = &unk_27A6A8418;
    v287 = v285;
    v288 = v239;
    objc_msgSend_addFinalizeHandler_(v284, v240, v244, v245, v246, v247, v286, v241, v242, v243);
  }

  v257 = archiveCopy2[5];
  if ((v257 & 0x1000) != 0)
  {
    v285[24] = archiveCopy2[62];
  }

  if ((*(archiveCopy2 + 19) & 0x40) != 0)
  {
    TSPCGFloatFromFloat(*(archiveCopy2 + 54));
    v285[25] = v258;
    v257 = archiveCopy2[5];
  }

  if ((v257 & 0x4000) != 0)
  {
    *(v285 + 112) = *(archiveCopy2 + 253);
  }

  *(v285 + 97) = *(archiveCopy2 + 222);
LABEL_114:
  v259 = v16;

  return v259;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context
{
  v209[2] = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  contextCopy = context;
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  *(archive + 4) |= 4u;
  v12 = *(archive + 9);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C92D30](v13);
    *(archive + 9) = v12;
  }

  v210.x = x;
  v210.y = y;
  TSPCGPointCopyToMessage(v210, v12);
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  *(archive + 4) |= 0x20u;
  v16 = *(archive + 12);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C92D10](v17);
    *(archive + 12) = v16;
  }

  v211.width = width;
  v211.height = height;
  TSPCGSizeCopyToMessage(v211, v16);
  v18 = objc_alloc(MEMORY[0x277D80670]);
  v28 = objc_msgSend_tsck_documentRoot(contextCopy, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v200 = objc_msgSend_initWithDocumentRoot_(v18, v29, v33, v34, v35, v36, v28, v30, v31, v32);

  v46 = objc_msgSend_emptySelection(TPCanvasSelection, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v47 = MEMORY[0x277D806C8];
  v209[0] = v200;
  v209[1] = v46;
  v199 = v46;
  v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v51, v52, v53, v54, v209, 2, v49, v50);
  v201 = objc_msgSend_selectionPathWithSelectionArray_(v47, v56, v60, v61, v62, v63, v55, v57, v58, v59);

  *(archive + 4) |= 0x100u;
  v70 = *(archive + 15);
  if (!v70)
  {
    v71 = *(archive + 1);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277C92CF0](v71);
    *(archive + 15) = v70;
  }

  objc_msgSend_saveToArchive_archiver_context_(v201, v64, v66, v67, v68, v69, v70, archiverCopy, contextCopy, v65);
  selectionPath = self->_selectionPath;
  if (selectionPath)
  {
    *(archive + 4) |= 0x8000u;
    v79 = *(archive + 22);
    if (!v79)
    {
      v80 = *(archive + 1);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x277C92CF0](v80);
      *(archive + 22) = v79;
    }

    objc_msgSend_saveToArchive_archiver_context_(selectionPath, v72, v74, v75, v76, v77, v79, archiverCopy, contextCopy, v73);
  }

  sectionTemplateDrawablesSelectable = self->_sectionTemplateDrawablesSelectable;
  *(archive + 4) |= 0x40000u;
  *(archive + 189) = sectionTemplateDrawablesSelectable;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v82 = self->_chartUIState;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, v85, v86, v87, v88, &v202, v208, 16, v84);
  if (v92)
  {
    v97 = *v203;
    do
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v203 != v97)
        {
          objc_enumerationMutation(v82);
        }

        v99 = *(*(&v202 + 1) + 8 * i);
        v100 = *(archive + 6);
        if (!v100)
        {
          goto LABEL_29;
        }

        v101 = *(archive + 10);
        v102 = *v100;
        if (v101 < *v100)
        {
          *(archive + 10) = v101 + 1;
          v103 = *&v100[2 * v101 + 2];
          goto LABEL_31;
        }

        if (v102 == *(archive + 11))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 32));
          v100 = *(archive + 6);
          v102 = *v100;
        }

        *v100 = v102 + 1;
        v103 = MEMORY[0x277C92D80](*(archive + 4));
        v104 = *(archive + 10);
        v105 = *(archive + 6) + 8 * v104;
        *(archive + 10) = v104 + 1;
        *(v105 + 8) = v103;
LABEL_31:
        *(v103 + 40) |= 1u;
        v106 = *(v103 + 48);
        if (!v106)
        {
          v107 = *(v103 + 8);
          if (v107)
          {
            v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
          }

          v106 = MEMORY[0x277C92D60](v107);
          *(v103 + 48) = v106;
        }

        objc_msgSend_setWeakLazyReference_message_(archiverCopy, v89, v93, v94, v95, v96, v99, v106, v90, v91);
        v116 = objc_msgSend_objectForKeyedSubscript_(self->_chartUIState, v108, v112, v113, v114, v115, v99, v109, v110, v111);
        objc_msgSend_saveToArchive_(v116, v117, v121, v122, v123, v124, v103, v118, v119, v120);
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v89, v93, v94, v95, v96, &v202, v208, 16, v91);
    }

    while (v92);
  }

  *(archive + 244) = self->_rulersVisible;
  v133 = *(archive + 4);
  v134 = *(archive + 5);
  *(archive + 190) = self->_layoutBordersVisible;
  *(archive + 191) = self->_wordCountHUDVisible;
  *(archive + 49) = self->_wordCountHUDType;
  v135.n128_f32[0] = self->_wordCountHUDPosition.x;
  *(archive + 50) = v135.n128_u32[0];
  v135.n128_u64[0] = *&self->_wordCountHUDPosition.y;
  v135.n128_f32[0] = v135.n128_f64[0];
  *(archive + 4) = v133 | 0x10D80000;
  *(archive + 52) = v135.n128_u32[0];
  showsComments = self->_showsComments;
  v137 = v134 | 0x300;
  *(archive + 5) = v134 | 0x300;
  *(archive + 245) = showsComments;
  if (self->_hasShowsCTMarkup)
  {
    showsCTMarkup = self->_showsCTMarkup;
    v137 = v134 | 0xB00;
    *(archive + 5) = v134 | 0xB00;
    *(archive + 247) = showsCTMarkup;
  }

  if (self->_hasShowsCTDeletions)
  {
    showsCTDeletions = self->_showsCTDeletions;
    v137 |= 0x2000u;
    *(archive + 5) = v137;
    *(archive + 252) = showsCTDeletions;
  }

  changeTrackingPaused = self->_changeTrackingPaused;
  v141 = v133 | 0x18D80000;
  *(archive + 4) = v141;
  *(archive + 207) = changeTrackingPaused;
  showsFlowMode = self->_showsFlowMode;
  v143 = v137 | 4;
  *(archive + 5) = v143;
  *(archive + 223) = showsFlowMode;
  flowModeFontScale = self->_flowModeFontScale;
  if (flowModeFontScale)
  {
    objc_msgSend_tsu_CGFloatValue(flowModeFontScale, v125, v135, v130, v131, v132, v126, v127, v128, v129);
    *&v145 = v145;
    v141 = *(archive + 4);
    v143 = *(archive + 5) | 0x40;
    *(archive + 5) = v143;
    *(archive + 59) = LODWORD(v145);
  }

  *(archive + 204) = self->_showsPageNavigator;
  *(archive + 221) = self->_showsTOCNavigator;
  *(archive + 220) = self->_pencilAnnotationsHidden;
  *(archive + 224) = self->_showsActivityStream;
  *(archive + 5) = v143 | 0x39;
  *(archive + 228) = vcvt_f32_f64(*&self->_tocOrPageNavWidth);
  *(archive + 206) = self->_shouldShowCommentSidebar;
  *(archive + 48) = self->_viewScaleMode;
  pageViewState = self->_pageViewState;
  *(archive + 4) = v141 | 0xA5200000;
  *(archive + 53) = pageViewState;
  TSPCGFloatToFloat(self->_viewScale);
  *(archive + 5) |= 0x80u;
  *(archive + 60) = v147;
  if (!CGRectEqualToRect(self->_windowFrame, *MEMORY[0x277CBF3A0]))
  {
    v157 = self->_windowFrame.origin.x;
    v158 = self->_windowFrame.origin.y;
    *(archive + 4) |= 0x40u;
    v159 = *(archive + 13);
    if (!v159)
    {
      v160 = *(archive + 1);
      if (v160)
      {
        v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
      }

      v159 = MEMORY[0x277C92D30](v160);
      *(archive + 13) = v159;
    }

    v212.x = v157;
    v212.y = v158;
    TSPCGPointCopyToMessage(v212, v159);
    v161 = self->_windowFrame.size.width;
    v162 = self->_windowFrame.size.height;
    *(archive + 4) |= 0x80u;
    v163 = *(archive + 14);
    if (!v163)
    {
      v164 = *(archive + 1);
      if (v164)
      {
        v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
      }

      v163 = MEMORY[0x277C92D10](v164);
      *(archive + 14) = v163;
    }

    v213.width = v161;
    v213.height = v162;
    TSPCGSizeCopyToMessage(v213, v163);
  }

  selectedInspectorSwitchSegmentIdentifier = self->_selectedInspectorSwitchSegmentIdentifier;
  if (selectedInspectorSwitchSegmentIdentifier)
  {
    v166 = objc_msgSend_tsp_protobufString(selectedInspectorSwitchSegmentIdentifier, v148, v153, v154, v155, v156, v149, v150, v151, v152);
    *(archive + 4) |= 1u;
    sub_275FBA9EC(__p, v166);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v207 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(archive + 205) = self->_inspectorHidden;
  showUserDefinedGuides = self->_showUserDefinedGuides;
  v154.n128_u64[0] = 0x40002000000;
  v153.n128_u64[0] = vorr_s8(*(archive + 16), 0x40002000000);
  *(archive + 2) = v153.n128_u64[0];
  *(archive + 246) = showUserDefinedGuides;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v148, v153, v154, v155, v156, 23, archive, v151, v152);
  authorForFilteringName = self->_authorForFilteringName;
  if (authorForFilteringName)
  {
    v178 = objc_msgSend_tsp_protobufString(authorForFilteringName, v168, v173, v174, v175, v176, v169, v170, v171, v172);
    *(archive + 4) |= 2u;
    sub_275FBA9EC(__p, v178);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v207 < 0)
    {
      operator delete(__p[0]);
    }
  }

  authorForFiltering = self->_authorForFiltering;
  if (authorForFiltering)
  {
    *(archive + 4) |= 0x400u;
    v180 = *(archive + 17);
    if (!v180)
    {
      v181 = *(archive + 1);
      if (v181)
      {
        v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
      }

      v180 = MEMORY[0x277C92D60](v181);
      *(archive + 17) = v180;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v168, v173, v174, v175, v176, authorForFiltering, v180, v171, v172);
  }

  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v168, v173, v174, v175, v176, 32, archive, v171, v172);
  freehandDrawingToolkitUIState = self->_freehandDrawingToolkitUIState;
  if (freehandDrawingToolkitUIState)
  {
    *(archive + 4) |= 0x800u;
    v190 = *(archive + 18);
    if (!v190)
    {
      v191 = *(archive + 1);
      if (v191)
      {
        v191 = *(v191 & 0xFFFFFFFFFFFFFFFELL);
      }

      v190 = MEMORY[0x277C92D60](v191);
      *(archive + 18) = v190;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v182, v185, v186, v187, v188, freehandDrawingToolkitUIState, v190, v183, v184);
  }

  pencilAnnotationUIState = self->_pencilAnnotationUIState;
  if (pencilAnnotationUIState)
  {
    *(archive + 4) |= 0x2000u;
    v193 = *(archive + 20);
    if (!v193)
    {
      v194 = *(archive + 1);
      if (v194)
      {
        v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
      }

      v193 = MEMORY[0x277C92D60](v194);
      *(archive + 20) = v193;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v182, v185, v186, v187, v188, pencilAnnotationUIState, v193, v183, v184);
  }

  viewScaleModeiOS = self->_viewScaleModeiOS;
  v196 = *(archive + 5);
  *(archive + 5) = v196 | 0x1000;
  *(archive + 62) = viewScaleModeiOS;
  v185.n128_u64[0] = *&self->_presentationAutoScrollSpeed;
  if (v185.n128_f64[0] > 0.0)
  {
    v185.n128_f32[0] = v185.n128_f64[0];
    *(archive + 4) |= 0x40000000u;
    *(archive + 54) = v185.n128_u32[0];
  }

  showUserDefinedPageTemplateGuides = self->_showUserDefinedPageTemplateGuides;
  *(archive + 5) = v196 | 0x5000;
  *(archive + 253) = showUserDefinedPageTemplateGuides;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v182, v185, v186, v187, v188, 39, archive, v183, v184);
  editingDisabled = self->_editingDisabled;
  *(archive + 5) |= 2u;
  *(archive + 222) = editingDisabled;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11 = objc_msgSend_allocWithZone_(TPUIState, a2, v6, v7, v8, v9, zone, v3, v4, v5);
  v21 = objc_msgSend_init(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v22 = v21;
  if (v21)
  {
    size = self->_visibleRect.size;
    *(v21 + 224) = self->_visibleRect.origin;
    *(v21 + 240) = size;
    objc_storeStrong((v21 + 120), self->_selectionPath);
    *(v22 + 8) = self->_sectionTemplateDrawablesSelectable;
    objc_storeStrong((v22 + 128), self->_chartUIState);
    *(v22 + 98) = self->_rulersVisible;
    *(v22 + 99) = self->_layoutBordersVisible;
    *(v22 + 24) = self->_wordCountHUDVisible;
    *(v22 + 28) = self->_wordCountHUDType;
    *(v22 + 32) = self->_wordCountHUDPosition;
    *(v22 + 100) = self->_showsComments;
    *(v22 + 101) = self->_hasShowsCTMarkup;
    *(v22 + 102) = self->_showsCTMarkup;
    *(v22 + 103) = self->_hasShowsCTDeletions;
    *(v22 + 104) = self->_showsCTDeletions;
    *(v22 + 105) = self->_changeTrackingPaused;
    *(v22 + 106) = self->_showsFlowMode;
    objc_storeStrong((v22 + 136), self->_flowModeFontScale);
    *(v22 + 107) = self->_showsPageNavigator;
    *(v22 + 108) = self->_showsTOCNavigator;
    *(v22 + 109) = self->_pencilAnnotationsHidden;
    *(v22 + 110) = self->_showsActivityStream;
    *(v22 + 208) = self->_tocOrPageNavWidth;
    *(v22 + 216) = self->_activityOrAnnotationWidth;
    *(v22 + 48) = self->_shouldShowCommentSidebar;
    *(v22 + 16) = self->_viewScaleMode;
    *(v22 + 144) = self->_pageViewState;
    *(v22 + 152) = self->_viewScale;
    origin = self->_windowFrame.origin;
    *(v22 + 72) = self->_windowFrame.size;
    *(v22 + 56) = origin;
    objc_storeStrong((v22 + 88), self->_selectedInspectorSwitchSegmentIdentifier);
    *(v22 + 96) = self->_inspectorHidden;
    *(v22 + 111) = self->_showUserDefinedGuides;
    objc_storeStrong((v22 + 160), self->_authorForFilteringName);
    objc_storeStrong((v22 + 168), self->_authorForFiltering);
    objc_storeStrong((v22 + 176), self->_freehandDrawingToolkitUIState);
    objc_storeStrong((v22 + 184), self->_pencilAnnotationUIState);
    *(v22 + 192) = self->_viewScaleModeiOS;
    *(v22 + 200) = self->_presentationAutoScrollSpeed;
    *(v22 + 112) = self->_showUserDefinedPageTemplateGuides;
    *(v22 + 97) = self->_editingDisabled;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToUIState = objc_msgSend_isEqualToUIState_(self, v5, v9, v10, v11, v12, equalCopy, v6, v7, v8);
    }

    else
    {
      isEqualToUIState = 0;
    }
  }

  return isEqualToUIState;
}

- (unint64_t)hash
{
  v6.n128_u64[0] = *&self->_visibleRect.origin.x;
  v7.n128_u64[0] = *&self->_visibleRect.origin.y;
  v8.n128_u64[0] = *&self->_visibleRect.size.width;
  v9.n128_u64[0] = *&self->_visibleRect.size.height;
  v11 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_hash(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  objc_msgSend_hash(self->_selectionPath, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  TSUHashWithSeed();
  objc_msgSend_hash(self->_chartUIState, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v39.n128_u64[0] = *&self->_wordCountHUDPosition.x;
  v40.n128_u64[0] = *&self->_wordCountHUDPosition.y;
  v48 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v41, v39, v40, v46, v47, v42, v43, v44, v45);
  objc_msgSend_hash(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);

  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_hash(self->_flowModeFontScale, v58, v63, v64, v65, v66, v59, v60, v61, v62);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v67.n128_u64[0] = *&self->_viewScale;
  v76 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v68, v67, v73, v74, v75, v69, v70, v71, v72);
  objc_msgSend_hash(v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);

  v86.n128_u64[0] = *&self->_windowFrame.origin.x;
  v87.n128_u64[0] = *&self->_windowFrame.origin.y;
  v88.n128_u64[0] = *&self->_windowFrame.size.width;
  v89.n128_u64[0] = *&self->_windowFrame.size.height;
  v95 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v90, v86, v87, v88, v89, v91, v92, v93, v94);
  objc_msgSend_hash(v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);

  objc_msgSend_hash(self->_selectedInspectorSwitchSegmentIdentifier, v105, v110, v111, v112, v113, v106, v107, v108, v109);
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_hash(self->_authorForFilteringName, v114, v119, v120, v121, v122, v115, v116, v117, v118);
  objc_msgSend_hash(self->_authorForFiltering, v123, v128, v129, v130, v131, v124, v125, v126, v127);
  objc_msgSend_hash(self->_freehandDrawingToolkitUIState, v132, v137, v138, v139, v140, v133, v134, v135, v136);
  objc_msgSend_hash(self->_pencilAnnotationUIState, v141, v146, v147, v148, v149, v142, v143, v144, v145);
  TSUHashWithSeed();
  v150.n128_u64[0] = *&self->_presentationAutoScrollSpeed;
  v159 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v151, v150, v156, v157, v158, v152, v153, v154, v155);
  objc_msgSend_hash(v159, v160, v165, v166, v167, v168, v161, v162, v163, v164);

  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (void)resetForInitialViewing
{
  v3 = MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_visibleRect.origin = *MEMORY[0x277CBF3A0];
  self->_visibleRect.size = v4;
  selectionPath = self->_selectionPath;
  self->_selectionPath = 0;

  self->_viewScale = 0.0;
  v12 = *v3;
  v13 = *(v3 + 16);
  self->_windowFrame.origin = *v3;
  self->_windowFrame.size = v13;
  self->_viewScaleModeiOS = 2;
  chartUIState = self->_chartUIState;

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(chartUIState, v6, v12, v13, v10, v11, &unk_2885011B8, v7, v8, v9);
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end