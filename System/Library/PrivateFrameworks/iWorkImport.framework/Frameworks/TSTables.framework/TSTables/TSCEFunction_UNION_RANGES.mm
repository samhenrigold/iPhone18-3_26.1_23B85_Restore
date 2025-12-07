@interface TSCEFunction_UNION_RANGES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (void)determineShapeOfCellList:(const void *)list compactUp:(BOOL)up outRangeIsContigious:(BOOL *)contigious outRangeIsRectangular:(BOOL *)rectangular outRangeIsInOneTable:(BOOL *)table outRowWidth:(unint64_t *)width;
@end

@implementation TSCEFunction_UNION_RANGES

+ (void)determineShapeOfCellList:(const void *)list compactUp:(BOOL)up outRangeIsContigious:(BOOL *)contigious outRangeIsRectangular:(BOOL *)rectangular outRangeIsInOneTable:(BOOL *)table outRowWidth:(unint64_t *)width
{
  upCopy = up;
  *contigious = 1;
  *rectangular = 1;
  *table = 1;
  v9 = *list;
  if (*list == *(list + 1))
  {
    if (up)
    {
      goto LABEL_54;
    }

    v35 = 0;
    goto LABEL_55;
  }

  tableCopy = table;
  widthCopy = width;
  v10 = 0;
  v52 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0x7FFF7FFFFFFFLL;
  v14 = 0x277D81000uLL;
  v15 = 0x7FFF;
  v49 = 1;
  LODWORD(v16) = 0x7FFFFFFF;
  while (1)
  {
    v57 = v10;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v16;
    v21 = v15;
    v16 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v22 = *v9 == 0x7FFFFFFF || (*v9 & 0xFFFF00000000) == 0x7FFF00000000;
    if (v22 || (v11 | v12) == 0)
    {
      v53 = v19;
      v54 = v13;
      v55 = v18;
      v56 = v9;
      v24 = v14;
      v25 = *(v14 + 336);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_UNION_RANGES determineShapeOfCellList:compactUp:outRangeIsContigious:outRangeIsRectangular:outRangeIsInOneTable:outRowWidth:]", up);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 2928, 0, "can't have invalid cell references here");

      v14 = v24;
      objc_msgSend_logBacktraceThrottled(*(v24 + 336), v31, v32, v33);
      v18 = v55;
      v9 = v56;
      v19 = v53;
      v17 = v54;
    }

    if (v17 == 0x7FFFFFFF || (v17 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v13 = v16;
      goto LABEL_19;
    }

    v13 = v16;
    if (v19 | v18)
    {
      if (v19 != v11)
      {
        break;
      }

      v13 = v17;
      v11 = v19;
      v22 = v18 == v12;
      v12 = v18;
      if (!v22)
      {
        break;
      }
    }

LABEL_19:
    v15 = WORD2(v16);
    if (v20 == 0x7FFFFFFF || v21 == 0x7FFF)
    {
      v52 = 1;
      goto LABEL_28;
    }

    v34 = v21 != WORD2(v16);
    if (!upCopy)
    {
      v34 = v20 != v16;
    }

    if (!v34)
    {
      if (upCopy)
      {
        if (v20 + 1 != v16)
        {
          goto LABEL_31;
        }

LABEL_40:
        v52 += v49 & 1;
      }

      else
      {
        if (v21 + 1 == WORD2(v16))
        {
          goto LABEL_40;
        }

LABEL_31:
        *contigious = 0;
      }

      v10 = v57 + 1;
      goto LABEL_42;
    }

    if (upCopy)
    {
      if (v21 + 1 == WORD2(v16))
      {
        goto LABEL_34;
      }

LABEL_33:
      *contigious = 0;
      goto LABEL_34;
    }

    if (v20 + 1 != v16)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v57 != v52)
    {
      *rectangular = 0;
      *contigious = 0;
    }

    if (upCopy)
    {
      if (v16 != v13)
      {
        goto LABEL_45;
      }
    }

    else if (WORD2(v16) != WORD2(v13))
    {
LABEL_45:
      v49 = 0;
      *contigious = 0;
      goto LABEL_28;
    }

    v49 = 0;
LABEL_28:
    v10 = 1;
LABEL_42:
    v9 += 3;
    if (v9 == *(list + 1))
    {
      goto LABEL_49;
    }
  }

  *rectangular = 0;
  *contigious = 0;
  *tableCopy = 0;
  v10 = v57;
LABEL_49:
  v35 = v52;
  if (v10 != v52)
  {
    *rectangular = 0;
    *contigious = 0;
  }

  width = widthCopy;
  if (upCopy)
  {
    if (v52)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((*(list + 1) - *list) >> 3) / v52;
      goto LABEL_55;
    }

LABEL_54:
    widthCopy2 = width;
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_UNION_RANGES determineShapeOfCellList:compactUp:outRangeIsContigious:outRangeIsRectangular:outRangeIsInOneTable:outRowWidth:]", up, tableCopy);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 2994, 0, "0 first row width should be impossible.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
    v35 = 0;
    width = widthCopy2;
  }

LABEL_55:
  *width = v35;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  v301 = 0;
  v302 = 0;
  v303 = 0;
  v7 = *arguments;
  v6 = *(arguments + 1);
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v8 = *v7;
  v297 = 0;
  v9 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v8, a2, context, spec, 0, &v297);
  v10 = v297;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v11, v10, v12);
    goto LABEL_115;
  }

  v15 = v6 - v7;
  v296._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v296._coordsForOwnerUid.__tree_.__size_ = 0;
  v296._coordsForOwnerUid.__tree_.__begin_node_ = &v296._coordsForOwnerUid.__tree_.__end_node_;
  v240 = v6 - v7;
  v241 = (v6 - v7) >> 3;
  v16 = 0;
  if (v241 >= 2)
  {
    v247 = (v15 >> 3) & 0x7FFFFFFF;
    v17 = 1;
    v248 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v243 = contextCopy;
    v242 = v9;
    while (1)
    {
      v18 = *(*arguments + 8 * v17);
      v255 = v18;
      if (v18)
      {
        objc_msgSend_formatWithContext_(v18, v19, contextCopy, v20);
      }

      else
      {
        v289 = 0u;
        *v290 = 0u;
      }

      sub_22114F414(&v301, &v289);
      v295 = v16;
      v263 = v17;
      v22 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v255, v21, contextCopy, spec, v17, &v295);
      v13 = v295;

      if (v13)
      {
        v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v23, v13, v25);
LABEL_61:

        goto LABEL_114;
      }

      if (v22)
      {
        objc_msgSend_rangeRef(v22, v23, v24, v25);
      }

      else
      {
        memset(v273, 0, 32);
      }

      v26 = objc_msgSend_calcEngine(contextCopy, v23, v24, v25);
      IsWithinTable = objc_msgSend_rangeIsWithinTable_(v26, v27, v273, v28);

      if ((IsWithinTable & 1) == 0)
      {
        v141 = objc_msgSend_invalidReferenceError(TSCEError, v30, v31, v32);
        v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v142, v141, v143);

        v13 = 0;
        goto LABEL_114;
      }

      v294 = 0;
      v261 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v30, contextCopy, spec, v17, 1, &v294);
      v33 = v294;
      if (v33)
      {
        v13 = v33;
        v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v36);

        goto LABEL_61;
      }

      v37 = objc_msgSend_dimensions(v261, v34, v35, v36);
      v38 = contextCopy;
      *&v289 = v38;
      *(&v289 + 1) = spec;
      *v290 = 0;
      *&v290[8] = v17;
      v40 = 1;
      v290[12] = 1;
      *&v290[13] = 0;
      *&v290[17] = 0;
      v291 = v248;
      v292 = 0;
      v293 = 0;
      v253 = HIDWORD(v37);
      if (HIDWORD(v37))
      {
        v41 = v38;
        v257 = 0;
        v259 = v22;
        v42 = 0;
        while (1)
        {
          v250 = v42;
          if (v37)
          {
            break;
          }

LABEL_29:
          v42 = ++v257 >= v253;
          if (v257 == v253)
          {
            v16 = 0;
            v40 = 1;
            contextCopy = v243;
            v9 = v242;
            v17 = v263;
            goto LABEL_32;
          }
        }

        v43 = 0;
        while (1)
        {
          v44 = objc_msgSend_valueAtGridCoord_accessContext_(v261, v39, (v257 << 32) | v43, &v289);
          if ((objc_msgSend_isReferenceValue(v44, v45, v46, v47) & 1) == 0)
          {
            v50 = MEMORY[0x277D81150];
            v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v49);
            v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v53);
            v58 = objc_msgSend_nativeType(v44, v55, v56, v57);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v59, v51, v54, 3052, 0, "indices inside a range reference should be references, got %d.", v58);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
          }

          v288 = 0;
          v63 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v44, v48, v41, spec, v263, &v288);
          v16 = v288;
          if (v16)
          {
            break;
          }

          if (v63)
          {
            objc_msgSend_rangeRef(v63, v64, v65, v66);
            v68 = *(&v286 + 1);
            v67 = v286;
          }

          else
          {
            v68 = 0;
            v67 = 0;
            v286 = 0u;
            v287 = 0u;
          }

          if (v67 != v68 || ((v68 ^ v67) & 0x101FFFF00000000) != 0)
          {
            v69 = MEMORY[0x277D81150];
            v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v66);
            v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v72);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v70, v73, 3058, 0, "each index inside a range reference should be just one cell.");

            v22 = v259;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77);
            v67 = v286;
          }

          *v271 = v67;
          *&v271[8] = v287;
          TSCECellRefSet::addCellRef(&v296, v271);

          if (v37 <= ++v43)
          {
            goto LABEL_29;
          }
        }

        v245 = objc_msgSend_raiseErrorOrConvert_(v41, v64, v16, v66);

        contextCopy = v243;
        v9 = v242;
        v17 = v263;
        v40 = v250;
      }

      else
      {
        v16 = 0;
      }

LABEL_32:

      if ((v40 & 1) == 0)
      {
        break;
      }

      if (++v17 == v247)
      {
        goto LABEL_34;
      }
    }

    v13 = v16;
    v14 = v245;
    goto LABEL_114;
  }

LABEL_34:
  *&v289 = 0;
  *(&v289 + 1) = &v289;
  *v290 = 0x4812000000;
  *&v290[8] = sub_221474F04;
  *&v290[16] = sub_221474F28;
  v291.i64[0] = &unk_22188E88F;
  v292 = 0;
  v293 = 0;
  v291.i64[1] = 0;
  v285[0] = MEMORY[0x277D85DD0];
  v285[1] = 3221225472;
  v285[2] = sub_221474F40;
  v285[3] = &unk_2784634A0;
  v285[4] = &v289;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v296, v285);
  v78 = *(*(&v289 + 1) + 48);
  v79 = *(*(&v289 + 1) + 56);
  v80 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v79 - v78) >> 3));
  if (v79 == v78)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  if (v9)
  {
    sub_221478B40(v78, v79, v273, v81, 1);
  }

  else
  {
    sub_22147A6AC(v78, v79, v273, v81, 1);
  }

  objc_msgSend_determineShapeOfCellList_compactUp_outRangeIsContigious_outRangeIsRectangular_outRangeIsInOneTable_outRowWidth_(self, v82, *(&v289 + 1) + 48, v9, &v299 + 1, &v299, &v298, &v300);
  if (TSCECellRefSet::isEmpty(&v296))
  {
    v245 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v83, v84, v85);
    goto LABEL_112;
  }

  if (HIBYTE(v299) == 1)
  {
    if ((v299 & 1) == 0)
    {
      v86 = MEMORY[0x277D81150];
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v85);
      v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v89);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v91, v87, v90, 3088, 0, "contiguous should imply rectangular");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94);
    }

    if (!v300 || (v95 = *(*(&v289 + 1) + 48), v96 = *(*(&v289 + 1) + 56) - v95, 0xAAAAAAAAAAAAAAABLL * (v96 >> 3) % v300))
    {
      v97 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v85);
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v100);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v102, v98, v101, 3089, 0, "rectangular references should have rowWidth rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105);
      v95 = *(*(&v289 + 1) + 48);
      v96 = *(*(&v289 + 1) + 56) - v95;
    }

    v107 = *v95;
    v106 = v95[1];
    v108 = v95[2];
    v109 = *(v95 + v96 - 24);
    v110 = [TSCEReferenceValue alloc];
    *v273 = v107;
    *&v273[8] = v109;
    *&v273[16] = v106;
    *&v273[24] = v108;
    LOBYTE(v286) = 0;
    v245 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v110, v111, contextCopy, v273, &v286);
    objc_msgSend_setIsOutputOfAFunction_(v245, v112, 1, v113);
    sub_221256020(&v301, &v284);
    TSCEFormat::TSCEFormat(v273, &v284);
    objc_msgSend_setFormat_(v245, v114, v273, v115);
    goto LABEL_112;
  }

  if (v299)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(&v289 + 1) + 56) - *(*(&v289 + 1) + 48)) >> 3) % v300)
    {
      v116 = MEMORY[0x277D81150];
      v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v85);
      v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v119);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v117, v120, 3099, 0, "rectangular references should have rowWidth rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124);
    }

    v286 = 0uLL;
    *&v287 = 0;
    v125 = TSCECellRefSet::count(&v296);
    if (v125)
    {
      for (i = 0; i != v125; ++i)
      {
        v127 = i;
        if (v9)
        {
          v127 = i / v300 + i % v300 * (v125 / v300);
        }

        v128 = *(*(&v289 + 1) + 48) + 24 * v127;
        v266 = *v128;
        v129 = *(v128 + 16);
        v130 = [TSCEReferenceValue alloc];
        *&v131 = vdupq_laneq_s64(v266, 1).u64[0];
        *(&v131 + 1) = v129;
        *v273 = vdupq_lane_s64(v266.i64[0], 0);
        *&v273[16] = v131;
        v271[0] = 0;
        v133 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v130, v132, contextCopy, v273, v271);
        objc_msgSend_setIsOutputOfAFunction_(v133, v134, 1, v135);
        v136 = v133;
        v283 = v136;
        sub_2210ED5B8(&v286, &v283);
      }
    }

    *v271 = v300;
    *&v271[4] = v125 / v300;
    v137 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v137, v138, &v286, 0, 1, v271);
    sub_221256020(&v301, v273);
    v245 = objc_msgSend_gridValue_format_(TSCEGridValue, v140, isFlattened_dimensions, v273);
  }

  else
  {
    if (v298 != 1)
    {
      memset(v281, 0, sizeof(v281));
      v280._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v280._coordsForOwnerUid.__tree_.__size_ = 0;
      v280._coordsForOwnerUid.__tree_.__begin_node_ = &v280._coordsForOwnerUid.__tree_.__end_node_;
      if (v241 < 2)
      {
LABEL_104:
        v232 = [TSCEDenseGrid alloc];
        v166 = objc_msgSend_initWithValues_(v232, v233, v281, v234);
        sub_221256020(&v301, v273);
        v245 = objc_msgSend_gridValue_format_(TSCEGridValue, v235, v166, v273);
        v169 = v16;
      }

      else
      {
        v161 = (v240 >> 3) & 0x7FFFFFFF;
        v162 = 1;
        v254 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v244 = contextCopy;
        while (1)
        {
          v163 = *(*arguments + 8 * v162);
          v166 = v163;
          if (v163)
          {
            objc_msgSend_formatWithContext_(v163, v164, contextCopy, v165);
          }

          else
          {
            memset(v273, 0, 32);
          }

          sub_22114F414(&v301, v273);
          v279 = v16;
          v262 = v162;
          v168 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v166, v167, contextCopy, spec, v162, &v279);
          v169 = v279;

          if (v169)
          {
            v245 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v170, v169, v172);
            goto LABEL_108;
          }

          if (v168)
          {
            objc_msgSend_rangeRef(v168, v170, v171, v172);
          }

          else
          {
            v286 = 0u;
            v287 = 0u;
          }

          v173 = objc_msgSend_calcEngine(contextCopy, v170, v171, v172);
          v176 = objc_msgSend_rangeIsWithinTable_(v173, v174, &v286, v175);

          if ((v176 & 1) == 0)
          {
            v236 = objc_msgSend_invalidReferenceError(TSCEError, v177, v178, v179);
            v245 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v237, v236, v238);

            v169 = 0;
            goto LABEL_109;
          }

          v278 = 0;
          v264 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v168, v177, contextCopy, spec, v262, 1, &v278);
          v180 = v278;
          if (v180)
          {
            break;
          }

          v184 = objc_msgSend_dimensions(v264, v181, v182, v183);
          v185 = contextCopy;
          *v273 = v185;
          *&v273[8] = spec;
          *&v273[16] = 0;
          *&v273[24] = v262;
          v187 = 1;
          v273[28] = 1;
          *&v273[29] = 0;
          v274 = 0;
          v275 = v254;
          v276 = 0;
          v277 = 0;
          v258 = HIDWORD(v184);
          if (HIDWORD(v184))
          {
            v188 = v185;
            v249 = v168;
            v251 = v166;
            v260 = 0;
            v189 = 0;
            v190 = v262;
            while (1)
            {
              v256 = v189;
              if (v184)
              {
                break;
              }

LABEL_99:
              v189 = ++v260 >= v258;
              if (v260 == v258)
              {
                v16 = 0;
                v187 = 1;
                contextCopy = v244;
                v166 = v251;
                v161 = (v240 >> 3) & 0x7FFFFFFF;
                v168 = v249;
                goto LABEL_102;
              }
            }

            v191 = 0;
            while (1)
            {
              v192 = objc_msgSend_valueAtGridCoord_accessContext_(v264, v186, (v260 << 32) | v191, v273);
              if ((objc_msgSend_isReferenceValue(v192, v193, v194, v195) & 1) == 0)
              {
                v198 = MEMORY[0x277D81150];
                v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v197);
                v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v201);
                v206 = objc_msgSend_nativeType(v192, v203, v204, v205);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v198, v207, v199, v202, 3176, 0, "indices inside a range reference should be references, instead got %d.", v206);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v208, v209, v210);
              }

              v272 = 0;
              v211 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v192, v196, v188, spec, v190, &v272);
              v16 = v272;
              if (v16)
              {
                break;
              }

              if (v211)
              {
                objc_msgSend_rangeRef(v211, v212, v213, v214);
                v215 = *v271;
                v216 = *&v271[8];
              }

              else
              {
                v216 = 0;
                v215 = 0;
                memset(v271, 0, sizeof(v271));
              }

              if (v215.row != v216 || ((v216 ^ *&v215) & 0x101FFFF00000000) != 0)
              {
                v217 = MEMORY[0x277D81150];
                v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, "+[TSCEFunction_UNION_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v214);
                v221 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v219, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v220);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v217, v222, v218, v221, 3183, 0, "each index inside a range reference should be just one cell.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v223, v224, v225);
                v190 = v262;
                v215 = *v271;
              }

              v270.coordinate = v215;
              v270._tableUID = *&v271[16];
              if ((TSCECellRefSet::containsCellRef(&v280, &v270) & 1) == 0)
              {
                v226 = [TSCEReferenceValue alloc];
                TSCERangeRef::TSCERangeRef(&v269, &v270);
                v268 = 0;
                v228 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v226, v227, v188, &v269, &v268);
                objc_msgSend_setPermitsAccessInsideMergeRegions_(v228, v229, 1, v230);
                v231 = v228;
                v267 = v231;
                sub_2210ED5B8(v281, &v267);

                TSCECellRefSet::addCellRef(&v280, &v270);
              }

              if (v184 <= ++v191)
              {
                goto LABEL_99;
              }
            }

            v245 = objc_msgSend_raiseErrorOrConvert_(v188, v212, v16, v214);

            contextCopy = v244;
            v166 = v251;
            v161 = (v240 >> 3) & 0x7FFFFFFF;
            v168 = v249;
            v187 = v256;
          }

          else
          {
            v16 = 0;
          }

LABEL_102:

          if ((v187 & 1) == 0)
          {
            goto LABEL_110;
          }

          v162 = v262 + 1;
          if (v262 + 1 == v161)
          {
            goto LABEL_104;
          }
        }

        v169 = v180;
        v245 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v181, v180, v183);

LABEL_108:
      }

LABEL_109:

      v16 = v169;
LABEL_110:
      sub_22107C800(&v280, v280._coordsForOwnerUid.__tree_.__end_node_.__left_);
      v160 = v281;
      goto LABEL_111;
    }

    sub_22147A67C(*(*(&v289 + 1) + 48), *(*(&v289 + 1) + 56), v273);
    v286 = 0uLL;
    *&v287 = 0;
    v144 = *(*(&v289 + 1) + 56) - *(*(&v289 + 1) + 48);
    if (v144)
    {
      v145 = 0;
      v146 = 0xAAAAAAAAAAAAAAABLL * (v144 >> 3);
      if (v146 <= 1)
      {
        v147 = 1;
      }

      else
      {
        v147 = v146;
      }

      do
      {
        v148 = *(*(&v289 + 1) + 48) + v145;
        v149 = *(v148 + 16);
        *v271 = *v148;
        *&v271[16] = v149;
        v150 = [TSCEReferenceValue alloc];
        TSCERangeRef::TSCERangeRef(v273, v271);
        LOBYTE(v269.range._topLeft.row) = 0;
        v152 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v150, v151, contextCopy, v273, &v269);
        objc_msgSend_setIsOutputOfAFunction_(v152, v153, 1, v154);
        v155 = v152;
        v282 = v155;
        sub_2210ED5B8(&v286, &v282);

        v145 += 24;
        --v147;
      }

      while (v147);
    }

    v156 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_(v156, v157, &v286, v158);
    sub_221256020(&v301, v273);
    v245 = objc_msgSend_gridValue_format_(TSCEGridValue, v159, isFlattened_dimensions, v273);
  }

  v160 = &v286;
LABEL_111:
  *v273 = v160;
  sub_22107C2C0(v273);
LABEL_112:
  v13 = v16;
  _Block_object_dispose(&v289, 8);
  v14 = v245;
  if (v291.i64[1])
  {
    v292 = v291.i64[1];
    operator delete(v291.i64[1]);
  }

LABEL_114:
  sub_22107C800(&v296, v296._coordsForOwnerUid.__tree_.__end_node_.__left_);
LABEL_115:

  if (v301)
  {
    v302 = v301;
    operator delete(v301);
  }

  return v14;
}

@end