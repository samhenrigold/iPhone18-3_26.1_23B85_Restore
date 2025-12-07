@interface TSCEFunction_NUMTOBASE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NUMTOBASE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v58 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v58);
  v11 = v58;
  v15 = objc_msgSend_trunc(v10, v12, v13, v14);

  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v18);
    goto LABEL_18;
  }

  if (!objc_msgSend_isDuration(v15, v16, v17, v18))
  {
    v25 = *(*arguments + 8);
    v57 = 0;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v28, context, spec, 1, &v57);
    v23 = v57;
    v33 = objc_msgSend_trunc(v29, v30, v31, v32);

    if (v23)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v34, v23, v36);
LABEL_16:

      goto LABEL_17;
    }

    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v42 = 0;
    }

    else
    {
      v37 = *(*arguments + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v37, v38, v39, v40))
      {
        v42 = 0;
      }

      else
      {
        v56 = 0;
        v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v37, v41, context, spec, 2, &v56);
        v23 = v56;
        v47 = objc_msgSend_trunc(v43, v44, v45, v46);

        if (v23)
        {
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v48, v23, v50);

          goto LABEL_16;
        }

        v55._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v48, v49, v50);
        v55._decimal.w[1] = v51;
        v42 = TSUDecimal::truncateWithRounding(&v55);
      }
    }

    v55._decimal.w[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36);
    v55._decimal.w[1] = v52;
    v53 = TSUDecimal::truncateWithRounding(&v55);
    v19 = sub_2211F8024(context, spec, v15, v53, v42, 1);
    v23 = 0;
    goto LABEL_16;
  }

  v23 = objc_msgSend_functionName(spec, v20, v21, v22);
  v25 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v24, v23, 1);
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);
LABEL_17:

  v11 = v23;
LABEL_18:

  return v19;
}

@end