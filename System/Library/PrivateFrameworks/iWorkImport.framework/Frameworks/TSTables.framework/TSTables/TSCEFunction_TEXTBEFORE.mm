@interface TSCEFunction_TEXTBEFORE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTBEFORE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12);
  v63 = 0;
  v15 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v63);
  v16 = v63;
  v62 = v16;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v17, context, spec, 1, &v62);
  v19 = v62;

  if (v19)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
LABEL_3:

    goto LABEL_17;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v31 = 1;
    goto LABEL_10;
  }

  v24 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27) & 1) == 0 && objc_msgSend_deepType_(v24, v28, context, v29) != 10)
  {
    v61 = 0;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v30, context, spec, 2, &v61);
    v19 = v61;
    if (v19)
    {
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v47, v19, v49);
    }

    else
    {
      v50 = objc_msgSend_integer(v46, v47, v48, v49);
      if (v50)
      {
        v31 = v50;

        goto LABEL_8;
      }

      v54 = objc_msgSend_functionName(spec, v51, v52, v53);
      v56 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v55, v54, 3);
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v57, v56, v58);
    }

    goto LABEL_3;
  }

  v31 = 1;
LABEL_8:

LABEL_10:
  v60 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v9, v20, v21, v22);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v33, v18, v15, v31, isRegexString, isCaseSensitiveRegexString, &v60);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = v60;
    v38 = objc_msgSend_functionName(spec, v34, 0x7FFFFFFFFFFFFFFFLL, v36);
    v40 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v39, v18, isRegexString, 0, 0, 0, v31, v37, v38);
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v41, v40, v42);
  }

  else
  {
    v38 = objc_msgSend_substringToIndex_(v15, v34, isCaseSensitiveRegex_outMatchesFound, v36);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v43, context, v44);
    }

    else
    {
      memset(v59, 0, sizeof(v59));
    }

    v23 = objc_msgSend_stringValue_format_(TSCEStringValue, v43, v38, v59);
  }

LABEL_17:

  return v23;
}

@end