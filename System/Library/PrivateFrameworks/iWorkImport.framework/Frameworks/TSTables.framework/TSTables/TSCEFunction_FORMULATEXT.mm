@interface TSCEFunction_FORMULATEXT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FORMULATEXT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v237.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v237._tableUID._lower = 0;
  v237._tableUID._upper = 0;
  if (*(arguments + 1) != *arguments)
  {
    v7 = **arguments;
    if (objc_msgSend_isTokenOrEmptyArg(v7, v8, v9, v10))
    {
      v12 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v236 = 0;
    v12 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v11, context, spec, 0, &v236);
    v34 = v236;
    if (v34)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v31, v34, v33);
    }

    else
    {
      if (!objc_msgSend_isNil(v12, v31, v32, v33))
      {
        if (v12)
        {
          objc_msgSend_rangeRef(v12, v101, v102, v103);
        }

        else
        {
          memset(v216, 0, 32);
        }

        v237 = *v216;
        if (TSCERangeRef::isSpanningAllRows(&v237))
        {
          if (v237.range._bottomRight.column == v237.range._topLeft.column)
          {
            v185 = *&v237.range._topLeft.column;
            v186 = *&v237.range._bottomRight.column;
            v237.range._topLeft.row = *objc_msgSend_containingCell(context, v182, v183, v184);
            *&v237.range._topLeft.column = v185;
            v237.range._bottomRight.row = v237.range._topLeft.row;
            *&v237.range._bottomRight.column = v186;
          }
        }

        else if (TSCERangeRef::isSpanningAllColumns(&v237))
        {
          row = v237.range._topLeft.row;
          if (v237.range._bottomRight.row == v237.range._topLeft.row)
          {
            *v216 = *&v237.range._topLeft._preserveRow;
            *&v216[4] = HIWORD(v237.range._bottomRight.row);
            v191 = *&v237.range._bottomRight._preserveRow;
            v192 = *(objc_msgSend_containingCell(context, v187, v188, v189) + 4);
            v237.range._topLeft.row = row;
            v237.range._topLeft.column = v192;
            *&v237.range._topLeft._preserveRow = *v216;
            HIWORD(v237.range._bottomRight.row) = *&v216[4];
            v237.range._bottomRight.column = v192;
            *&v237.range._bottomRight._preserveRow = v191;
          }
        }

        goto LABEL_4;
      }

      v104 = objc_msgSend_functionName(spec, v101, v102, v103);
      v107 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v105, v104, v106);
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v108, v107, v109);
    }

    goto LABEL_73;
  }

  v12 = 0;
LABEL_6:
  v13 = objc_msgSend_calcEngine(context, a2, context, spec);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v13, v14, &v237, v15);

  if ((IsValidIncludingSheet & 1) == 0)
  {
    v23 = objc_msgSend_invalidReferenceError(TSCEError, v17, v18, v19);
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v29, v23, v30);
    goto LABEL_10;
  }

  if (!TSCERangeRef::isSpanning(&v237))
  {
    *v216 = objc_msgSend_tableUID(v12, v20, v21, v22);
    *&v216[8] = v35;
    objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v35, v216, v36);
    *v216 = 0;
    TSCERangeRef::TSCERangeRef(&v224, &v235);
    *&v216[8] = *&v224.var0;
    *&v216[24] = *&v224.var2.var0.var0.coordinate.row;
    v217 = 0;
    v221 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v37, v216, v38);

    *v216 = objc_msgSend_tableUID(v12, v39, v40, v41);
    *&v216[8] = v42;
    objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v42, v216, v43);
    *v216 = 0;
    TSCERangeRef::TSCERangeRef(&v224, &v234);
    *&v216[8] = *&v224.var0;
    *&v216[24] = *&v224.var2.var0.var0.coordinate.row;
    v217 = 0;
    v221 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v44, v216, v45);

    *v216 = objc_msgSend_tableUID(v12, v46, v47, v48);
    *&v216[8] = v49;
    objc_msgSend_groupByChangedPrecedentForTableUID_(TSCEHauntedOwner, v49, v216, v50);
    *v216 = 0;
    TSCERangeRef::TSCERangeRef(&v224, &v233);
    *&v216[8] = *&v224.var0;
    *&v216[24] = *&v224.var2.var0.var0.coordinate.row;
    v217 = 0;
    v221 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v51, v216, v52);

    upper = v237._tableUID._upper;
    lower = v237._tableUID._lower;
    bottomRight = v237.range._bottomRight;
    topLeft = v237.range._topLeft;
    v54 = TSUCellCoord::offsetBetween(&topLeft, &bottomRight, v53);
    v196 = HIDWORD(v54);
    v197 = v54;
    v55 = v54 + 1;
    v56 = HIDWORD(v54) + 1;
    v230[0] = v54 + 1;
    v230[1] = HIDWORD(v54) + 1;
    v60 = objc_msgSend_calcEngine(context, v57, v58, v59);
    v229[0] = lower;
    v229[1] = upper;
    v63 = objc_msgSend_tableResolverForTableUID_(v60, v61, v229, v62);
    v67 = objc_msgSend_containingTable(context, v64, v65, v66);
    v70 = objc_msgSend_tableResolverForTableUID_(v60, v68, v67, v69);
    v74 = objc_msgSend_calcEngine(context, v71, v72, v73);
    v199 = objc_msgSend_headerNameMgr(v74, v75, v76, v77);

    if (v70)
    {
      v81 = objc_msgSend_containingCell(context, v78, v79, v80);
      v204 = objc_msgSend_textStyleForCalcEngineAtCellCoord_outIsDefault_(v70, v82, v81, 0);
      if (v63)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v204 = 0;
      if (v63)
      {
LABEL_15:
        v83 = objc_msgSend_tableUID(v63, v78, v79, v80);
        v85 = v84;
        v88 = objc_msgSend_containingTable(context, v84, v86, v87);
        v92 = v83 == *v88 && v85 == v88[1];
        v93 = v92;
        v228 = 0;
        v227 = 0;
        v227 = objc_msgSend_groupByUUID(v63, v89, v90, v91);
        v228 = v94;
        objc_msgSend_groupingColumnOrderPrecedent_(v63, v94, &v227, v95);
        *v216 = 0;
        TSCERangeRef::TSCERangeRef(&v224, &v226);
        *&v216[8] = *&v224.var0;
        *&v216[24] = *&v224.var2.var0.var0.coordinate.row;
        v217 = 0;
        v221 = 0;
        v218 = 0;
        v219 = 0;
        v220 = 0;
        objc_msgSend_addCalculatedPrecedent_(context, v96, v216, v97);

        objc_msgSend_groupingRowOrderPrecedent_ignoreRecalc_(v63, v98, &v227, v93);
        *v216 = 0;
        TSCERangeRef::TSCERangeRef(&v224, &v226);
        *&v216[8] = *&v224.var0;
        *&v216[24] = *&v224.var2.var0.var0.coordinate.row;
        v217 = 0;
        v221 = 0;
        v218 = 0;
        v219 = 0;
        v220 = 0;
        objc_msgSend_addCalculatedPrecedent_(context, v99, v216, v100);

        if (!v70)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }
    }

    if (!v70)
    {
LABEL_22:
      v198 = 0;
LABEL_29:
      v110 = objc_msgSend_containingTable(context, v78, v79, v80);
      v116 = objc_msgSend_tableResolverForTableUID_(v60, v111, v110, v112);
      if (v116)
      {
        v117 = objc_msgSend_containingCell(context, v113, v114, v115);
        isHeaderCell = objc_msgSend_isHeaderCell_(v116, v118, v117, v119);
      }

      else
      {
        isHeaderCell = 0;
      }

      memset(&v226, 0, sizeof(v226));
      if ((v197 & 0x8000000000000000) != 0)
      {
        coordinate = 0;
        v173 = 0;
      }

      else
      {
        v193 = v56;
        v194 = v55;
        contextCopy = context;
        v195 = v12;
        v123 = 0;
        if (v63)
        {
          v124 = v204 == 0;
        }

        else
        {
          v124 = 1;
        }

        v125 = v197;
        v126 = !v124;
        v206 = v126;
        v127 = v198;
        v202 = v60;
        do
        {
          if ((v125 & 0x80000000) == 0)
          {
            v128 = 0;
            do
            {
              v225 = (topLeft.row + v123) | ((topLeft.column + v128) << 32);
              if (v63)
              {
                *v216 = topLeft.row + v123;
                *&v216[4] = topLeft.column + v128;
                v129 = objc_msgSend_mergedRangeForBaseCellCoord_(v63, v120, v216, v122);
                if ((v129 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
                {
                  v225 = v129;
                }
              }

              if (v206 && (objc_msgSend_unpersistedFormulaStorageForCoord_withPrefix_withStyle_allowHeaderNames_(v63, v120, &v225, @"=", v204, isHeaderCell ^ 1u), (v130 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                if (((v70 != 0) & v198) != 0)
                {
                  v131 = objc_msgSend_containingCell(contextCopy, v120, v121, v122);
                  objc_msgSend_upgradeStyleForFormulatextForCellCoord_(v70, v132, v131, v133);
                }

                v134 = objc_msgSend_emptyReferenceSetWrapper(v60, v120, v121, v122);
                v140 = objc_msgSend_formulaObjectForCoord_(v63, v135, &v225, v136);
                if (v140)
                {
                  *v216 = v225;
                  *&v216[8] = lower;
                  *&v216[16] = upper;
                  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v224, v60, v216);
                  v144 = objc_msgSend_const_astNodeArray(v140, v141, v142, v143);
                  v148 = objc_msgSend_referenceSet(v134, v145, v146, v147);
                  sub_22126254C(v216, v144, &v224, v148);
                  v222[35] = 1;
                  sub_221262B44(v216, v149, v150, v151);
                  v158 = objc_msgSend_referenceSet(v134, v152, v153, v154);
                  if ((isHeaderCell & 1) == 0)
                  {
                    v213[0] = MEMORY[0x277D85DD0];
                    v213[1] = 3221225472;
                    v213[2] = sub_22146A490;
                    v213[3] = &unk_2784658A8;
                    v159 = v199;
                    v214 = v159;
                    v215 = contextCopy;
                    TSCEReferenceSet::foreachCellRef(v158, v213);
                    v210[0] = MEMORY[0x277D85DD0];
                    v210[1] = 3221225472;
                    v210[2] = sub_22146A608;
                    v210[3] = &unk_2784658D0;
                    v211 = v159;
                    v212 = contextCopy;
                    TSCEReferenceSet::foreachSpanningRangeRef(v158, v210);

                    v60 = v202;
                    v127 = v198;
                  }

                  if (objc_msgSend_isCategorized(v63, v155, v156, v157))
                  {
                    v209[0] = MEMORY[0x277D85DD0];
                    v209[1] = 3221225472;
                    v209[2] = sub_22146A738;
                    v209[3] = &unk_2784658F0;
                    v209[4] = contextCopy;
                    TSCEReferenceSet::foreachRangeRef(v158, v209);
                  }

                  *v216 = &unk_2834A37F0;

                  v227 = v222;
                  sub_2211FEAB8(&v227);
                  TSCEASTStreamIterator::~TSCEASTStreamIterator(v216, v160);
                }

                if (v127)
                {
                  v161 = v130;
                  *v216 = 0;
                  *&v216[8] = v161;
                  *&v216[16] = 1;
                  v216[18] = 0;
                  v224.var0 = sub_2210789F4(v216, v162, v163, v164);
                  sub_221179A54(&v226, &v224.var0);
                }

                else
                {
                  v168 = objc_msgSend_string(v130, v137, v138, v139);
                  v171 = objc_msgSend_stringValue_(TSCEStringValue, v169, v168, v170);

                  v172 = v171;
                  v208 = v172;
                  sub_2210ED5B8(&v226, &v208);

                  v60 = v202;
                }
              }

              else
              {
                v165 = objc_msgSend_notAReferenceToAFormulaError(TSCEError, v120, v121, v122);
                v207 = objc_msgSend_errorValue_(TSCEErrorValue, v166, v165, v167);
                sub_2210ED5B8(&v226, &v207);
                v134 = v207;
                v130 = v165;
              }

              ++v128;
            }

            while (v197 + 1 != v128);
          }

          v125 = v197;
          v92 = v123++ == v196;
        }

        while (!v92);
        v173 = v226._tableUID._lower;
        coordinate = v226.coordinate;
        v12 = v195;
        v56 = v193;
        v55 = v194;
      }

      if (v173 - coordinate == 8 && v56 * v55 == 1)
      {
        v28 = *coordinate;
      }

      else
      {
        v176 = [TSCEDenseGrid alloc];
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v176, v177, &v226, 0, 0, v230);
        v28 = objc_msgSend_gridValue_(TSCEGridValue, v179, isFlattened_dimensions, v180);
      }

      *v216 = &v226;
      sub_22107C2C0(v216);

      goto LABEL_72;
    }

LABEL_28:
    v198 = objc_msgSend_formulaNeedsBidiStyling(v70, v78, v79, v80);
    goto LABEL_29;
  }

  v23 = objc_msgSend_functionName(spec, v20, v21, v22);
  v25 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v24, v23, 1);
  v28 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);

LABEL_10:
LABEL_72:
  v34 = 0;
LABEL_73:

  return v28;
}

@end