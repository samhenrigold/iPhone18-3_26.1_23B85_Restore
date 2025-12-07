@interface TSCEFunctionNode
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateWithArrayModeFanout:(id)fanout numArgs:(unint64_t)args;
+ (id)functionName;
+ (id)functionSpec;
+ (id)vectorCriterionPairsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments dimensions:(TSCEGridDimensions)dimensions skipFirst:(BOOL)first skipLast:(BOOL)last outError:(id *)error;
+ (unsigned)functionIndex;
+ (void)collectAndApplyWarnings:(id)warnings functionSpec:(id)spec arguments:(const void *)arguments result:(id)result;
@end

@implementation TSCEFunctionNode

+ (unsigned)functionIndex
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunctionNode functionIndex]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 25, 0, "Derived classes MUST implement.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

+ (id)functionSpec
{
  v5 = objc_msgSend_functionIndex(self, a2, v2, v3);

  return objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v4, v5, v6);
}

+ (id)functionName
{
  v4 = objc_msgSend_functionSpec(self, a2, v2, v3);
  v8 = objc_msgSend_functionName(v4, v5, v6, v7);

  return v8;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunctionNode evaluateForArgsWithContext:functionSpec:arguments:]", spec, arguments);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 41, 0, "Should always be overridden for new evaluation");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);

  return objc_msgSend_nilValue(TSCENilValue, v14, v15, v16);
}

+ (id)evaluateWithArrayModeFanout:(id)fanout numArgs:(unint64_t)args
{
  v7 = objc_msgSend_functionSpec(self, a2, fanout, args);
  v11 = objc_msgSend_nilValue(TSCENilValue, v8, v9, v10);
  fanoutCopy = fanout;
  if (!objc_msgSend_inArrayMode(fanout, v12, v13, v14) || (objc_msgSend_disallowArrayModeFanout(v7, v15, v16, v17) & 1) != 0)
  {
    v215 = 0;
    v216 = 0;
    v217 = 0;
    v20 = objc_msgSend_loadArgumentsForFunction_arguments_numArgs_(fanout, v15, v7, &v215, args);
    if (v20 || (TSCEEvaluationStack::typeCheckArgumentsForFunction(fanout, v7, &v215), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = objc_msgSend_errorValue_(TSCEErrorValue, v18, v20, v19);
    }

    else
    {
      v21 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(self, v18, fanout, v7, &v215);
    }

    v22 = v21;

    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(self, v23, fanout, v7, &v215, v22);
    v236 = &v215;
    sub_22107C2C0(&v236);
    if (!v22)
    {
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  v236 = 0;
  v237 = 0;
  v238 = 0;
  v20 = objc_msgSend_loadArgumentsForFunction_arguments_numArgs_(fanout, v15, v7, &v236, args);
  if (v20)
  {
    v29 = objc_msgSend_errorValue_(TSCEErrorValue, v26, v20, v28);

    v30 = v29;
    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(self, v31, fanoutCopy, v7, &v236, v29);
    goto LABEL_151;
  }

  v233 = 0;
  v234 = 0;
  v235 = 0;
  memset(v232, 0, sizeof(v232));
  v231 = 0x100000001;
  v205 = v11;
  selfCopy = self;
  v35 = objc_msgSend_functionIndex(v7, v26, v27, v28) == 336;
  v207 = v236;
  v208 = v237;
  v36 = v237 - v236;
  v37 = 0;
  if (v237 != v236)
  {
    v38 = 0;
    if (v36 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v237 - v236;
    }

    do
    {
      v40 = v236[v38];
      v44 = objc_msgSend_nativeType(v40, v41, v42, v43);
      v46 = objc_msgSend_argumentSpecForIndex_numArgs_(v7, v45, v38, v36);
      v53 = objc_msgSend_disallowArrayModeFanout(v46, v47, v48, v49);
      if (v44 > 0xCu)
      {
        if (v44 == 13)
        {
          if (!v35)
          {
            goto LABEL_64;
          }

          v67 = objc_msgSend_functionIndex(v7, v50, v51, v52);
          v35 = 1;
          if (v67 > 312)
          {
            if (v67 == 336)
            {
              goto LABEL_50;
            }

            if (v67 == 313)
            {
              v70 = 0;
              while (((*&v233[(v70 >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v70 & 0x3E)) & 1) == 0)
              {
                v70 += 2;
                if (v70 >= v36)
                {
                  goto LABEL_64;
                }
              }

              if (v234)
              {
LABEL_50:
                v71 = objc_msgSend_unwrapThunk_(fanoutCopy, v68, v40, v69);
                v78 = objc_msgSend_nativeType(v71, v72, v73, v74);
                if (v78 == 6)
                {
                  v79 = objc_msgSend_rangeContext(v46, v75, v76, v77);
                  v229 = v37;
                  v81 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v71, v80, fanoutCopy, v7, v38, &v229);
                  v212 = v229;

                  objc_msgSend_setRangeContextOverride_(v81, v82, v79, v83);
                  v85 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v81, v84, fanoutCopy, 0);

                  v78 = objc_msgSend_nativeType(v85, v86, v87, v88);
                  v71 = v85;
                  v37 = v212;
                }

                if (v78 == 16 || v78 == 1)
                {

                  v228 = 0;
                  v90 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v71, v89, fanoutCopy, v7, v38, 0, &v228);
                  v37 = v228;
                  v215 = v90;
                  sub_22121488C(v232, &v215);
                  v94 = objc_msgSend_dimensions(v215, v91, v92, v93);
                  if ((v53 & 1) != 0 || v37 || ((HIDWORD(v94) * v94) & 0xFFFFFFFE) == 0)
                  {
                    LOBYTE(v224[0]) = 0;
                    sub_2213F4AD0(&v233, v224);
                  }

                  else
                  {
                    if (v231.width <= v94)
                    {
                      width = v94;
                    }

                    else
                    {
                      width = v231.width;
                    }

                    if (v231.height <= HIDWORD(v94))
                    {
                      height = HIDWORD(v94);
                    }

                    else
                    {
                      height = v231.height;
                    }

                    v231 = (width | (height << 32));
                    LOBYTE(v224[0]) = 1;
                    sub_2213F4AD0(&v233, v224);
                  }

                  v103 = v215;
                }

                else
                {
                  LOBYTE(v215) = 0;
                  sub_2213F4AD0(&v233, &v215);
                  v227 = objc_msgSend_emptyGrid(TSCEGridValue, v100, v101, v102);
                  sub_2212D01C8(v232, &v227);
                  v103 = v227;
                }

                v35 = 1;
                goto LABEL_67;
              }

LABEL_64:
              v35 = 0;
            }
          }

          else if (v67 == 19 || v67 == 62)
          {
            if (v234 && (*v233 & 1) != 0)
            {
              goto LABEL_50;
            }

            goto LABEL_64;
          }

          LOBYTE(v215) = 0;
          sub_2213F4AD0(&v233, &v215);
          v226 = objc_msgSend_emptyGrid(TSCEGridValue, v97, v98, v99);
          sub_2212D01C8(v232, &v226);
          v66 = v226;
          goto LABEL_66;
        }

        if (v44 == 16)
        {
          goto LABEL_21;
        }
      }

      else if (v44 == 1 || v44 == 6)
      {
LABEL_21:

        v230 = 0;
        v56 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v40, v55, fanoutCopy, v7, v38, 0, &v230);
        v37 = v230;
        v215 = v56;
        sub_22121488C(v232, &v215);
        v60 = objc_msgSend_dimensions(v215, v57, v58, v59);
        if ((v53 & 1) != 0 || v37 || ((HIDWORD(v60) * v60) & 0xFFFFFFFE) == 0)
        {
          LOBYTE(v224[0]) = 0;
          sub_2213F4AD0(&v233, v224);
        }

        else
        {
          if (v231.width <= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v231.width;
          }

          if (v231.height <= HIDWORD(v60))
          {
            v62 = HIDWORD(v60);
          }

          else
          {
            v62 = v231.height;
          }

          v231 = (v61 | (v62 << 32));
          LOBYTE(v224[0]) = 1;
          sub_2213F4AD0(&v233, v224);
          v35 = 1;
        }

        v66 = v215;
        goto LABEL_66;
      }

      LOBYTE(v215) = 0;
      sub_2213F4AD0(&v233, &v215);
      v225 = objc_msgSend_emptyGrid(TSCEGridValue, v63, v64, v65);
      sub_2212D01C8(v232, &v225);
      v66 = v225;
LABEL_66:

LABEL_67:
      ++v38;
    }

    while (v38 != v39);
  }

  if (!v35)
  {
    goto LABEL_84;
  }

  v104 = objc_msgSend_functionIndex(v7, v32, v33, v34);
  if (v104 != 19 && v104 != 62)
  {
    if (v104 != 313)
    {
      goto LABEL_89;
    }

    if (v208 != v207)
    {
      v105 = 0;
      while (((*&v233[(v105 >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v105 & 0x3E)) & 1) == 0)
      {
        v105 += 2;
        if (v105 >= v36)
        {
          goto LABEL_84;
        }
      }

      if (v234)
      {
        goto LABEL_89;
      }
    }

LABEL_84:
    v20 = TSCEEvaluationStack::typeCheckArgumentsForFunction(fanoutCopy, v7, &v236);

    if (v20)
    {
      objc_msgSend_errorValue_(TSCEErrorValue, v106, v20, v107);
    }

    else
    {
      objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(selfCopy, v106, fanoutCopy, v7, &v236);
    }
    v108 = ;

    v30 = v108;
    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(selfCopy, v109, fanoutCopy, v7, &v236, v108);
    goto LABEL_145;
  }

  if (!v234 || (*v233 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_89:
  memset(v224, 0, sizeof(v224));
  sub_2213F5020(v224, v236, v237, v237 - v236);
  v223 = 0;
  v206 = objc_opt_new();
  if (v36 <= 1)
  {
    v116 = 1;
  }

  else
  {
    v116 = v36;
  }

  v213 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v211 = v37;
  do
  {
    if (v208 == v207)
    {
      goto LABEL_133;
    }

    v117 = 0;
    v210 = 0;
    do
    {
      if (((*&v233[(v117 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v117) & 1) == 0)
      {
        goto LABEL_128;
      }

      v118 = *(v232[0] + 8 * v117);
      v122 = objc_msgSend_dimensions(v118, v119, v120, v121);
      if (v122 == 1)
      {
        v126 = 0;
      }

      else
      {
        v126 = 0x7FFFFFFFLL;
      }

      if (v122 == 1)
      {
        row = v223.row;
      }

      else
      {
        row = 0x7FFFFFFFLL;
      }

      v128 = objc_msgSend_dimensions(v118, v123, v124, v125);
      if ((v128 & 0xFFFFFFFF00000000) == 0x100000000)
      {
        column = v223.column;
      }

      else
      {
        column = 0x7FFFFFFFLL;
      }

      if ((v128 & 0xFFFFFFFF00000000) == 0x100000000)
      {
        v130 = 0;
      }

      else
      {
        v130 = 0x7FFFFFFFLL;
      }

      v215 = fanoutCopy;
      v216 = v7;
      v217 = 0;
      v218 = v117;
      v219[0] = 0;
      *(v219 + 3) = 0;
      v220 = v213;
      v221 = 0;
      v222 = 0;
      v134 = objc_msgSend_dimensions(v118, v131, v132, v133);
      if (v223.row < HIDWORD(v134) && v223.column < v134)
      {
        v160 = objc_msgSend_valueAtGridCoord_accessContext_(v118, v135, *&v223, &v215);
        goto LABEL_125;
      }

      v139 = objc_msgSend_dimensions(v118, v135, v136, v137);
      if (row < HIDWORD(v139) && v126 < v139)
      {
        v160 = objc_msgSend_valueAtGridCoord_accessContext_(v118, v140, v126 | (row << 32), &v215);
        goto LABEL_125;
      }

      v144 = objc_msgSend_dimensions(v118, v140, v141, v142);
      if (v130 < HIDWORD(v144) && column < v144)
      {
        v160 = objc_msgSend_valueAtGridCoord_accessContext_(v118, v145, column | (v130 << 32), &v215);
LABEL_125:
        v155 = *(v224[0] + 8 * v117);
        *(v224[0] + 8 * v117) = v160;
LABEL_126:

        v161 = 1;
        goto LABEL_127;
      }

      v148 = objc_msgSend_argumentSpecForIndex_(v7, v145, v117, v146);
      if (objc_msgSend_allowError(v148, v149, v150, v151))
      {
        v155 = objc_msgSend_invalidFanoutExceedingInputSize(TSCEError, v152, v153, v154);
        v158 = objc_msgSend_errorValue_(TSCEErrorValue, v156, v155, v157);
        v159 = *(v224[0] + 8 * v117);
        *(v224[0] + 8 * v117) = v158;

        goto LABEL_126;
      }

      v161 = 0;
      v210 = 1;
LABEL_127:

      if ((v161 & 1) == 0)
      {
        break;
      }

LABEL_128:
      ++v117;
    }

    while (v116 != v117);
    if (v210)
    {
      v162 = objc_msgSend_invalidFanoutExceedingInputSize(TSCEError, v113, v114, v115);

      v165 = objc_msgSend_errorValue_(TSCEErrorValue, v163, v162, v164);
      objc_msgSend_setValue_atCoord_(v206, v166, v165, &v223);
      goto LABEL_139;
    }

LABEL_133:
    v162 = TSCEEvaluationStack::typeCheckArgumentsForFunction(fanoutCopy, v7, v224);

    if (v162)
    {
      objc_msgSend_raiseErrorOrConvert_(fanoutCopy, v167, v162, v168);
    }

    else
    {
      objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(selfCopy, v167, fanoutCopy, v7, v224);
    }
    v165 = ;
    if (objc_msgSend_isThunk(v165, v169, v170, v171))
    {
      v174 = objc_msgSend_unwrapThunk_(fanoutCopy, v172, v165, v173);

      v165 = v174;
    }

    objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(selfCopy, v172, fanoutCopy, v7, v224, v165);
    objc_msgSend_setValue_atCoord_(v206, v175, v165, &v223);
LABEL_139:
    v211 = v162;

    v176 = TSCEGridDimensions::nextCoordRowMajorOrder(&v231, &v223);
    v223 = v176;
  }

  while (v176 != 0x7FFFFFFF && (v176 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  v20 = v162;
  if (objc_msgSend_excelCompat_1x1_Truncation(v7, v113, v114, v115))
  {
    objc_msgSend_firstValue(v206, v177, v178, v179);
  }

  else
  {
    objc_msgSend_valueGridValue_(TSCEValueGridValue, v177, v206, v179);
  }
  v30 = ;

  v215 = v224;
  sub_22107C2C0(&v215);
LABEL_145:
  if (objc_msgSend_isValueGridValue(v30, v110, v111, v112))
  {
    v183 = objc_msgSend_asValueGridValue(v30, v180, v181, v182);
    v187 = objc_msgSend_valueGrid(v183, v184, v185, v186);

    if (objc_msgSend_area(v187, v188, v189, v190) == 1)
    {
      v194 = objc_msgSend_firstValue(v187, v191, v192, v193);

      v30 = v194;
    }
  }

  v215 = v232;
  sub_22107C2C0(&v215);
  if (v233)
  {
    operator delete(v233);
  }

LABEL_151:
  v215 = &v236;
  sub_22107C2C0(&v215);
  v22 = v30;
  if (!v30)
  {
LABEL_152:
    v195 = MEMORY[0x277D81150];
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSCEFunctionNode evaluateWithArrayModeFanout:numArgs:]", v25);
    v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionNode.mm", v198);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v200, v196, v199, 341, 0, "Should have always created a non-nil result of some sort in evaluateWithArrayModeFanout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v201, v202, v203);
  }

LABEL_153:

  return v22;
}

+ (void)collectAndApplyWarnings:(id)warnings functionSpec:(id)spec arguments:(const void *)arguments result:(id)result
{
  warningsCopy = warnings;
  resultCopy = result;
  v12 = *arguments;
  v13 = *(arguments + 1);
  while (v12 != v13)
  {
    v14 = *v12;
    v18 = objc_msgSend_warnings(v14, v15, v16, v17);
    objc_msgSend_attachWarnings_(resultCopy, v19, v18, v20);

    ++v12;
  }

  v21 = objc_msgSend_localWarnings(warningsCopy, v8, v9, v10);
  if (objc_msgSend_count(v21, v22, v23, v24))
  {
    objc_msgSend_attachWarnings_(resultCopy, v25, v21, v26);
    objc_msgSend_clearLocalWarnings(warningsCopy, v27, v28, v29);
  }
}

+ (id)vectorCriterionPairsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments dimensions:(TSCEGridDimensions)dimensions skipFirst:(BOOL)first skipLast:(BOOL)last outError:(id *)error
{
  lastCopy = last;
  firstCopy = first;
  contextCopy = context;
  v71 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15);
  v19 = ((*(arguments + 1) - *arguments) >> 3) - lastCopy;
  v20 = (v19 & 0x80000001) != 1;
  if (!firstCopy)
  {
    v20 = ((*(arguments + 1) - *arguments) >> 3) - lastCopy;
  }

  if (v20)
  {
    v21 = objc_msgSend_functionName(spec, v16, v17, v18);
    *error = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v22, v21, firstCopy);
    goto LABEL_29;
  }

  if (v19 <= firstCopy)
  {
LABEL_20:
    v62 = objc_msgSend_count(v71, v16, v17, v18, specCopy);
    v63 = v71;
    if (!v62)
    {
      v63 = 0;
    }

    v64 = v63;
    goto LABEL_30;
  }

  v23 = firstCopy;
  specCopy = spec;
  while (1)
  {
    v21 = *(*arguments + 8 * v23);
    if (objc_msgSend_isTokenOrEmptyArg(v21, v24, v25, v26))
    {
      goto LABEL_19;
    }

    v28 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v21, v27, contextCopy, spec, v23, 1, error);
    v32 = v28;
    if (*error)
    {
      goto LABEL_28;
    }

    if (objc_msgSend_gridKind(v28, v29, v30, v31) == 2)
    {
      break;
    }

LABEL_16:
    if (objc_msgSend_dimensions(v32, v33, v34, v35, specCopy) != dimensions)
    {
      v39 = objc_msgSend_functionName(spec, v48, v49, v50);
      v67 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v65, v39, v66);
      goto LABEL_26;
    }

    v39 = *(*arguments + 8 * v23 + 8);
    v52 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v51, v39, contextCopy, spec, error);
    v53 = v52;
    if (*error)
    {

      goto LABEL_27;
    }

    v54 = [TSCEValueContainer alloc];
    v57 = objc_msgSend_initWithValue_(v54, v55, v32, v56);
    v59 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v58, v57, v53);
    objc_msgSend_addObject_(v71, v60, v59, v61);

    spec = specCopy;
LABEL_19:

    v23 += 2;
    if (v19 <= v23)
    {
      goto LABEL_20;
    }
  }

  v39 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v32, v33, contextCopy, spec, v23, error);
  if (*error)
  {
    goto LABEL_27;
  }

  v43 = objc_msgSend_calcEngine(contextCopy, v36, v37, v38);
  if (v39)
  {
    objc_msgSend_rangeRef(v39, v40, v41, v42);
  }

  else
  {
    memset(v73, 0, sizeof(v73));
  }

  IsWithinTable = objc_msgSend_rangeIsWithinTable_(v43, v40, v73, v42, specCopy);

  if (IsWithinTable)
  {

    spec = specCopy;
    goto LABEL_16;
  }

  v67 = objc_msgSend_invalidReferenceError(TSCEError, v45, v46, v47);
LABEL_26:
  *error = v67;
LABEL_27:

LABEL_28:
LABEL_29:

  v64 = 0;
LABEL_30:

  return v64;
}

@end