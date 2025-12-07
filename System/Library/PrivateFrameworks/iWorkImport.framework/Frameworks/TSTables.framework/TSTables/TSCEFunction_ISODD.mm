@interface TSCEFunction_ISODD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISODD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v28 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v28);
  v13 = v28;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v27[0] = objc_msgSend_decimalRepresentation(v9, v10, v11, v12);
    v27[1] = v15;
    isEven_value_warningType = objc_msgSend_isEven_value_warningType_(TSCEFunction_ISEVEN, v15, context, v27, 103);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1057;
    v24 = 1;
    v25 = -50266102;
    v26 = 253;
    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v17, isEven_value_warningType ^ 1u, &v20);
  }

  v18 = v14;

  return v18;
}

@end