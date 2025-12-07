@interface TSTConvertFormulasForCategoriesByRewritingWrapper
- (TSTConvertFormulasForCategoriesByRewritingWrapper)initWithCalcEngine:(id)engine rewriteSpec:(id)spec;
- (id)convertFromBaseToChromeForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)convertFromChromeToBaseForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell;
@end

@implementation TSTConvertFormulasForCategoriesByRewritingWrapper

- (TSTConvertFormulasForCategoriesByRewritingWrapper)initWithCalcEngine:(id)engine rewriteSpec:(id)spec
{
  engineCopy = engine;
  specCopy = spec;
  v33.receiver = self;
  v33.super_class = TSTConvertFormulasForCategoriesByRewritingWrapper;
  v9 = [(TSTConvertFormulasForCategoriesByRewritingWrapper *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calcEngine, engine);
    objc_storeStrong(&v10->_rewriteSpec, spec);
    v14 = objc_msgSend_rewriteType(v10->_rewriteSpec, v11, v12, v13);
    if ((objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v15, v14, v16) & 1) == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTConvertFormulasForCategoriesByRewritingWrapper initWithCalcEngine:rewriteSpec:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v22);
      v27 = objc_msgSend_rewriteType(v10->_rewriteSpec, v24, v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v28, v20, v23, 26, 0, "Why are we even being created for a non-move rewriteSpec: %d", v27);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }
  }

  return v10;
}

- (id)convertFromBaseToChromeForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell
{
  moveCopy = move;
  v7 = moveCopy;
  if (!moveCopy)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v8 = moveCopy;
  v12 = objc_msgSend_rewriteType(self->_rewriteSpec, v9, v10, v11);
  if (!objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v13, v12, v14))
  {
    goto LABEL_38;
  }

  rewriteSpecBaseToChrome = self->_rewriteSpecBaseToChrome;
  if (rewriteSpecBaseToChrome)
  {
    v17 = rewriteSpecBaseToChrome;
  }

  else
  {
    objc_opt_class();
    v21 = objc_msgSend_rewriteSpecBaseToChrome(self->_rewriteSpec, v18, v19, v20);
    v17 = TSUDynamicCast();
  }

  *&v138.var0 = cell->var0._tableUID;
  v22 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v16, &v138, self->_calcEngine);
  v26 = objc_msgSend_tableInfo(v22, v23, v24, v25);
  v30 = objc_msgSend_translator(v26, v27, v28, v29);
  v137 = objc_msgSend_coordinateMapper(v30, v31, v32, v33);

  if (v17)
  {
    v37 = v137;
    v38 = objc_msgSend_coordMapper(v17, v34, v35, v36);

    if (v38 != v137)
    {
      objc_msgSend_setCoordMapper_(v17, v39, v137, v40);
      objc_storeStrong(&self->_rewriteSpecBaseToChrome, v17);
    }
  }

  else
  {
    v41 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v34, v35, v36);
    v45 = objc_msgSend_srcTableUID(v41, v42, v43, v44);
    v47 = v46;
    if (v45 == objc_msgSend_tableUID(v22, v46, v48, v49) && v47 == v50)
    {
      v133 = v22;
    }

    else
    {
      v138.var0 = objc_msgSend_srcTableUID(v41, v50, v51, v52);
      v138.var1 = v56;
      v133 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v56, &v138, self->_calcEngine);
    }

    v57 = objc_msgSend_srcColumnUids(v41, v53, v54, v55);
    v132 = v57;
    v136 = objc_msgSend_srcRowUids(v41, v58, v59, v60);
    v135 = objc_msgSend_dstColumnUids(v41, v61, v62, v63);
    v134 = objc_msgSend_dstRowUids(v41, v64, v65, v66);
    if (v57 && v136 && v135 && v134)
    {
      v70 = v57;
      v37 = v137;
      v71 = objc_msgSend_uids(v70, v67, v68, v69);
      v75 = objc_msgSend_uids(v136, v72, v73, v74);
      sub_2210BBBE8(&v138, v71, v75);
      v79 = objc_msgSend_uids(v135, v76, v77, v78);
      v83 = objc_msgSend_uids(v134, v80, v81, v82);
      sub_2210BBBE8(v141, v79, v83);
      v84 = [TSTFormulaRewriteSpec alloc];
      v140[0] = objc_msgSend_tableUID(v133, v85, v86, v87);
      v140[1] = v88;
      v139[0] = objc_msgSend_dstTableUID(v41, v88, v89, v90);
      v139[1] = v91;
      v17 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v84, v91, v140, &v138, v139, v141, v137);
      objc_msgSend_setRewriteSpecBaseToChrome_(self->_rewriteSpec, v92, v17, v93);
      objc_storeStrong(&self->_rewriteSpecBaseToChrome, v17);
      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      if (v141[0])
      {
        v141[1] = v141[0];
        operator delete(v141[0]);
      }

      if (v138.var2.var0.var0._tableUID._lower)
      {
        v138.var2.var0.var0._tableUID._upper = v138.var2.var0.var0._tableUID._lower;
        operator delete(v138.var2.var0.var0._tableUID._lower);
      }

      if (v138.var0)
      {
        v138.var1 = v138.var0;
        operator delete(v138.var0);
      }
    }

    else
    {
      if (!v57)
      {
        v94 = MEMORY[0x277D81150];
        v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v69);
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v97);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v99, v95, v98, 73, 0, "invalid nil value for '%{public}s'", "srcColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102);
      }

      if (!v136)
      {
        v103 = MEMORY[0x277D81150];
        v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v69);
        v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v106);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v108, v104, v107, 74, 0, "invalid nil value for '%{public}s'", "srcRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111);
      }

      if (!v135)
      {
        v112 = MEMORY[0x277D81150];
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v69);
        v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v115);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v117, v113, v116, 75, 0, "invalid nil value for '%{public}s'", "dstColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120);
      }

      if (!v134)
      {
        v121 = MEMORY[0x277D81150];
        v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromBaseToChromeForCategorizedTableMove:containingCell:]", v69);
        v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v124);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v126, v122, v125, 76, 0, "invalid nil value for '%{public}s'", "dstRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129);
      }

      v17 = 0;
      v37 = v137;
    }

    if (!v17)
    {
      goto LABEL_37;
    }
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v138, self->_calcEngine, cell);
  v130 = sub_221491A58(v8, &v138, v17, 2);

  v8 = v130;
LABEL_37:

LABEL_38:

  return v8;
}

- (id)convertFromChromeToBaseForCategorizedTableMove:(id)move containingCell:(const TSCEFormulaContainingCell *)cell
{
  moveCopy = move;
  v7 = moveCopy;
  if (!moveCopy)
  {
    v8 = 0;
    goto LABEL_51;
  }

  v8 = moveCopy;
  v12 = objc_msgSend_rewriteType(self->_rewriteSpec, v9, v10, v11);
  v16 = objc_msgSend_rewriteType(self->_rewriteSpec, v13, v14, v15);
  if (v12 != 6 && v16 != 4)
  {
    goto LABEL_51;
  }

  v174 = v16;
  p_rewriteSpecChromeToBase = &self->_rewriteSpecChromeToBase;
  rewriteSpecChromeToBase = self->_rewriteSpecChromeToBase;
  if (rewriteSpecChromeToBase)
  {
    v21 = rewriteSpecChromeToBase;
  }

  else
  {
    objc_opt_class();
    v25 = objc_msgSend_rewriteSpecChromeToBase(self->_rewriteSpec, v22, v23, v24);
    v21 = TSUDynamicCast();
  }

  *&v177.var0 = cell->var1._tableUID;
  v176 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v20, &v177, self->_calcEngine);
  v29 = objc_msgSend_tableInfo(v176, v26, v27, v28);
  v33 = objc_msgSend_translator(v29, v30, v31, v32);
  v175 = objc_msgSend_coordinateMapper(v33, v34, v35, v36);

  if (!v21)
  {
    v45 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v37, v38, v39);
    v178 = 0uLL;
    v168 = v45;
    v178.n128_u64[0] = objc_msgSend_srcTableUID(v45, v46, v47, v48);
    v178.n128_u64[1] = v49;
    v52 = objc_msgSend_tableUID(v176, v49, v50, v51);
    if (*&v178 == __PAIR128__(v53, v52))
    {
      v169 = v176;
    }

    else
    {
      v169 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v53, &v178, self->_calcEngine);
    }

    v44 = v168;
    v173 = objc_msgSend_srcColumnUids(v168, v54, v55, v56);
    v172 = objc_msgSend_srcRowUids(v168, v57, v58, v59);
    v171 = objc_msgSend_dstColumnUids(v168, v60, v61, v62);
    v170 = objc_msgSend_dstRowUids(v168, v63, v64, v65);
    if (v173 && v172 && v171 && v170)
    {
      v69 = objc_msgSend_uids(v173, v66, v67, v68);
      v73 = objc_msgSend_uids(v172, v70, v71, v72);
      sub_2210BBBE8(&v177, v69, v73);
      v77 = objc_msgSend_uids(v171, v74, v75, v76);
      v81 = objc_msgSend_uids(v170, v78, v79, v80);
      sub_2210BBBE8(&v180, v77, v81);
      v166 = [TSTFormulaRewriteSpec alloc];
      v182[0] = objc_msgSend_dstTableUID(v168, v82, v83, v84);
      v182[1] = v85;
      v167 = objc_msgSend_tableInfo(v169, v85, v86, v87);
      v91 = objc_msgSend_translator(v167, v88, v89, v90);
      v95 = objc_msgSend_coordinateMapper(v91, v92, v93, v94);
      v181[0] = objc_msgSend_fromTableUID(v169, v96, v97, v98);
      v181[1] = v99;
      v21 = objc_msgSend_initForCategorizedTableChromeToBaseRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_srcCoordMapper_fromTableUID_(v166, v99, &v178, &v177, v182, &v180, v175, v95, v181);

      objc_msgSend_setRewriteSpecChromeToBase_(self->_rewriteSpec, v100, v21, v101);
      objc_storeStrong(&self->_rewriteSpecChromeToBase, v21);
      if (v180.var1.coordinate)
      {
        v180.var1._tableUID._lower = v180.var1.coordinate;
        operator delete(*&v180.var1.coordinate);
      }

      if (v180.var0.coordinate)
      {
        v180.var0._tableUID._lower = v180.var0.coordinate;
        operator delete(*&v180.var0.coordinate);
      }

      if (v177.var2.var0.var0._tableUID._lower)
      {
        v177.var2.var0.var0._tableUID._upper = v177.var2.var0.var0._tableUID._lower;
        operator delete(v177.var2.var0.var0._tableUID._lower);
      }

      if (v177.var0)
      {
        v177.var1 = v177.var0;
        operator delete(v177.var0);
      }
    }

    else
    {
      if (!v173)
      {
        v102 = MEMORY[0x277D81150];
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v68);
        v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v105);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v107, v103, v106, 128, 0, "invalid nil value for '%{public}s'", "srcColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110);
      }

      if (!v172)
      {
        v111 = MEMORY[0x277D81150];
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v68);
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v114);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v116, v112, v115, 129, 0, "invalid nil value for '%{public}s'", "srcRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119);
      }

      if (!v171)
      {
        v120 = MEMORY[0x277D81150];
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v68);
        v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v123);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v125, v121, v124, 130, 0, "invalid nil value for '%{public}s'", "dstColumnUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128);
      }

      if (!v170)
      {
        v129 = MEMORY[0x277D81150];
        v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTConvertFormulasForCategoriesByRewritingWrapper convertFromChromeToBaseForCategorizedTableMove:containingCell:]", v68);
        v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasForCategoriesByRewritingWrapper.mm", v132);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v134, v130, v133, 131, 0, "invalid nil value for '%{public}s'", "dstRowUids");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136, v137);
      }

      v21 = 0;
      v44 = v168;
    }

    goto LABEL_39;
  }

  v40 = objc_msgSend_coordMapper(v21, v37, v38, v39);

  v43 = v175;
  if (v40 != v175)
  {
    objc_msgSend_setCoordMapper_(v21, v41, v175, v42);
    v21 = v21;
    v44 = *p_rewriteSpecChromeToBase;
    *p_rewriteSpecChromeToBase = v21;
LABEL_39:
  }

  if (v12 == 6)
  {
    v138 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v41, v43, v42);
    v142 = objc_msgSend_finalDstTableUID(v138, v139, v140, v141);
    v144 = v143;
    v147 = objc_msgSend_regionMovedInfo(self->_rewriteSpec, v143, v145, v146);
    if (v142 == objc_msgSend_dstTableUID(v147, v148, v149, v150))
    {
      v152 = v151;

      v153 = 4;
      if (v144 == v152)
      {
        v153 = 12;
      }
    }

    else
    {

      v153 = 4;
    }
  }

  else
  {
    v153 = 0;
  }

  if (v174 == 4)
  {
    v154 = v153 | 0x10;
  }

  else
  {
    v154 = v153;
  }

  coordinate = cell->var1.coordinate;
  v156 = objc_msgSend_tableInfo(v176, v41, v43, v42);
  v160 = objc_msgSend_translator(v156, v157, v158, v159);
  v163 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v160, v161, coordinate, v162);

  v177.var0 = v163;
  *&v177.var1 = cell->var1._tableUID;
  v178 = *&cell->var1.coordinate.row;
  upper = cell->var1._tableUID._upper;
  sub_2212C726C(&v180, &v177, &v178);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v177, self->_calcEngine, &v180);
  v164 = sub_22149252C(v8, &v177, v21, 2, v154);

  v8 = v164;
LABEL_51:

  return v8;
}

@end