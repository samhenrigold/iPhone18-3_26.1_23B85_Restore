@interface TSCEFunction_REGEX_EXTRACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REGEX_EXTRACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v172 = *MEMORY[0x277D85DE8];
  v8 = **arguments;
  v167[0] = 0;
  v154 = v8;
  v155 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v167);
  v10 = v167[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_82;
  }

  v15 = *(*arguments + 8);
  v166 = 0;
  v153 = v15;
  v152 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v15, v16, context, spec, 1, &v166);
  v17 = v166;
  if (!v17)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v26 = 0;
      v25 = 1;
      v27 = -1;
      isTokenOrEmptyArg = 1;
      goto LABEL_17;
    }

    v151 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v151, v21, v22, v23))
    {
      v25 = 1;
    }

    else
    {
      v165 = 0;
      v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v151, v24, context, spec, 2, &v165);
      v13 = v165;
      if (v13)
      {
        v33 = objc_msgSend_raiseErrorOrConvert_(context, v30, v13, v32);
        goto LABEL_52;
      }

      v34 = objc_msgSend_integer(v29, v30, v31, v32);

      v25 = v34;
    }

    v26 = v25 == 0;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      isTokenOrEmptyArg = 1;
      v27 = -1;
LABEL_17:
      if (objc_msgSend_isRegexString(v153, v18, v19, v20))
      {
        isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v153, v39, v40, v41);
      }

      else
      {
        isCaseSensitiveRegexString = 1;
      }

      v163 = 0;
      v151 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v39, v152, isCaseSensitiveRegexString, &v163);
      v13 = v163;
      if (v13)
      {
        v14 = objc_msgSend_raiseErrorOrConvert_(context, v43, v13, v45);
LABEL_80:

        goto LABEL_81;
      }

      v46 = objc_msgSend_length(v155, v43, v44, v45);
      v29 = objc_msgSend_matchesInString_options_range_(v151, v47, v155, 0, 0, v46);
      if (!objc_msgSend_count(v29, v48, v49, v50))
      {
        v68 = objc_msgSend_functionName(spec, v51, v52, v53);
        v70 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v69, v152, 1, 0, 0, 0, v25, 0, v68);
        v14 = objc_msgSend_raiseErrorOrConvert_(context, v71, v70, v72);

        goto LABEL_79;
      }

      v54 = objc_msgSend_count(v29, v51, v52, v53);
      if (v25 >= 0)
      {
        v58 = v25;
      }

      else
      {
        v58 = -v25;
      }

      if (v58 > v54)
      {
        v59 = objc_msgSend_count(v29, v55, v56, v57);
        v63 = objc_msgSend_functionName(spec, v60, v61, v62);
        v65 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v64, v152, 1, 0, 0, 0, v25, v59, v63);
        v14 = objc_msgSend_raiseErrorOrConvert_(context, v66, v65, v67);

LABEL_79:
        goto LABEL_80;
      }

      if (v25 < 0)
      {
        v102 = objc_msgSend_count(v29, v55, v56, v57) + v25;
        objc_msgSend_objectAtIndex_(v29, v103, v102, v104);
      }

      else
      {
        if (v26)
        {
          v160 = 0;
          v161 = 0;
          v162 = 0;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v73 = v29;
          v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v156, v171, 16);
          if (v78)
          {
            v79 = *v157;
            do
            {
              for (i = 0; i != v78; ++i)
              {
                if (*v157 != v79)
                {
                  objc_enumerationMutation(v73);
                }

                v81 = objc_msgSend_range(*(*(&v156 + 1) + 8 * i), v75, v76, v77);
                v83 = objc_msgSend_substringWithRange_(v155, v82, v81, v82);
                v86 = objc_msgSend_stringValue_(TSCEStringValue, v84, v83, v85);

                v87 = v161;
                if (v161 >= v162)
                {
                  v89 = v161 - v160;
                  if ((v89 + 1) >> 61)
                  {
                    sub_22107C148();
                  }

                  v90 = (v162 - v160) >> 2;
                  if (v90 <= v89 + 1)
                  {
                    v90 = v89 + 1;
                  }

                  if (v162 - v160 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v91 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v91 = v90;
                  }

                  v170 = &v160;
                  if (v91)
                  {
                    sub_22107C1F0(&v160, v91);
                  }

                  v92 = (8 * v89);
                  *&v168 = 0;
                  *(&v168 + 1) = v92;
                  *(&v169 + 1) = 0;
                  *v92 = v86;
                  *&v169 = v92 + 1;
                  sub_22107C098(&v160, &v168);
                  v88 = v161;
                  sub_22107C26C(&v168);
                }

                else
                {
                  *v87 = v86;
                  v88 = v87 + 1;
                }

                v161 = v88;
              }

              v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v75, &v156, v171, 16);
            }

            while (v78);
          }

          v93 = [TSCEDenseGrid alloc];
          v96 = objc_msgSend_initWithValues_(v93, v94, &v160, v95);
          v14 = objc_msgSend_gridValue_(TSCEGridValue, v97, v96, v98);

          *&v168 = &v160;
          sub_22107C2C0(&v168);
          goto LABEL_79;
        }

        objc_msgSend_objectAtIndex_(v29, v55, v25 - 1, v57);
      }
      v108 = ;
      v112 = v108;
      if (isTokenOrEmptyArg)
      {
        v113 = objc_msgSend_range(v108, v109, v110, v111);
        v115 = objc_msgSend_substringWithRange_(v155, v114, v113, v114);
      }

      else
      {
        if (!v27 && objc_msgSend_numberOfRanges(v108, v109, v110, v111) >= 2)
        {
          v168 = 0uLL;
          v119 = 1;
          *&v169 = 0;
          while (objc_msgSend_numberOfRanges(v112, v109, v110, v111) > v119)
          {
            v123 = objc_msgSend_rangeAtIndex_(v112, v120, v119, v121);
            v125 = &stru_2834BADA0;
            if (v123 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v125 = objc_msgSend_substringWithRange_(v155, v122, v123, v122);
            }

            v160 = objc_msgSend_stringValue_(TSCEStringValue, v122, v125, v124);
            sub_221587F64(&v168, &v160);

            ++v119;
          }

          v144 = [TSCEDenseGrid alloc];
          v147 = objc_msgSend_initWithValues_(v144, v145, &v168, v146);
          v14 = objc_msgSend_gridValue_(TSCEGridValue, v148, v147, v149);

          v160 = &v168;
          sub_22107C2C0(&v160);
          goto LABEL_78;
        }

        if (objc_msgSend_numberOfRanges(v112, v109, v110, v111) <= v27)
        {
          v130 = objc_msgSend_functionName(spec, v126, v127, v128);
          v134 = objc_msgSend_numberOfRanges(v112, v131, v132, v133);
          v136 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v135, 3, v130, 1, v134);
          v14 = objc_msgSend_raiseErrorOrConvert_(context, v137, v136, v138);

LABEL_78:
          goto LABEL_79;
        }

        v129 = objc_msgSend_rangeAtIndex_(v112, v126, v27, v128);
        if (v129 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v118 = &stru_2834BADA0;
          goto LABEL_60;
        }

        v115 = objc_msgSend_substringWithRange_(v155, v116, v129, v116);
      }

      v118 = v115;
LABEL_60:
      if (v154)
      {
        objc_msgSend_formatWithContext_(v154, v116, context, v117);
      }

      else
      {
        v168 = 0u;
        v169 = 0u;
      }

      v14 = objc_msgSend_stringValue_format_(TSCEStringValue, v116, v118, &v168);

      goto LABEL_78;
    }

    v151 = *(*arguments + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v151, v35, v36, v37);
    if (isTokenOrEmptyArg)
    {
      v27 = -1;
LABEL_15:

      goto LABEL_17;
    }

    v164 = 0;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v151, v38, context, spec, 3, &v164);
    v13 = v164;
    if (!v13)
    {
      LODWORD(v27) = objc_msgSend_integer(v29, v99, v100, v101);
      if ((v27 & 0x80000000) != 0)
      {
        v139 = objc_msgSend_functionName(spec, v105, v106, v107);
        v141 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v140, v139, 4);
        v14 = objc_msgSend_raiseErrorOrConvert_(context, v142, v141, v143);

        goto LABEL_79;
      }

      v27 = v27;
      goto LABEL_15;
    }

    v33 = objc_msgSend_raiseErrorOrConvert_(context, v99, v13, v101);
LABEL_52:
    v14 = v33;
    goto LABEL_79;
  }

  v13 = v17;
  v14 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v20);
LABEL_81:

LABEL_82:

  return v14;
}

@end