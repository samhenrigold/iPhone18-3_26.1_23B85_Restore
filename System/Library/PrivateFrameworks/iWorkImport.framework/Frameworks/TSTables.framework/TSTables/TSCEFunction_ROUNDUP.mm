@interface TSCEFunction_ROUNDUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ROUNDUP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v49 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v49);
  v13 = v49;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v13, v12);
    goto LABEL_18;
  }

  v18 = objc_msgSend_errorForDuration_argumentIndex_(v10, v11, spec, 0);
  if (v18)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v15, v18, v17);
    v13 = v18;
    goto LABEL_18;
  }

  v21 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v19, context, v20);
  }

  else
  {
    memset(&v48, 0, sizeof(v48));
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_11;
  }

  v22 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25) & 1) == 0)
  {
    v47 = 0;
    v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v26, context, spec, 1, &v47);
    v13 = v47;
    v29 = objc_msgSend_floor(v30, v31, v32, v33);

    if (v13)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v34, v13, v36);
    }

    else
    {
      if (!objc_msgSend_hasUnits(v29, v34, v35, v36))
      {
        v21 = v29;
        goto LABEL_10;
      }

      v40 = objc_msgSend_functionName(spec, v37, v38, v39);
      v42 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v41, v40, 2);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v43, v42, v44);
    }

    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v14 = sub_2212B1D7C(v10, v21, NSRoundUp, NSRoundDown);
  TSCEFormat::TSCEFormat(&v46, &v48);
  objc_msgSend_setFormat_(v14, v27, &v46, v28);
  v13 = 0;
  v29 = v21;
LABEL_17:

LABEL_18:

  return v14;
}

@end