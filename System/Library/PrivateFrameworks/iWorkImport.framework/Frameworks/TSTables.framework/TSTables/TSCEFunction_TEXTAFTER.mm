@interface TSCEFunction_TEXTAFTER
+ (_NSRange)rangeOfSearchString:(id)string inSourceString:(id)sourceString withOccurrence:(int64_t)occurrence isRegexSearch:(BOOL)search isCaseSensitiveRegex:(BOOL)regex outMatchesFound:(int64_t *)found;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTAFTER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  isRegexString = objc_msgSend_isRegexString(v9, v10, v11, v12);
  v64 = 0;
  v15 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v64);
  v16 = v64;
  v63 = v16;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v17, context, spec, 1, &v63);
  v19 = v63;

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
    v62 = 0;
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v30, context, spec, 2, &v62);
    v19 = v62;
    if (v19)
    {
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v48, v19, v50);
    }

    else
    {
      v51 = objc_msgSend_integer(v47, v48, v49, v50);
      if (v51)
      {
        v31 = v51;

        goto LABEL_8;
      }

      v55 = objc_msgSend_functionName(spec, v52, v53, v54);
      v57 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v56, v55, 3);
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v58, v57, v59);
    }

    goto LABEL_3;
  }

  v31 = 1;
LABEL_8:

LABEL_10:
  v61 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v9, v20, v21, v22);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v33, v18, v15, v31, isRegexString, isCaseSensitiveRegexString, &v61);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = v61;
    v39 = objc_msgSend_functionName(spec, v35, v36, v37);
    v41 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v40, v18, isRegexString, 0, 0, 0, v31, v38, v39);
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v42, v41, v43);
  }

  else
  {
    v39 = objc_msgSend_substringFromIndex_(v15, v35, &v35[isCaseSensitiveRegex_outMatchesFound], v37);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v44, context, v45);
    }

    else
    {
      memset(v60, 0, sizeof(v60));
    }

    v23 = objc_msgSend_stringValue_format_(TSCEStringValue, v44, v39, v60);
  }

LABEL_17:

  return v23;
}

+ (_NSRange)rangeOfSearchString:(id)string inSourceString:(id)sourceString withOccurrence:(int64_t)occurrence isRegexSearch:(BOOL)search isCaseSensitiveRegex:(BOOL)regex outMatchesFound:(int64_t *)found
{
  regexCopy = regex;
  searchCopy = search;
  stringCopy = string;
  sourceStringCopy = sourceString;
  v18 = sourceStringCopy;
  if (searchCopy)
  {
    if (occurrence == 1)
    {
      v45 = 0;
      v19 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v15, stringCopy, regexCopy, &v45);
      v20 = v45;
      MatchInString = objc_msgSend_rangeOfFirstMatchInString_(v19, v21, v18, v22);
    }

    else
    {
      v44 = 0;
      v19 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v15, stringCopy, regexCopy, &v44);
      v20 = v44;
      MatchInString = objc_msgSend_rangeOfMatchInString_occurrence_matchesFound_(v19, v39, v18, occurrence, found);
    }

    v28 = MatchInString;
    v35 = v24;

    v40 = *MEMORY[0x277D81490];
    v41 = *(MEMORY[0x277D81490] + 8);

    if (v20)
    {
      v28 = v40;
      v35 = v41;
    }
  }

  else
  {
    if (occurrence >= 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = 5;
    }

    if (occurrence >= 0)
    {
      occurrenceCopy = occurrence;
    }

    else
    {
      occurrenceCopy = -occurrence;
    }

    v27 = objc_msgSend_length(sourceStringCopy, v15, v16, v17);
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = objc_msgSend_rangeOfString_options_range_(v18, v29, stringCopy, v25, 0, v27);
    while (1)
    {
      v34 = v30;
      v35 = v31;
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v36 = *found + 1;
      *found = v36;
      if (v36 == occurrenceCopy)
      {
        v28 = v30;
        break;
      }

      if (occurrence < 0)
      {
        v30 = objc_msgSend_rangeOfString_options_range_(v18, v31, stringCopy, v25, 0, &v31[v30 - 1]);
      }

      else
      {
        v37 = objc_msgSend_length(v18, v31, v32, v33);
        v30 = objc_msgSend_rangeOfString_options_range_(v18, v38, stringCopy, v25, v34 + 1, v37 + ~v34);
      }
    }
  }

  v42 = v28;
  v43 = v35;
  result.length = v43;
  result.location = v42;
  return result;
}

@end