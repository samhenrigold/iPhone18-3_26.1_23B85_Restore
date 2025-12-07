@interface TSCEFunction_DELTA
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DELTA

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v40 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v40);
  v11 = v40;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_13;
  }

  v16 = *(*arguments + 8);
  v39 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v39);
  v14 = v39;
  if (!v14)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v19, v18, v20))
    {
      v38 = 0;
      objc_msgSend_eq_outError_(v10, v22, v18, &v38);
      v25 = v38;
      if (v25)
      {
        v14 = v25;
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);
        goto LABEL_5;
      }

      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v36, 256);
      v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v34, v37, v36);
    }

    else
    {
      v28 = objc_msgSend_functionName(spec, v22, v23, v24);
      v31 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v29, v28, v30);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v33);
    }

    v14 = 0;
    goto LABEL_12;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v14, v20);
LABEL_5:
  v15 = v21;
LABEL_12:

LABEL_13:

  return v15;
}

@end