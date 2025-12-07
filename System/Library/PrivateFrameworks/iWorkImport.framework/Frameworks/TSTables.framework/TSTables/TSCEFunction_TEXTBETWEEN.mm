@interface TSCEFunction_TEXTBETWEEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTBETWEEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v107 = **arguments;
  v8 = *(*arguments + 8);
  v9 = *(*arguments + 16);
  isRegexString = objc_msgSend_isRegexString(v8, v10, v11, v12);
  v105 = objc_msgSend_isRegexString(v9, v14, v15, v16);
  v115[0] = 0;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v107, v17, context, spec, 0, v115);
  v19 = v115[0];
  v114 = v19;
  v21 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v20, context, spec, 1, &v114);
  v22 = v114;

  v113 = v22;
  v106 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v23, context, spec, 2, &v113);
  v24 = v113;

  if (v24)
  {
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v27);

    goto LABEL_30;
  }

  v104 = v21;
  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    v36 = 1;
    goto LABEL_13;
  }

  v29 = *(*arguments + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v29, v30, v31, v32) & 1) != 0 || objc_msgSend_deepType_(v29, v33, context, v34) == 10)
  {
    v36 = 1;
    goto LABEL_7;
  }

  v112 = 0;
  v103 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v35, context, spec, 3, &v112);
  v77 = v112;
  if (v77)
  {
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v74, v77, v76);
LABEL_22:

    goto LABEL_29;
  }

  v83 = objc_msgSend_integer(v103, v74, v75, v76);
  if (!v83)
  {
    v91 = objc_msgSend_functionName(spec, v84, v85, v86);
    v93 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v92, v91, 4);
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v94, v93, v95);

    goto LABEL_22;
  }

  v36 = v83;

LABEL_7:
  if (*(arguments + 1) - *arguments >= 0x21uLL)
  {
    v37 = *(*arguments + 32);
    if ((objc_msgSend_isTokenOrEmptyArg(v37, v38, v39, v40) & 1) != 0 || objc_msgSend_deepType_(v37, v41, context, v42) == 10)
    {
      v44 = 1;
LABEL_11:

      goto LABEL_14;
    }

    v111 = 0;
    v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v37, v43, context, spec, 4, &v111);
    v77 = v111;
    if (v77)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v79, v77, v81);
    }

    else
    {
      v87 = objc_msgSend_integer(v78, v79, v80, v81);
      if (v87)
      {
        v44 = v87;

        goto LABEL_11;
      }

      v96 = objc_msgSend_functionName(spec, v88, v89, v90);
      v98 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v97, v96, 5);
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v99, v98, v100);
    }

LABEL_29:
    v21 = v104;
    goto LABEL_30;
  }

LABEL_13:
  v44 = 1;
LABEL_14:
  v110 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v8, v25, v26, v27);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v46, v104, v18, v36, isRegexString, isCaseSensitiveRegexString, &v110);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = v110;
    v52 = objc_msgSend_functionName(spec, v48, v49, v50);
    v101 = v51;
    v21 = v104;
    v54 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v53, v104, isRegexString, 0, 0, 0, v36, v101, v52);
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v55, v54, v56);
  }

  else
  {
    v57 = objc_msgSend_substringFromIndex_(v18, v48, &v48[isCaseSensitiveRegex_outMatchesFound], v50);

    v109 = 0;
    v61 = objc_msgSend_isCaseSensitiveRegexString(v9, v58, v59, v60);
    v64 = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v62, v106, v57, v44, v105, v61, &v109);
    if (v64 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v66 = v109;
      v67 = objc_msgSend_functionName(spec, v63, 0x7FFFFFFFFFFFFFFFLL, v65);
      v102 = v66;
      v21 = v104;
      v69 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v68, v106, v105, 1, v104, isRegexString, v44, v102, v67);
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71);
    }

    else
    {
      v67 = objc_msgSend_substringToIndex_(v57, v63, v64, v65);
      v21 = v104;
      if (v107)
      {
        objc_msgSend_formatWithContext_(v107, v72, context, v73);
      }

      else
      {
        memset(v108, 0, sizeof(v108));
      }

      v28 = objc_msgSend_stringValue_format_(TSCEStringValue, v72, v67, v108);
    }

    v18 = v57;
  }

LABEL_30:

  return v28;
}

@end