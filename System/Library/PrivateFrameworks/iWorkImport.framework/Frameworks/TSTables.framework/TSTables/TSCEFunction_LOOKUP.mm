@interface TSCEFunction_LOOKUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOOKUP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    v191 = 0u;
    *v192 = 0u;
  }

  sub_22114F414(&v198, &v191);
  v15 = objc_msgSend_copy(v11, v12, v13, v14);
  v18 = objc_msgSend_deepType_(v15, v16, context, v17);
  v21 = v18;
  if (v18)
  {
    if (v18 == 10)
    {
      v22 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v19, v15, context, spec, 0);
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v26, v22, v27);
      goto LABEL_9;
    }

    if (v18 == 9)
    {
      v22 = objc_msgSend_errorWithContext_(v15, v19, context, v20);
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);
LABEL_9:
      v28 = v25;
      v29 = 0;
      goto LABEL_112;
    }
  }

  else
  {
    v197 = 0;
    v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v19, context, spec, 0, &v197);
    v29 = v197;

    if (v29)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v31, v29, v32);
      goto LABEL_113;
    }

    v21 = 5;
    v15 = v30;
  }

  v22 = *(*arguments + 8);
  v196 = 0;
  specCopy = spec;
  v34 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v33, context, spec, 1, 1, &v196);
  v29 = v196;
  if (v29)
  {
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v35, v29, v36);
    goto LABEL_111;
  }

  if (v22)
  {
    objc_msgSend_formatWithContext_(v22, v35, context, v36);
  }

  else
  {
    v191 = 0u;
    *v192 = 0u;
  }

  sub_22114F414(&v198, &v191);
  if (objc_msgSend_gridKind(v34, v37, v38, v39) == 1 && objc_msgSend_count(v34, v40, v41, v42) != 1)
  {
    v182 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v43, v44, v45);
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v60, v182, v61);
    v62 = 0;
    goto LABEL_110;
  }

  v46 = v34;
  v184 = v46;
  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    isTokenOrEmptyArg = 1;
    v182 = v46;
  }

  else
  {
    v180 = *(*arguments + 16);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v180, v50, v51, v52);
    v182 = v184;
    if ((isTokenOrEmptyArg & 1) == 0)
    {
      v195 = 0;
      v55 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v180, v53, context, spec, 0, 1, &v195);
      v58 = v195;
      if (v58)
      {
        v28 = objc_msgSend_raiseErrorOrConvert_(context, v56, v58, v57);
        v182 = v184;
LABEL_24:
        v59 = v55;
        goto LABEL_108;
      }

      if (v55)
      {
        objc_msgSend_formatWithContext_(v55, v56, context, v57);
      }

      else
      {
        v191 = 0u;
        *v192 = 0u;
      }

      sub_22114F414(&v198, &v191);
      v63 = v55;

      v182 = v63;
      if (objc_msgSend_gridKind(v63, v64, v65, v66) == 1 && objc_msgSend_count(v63, v67, v68, v69) != 1)
      {
        v165 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v70, v71, v72);
        v28 = objc_msgSend_raiseErrorOrConvert_(context, v166, v165, v167);

        goto LABEL_24;
      }
    }
  }

  if (v21 == 7 && objc_msgSend_isRegexString(v15, v47, v48, v49))
  {
    v194 = 0;
    v181 = objc_msgSend_asString_outError_(v15, v47, context, &v194);
    v73 = v194;
    isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v15, v74, v75, v76);
    v193 = v73;
    v79 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v78, v181, isCaseSensitiveRegexString, &v193);
    v62 = v193;

    if (v62)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v47, v62, v49);
      goto LABEL_109;
    }

    v178 = 1;
    v180 = v79;
  }

  else
  {
    v178 = 0;
    v180 = 0;
  }

  v174 = v22;
  v80 = objc_msgSend_dimensions(v184, v47, v48, v49);
  v84 = objc_msgSend_dimensions(v182, v81, v82, v83);
  v88 = v84;
  v89 = HIDWORD(v84);
  if (isTokenOrEmptyArg)
  {
    if (SHIDWORD(v80) >= v80)
    {
      v179 = 0;
      v170 = v80 - 1;
      goto LABEL_48;
    }

    v170 = HIDWORD(v80) - 1;
    v90 = 1;
  }

  else
  {
    if (v89 != 1 && v84 != 1)
    {
      v59 = objc_msgSend_not1DArrayError(TSCEError, v85, v86, v87);
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v91, v59, v92);
      v58 = 0;
      goto LABEL_108;
    }

    v170 = 0;
    v90 = SHIDWORD(v80) < v80;
  }

  v179 = v90;
LABEL_48:
  v173 = isTokenOrEmptyArg;
  v175 = v15;
  v176 = objc_msgSend_nilValue(TSCENilValue, v85, v86, v87);
  contextCopy = context;
  v191 = contextCopy;
  v192[0] = 0;
  v192[1] = 0xFFFFFFFFLL;
  *(&v192[1] + 7) = 0;
  *&v192[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v192[5] = 0;
  v192[6] = 0;
  if (SHIDWORD(v80) <= v80)
  {
    v97 = v80;
  }

  else
  {
    v97 = HIDWORD(v80);
  }

  v98 = (v97 - 1);
  if (v97 < 1)
  {
    v99 = 0;
    v59 = v176;
LABEL_82:
    v15 = v175;
    v103 = objc_msgSend_functionName(specCopy, v93, v94, v95);
    v133 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v131, v103, v132);
    v136 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v134, v133, v135);
LABEL_83:
    v28 = v136;

    v119 = v99;
    goto LABEL_107;
  }

  v168 = v89;
  v169 = v88;
  v171 = v11;
  v99 = 0;
  v100 = v97 + 1;
  v101 = (v97 << 32) - 0x100000000;
  v172 = 0xFFFFFFFFLL;
  v102 = v179;
  v177 = v34;
  while (1)
  {
    if (v102)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v184, v93, v100 - 2, &v191, v168);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v184, v93, v101, &v191, v168);
    }
    v103 = ;
    if (objc_msgSend_deepType_(v103, v104, contextCopy, v105) == 9 || (objc_msgSend_valueIsEmptyWithContext_(v103, v106, contextCopy, v107) & 1) != 0)
    {
      goto LABEL_78;
    }

    v110 = objc_msgSend_deepType_(v103, v108, contextCopy, v109);
    if (v178)
    {
      break;
    }

    v117 = v110;
    v189 = v99;
    v118 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v111, v175, v103, contextCopy, &v189);
    v119 = v189;

    if (v119)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v120, v119, v122);
      v11 = v171;
      v22 = v174;
      v15 = v175;
      v59 = v176;
      v34 = v177;
      goto LABEL_107;
    }

    if (v118 == 1)
    {
      v102 = v179;
      if (v21 == 3 && v117 == 5 || (v117 == 3 ? (v125 = v21 == 5) : (v125 = 0), v125 || v21 == v117))
      {
        v34 = v177;
        if (objc_msgSend_isNil(v176, v120, v121, v122))
        {
          v124 = v103;

          v99 = 0;
          v172 = v98;
          v176 = v124;
        }

        else
        {
          v188 = 0;
          v126 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v123, v176, v103, contextCopy, &v188);
          v99 = v188;
          if (v126 == -1)
          {
            v129 = v103;

            v176 = v129;
            v172 = v98;
          }

          if (v99)
          {
            v28 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v127, v99, v128);
            v119 = v99;
            v11 = v171;
            v22 = v174;
            v15 = v175;
            v59 = v176;
            goto LABEL_107;
          }
        }

        goto LABEL_78;
      }

      v99 = 0;
    }

    else
    {
      v99 = 0;
      v102 = v179;
      if (!v118)
      {
        goto LABEL_87;
      }
    }

    v34 = v177;
LABEL_78:

    --v100;
    v98 = (v98 - 1);
    v101 -= 0x100000000;
    if (v100 <= 1)
    {
      v11 = v171;
      v130 = v172;
      v22 = v174;
      v59 = v176;
      if (v172 == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_88;
    }
  }

  v190 = v99;
  v112 = objc_msgSend_asString_outError_(v103, v111, contextCopy, &v190);
  v113 = v190;

  v116 = objc_msgSend_containsMatchInString_(v180, v114, v112, v115);
  v99 = v113;
  if ((v116 & 1) == 0)
  {
    v34 = v177;
    v102 = v179;
    goto LABEL_78;
  }

  v102 = v179;
LABEL_87:

  v130 = v98;
  v11 = v171;
  v59 = v176;
  v34 = v177;
LABEL_88:
  v15 = v175;
  if (!v173)
  {
    if (v169 == 1)
    {
      if (v130 < v168)
      {
        v137 = 0;
        v139 = 2;
        goto LABEL_96;
      }
    }

    else
    {
      if (v168 != 1)
      {
        v156 = MEMORY[0x277D81150];
        v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "+[TSCEFunction_LOOKUP evaluateForArgsWithContext:functionSpec:arguments:]", v95);
        v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v159);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v156, v161, v157, v160, 1920, 0, "In function LOOKUP, Should not reach here, user result table should be 1-D.");

        v34 = v177;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164);
        v137 = 0;
        v130 = 0;
        v139 = 2;
        v11 = v171;
        goto LABEL_96;
      }

      if (v130 < v169)
      {
        v139 = 2;
        v137 = v130;
        v130 = 0;
        goto LABEL_96;
      }
    }

    v103 = objc_msgSend_functionName(specCopy, v93, v94, v95);
    v133 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v152, v103, v153);
    v11 = v171;
    v22 = v174;
    v136 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v154, v133, v155);
    goto LABEL_83;
  }

  if (v102)
  {
    v137 = v130;
  }

  else
  {
    v137 = v170;
  }

  if (v102)
  {
    v138 = v170;
  }

  else
  {
    v138 = v130;
  }

  v139 = 1;
  v130 = v138;
LABEL_96:
  LODWORD(v192[1]) = v139;
  v140 = v192[0];
  v192[0] = 0;

  v103 = objc_msgSend_valueAtGridCoord_accessContext_(v182, v141, v137 | (v130 << 32), &v191);
  v22 = v174;
  if (objc_msgSend_isReferenceValue(v103, v142, v143, v144))
  {
    v187 = v99;
    v146 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v103, v145, contextCopy, specCopy, v139, &v187);
    v119 = v187;

    if (v119)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v147, v119, v148);

      goto LABEL_107;
    }

    objc_msgSend_setIsOutputOfAFunction_(v146, v147, 1, v148);

    v99 = 0;
    v103 = v146;
  }

  sub_221256020(&v198, &v185);
  TSCEFormat::TSCEFormat(&v186, &v185);
  objc_msgSend_setFormat_(v103, v149, &v186, v150);
  v103 = v103;
  v119 = v99;
  v28 = v103;
LABEL_107:

  v58 = v119;
LABEL_108:

  v79 = v180;
  v62 = v58;
LABEL_109:

LABEL_110:
  v29 = v62;
LABEL_111:

LABEL_112:
  v30 = v15;
LABEL_113:

  if (v198)
  {
    v199 = v198;
    operator delete(v198);
  }

  return v28;
}

@end