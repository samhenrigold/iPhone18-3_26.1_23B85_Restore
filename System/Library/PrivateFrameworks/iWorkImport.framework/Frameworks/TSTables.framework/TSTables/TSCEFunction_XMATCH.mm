@interface TSCEFunction_XMATCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_XMATCH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  if (objc_msgSend_isReferenceValue(v9, v10, v11, v12))
  {
    v97 = 0;
    v14 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v97);
    v15 = v97;
    if (v15)
    {
      v19 = v15;

      goto LABEL_9;
    }

    if (v14)
    {
      objc_msgSend_rangeRef(v14, v16, v17, v18);
    }

    else
    {
      memset(v96, 0, sizeof(v96));
    }

    v20 = objc_msgSend_calcEngine(context, v16, v17, v18);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v20, v21, v96, v22);

    if ((IsValidIncludingSheet & 1) == 0)
    {
      v26 = objc_msgSend_invalidReferenceError(TSCEError, v13, v24, v25);
      v55 = objc_msgSend_raiseErrorOrConvert_(context, v56, v26, v57);
      goto LABEL_28;
    }
  }

  v19 = 0;
LABEL_9:
  v95 = v19;
  v26 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v13, context, spec, 1, 1, &v95);
  v27 = v95;

  if (v27)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);
LABEL_11:

    goto LABEL_43;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v38 = 0;
    goto LABEL_22;
  }

  v31 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v31, v32, v33, v34) & 1) != 0 || objc_msgSend_deepType_(v31, v35, context, v36) == 10)
  {
    v38 = 0;
    goto LABEL_16;
  }

  v94 = 0;
  v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v37, context, spec, 2, &v94);
  v27 = v94;
  v62 = objc_msgSend_integer(v58, v59, v60, v61);

  if (v27)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v63, v27, v65);
LABEL_36:

    goto LABEL_11;
  }

  if ((v62 - 3) <= 0xFFFFFFFB)
  {
    v81 = objc_msgSend_functionName(spec, v63, v64, v65);
    v83 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v82, v81, 3);
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);

    goto LABEL_36;
  }

  v38 = v62;
LABEL_16:

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
LABEL_22:
    v46 = 1;
    goto LABEL_23;
  }

  v39 = *(*arguments + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v39, v40, v41, v42) & 1) == 0 && objc_msgSend_deepType_(v39, v43, context, v44) != 10)
  {
    v93 = 0;
    v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v45, context, spec, 3, &v93);
    v73 = v93;
    v77 = objc_msgSend_integer(v72, v74, v75, v76);

    if (v73)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v78, v73, v80);
    }

    else
    {
      if (v77 && (v77 - 3) > 0xFFFFFFFA)
      {
        v46 = v77;
        goto LABEL_20;
      }

      v86 = objc_msgSend_functionName(spec, v78, v79, v80);
      v88 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v87, v86, 4);
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v89, v88, v90);
    }

    goto LABEL_43;
  }

  v46 = 1;
LABEL_20:

LABEL_23:
  v92 = 0;
  matched = objc_msgSend_lookupValue_functionSpec_userNodeValue_lookupVector_matchModeArgIndex_matchMode_searchMode_outError_(TSCEFunction_XLOOKUP, v28, context, spec, v8, v26, 2, v38, v46, &v92);
  v48 = v92;
  if (v48)
  {
    v52 = v48;
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v49, v48, v51);

    goto LABEL_43;
  }

  if (matched != -1)
  {
    TSUDecimal::operator=();
    v55 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v53, v96, v54);
LABEL_28:
    v30 = v55;
    goto LABEL_43;
  }

  v66 = objc_msgSend_functionName(spec, v49, v50, v51);
  v69 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v67, v66, v68);
  v30 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71);

LABEL_43:

  return v30;
}

@end