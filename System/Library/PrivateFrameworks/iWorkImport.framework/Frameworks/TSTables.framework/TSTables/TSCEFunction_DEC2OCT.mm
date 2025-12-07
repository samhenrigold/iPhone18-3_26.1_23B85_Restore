@interface TSCEFunction_DEC2OCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEC2OCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v48 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v48);
  v11 = v48;
  v15 = objc_msgSend_trunc(v10, v12, v13, v14);

  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v18);
LABEL_3:

    goto LABEL_17;
  }

  if (objc_msgSend_hasUnits(v15, v16, v17, v18) && !objc_msgSend_dimension(v15, v20, v21, v22))
  {
    v33 = objc_msgSend_functionName(spec, v23, v24, v25);
    v26 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v41, v33, 1);
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v42, v26, v43);
    goto LABEL_13;
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v26 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29))
    {
      v31 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v47 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v47);
    v33 = v47;
    v37 = objc_msgSend_trunc(v32, v34, v35, v36);

    if (!v33)
    {
      v46._decimal.w[0] = objc_msgSend_decimalRepresentation(v37, v38, v39, v40);
      v46._decimal.w[1] = v44;
      v31 = TSUDecimal::truncateWithRounding(&v46);

      goto LABEL_15;
    }

    v19 = objc_msgSend_raiseErrorOrConvert_(context, v38, v33, v40);

LABEL_13:
    v11 = v33;
    goto LABEL_3;
  }

  v31 = 0;
LABEL_16:
  v19 = sub_2211F8024(context, spec, v15, 8, v31, 0);
LABEL_17:

  return v19;
}

@end