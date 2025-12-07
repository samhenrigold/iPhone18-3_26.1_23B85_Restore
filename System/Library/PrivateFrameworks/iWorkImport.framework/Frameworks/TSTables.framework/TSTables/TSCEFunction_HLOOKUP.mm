@interface TSCEFunction_HLOOKUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HLOOKUP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    v193 = 0;
    *v194 = 0u;
  }

  sub_22114F414(&v202, &v193);
  v15 = objc_msgSend_copy(v11, v12, v13, v14);
  v18 = objc_msgSend_deepType_(v15, v16, context, v17);
  v21 = v18;
  if (v18)
  {
    if (v18 == 9)
    {
      v22 = objc_msgSend_errorWithContext_(v15, v19, context, v20);
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);
      v26 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v201 = 0;
    v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v19, context, spec, 0, &v201);
    v26 = v201;

    if (v26)
    {
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
      goto LABEL_106;
    }

    v21 = 5;
    v15 = v27;
  }

  v30 = *(*arguments + 8);
  v22 = v30;
  if (v30)
  {
    objc_msgSend_formatWithContext_(v30, v31, context, v32);
  }

  else
  {
    v193 = 0;
    *v194 = 0u;
  }

  sub_22114F414(&v202, &v193);
  v200 = 0;
  v179 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v33, context, spec, 1, 1, &v200);
  v34 = v200;
  if (v34)
  {
    v26 = v34;
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
    goto LABEL_104;
  }

  v199 = 0;
  v37 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v22, v35, context, spec, 1, &v199);
  v38 = v199;
  if (v38)
  {
  }

  else
  {
    v45 = objc_msgSend_range(v37, v39, v40, v41);
    v47 = v46;
    v50 = objc_msgSend_tableUID(v37, v46, v48, v49);
    LOWORD(v193._decimal.w[0]) = 1;
    v193._decimal.w[1] = v45;
    *v194 = v47 & 0xFFFFFFFF00000000 | v45;
    *&v194[8] = v50;
    *&v194[16] = v51;
    v195.i8[0] = 0;
    v198 = 0;
    v195.i64[1] = 0;
    v196 = 0;
    LOWORD(v197) = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v51, &v193, v52);
  }

  if (objc_msgSend_gridKind(v179, v42, v43, v44) == 1 && objc_msgSend_count(v179, v53, v54, v55) != 1)
  {
    v178 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v56, v57, v58);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v79, v178, v80);
    v26 = 0;
    goto LABEL_103;
  }

  v59 = *(*arguments + 16);
  v178 = v59;
  if (v59)
  {
    objc_msgSend_formatWithContext_(v59, v60, context, v61);
  }

  else
  {
    v193 = 0;
    *v194 = 0u;
  }

  sub_22114F414(&v202, &v193);
  v192 = 0;
  v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v178, v62, context, spec, 2, &v192);
  v26 = v192;
  v176 = v63;
  v193._decimal.w[0] = objc_msgSend_decimalRepresentation(v63, v64, v65, v66);
  v193._decimal.w[1] = v67;
  v68 = TSUDecimal::truncateWithRounding(&v193);
  if (v26)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v69, v26, v71);
    goto LABEL_102;
  }

  v72 = v68;
  if (v68 <= 0)
  {
    v81 = objc_msgSend_functionName(spec, v69, v70, v71);
    v83 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v82, 3, v81, 1, 1.0);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);
    v26 = 0;
    goto LABEL_100;
  }

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    v175 = 1;
  }

  else
  {
    v73 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v73, v74, v75, v76))
    {
      v175 = 1;
    }

    else
    {
      if (v73)
      {
        objc_msgSend_formatWithContext_(v73, v77, context, v78);
      }

      else
      {
        v193 = 0;
        *v194 = 0u;
      }

      sub_22114F414(&v202, &v193);
      v191 = 0;
      v175 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v73, v86, context, spec, 3, &v191);
      v87 = v191;
      if (v87)
      {
        v26 = v87;
        v90 = objc_msgSend_raiseErrorOrConvert_(context, v88, v87, v89);
        goto LABEL_50;
      }
    }
  }

  v172 = objc_msgSend_dimensions(v179, v69, v70, v71);
  if (v72 > SHIDWORD(v172))
  {
    v73 = objc_msgSend_invalidReferenceError(TSCEError, v91, v92, v93);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v94, v73, v95);
    v26 = 0;
    goto LABEL_101;
  }

  if (v21 == 7)
  {
    v96 = v175;
  }

  else
  {
    v96 = 1;
  }

  HIDWORD(v161) = v72;
  if ((v96 & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(v15, v91, v92, v93);
    if (isRegexString)
    {
      v190 = 0;
      v98 = objc_msgSend_asString_outError_(v15, v97, context, &v190);
      v99 = v190;
      v162 = v98;
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v15, v100, v101, v102);
      v189 = v99;
      v170 = &v189;
      v105 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v104, v98, isCaseSensitiveRegexString, &v189);
    }

    else
    {
      v188 = 0;
      v106 = objc_msgSend_asString_outError_(v15, v97, context, &v188);
      v99 = v188;
      v187 = v99;
      v170 = &v187;
      v162 = v106;
      v105 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v107, v106, &v187);
    }

    v73 = v105;
    v108 = v37;
    v109 = v99;
    v26 = *v170;

    if (!v26)
    {
      v37 = v108;
      goto LABEL_52;
    }

    v37 = v108;
    v90 = objc_msgSend_raiseErrorOrConvert_(context, v91, v26, v93);
LABEL_50:
    v25 = v90;
    goto LABEL_101;
  }

  isRegexString = 0;
  v73 = 0;
LABEL_52:
  v163 = v73;
  v164 = objc_msgSend_nilValue(TSCENilValue, v91, v92, v93);
  contextCopy = context;
  v193._decimal.w[0] = contextCopy;
  v193._decimal.w[1] = 0;
  *v194 = 0;
  *&v194[8] = 0xFFFFFFFFLL;
  *&v194[15] = 0;
  v195 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v196 = 0;
  v197 = 0;
  v26 = 0;
  v113 = v172 - 1;
  if (v172 < 1)
  {
LABEL_95:
    v83 = v164;
    v147 = objc_msgSend_functionName(spec, v110, v111, v112, v161);
    v81 = v163;
    v142 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v152, v147, v153);
    v151 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v154, v142, v155);
LABEL_96:
    v25 = v151;

    v160 = v147;
    goto LABEL_99;
  }

  v114 = 0;
  v173 = -v172;
  LODWORD(v161) = -1;
  v174 = v37;
  while (1)
  {
    if (v175)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v179, v110, v113, &v193, v161);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v179, v110, v114, &v193, v161);
    }
    v115 = ;
    if (objc_msgSend_deepType_(v115, v116, contextCopy, v117) == 9 || (objc_msgSend_valueIsEmptyWithContext_(v115, v118, contextCopy, v119) & 1) != 0)
    {
      goto LABEL_76;
    }

    v171 = v115;
    v122 = objc_msgSend_deepType_(v115, v120, contextCopy, v121);
    v124 = v122;
    if (!v175)
    {
      if (((v122 != v21) & ~isRegexString) == 0)
      {
        if (v21 != 7)
        {
          v183 = v26;
          v167 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v123, v15, v171, contextCopy, &v183);
          v129 = v183;

          if (!v167)
          {
            v26 = v129;
LABEL_112:

            v37 = v174;
            goto LABEL_92;
          }

          v26 = v129;
          if (v129)
          {
            v159 = v129;
            v160 = v171;
            v25 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v130, v159, v131);
LABEL_89:
            v81 = v163;
            v83 = v164;
            goto LABEL_99;
          }

          goto LABEL_75;
        }

        v184 = v26;
        v133 = objc_msgSend_asString_outError_(v171, v123, contextCopy, &v184);
        v169 = v184;

        v136 = objc_msgSend_containsMatchInString_(v163, v134, v133, v135);
        v26 = v169;
        if (v136)
        {
          goto LABEL_112;
        }

LABEL_74:
        v37 = v174;
      }

LABEL_75:
      v115 = v171;
      goto LABEL_76;
    }

    v186 = v26;
    v125 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v123, v15, v171, contextCopy, &v186);
    v166 = v186;

    v26 = v166;
    if (v166)
    {
      v160 = v171;
      v25 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v126, v166, v128);
      v37 = v174;
      goto LABEL_89;
    }

    if (v125 != 1)
    {
      break;
    }

    if (v21 != 3 || v124 != 5)
    {
      v137 = v124 == 3 && v21 == 5;
      if (!v137 && v21 != v124)
      {
        goto LABEL_63;
      }
    }

    v37 = v174;
    if ((objc_msgSend_isNil(v164, v126, v127, v128) & 1) == 0)
    {
      v185 = 0;
      v138 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v132, v164, v171, contextCopy, &v185);
      v26 = v185;
      if (v138 == -1)
      {
        v141 = v171;

        v164 = v141;
        LODWORD(v161) = v113;
      }

      if (v26)
      {
        v25 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v139, v26, v140);
        v81 = v163;
        v83 = v164;
        v160 = v171;
        goto LABEL_99;
      }

      goto LABEL_75;
    }

    v115 = v171;
    v168 = v171;

    v26 = 0;
    LODWORD(v161) = v113;
    v164 = v168;
LABEL_76:

    ++v114;
    --v113;
    if (!(v173 + v114))
    {
      goto LABEL_91;
    }
  }

  if (v125)
  {
LABEL_63:
    v26 = 0;
    goto LABEL_74;
  }

  v26 = 0;
  LODWORD(v161) = v113;
  v37 = v174;
LABEL_91:
  v114 = v161;
  if (v161 == -1)
  {
    goto LABEL_95;
  }

LABEL_92:
  v83 = v164;
  v142 = objc_msgSend_valueAtGridCoord_accessContext_(v179, v110, v114 | ((HIDWORD(v161) - 1) << 32), &v193, v161);
  v81 = v163;
  if (objc_msgSend_isReferenceValue(v142, v143, v144, v145))
  {
    v182 = v26;
    v147 = v142;
    v142 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v142, v146, contextCopy, spec, 1, &v182);
    v148 = v182;

    v26 = v148;
    if (v148)
    {
      v151 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v149, v148, v150);
      goto LABEL_96;
    }

    objc_msgSend_setIsOutputOfAFunction_(v142, v149, 1, v150);

    v26 = 0;
  }

  sub_221256020(&v202, &v180);
  TSCEFormat::TSCEFormat(&v181, &v180);
  objc_msgSend_setFormat_(v142, v156, &v181, v157);
  v160 = v142;
  v25 = v160;
LABEL_99:

LABEL_100:
  v73 = v81;
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

  v27 = v15;
LABEL_106:

  if (v202)
  {
    v203 = v202;
    operator delete(v202);
  }

  return v25;
}

@end