@interface TSCEFunction_SEARCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SEARCH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v116, 0, sizeof(v116));
  }

  sub_22114F414(&v117, &v116);
  v115 = 0;
  v13 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v115);
  v14 = v115;
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v17);
    goto LABEL_44;
  }

  isRegexString = objc_msgSend_isRegexString(v11, v15, v16, v17);
  v21 = *(*arguments + 8);
  v24 = v21;
  if (v21)
  {
    objc_msgSend_formatWithContext_(v21, v22, context, v23);
  }

  else
  {
    memset(&v116, 0, sizeof(v116));
  }

  sub_22114F414(&v117, &v116);
  v114 = 0;
  v26 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, &v114);
  v27 = v114;
  if (!v27)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v36 = 0;
      goto LABEL_16;
    }

    v30 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v30, v31, v32, v33))
    {
      v36 = 0;
LABEL_14:

LABEL_16:
      sub_221256020(&v117, &v116);
      if (objc_msgSend_length(v13, v37, v38, v39) || objc_msgSend_length(v26, v40, v41, v42))
      {
        if (v36 >= objc_msgSend_length(v26, v40, v41, v42))
        {
          v60 = objc_msgSend_functionName(spec, v43, v44, v45);
          v63 = objc_msgSend_startNumberExceedsStringLengthErrorForFunctionName_(TSCEError, v61, v60, v62);
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v64, v63, v65);
        }

        else
        {
          if (objc_msgSend_length(v13, v43, v44, v45))
          {
            v106 = objc_msgSend_length(v26, v46, v47, v48);
            if (isRegexString)
            {
              v52 = objc_msgSend_asStringValue(v11, v49, v50, v51);
              isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v52, v53, v54, v55);
              v111 = 0;
              v108 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v57, v13, isCaseSensitiveRegex, &v111);
              v18 = v111;
            }

            else
            {
              v110 = 0;
              v76 = objc_msgSend_regexMatcherWithStringMatch_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v49, v13, 0, 0, &v110);
              v18 = v110;
              v108 = v76;
            }

            if (v18)
            {
              v77 = objc_msgSend_raiseErrorOrConvert_(context, v58, v18, v59);
            }

            else
            {
              MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v108, v58, v26, 0, v36, v106 - v36);
              if (MatchInString_options_range == 0x7FFFFFFFFFFFFFFFLL)
              {
                v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], 0x7FFFFFFFFFFFFFFFLL, @"%@", v93, v13);
                v98 = objc_msgSend_functionName(spec, v95, v96, v97);
                v100 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v99, v94, isRegexString, v98);
                v19 = objc_msgSend_raiseErrorOrConvert_(context, v101, v100, v102);

LABEL_42:
                goto LABEL_43;
              }

              sub_221580D44(v26, MatchInString_options_range);
              TSUDecimal::operator=();
              v77 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v104, v112, &v116);
            }

            v19 = v77;
            goto LABEL_42;
          }

          TSUDecimal::operator=();
          v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v66, v112, &v116);
        }
      }

      else
      {
        v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"%@", v42, v13);
        v71 = objc_msgSend_functionName(spec, v68, v69, v70);
        v73 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v72, v67, 0, v71);
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75);
      }

      v18 = 0;
      goto LABEL_43;
    }

    if (v30)
    {
      objc_msgSend_formatWithContext_(v30, v34, context, v35);
    }

    else
    {
      memset(&v116, 0, sizeof(v116));
    }

    sub_22114F414(&v117, &v116);
    if (objc_msgSend_isEmptyArg(v30, v78, v79, v80))
    {
      v84 = objc_msgSend_functionName(spec, v81, v82, v83);
      v86 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v85, 3, v84, 1, 1.0);
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v87, v86, v88);

      v18 = 0;
    }

    else
    {
      v113 = 0;
      v84 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v81, context, spec, 2, &v113);
      v18 = v113;
      v109 = v84;
      if (!v18)
      {
        v116._tskFormat = objc_msgSend_decimalRepresentation(v84, v89, v90, v91);
        *&v116._formatType = v103;
        v107 = (TSUDecimal::truncateWithRounding(&v116) - 1);
        v36 = sub_22157EFF8(v26, v107);

        goto LABEL_14;
      }

      v19 = objc_msgSend_raiseErrorOrConvert_(context, v89, v18, v91);
    }

    goto LABEL_43;
  }

  v18 = v27;
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);
LABEL_43:

LABEL_44:
  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  return v19;
}

@end