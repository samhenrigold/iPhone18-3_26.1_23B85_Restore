@interface TSCEFunction_ARRAYTOTEXT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ARRAYTOTEXT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v38 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v38);
  v10 = v38;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
LABEL_3:

    goto LABEL_11;
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v22 = 0;
    goto LABEL_10;
  }

  v15 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v15, v16, v17, v18) & 1) == 0 && objc_msgSend_deepType_(v15, v19, context, v20) != 10)
  {
    v37 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v21, context, spec, 1, &v37);
    v13 = v37;
    v28 = objc_msgSend_integer(v24, v25, v26, v27);

    if (v13)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v29, v13, v31);
    }

    else
    {
      if (v28 < 2)
      {
        v22 = v28;
        goto LABEL_8;
      }

      v32 = objc_msgSend_functionName(spec, v29, v30, v31);
      v34 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v33, v32, 2);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
    }

    goto LABEL_3;
  }

  v22 = 0;
LABEL_8:

LABEL_10:
  v14 = objc_msgSend_convertArrayToText_maximumStringLength_formatMode_(v9, v11, context, 0x7FFFFFFFFFFFFFFFLL, v22);
LABEL_11:

  return v14;
}

@end