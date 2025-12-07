@interface TSCEFunction_TTEST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)subtractVectors:(id)vectors sampleSet2:(id)set2 context:(id)context functionSpec:(id)spec;
@end

@implementation TSCEFunction_TTEST

+ (id)subtractVectors:(id)vectors sampleSet2:(id)set2 context:(id)context functionSpec:(id)spec
{
  vectorsCopy = vectors;
  set2Copy = set2;
  contextCopy = context;
  memset(v104, 0, 24);
  v15 = objc_msgSend_count(vectorsCopy, v12, v13, v14);
  v98[0] = contextCopy;
  v98[1] = spec;
  v99 = 0;
  v100[0] = 0;
  *(v100 + 7) = 0;
  v101 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v102 = 0;
  v103 = 0;
  v16 = v98[0];
  v92[0] = v16;
  v92[1] = spec;
  v93 = 0;
  v94[0] = 1;
  *(v94 + 7) = 0;
  v95 = v101;
  v96 = 0;
  v97 = 0;
  v20 = objc_msgSend_dimensions(vectorsCopy, v17, v18, v19);
  v24 = objc_msgSend_dimensions(set2Copy, v21, v22, v23);
  specCopy = spec;
  v86 = vectorsCopy;
  v87 = set2Copy;
  v28 = HIDWORD(v24);
  if ((HIDWORD(v20) == 1 || v20 == 1) && (v28 == 1 || v24 == 1))
  {
    v35 = objc_msgSend_count(vectorsCopy, v25, v26, v27);
    if (v35 == objc_msgSend_count(set2Copy, v36, v37, v38))
    {
      goto LABEL_11;
    }

    v40 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSCEFunction_TTEST subtractVectors:sampleSet2:context:functionSpec:]", v39);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v43, v30, v33, 6118, 0, "Vectors have different number of data points");
    goto LABEL_10;
  }

  if (HIDWORD(v20) != v28 || v20 != v24)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSCEFunction_TTEST subtractVectors:sampleSet2:context:functionSpec:]", v27);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 6122, 0, "Vectors have mismatched dimensions.");
LABEL_10:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  }

LABEL_11:
  v47 = 0;
  if (v15)
  {
    v48 = 0;
    v49 = v86;
    v50 = v87;
    v51 = specCopy;
    while (1)
    {
      v52 = objc_msgSend_valueAtIndex_accessContext_(v49, v25, v48, v98);
      v54 = objc_msgSend_valueAtIndex_accessContext_(v50, v53, v48, v92);
      v91 = objc_msgSend_nilValue(TSCENilValue, v55, v56, v57);
      v60 = objc_msgSend_deepType_(v52, v58, v16, v59);
      if (v60 == objc_msgSend_deepType_(v54, v61, v16, v62))
      {
        if (v60 == 3)
        {
          v75 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v63, v16, v51, v52, 0, v54, 1);
LABEL_19:
          v76 = v91;
          v91 = v75;

          goto LABEL_20;
        }

        if (v60 == 5)
        {
          v90 = v47;
          v64 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v52, v63, v16, v51, 0, &v90);
          v65 = v90;

          v89 = v65;
          objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v66, v16, v51, 1, &v89);
          v68 = v67 = v51;
          v69 = v89;

          v88 = v69;
          v71 = objc_msgSend_subtract_functionSpec_outError_(v64, v70, v68, v67, &v88);
          v47 = v88;

          v72 = v91;
          v91 = v71;

          if (!v47)
          {
            v49 = v86;
            v50 = v87;
            v51 = specCopy;
            goto LABEL_20;
          }

          v49 = v86;
          v50 = v87;
          v75 = objc_msgSend_errorValue_(TSCEErrorValue, v73, v47, v74);
          v51 = specCopy;
          goto LABEL_19;
        }
      }

LABEL_20:
      sub_221179A54(v104, &v91);

      if (v15 == ++v48)
      {
        goto LABEL_24;
      }
    }
  }

  v49 = v86;
  v50 = v87;
LABEL_24:
  v77 = [TSCEDenseGrid alloc];
  v80 = objc_msgSend_initWithValues_(v77, v78, v104, v79);
  v83 = objc_msgSend_gridValue_(TSCEGridValue, v81, v80, v82);

  v98[0] = v104;
  sub_22107C2C0(v98);

  return v83;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v248[0] = 0;
  v218 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, v248);
  v10 = v248[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_9;
  }

  v15 = *(*arguments + 8);
  v247 = 0;
  v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v11, context, spec, 1, 1, &v247);
  v13 = v247;
  if (v13)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v17, v13, v18);
LABEL_7:
    v14 = v19;
    goto LABEL_8;
  }

  v20 = *(*arguments + 16);
  v246 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v17, context, spec, 2, &v246);
  v13 = v246;
  objc_msgSend_doubleRepresentation(v21, v22, v23, v24);
  v26 = v25;

  if (v13)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v27, v13, v29);
    goto LABEL_7;
  }

  if (v26 != 1.0 && v26 != 2.0)
  {
    v217 = objc_msgSend_functionName(spec, v27, v28, v29);
    v47 = objc_msgSend_invalidTailErrorForFunctionName_argumentNumber_(TSCEError, v46, v217, 3);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v48, v47, v49);

    v13 = 0;
    goto LABEL_73;
  }

  v32 = *(*arguments + 24);
  v245 = 0;
  v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v27, context, spec, 3, &v245);
  v13 = v245;
  v37 = objc_msgSend_trunc(v33, v34, v35, v36);
  objc_msgSend_doubleRepresentation(v37, v38, v39, v40);
  v42 = v41;

  if (v13)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v43, v13, v45);
    goto LABEL_7;
  }

  v216 = v16;
  v217 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45);
  v53 = objc_msgSend_count(v218, v50, v51, v52);
  contextCopy = context;
  v239[0] = contextCopy;
  v239[1] = spec;
  v240 = 0;
  v241[0] = 0;
  *(v241 + 7) = 0;
  v242 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v243 = 0;
  v244 = 0;
  v58 = 0;
  if (v53)
  {
    for (i = 0; v53 != i; ++i)
    {
      v60 = objc_msgSend_valueAtIndex_accessContext_(v218, v54, i, v239);
      if ((objc_msgSend_isNil(v60, v61, v62, v63) & 1) == 0 && objc_msgSend_deepType_(v60, v64, contextCopy, v65) == 5)
      {
        v238 = 0;
        v67 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v60, v66, contextCopy, spec, 0, &v238);
        v13 = v238;
        if (v13)
        {
          v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v68, v13, v69);
          v16 = v216;
          goto LABEL_61;
        }

        if (v58)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v217, v68, v67, v69) & 1) == 0)
          {
            v158 = objc_msgSend_functionName(spec, v70, v71, v72);
            v16 = v216;
            v161 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v159, v158, v160);
            v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v162, v161, v163);

LABEL_61:
            goto LABEL_72;
          }
        }

        else
        {
          v73 = v67;

          v217 = v73;
        }

        v58 = 1;
      }
    }
  }

  v74 = objc_msgSend_count(v216, v54, v55, v56);
  v78 = contextCopy;
  v232[0] = v78;
  v232[1] = spec;
  v233 = 0;
  v234[0] = 1;
  *(v234 + 7) = 0;
  v235 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v236 = 0;
  v237 = 0;
  if (!v74)
  {
LABEL_41:
    if (v42 == 1)
    {
      v16 = v216;
      v95 = objc_msgSend_dimensions(v218, v75, v76, v77);
      v99 = objc_msgSend_dimensions(v216, v96, v97, v98);
      v103 = HIDWORD(v99);
      if ((HIDWORD(v95) == 1 || v95 == 1) && (v103 == 1 || v99 == 1))
      {
        if (v53 != v74)
        {
          v182 = v78;
          v105 = objc_msgSend_functionName(spec, v100, v101, v102);
          v108 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v183, v105, v184);
          v111 = objc_msgSend_raiseErrorOrConvert_(v182, v185, v108, v186);
          goto LABEL_68;
        }
      }

      else if (HIDWORD(v95) != v103 || v95 != v99)
      {
        v104 = v78;
        v105 = objc_msgSend_functionName(spec, v100, v101, v102);
        v108 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v106, v105, v107);
        v111 = objc_msgSend_raiseErrorOrConvert_(v104, v109, v108, v110);
LABEL_68:
        v14 = v111;

        goto LABEL_69;
      }

      v117 = objc_msgSend_subtractVectors_sampleSet2_context_functionSpec_(self, v100, v218, v216, v78, spec);
      v112 = v78;
      v135 = objc_msgSend_nilValue(TSCENilValue, v132, v133, v134);
      v220[0] = 0;
      v229 = 0;
      v230 = v135;
      v136 = sub_22121C524(v78, spec, 0, v117, 0, 0, 0, &v230, v220, &v229);
      v138 = v137;
      v128 = v230;

      v13 = v229;
      v219._decimal.w[0] = v136;
      v219._decimal.w[1] = v138;
      TSUDecimal::doubleValue(&v219);
      if (!v13)
      {
        v140 = v139;
        if (objc_msgSend_deepType_(v128, v129, v112, v130) != 5)
        {
          v143 = MEMORY[0x277D81150];
          v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "+[TSCEFunction_TTEST evaluateForArgsWithContext:functionSpec:arguments:]", v142);
          v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v146);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v148, v144, v147, 6272, 0, "We probably have a date returned as the variance of these inputs. We should have raised an error earlier in the subtraction code.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151);
        }

        v228 = 0;
        v152 = sub_2212560F4(v112, spec, v128, 0, &v228);
        v154 = v153;
        v13 = v228;
        v219._decimal.w[0] = v152;
        v219._decimal.w[1] = v154;
        TSUDecimal::doubleValue(&v219);
        if (v13)
        {
          v16 = v216;
          v14 = objc_msgSend_raiseErrorOrConvert_(v112, v155, v13, v156);
LABEL_64:

          goto LABEL_65;
        }

        v187 = v157;
        v188 = v220[0];
        pthread_mutex_lock(&stru_27CFB4098);
        v189 = fabs(v187 / sqrt(v140 / v188));
        sub_221250360(v188 - 1, -v189);
        pthread_mutex_unlock(&stru_27CFB4098);

LABEL_81:
        v16 = v216;
        if (v189 < INFINITY || v189 > INFINITY)
        {
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(&v219, 256);
          v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v211, v220, &v219);
          goto LABEL_70;
        }

        v105 = objc_msgSend_divideByZeroError(TSCEError, v190, v191, v192);
        v14 = objc_msgSend_raiseErrorOrConvert_(v112, v212, v105, v213);
LABEL_69:

LABEL_70:
        v13 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v215 = v42;
      v112 = v78;
      v16 = v216;
      v113 = objc_msgSend_nilValue(TSCENilValue, v75, v76, v77);
      v220[0] = 0;
      v226 = 0;
      v227 = v113;
      v114 = sub_22121C524(v78, spec, 0, v218, 0, 0, 0, &v227, v220, &v226);
      v116 = v115;
      v117 = v227;

      v13 = v226;
      v219._decimal.w[0] = v114;
      v219._decimal.w[1] = v116;
      TSUDecimal::doubleValue(&v219);
      if (v13)
      {
        v14 = objc_msgSend_raiseErrorOrConvert_(v112, v118, v13, v120);
LABEL_65:

        goto LABEL_71;
      }

      v122 = v121;
      v123 = v220[0];
      v124 = objc_msgSend_nilValue(TSCENilValue, v118, v119, v120);
      v225 = 0;
      v223 = 0;
      v224 = v124;
      v125 = sub_22121C524(v112, spec, 1u, v216, 0, 0, 0, &v224, &v225, &v223);
      v127 = v126;
      v128 = v224;

      v13 = v223;
      v219._decimal.w[0] = v125;
      v219._decimal.w[1] = v127;
      TSUDecimal::doubleValue(&v219);
      if (!v13)
      {
        v164 = v131;
        v165 = v225;
        v222 = 0;
        v166 = sub_2212560F4(v112, spec, v117, 0, &v222);
        v168 = v167;
        v169 = v222;
        v219._decimal.w[0] = v166;
        v219._decimal.w[1] = v168;
        TSUDecimal::doubleValue(&v219);
        v171 = v170;
        v221 = v169;
        v172 = sub_2212560F4(v112, spec, v128, 1, &v221);
        v174 = v173;
        v13 = v221;

        v219._decimal.w[0] = v172;
        v219._decimal.w[1] = v174;
        TSUDecimal::doubleValue(&v219);
        if (!v13)
        {
          v214 = v175;
          if (v215 == 3)
          {
            v197 = v220[0];
            v198 = v225;
            pthread_mutex_lock(&stru_27CFB4098);
            v199 = v122 / v123;
            v200 = v164 / v165;
            v196 = (v171 - v214) / sqrt(v199 + v200);
            v201 = (v199 + v200) * (v199 + v200) / (v199 * v199 / (v197 - 1) + v200 * v200 / (v198 - 1));
            sub_2212F4E64(v201 * 0.5, 0.5, v201 / (v201 + v196 * v196));
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else if (v215 == 2)
          {
            v193 = v220[0];
            v194 = v225;
            pthread_mutex_lock(&stru_27CFB4098);
            v195 = v193 + v194 - 2;
            v196 = (v171 - v214) / sqrt((1.0 / v193 + 1.0 / v194) * ((v164 * (v194 - 1) + (v193 - 1) * v122) / v195));
            sub_221250360(v195, -fabs(v196));
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else
          {
            v202 = MEMORY[0x277D81150];
            v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "+[TSCEFunction_TTEST evaluateForArgsWithContext:functionSpec:arguments:]", v130);
            v206 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v204, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v205);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v202, v207, v203, v206, 6332, 0, "Undefined t-test type passed to TTEST. Please file a bug.");

            v196 = 0.0;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v208, v209, v210);
          }

          v189 = fabs(v196);
          goto LABEL_81;
        }
      }
    }

    v14 = objc_msgSend_raiseErrorOrConvert_(v112, v129, v13, v130);
    v16 = v216;
    goto LABEL_64;
  }

  v79 = 0;
  while (1)
  {
    v80 = objc_msgSend_valueAtIndex_accessContext_(v216, v75, v79, v232);
    if ((objc_msgSend_isNil(v80, v81, v82, v83) & 1) != 0 || objc_msgSend_deepType_(v80, v84, v78, v85) != 5)
    {
      goto LABEL_40;
    }

    v231 = 0;
    v87 = v78;
    v88 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v80, v86, v78, spec, 1, &v231);
    v13 = v231;
    if (v13)
    {
      break;
    }

    if (v58)
    {
      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v217, v89, v88, v90) & 1) == 0)
      {
        v176 = objc_msgSend_functionName(spec, v91, v92, v93);
        v16 = v216;
        v179 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v177, v176, v178);
        v14 = objc_msgSend_raiseErrorOrConvert_(v87, v180, v179, v181);

        goto LABEL_66;
      }
    }

    else
    {
      v94 = v88;

      v217 = v94;
    }

    v78 = v87;
LABEL_40:

    if (v74 == ++v79)
    {
      goto LABEL_41;
    }
  }

  v14 = objc_msgSend_raiseErrorOrConvert_(v87, v89, v13, v90);
  v16 = v216;
LABEL_66:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_8:

LABEL_9:

  return v14;
}

@end