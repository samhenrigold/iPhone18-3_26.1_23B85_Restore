@interface TSCEFunction_GESTEP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GESTEP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v34 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v34);
  v11 = v34;
  v12 = *(*arguments + 8);
  v33 = v11;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 1, &v33);
  v15 = v33;

  if (v15)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17);
LABEL_5:
    v23 = v18;
    goto LABEL_6;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v16, v14, v17))
  {
    objc_msgSend_ge_(v10, v19, v14, v21);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v31, 256);
    v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v22, v32, v31);
    goto LABEL_5;
  }

  v25 = objc_msgSend_functionName(spec, v19, v20, v21);
  v28 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v26, v25, v27);
  v23 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v30);

LABEL_6:

  return v23;
}

@end