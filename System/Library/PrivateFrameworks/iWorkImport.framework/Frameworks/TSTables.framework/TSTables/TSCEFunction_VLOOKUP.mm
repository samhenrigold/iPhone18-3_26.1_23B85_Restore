@interface TSCEFunction_VLOOKUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VLOOKUP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    v196 = 0;
    *v197 = 0u;
  }

  sub_22114F414(&v205, &v196);
  v15 = objc_msgSend_copy(v11, v12, v13, v14);
  v18 = objc_msgSend_deepType_(v15, v16, context, v17);
  v21 = v18;
  if (v18)
  {
    if (v18 == 9)
    {
      v22 = objc_msgSend_errorWithContext_(v15, v19, context, v20);
      context = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);
      v25 = 0;
      goto LABEL_110;
    }
  }

  else
  {
    v204 = 0;
    v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v19, context, spec, 0, &v204);
    v25 = v204;

    if (v25)
    {
      context = objc_msgSend_raiseErrorOrConvert_(context, v27, v25, v28);
      goto LABEL_111;
    }

    v21 = 5;
    v15 = v26;
  }

  v22 = *(*arguments + 8);
  v203 = 0;
  v176 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v29, context, spec, 1, 1, &v203);
  v30 = v203;
  if (v30)
  {
    v25 = v30;
    context = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
    goto LABEL_109;
  }

  if (v176)
  {
    objc_msgSend_formatWithContext_(v176, v31, context, v32);
  }

  else
  {
    v196 = 0;
    *v197 = 0u;
  }

  sub_22114F414(&v205, &v196);
  v202 = 0;
  v174 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v22, v33, context, spec, 1, &v202);
  v34 = v202;
  if (v34)
  {
  }

  else
  {
    v41 = objc_msgSend_range(v174, v35, v36, v37);
    v43 = v42;
    v46 = objc_msgSend_tableUID(v174, v42, v44, v45);
    LOWORD(v196._decimal.w[0]) = 1;
    v196._decimal.w[1] = v41;
    *v197 = v43 & 0xFFFF0000FFFFFFFFLL | (WORD2(v41) << 32);
    *&v197[8] = v46;
    *&v197[16] = v47;
    v198.i8[0] = 0;
    v201 = 0;
    v198.i64[1] = 0;
    v199 = 0;
    LOWORD(v200) = 0;
    objc_msgSend_addCalculatedPrecedent_(context, v47, &v196, v48);
  }

  if (objc_msgSend_gridKind(v176, v38, v39, v40) == 1 && objc_msgSend_count(v176, v49, v50, v51) != 1)
  {
    v175 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v52, v53, v54);
    context = objc_msgSend_raiseErrorOrConvert_(context, v73, v175, v74);
    v25 = 0;
    goto LABEL_108;
  }

  v55 = *(*arguments + 16);
  v175 = v55;
  if (v55)
  {
    objc_msgSend_formatWithContext_(v55, v56, context, v57);
  }

  else
  {
    v196 = 0;
    *v197 = 0u;
  }

  sub_22114F414(&v205, &v196);
  v195 = 0;
  v59 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v175, v58, context, spec, 2, &v195);
  v25 = v195;
  v173 = v59;
  v196._decimal.w[0] = objc_msgSend_decimalRepresentation(v59, v60, v61, v62);
  v196._decimal.w[1] = v63;
  v171 = TSUDecimal::truncateWithRounding(&v196);
  if (v25)
  {
    context = objc_msgSend_raiseErrorOrConvert_(context, v64, v25, v66);
    goto LABEL_107;
  }

  if (v171 <= 0)
  {
    v67 = objc_msgSend_functionName(spec, v64, v65, v66);
    v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v75, 3, v67, 1, 1.0);
    context = objc_msgSend_raiseErrorOrConvert_(context, v77, v76, v78);
    v25 = 0;
    goto LABEL_105;
  }

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    v167 = 1;
  }

  else
  {
    v67 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v67, v68, v69, v70))
    {
      v167 = 1;
    }

    else
    {
      if (v67)
      {
        objc_msgSend_formatWithContext_(v67, v71, context, v72);
      }

      else
      {
        v196 = 0;
        *v197 = 0u;
      }

      sub_22114F414(&v205, &v196);
      v194 = 0;
      v167 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v67, v79, context, spec, 3, &v194);
      v80 = v194;
      if (v80)
      {
        v25 = v80;
        v83 = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v82);
        goto LABEL_50;
      }
    }
  }

  v87 = objc_msgSend_dimensions(v176, v64, v65, v66);
  if (v171 > v87)
  {
    v67 = objc_msgSend_invalidReferenceError(TSCEError, v84, v85, v86);
    context = objc_msgSend_raiseErrorOrConvert_(context, v88, v67, v89);
    v25 = 0;
    goto LABEL_106;
  }

  if (v21 == 7)
  {
    v90 = v167;
  }

  else
  {
    v90 = 1;
  }

  if ((v90 & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(v15, v84, v85, v86);
    if (isRegexString)
    {
      v193 = 0;
      v163 = objc_msgSend_asString_outError_(v15, v91, context, &v193);
      v92 = v193;
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v15, v93, v94, v95);
      v192 = v92;
      context = &v192;
      v98 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v97, v163, isCaseSensitiveRegexString, &v192);
    }

    else
    {
      v191 = 0;
      v99 = objc_msgSend_asString_outError_(v15, v91, context, &v191);
      v92 = v191;
      v190 = v92;
      context = &v190;
      v163 = v99;
      v98 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v100, v99, &v190);
    }

    v67 = v98;
    v101 = v92;
    v25 = *context;

    if (!v25)
    {
      goto LABEL_51;
    }

    v83 = objc_msgSend_raiseErrorOrConvert_(context, v84, v25, v86);
LABEL_50:
    context = v83;
    goto LABEL_106;
  }

  isRegexString = 0;
  v67 = 0;
LABEL_51:
  v164 = v67;
  v159 = objc_msgSend_nilValue(TSCENilValue, v84, v85, v86);
  contextCopy = context;
  v196._decimal.w[0] = contextCopy;
  v196._decimal.w[1] = 0;
  *v197 = 0;
  *&v197[8] = 0xFFFFFFFFLL;
  *&v197[15] = 0;
  v198 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v199 = 0;
  v200 = 0;
  v166 = objc_msgSend_abstractBackingGrid(v176, v102, v103, v104);
  v108 = HIDWORD(v87);
  v25 = 0;
  LODWORD(v87) = HIDWORD(v87) - 1;
  if (SHIDWORD(v87) < 1)
  {
LABEL_99:
    v147 = objc_msgSend_functionName(spec, v105, v106, v107);
    v76 = v159;
    v150 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v148, v147, v149);
    context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v151, v150, v152);

    goto LABEL_104;
  }

  v109 = 0;
  v156 = v108;
  v165 = -v108;
  v157 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v167)
    {
      v110 = v87;
    }

    else
    {
      v110 = v109;
    }

    LODWORD(v180[0]) = 0;
    HIDWORD(v180[0]) = v110;
    contexta = objc_autoreleasePoolPush();
    v172 = objc_msgSend_valueAtGridCoord_accessContext_(v166, v111, v180, &v196);
    v116 = objc_msgSend_deepType_(v172, v112, contextCopy, v113);
    if (v116 == 9 || (objc_msgSend_valueIsEmptyWithContext_(v172, v114, contextCopy, v115) & 1) != 0)
    {
      goto LABEL_58;
    }

    if (!v167)
    {
      if (((v116 != v21) & ~isRegexString) != 0)
      {
        goto LABEL_58;
      }

      if (v21 == 7)
      {
        v187 = v25;
        v127 = objc_msgSend_asString_outError_(v172, v117, contextCopy, &v187);
        v161 = v187;

        v130 = objc_msgSend_containsMatchInString_(v164, v128, v127, v129);
        if ((v130 & 1) == 0)
        {
          v25 = v161;
          goto LABEL_89;
        }
      }

      else
      {
        v186 = v25;
        v122 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v117, v15, v172, contextCopy, &v186);
        v161 = v186;

        if (v122)
        {
          if (!v161)
          {
            goto LABEL_88;
          }

          context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v123, v161, v124);
          v118 = 1;
          goto LABEL_79;
        }
      }

      v118 = 2;
      v157 = v109;
LABEL_79:
      v25 = v161;
      goto LABEL_59;
    }

    v160 = v87;
    v189 = v25;
    v158 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v117, v15, v172, contextCopy, &v189);
    v87 = v189;

    if (v87)
    {
      context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v119, v87, v121);
      v118 = 1;
      v25 = v87;
      LODWORD(v87) = v160;
      goto LABEL_59;
    }

    LODWORD(v87) = v160;
    if (!v158)
    {
      v25 = 0;
      v157 = (~v109 + v156);
      v118 = 2;
      goto LABEL_59;
    }

    if (v158 == 1)
    {
      if (v21 == 3 && v116 == 5 || (v116 == 3 ? (v131 = v21 == 5) : (v131 = 0), v131 || v21 == v116))
      {
        if (objc_msgSend_isNil(v159, v119, v120, v121))
        {
          v126 = v172;

          v25 = 0;
          v159 = v126;
          v157 = v160;
        }

        else
        {
          v188 = 0;
          v132 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v125, v159, v172, contextCopy, &v188);
          v25 = v188;
          if (v132 == -1)
          {
            v135 = v172;

            v159 = v135;
            v157 = v160;
          }

          if (v25)
          {
            context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v133, v25, v134);
            v118 = 1;
            goto LABEL_59;
          }
        }
      }

      else
      {
LABEL_88:
        v25 = 0;
      }

LABEL_89:
      v118 = 0;
      goto LABEL_59;
    }

    v25 = 0;
LABEL_58:
    v118 = 4;
LABEL_59:

    objc_autoreleasePoolPop(contexta);
    if (v118)
    {
      if (v118 != 4)
      {
        break;
      }
    }

    v109 = (v109 + 1);
    LODWORD(v87) = v87 - 1;
    if (!(v165 + v109))
    {
      goto LABEL_95;
    }
  }

  if (v118 != 2)
  {
    v76 = v159;
    goto LABEL_104;
  }

LABEL_95:
  if (v157 == -1)
  {
    goto LABEL_99;
  }

  v136 = contextCopy;
  v180[0] = v136;
  v180[1] = 0;
  v181 = 0;
  v182[0] = 0xFFFFFFFFLL;
  *(v182 + 7) = 0;
  v183 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v184 = 0;
  v185 = 0;
  v138 = objc_msgSend_valueAtGridCoord_accessContext_(v176, v137, (v171 - 1) | (v157 << 32), v180);
  v76 = v159;
  if (objc_msgSend_isReferenceValue(v138, v139, v140, v141))
  {
    v179 = v25;
    v143 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v138, v142, v136, spec, 1, &v179);
    v144 = v179;

    if (v144)
    {
      context = objc_msgSend_raiseErrorOrConvert_(v136, v145, v144, v146);

      v25 = v144;
      goto LABEL_103;
    }

    objc_msgSend_setIsOutputOfAFunction_(v143, v145, 1, v146);

    v25 = 0;
    v138 = v143;
  }

  sub_221256020(&v205, &v177);
  TSCEFormat::TSCEFormat(&v178, &v177);
  objc_msgSend_setFormat_(v138, v153, &v178, v154);
  v138 = v138;
  context = v138;
LABEL_103:

LABEL_104:
  v67 = v164;
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
  v26 = v15;
LABEL_111:

  if (v205)
  {
    v206 = v205;
    operator delete(v205);
  }

  return context;
}

@end