@interface TSCEFunction_TRUNC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRUNC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v54 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v54);
  v13 = v54;
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

  v22 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v19, context, v21);
  }

  else
  {
    memset(&v53, 0, sizeof(v53));
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_11;
  }

  v23 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26) & 1) == 0)
  {
    v52 = 0;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v27, context, spec, 1, &v52);
    v36 = v52;

    if (v36)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v38, v36, v40);
    }

    else
    {
      if (!objc_msgSend_hasUnits(v37, v38, v39, v40))
      {
        v22 = v37;
        goto LABEL_10;
      }

      v44 = objc_msgSend_functionName(spec, v41, v42, v43);
      v46 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v45, v44, 2);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48);
    }

    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v51._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v19, v20, v21);
  v51._decimal.w[1] = v28;
  v50._tskFormat = objc_msgSend_decimalRepresentation(v22, v28, v29, v30);
  *&v50._formatType = v31;
  TSUDecimal::truncateWithRounding(&v50);
  TSUDecimal::shift10Places(&v51);
  TSUDecimal::trunc(&v51);
  TSUDecimal::shift10Places(&v51);
  v14 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v32, &v51, v33);
  TSCEFormat::TSCEFormat(&v50, &v53);
  objc_msgSend_setFormat_(v14, v34, &v50, v35);
  v36 = 0;
  v37 = v22;
LABEL_17:

  v13 = v36;
LABEL_18:

  return v14;
}

@end