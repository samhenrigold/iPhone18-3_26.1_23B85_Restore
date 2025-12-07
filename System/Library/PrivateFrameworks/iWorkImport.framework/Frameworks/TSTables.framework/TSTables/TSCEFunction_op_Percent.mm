@interface TSCEFunction_op_Percent
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Percent

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v26 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v26);
  v13 = v26;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else if (objc_msgSend_hasUnits(v9, v10, v11, v12))
  {
    v18 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v15, v9, context, spec, 0);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20);
  }

  else
  {
    v14 = objc_msgSend_percent(v9, v15, v16, v17);
    TSCEFormat::TSCEFormat(&v24, 258);
    TSCEFormat::TSCEFormat(&v25, &v24);
    objc_msgSend_setFormat_(v14, v21, &v25, v22);
  }

  return v14;
}

@end