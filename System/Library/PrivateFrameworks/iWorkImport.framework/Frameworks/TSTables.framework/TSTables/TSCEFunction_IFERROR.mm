@interface TSCEFunction_IFERROR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IFERROR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *(arguments + 1) - *arguments;
  if ((v7 & 0x7FFFFFFF8) != 0x10)
  {
    v31 = objc_msgSend_functionName(spec, a2, context, spec);
    v33 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v32, v31, (v7 >> 3));
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v35);

    goto LABEL_12;
  }

  v9 = **arguments;
  v39 = 0;
  v11 = objc_msgSend_deepType_outError_(v9, v10, context, &v39);
  v12 = v39;
  v14 = v12;
  if (v11 == 9)
  {
    v30 = *(*arguments + 8);
    v16 = v14;
    goto LABEL_11;
  }

  if (v11 != 5)
  {
    v16 = v12;
LABEL_10:
    v30 = v9;
    goto LABEL_11;
  }

  v38 = v12;
  v15 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 0, &v38);
  v16 = v38;

  v37._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v17, v18, v19);
  v37._decimal.w[1] = v20;
  if ((TSUDecimal::isNaN(&v37) & 1) == 0 && (TSUDecimal::isInf(&v37) & 1) == 0)
  {

    goto LABEL_10;
  }

  v24 = objc_msgSend_functionName(spec, v21, v22, v23);
  v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v25, v24, v26);
  v30 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);

LABEL_11:
LABEL_12:

  return v30;
}

@end