@interface TSCEFunction_MATCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (int64_t)compareValue:(id)value functionSpec:(id)spec left:(id)left right:(id)right outError:(id *)error;
@end

@implementation TSCEFunction_MATCH

+ (int64_t)compareValue:(id)value functionSpec:(id)spec left:(id)left right:(id)right outError:(id *)error
{
  valueCopy = value;
  leftCopy = left;
  rightCopy = right;
  v16 = objc_msgSend_deepType_(leftCopy, v14, valueCopy, v15);
  v19 = objc_msgSend_deepType_(rightCopy, v17, valueCopy, v18);
  if (v16 != v19)
  {
    if (v16 != 10 || v19 != 5)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSCEFunction_MATCH compareValue:functionSpec:left:right:outError:]", v22);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 2023, 0, "In function MATCH, should not reach here.");
LABEL_33:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
      v49 = 1;
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if (v16 <= 4u)
  {
    if (v16 == 2)
    {
      v83 = 0;
      v61 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v20, valueCopy, spec, 1, &v83);
      v62 = v83;
      v82 = v62;
      v64 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(rightCopy, v63, valueCopy, spec, 0, &v82);
      v46 = v82;

      if (v61 == v64)
      {
        v49 = 0;
      }

      else
      {
        v81 = v46;
        v66 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v65, valueCopy, spec, 1, &v81);
        v67 = v81;

        if (v66)
        {
          v49 = 1;
        }

        else
        {
          v49 = -1;
        }

        v46 = v67;
      }

      goto LABEL_35;
    }

    if (v16 != 3)
    {
LABEL_32:
      v68 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSCEFunction_MATCH compareValue:functionSpec:left:right:outError:]", v22);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v70);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v71, v37, v40, 2019, 0, "In function MATCH, should not reach here.");
      goto LABEL_33;
    }

    v78 = 0;
    v42 = objc_msgSend_asDate_outError_(leftCopy, v20, valueCopy, &v78);
    v43 = v78;
    v77 = v43;
    v45 = objc_msgSend_asDate_outError_(rightCopy, v44, valueCopy, &v77);
    v46 = v77;

    v49 = objc_msgSend_compare_(v42, v47, v45, v48);
LABEL_26:

LABEL_35:
    if (!v46)
    {
      goto LABEL_38;
    }

    v75 = v46;
    *error = v46;

    goto LABEL_37;
  }

  if (v16 == 9)
  {
    objc_msgSend_errorWithContext_(leftCopy, v20, valueCopy, v22);
    *error = v49 = 0;
    goto LABEL_38;
  }

  if (v16 == 7)
  {
    v42 = objc_msgSend_locale(valueCopy, v20, v21, v22);
    v80 = 0;
    v56 = objc_msgSend_asString_outError_(leftCopy, v55, valueCopy, &v80);
    v57 = v80;
    v79 = v57;
    v59 = objc_msgSend_asString_outError_(rightCopy, v58, valueCopy, &v79);
    v46 = v79;

    v49 = objc_msgSend_localizedCaseInsensitiveCompare_toString_(v42, v60, v56, v59);
    goto LABEL_26;
  }

  if (v16 != 5)
  {
    goto LABEL_32;
  }

LABEL_9:
  v86 = 0;
  v23 = objc_msgSend_asNumber_outError_(leftCopy, v20, valueCopy, &v86);
  v24 = v86;
  v85 = v24;
  v26 = objc_msgSend_asNumber_outError_(rightCopy, v25, valueCopy, &v85);
  v27 = v85;

  if (v27)
  {
    v31 = v27;
    v32 = objc_msgSend_errorType(v27, v28, v29, v30);
LABEL_17:
    if (v32 == 68)
    {
      if (objc_msgSend_hasUnits(v26, v33, v34, v35))
      {
        v49 = -1;
      }

      else
      {
        v49 = 1;
      }

      goto LABEL_22;
    }

    v54 = v31;
    *error = v31;

LABEL_37:
    v49 = 0;
    goto LABEL_38;
  }

  v84 = 0;
  v49 = objc_msgSend_compare_outError_(v23, v28, v26, &v84);
  v50 = v84;
  if (v50)
  {
    v31 = v50;
    v32 = objc_msgSend_errorType(v50, v51, v52, v53);
    goto LABEL_17;
  }

LABEL_22:

LABEL_38:
  return v49;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    v177 = 0u;
    *v178 = 0u;
  }

  sub_22114F414(&v181, &v177);
  v12 = v11;
  v18 = objc_msgSend_deepType_(v12, v13, context, v14);
  v19 = v12;
  if (v18 == 10)
  {
    v19 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);

    v18 = 5;
  }

  v20 = *(*argumentsCopy + 8);
  v180 = 0;
  v165 = v20;
  specCopy = spec;
  v22 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v20, v21, context, spec, 1, 1, &v180);
  v23 = v180;
  if (v23)
  {
    v26 = v23;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25);
    goto LABEL_18;
  }

  if (v22)
  {
    objc_msgSend_formatWithContext_(v22, v24, context, v25);
  }

  else
  {
    v177 = 0u;
    *v178 = 0u;
  }

  sub_22114F414(&v181, &v177);
  v164 = objc_msgSend_count(v22, v27, v28, v29);
  if (objc_msgSend_gridKind(v22, v30, v31, v32) == 1 && v164 >= 2)
  {
    v36 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v33, v34, v35);
    v39 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38);
LABEL_17:
    argumentsCopy = v39;

    v26 = 0;
    goto LABEL_18;
  }

  v40 = objc_msgSend_dimensions(v22, v33, v34, v35);
  if (v40 != 1 && (v40 & 0xFFFFFFFF00000000) != 0x100000000)
  {
    v36 = objc_msgSend_not1DArrayError(TSCEError, v41, v42, v43);
    v39 = objc_msgSend_raiseErrorOrConvert_(context, v44, v36, v45);
    goto LABEL_17;
  }

  v161 = v19;
  if (argumentsCopy[1] - *argumentsCopy < 0x11uLL)
  {
    v54 = 0;
    v53 = 1.0;
  }

  else
  {
    v47 = *(*argumentsCopy + 16);
    v53 = 1.0;
    if ((objc_msgSend_isTokenOrEmptyArg(v47, v48, v49, v50) & 1) == 0)
    {
      if (v47)
      {
        objc_msgSend_formatWithContext_(v47, v51, context, v52);
      }

      else
      {
        v177 = 0u;
        *v178 = 0u;
      }

      sub_22114F414(&v181, &v177);
      v179 = 0;
      argumentsCopy = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v47, v143, context, spec, 2, &v179);
      v26 = v179;
      v147 = objc_msgSend_trunc(argumentsCopy, v144, v145, v146);

      if (v26)
      {
        argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v148, v26, v150);

        v19 = v161;
        goto LABEL_18;
      }

      objc_msgSend_doubleRepresentation(v147, v148, v149, v150);
      v53 = v151;
    }

    v54 = v53 != 1.0;
    if (v53 == 1.0)
    {
      v19 = v161;
    }

    else
    {
      v19 = v161;
      if (v53 != -1.0 && v53 != 0.0)
      {
        v36 = objc_msgSend_invalidMatchModeError(TSCEError, v152, v153, v154);
        v39 = objc_msgSend_raiseErrorOrConvert_(context, v155, v36, v156);
        goto LABEL_17;
      }
    }
  }

  contextCopy = context;
  v162 = contextCopy;
  v177 = __PAIR128__(specCopy, contextCopy);
  v178[0] = 0;
  v178[1] = 1;
  *(&v178[1] + 7) = 0;
  *&v178[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v178[5] = 0;
  v178[6] = 0;
  isRegexString = objc_msgSend_isRegexString(v19, v56, v57, v58);
  if (v53 != 0.0 || v18 != 7)
  {
    v159 = objc_msgSend_nilValue(TSCENilValue, v59, v60, v61);
    if (!v164)
    {
LABEL_87:
      v158 = 0;
      v71 = 0;
      goto LABEL_88;
    }

    v157 = v54;
    v71 = 0;
    v72 = 0;
    v158 = 0;
    while (1)
    {
      v73 = objc_autoreleasePoolPush();
      v75 = objc_msgSend_valueAtIndex_accessContext_(v22, v74, v72, &v177);
      if (objc_msgSend_isError(v75, v76, v77, v78))
      {
        v82 = objc_msgSend_errorWithContext_(v75, v79, v162, v81);
        if (objc_msgSend_isInvalidReferenceError(v82, v83, v84, v85))
        {
          argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v162, v86, v82, v87);
          v88 = 1;
        }

        else
        {
          v88 = 7;
        }

        goto LABEL_44;
      }

      if ((objc_msgSend_isNil(v75, v79, v80, v81) & 1) != 0 || v18 != objc_msgSend_deepType_(v75, v89, v162, v90))
      {
        v88 = 0;
        goto LABEL_45;
      }

      v171 = v71;
      v92 = v71;
      v93 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v91, v162, specCopy, v75, v161, &v171);
      v71 = v171;

      if (v71)
      {
        break;
      }

      if (!v93)
      {
        v158 = v72 + 1;
        if (v157)
        {
          v71 = 0;
          v88 = 5;
          goto LABEL_45;
        }

        goto LABEL_64;
      }

      if (v53 == 1.0 && v93 == -1)
      {
        if (objc_msgSend_isNil(v159, v94, v95, v96))
        {
          goto LABEL_63;
        }

        v170 = 0;
        v99 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v98, v162, specCopy, v75, v159, &v170);
        v100 = v170;
        if (!v100)
        {
          if (v99 == -1)
          {
            goto LABEL_66;
          }

          goto LABEL_63;
        }

        goto LABEL_54;
      }

      v71 = 0;
      v88 = 0;
      if (v53 == -1.0 && v93 == 1)
      {
        if (objc_msgSend_isNil(v159, v94, v95, v96))
        {
          goto LABEL_63;
        }

        v169 = 0;
        v104 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v103, v162, specCopy, v75, v159, &v169);
        v100 = v169;
        if (!v100)
        {
          if (v104 == 1)
          {
LABEL_66:
            v88 = 0;
            v71 = 0;
            goto LABEL_45;
          }

LABEL_63:
          v158 = v72 + 1;
LABEL_64:
          v88 = 0;
          v71 = 0;
          v82 = v159;
          v159 = v75;
LABEL_44:

          goto LABEL_45;
        }

LABEL_54:
        v71 = v100;
        v97 = objc_msgSend_raiseErrorOrConvert_(v162, v101, v100, v102);
LABEL_41:
        argumentsCopy = v97;
        v88 = 1;
      }

LABEL_45:

      objc_autoreleasePoolPop(v73);
      if (v88 != 7 && v88)
      {

        v19 = v161;
        if (v88 != 5)
        {
          goto LABEL_92;
        }

        goto LABEL_89;
      }

      if (v164 == ++v72)
      {
        goto LABEL_88;
      }
    }

    v97 = objc_msgSend_raiseErrorOrConvert_(v162, v94, v71, v96);
    goto LABEL_41;
  }

  if (isRegexString)
  {
    v176 = 0;
    v62 = objc_msgSend_asString_outError_(v19, v59, v162, &v176);
    v63 = v176;
    isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v19, v64, v65, v66);
    v175 = v63;
    v68 = &v175;
    v70 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v69, v62, isCaseSensitiveRegexString, &v175);
  }

  else
  {
    v174 = 0;
    v62 = objc_msgSend_asString_outError_(v19, v59, v162, &v174);
    v63 = v174;
    v173 = v63;
    v68 = &v173;
    v70 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v105, v62, &v173);
  }

  v106 = v70;
  v107 = v63;
  v71 = *v68;

  if (v71)
  {
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v162, v108, v71, v109);

    goto LABEL_92;
  }

  v159 = v106;
  if (!v164)
  {
    goto LABEL_87;
  }

  v71 = 0;
  v110 = 0;
  v158 = 0;
  do
  {
    v111 = objc_autoreleasePoolPush();
    v113 = objc_msgSend_valueAtIndex_accessContext_(v22, v112, v110, &v177);
    if (objc_msgSend_isNil(v113, v114, v115, v116))
    {
      v119 = 0;
    }

    else
    {
      v121 = objc_msgSend_deepType_(v113, v117, v162, v118);
      if (v121 == 7)
      {
        v122 = 1;
      }

      else
      {
        v122 = isRegexString;
      }

      v119 = 4;
      if (v121 == 9 || (v122 & 1) == 0)
      {
        v124 = v71;
      }

      else
      {
        v172 = v71;
        v123 = objc_msgSend_asString_outError_(v113, v120, v162, &v172);
        v124 = v172;

        v127 = objc_msgSend_containsMatchInString_(v159, v125, v123, v126);
        if (v127)
        {
          v158 = v110 + 1;
          v119 = 2;
        }

        else
        {
          v119 = 0;
        }
      }

      v71 = v124;
    }

    objc_autoreleasePoolPop(v111);
    if ((v119 | 4) != 4)
    {
      break;
    }

    ++v110;
  }

  while (v164 != v110);
LABEL_88:

  v19 = v161;
LABEL_89:
  if (v158)
  {
    TSUDecimal::operator=();
    sub_221256020(&v181, v166);
    argumentsCopy = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v128, v167, v166);
  }

  else
  {
    v129 = MEMORY[0x277CCACA8];
    v168 = v71;
    v130 = objc_msgSend_asString_outError_(v19, 0, v162, &v168);
    v131 = v168;

    v134 = objc_msgSend_stringWithFormat_(v129, v132, @"%@", v133, v130);

    v138 = objc_msgSend_functionName(specCopy, v135, v136, v137);
    v140 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v139, v134, isRegexString, v138);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v162, v141, v140, v142);

    v71 = v131;
  }

LABEL_92:

  v26 = v71;
LABEL_18:

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  return argumentsCopy;
}

@end