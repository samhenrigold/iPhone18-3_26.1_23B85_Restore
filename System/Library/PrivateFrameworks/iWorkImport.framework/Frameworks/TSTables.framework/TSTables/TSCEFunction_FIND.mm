@interface TSCEFunction_FIND
+ (id)evaluateFindWithOptions:(id)options functionSpec:(id)spec arguments:(const void *)arguments findOptions:(unint64_t)findOptions;
@end

@implementation TSCEFunction_FIND

+ (id)evaluateFindWithOptions:(id)options functionSpec:(id)spec arguments:(const void *)arguments findOptions:(unint64_t)findOptions
{
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v10 = **arguments;
  v13 = v10;
  if (v10)
  {
    objc_msgSend_formatWithContext_(v10, v11, options, v12);
  }

  else
  {
    memset(&v99, 0, sizeof(v99));
  }

  sub_22114F414(&v100, &v99);
  v98 = 0;
  v15 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v14, options, spec, 0, &v98);
  v16 = v98;
  if (v16)
  {
    v20 = v16;
    v21 = objc_msgSend_raiseErrorOrConvert_(options, v17, v16, v19);
    goto LABEL_42;
  }

  isRegexString = objc_msgSend_isRegexString(v13, v17, v18, v19);
  v22 = *(*arguments + 8);
  v25 = v22;
  if (v22)
  {
    objc_msgSend_formatWithContext_(v22, v23, options, v24);
  }

  else
  {
    memset(&v99, 0, sizeof(v99));
  }

  sub_22114F414(&v100, &v99);
  v97 = 0;
  v27 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v25, v26, options, spec, 1, &v97);
  v28 = v97;
  if (!v28)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v38 = 0;
      goto LABEL_16;
    }

    v32 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v32, v33, v34, v35))
    {
      v38 = 0;
LABEL_14:

LABEL_16:
      if (v38 >= objc_msgSend_length(v27, v29, v30, v31, v89) && (v38 || objc_msgSend_length(v27, v39, v40, v41)))
      {
        v56 = objc_msgSend_functionName(spec, v39, v40, v41);
        v59 = objc_msgSend_startNumberExceedsStringLengthErrorForFunctionName_(TSCEError, v57, v56, v58);
        v62 = objc_msgSend_raiseErrorOrConvert_(options, v60, v59, v61);
LABEL_37:
        v21 = v62;

LABEL_40:
        v20 = 0;
        goto LABEL_41;
      }

      if (objc_msgSend_length(v15, v39, v40, v41))
      {
        v48 = objc_msgSend_length(v27, v42, v43, v44) - v38;
        if (isRegexString)
        {
          v90 = objc_msgSend_asStringValue(v13, v45, v46, v47);
          isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v90, v49, v50, v51);
          v94 = 0;
          v91 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v53, v15, isCaseSensitiveRegex, &v94);
          v20 = v94;
          if (v20)
          {
            v21 = objc_msgSend_raiseErrorOrConvert_(options, v54, v20, v55);

            goto LABEL_41;
          }

          MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v91, v54, v27, findOptions, v38, v48);
        }

        else
        {
          MatchInString_options_range = objc_msgSend_rangeOfString_options_range_(v27, v45, v15, findOptions, v38, v48);
        }

        if (MatchInString_options_range == 0x7FFFFFFFFFFFFFFFLL)
        {
          v56 = objc_msgSend_functionName(spec, v65, v66, v67);
          v59 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v83, v15, isRegexString, v56);
          v62 = objc_msgSend_raiseErrorOrConvert_(options, v84, v59, v85);
          goto LABEL_37;
        }

        sub_221580D44(v27, MatchInString_options_range);
        TSUDecimal::operator=();
        sub_221256020(&v100, &v99);
        v64 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v86, v95, &v99);
      }

      else
      {
        TSUDecimal::operator=();
        v99._tskFormat = 0;
        v99._formatType = 0;
        v99._formatState = 0;
        *&v99._durationFormat = 1057;
        *(&v99._durationFormat + 2) = 1;
        *&v99._baseFormat.base = 0xFDFD01000ALL;
        v64 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v63, v95, &v99);
      }

      v21 = v64;
      goto LABEL_40;
    }

    if (v32)
    {
      objc_msgSend_formatWithContext_(v32, v36, options, v37);
    }

    else
    {
      memset(&v99, 0, sizeof(v99));
    }

    sub_22114F414(&v100, &v99);
    if (objc_msgSend_isEmptyArg(v32, v69, v70, v71))
    {
      v75 = objc_msgSend_functionName(spec, v72, v73, v74);
      v77 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v76, 3, v75, 1, 1.0);
      v21 = objc_msgSend_raiseErrorOrConvert_(options, v78, v77, v79);

      v20 = 0;
    }

    else
    {
      v96 = 0;
      v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v72, options, spec, 2, &v96);
      v20 = v96;
      v92 = v75;
      if (!v20)
      {
        v99._tskFormat = objc_msgSend_decimalRepresentation(v75, v80, v81, v82);
        *&v99._formatType = v88;
        v89 = (TSUDecimal::truncateWithRounding(&v99) - 1);
        v38 = sub_22157EFF8(v27, v89);

        goto LABEL_14;
      }

      v21 = objc_msgSend_raiseErrorOrConvert_(options, v80, v20, v82);
    }

    goto LABEL_41;
  }

  v20 = v28;
  v21 = objc_msgSend_raiseErrorOrConvert_(options, v29, v28, v31);
LABEL_41:

LABEL_42:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  return v21;
}

@end