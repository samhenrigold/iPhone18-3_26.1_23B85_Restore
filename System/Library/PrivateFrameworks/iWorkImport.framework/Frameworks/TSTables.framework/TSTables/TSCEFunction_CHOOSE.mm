@interface TSCEFunction_CHOOSE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHOOSE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_isThunk(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_unwrapThunk_(context, v12, v8, v13);

    v8 = v14;
  }

  v31 = 0;
  v15 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v12, context, spec, 0, &v31);
  v19 = v31;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v19, v18);
LABEL_5:
    v21 = v20;
    goto LABEL_10;
  }

  v30._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v16, v17, v18);
  v30._decimal.w[1] = v22;
  v23 = TSUDecimal::truncatedIntegerValue(&v30);
  if (v23 >= 1 && v23 < ((*(arguments + 1) - *arguments) >> 3))
  {
    v20 = *(*arguments + 8 * (v23 & 0x7FFFFFFF));
    goto LABEL_5;
  }

  v26 = objc_msgSend_invalidIndexForChooseError_(TSCEError, v24, v23, v25);
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28);

LABEL_10:

  return v21;
}

@end