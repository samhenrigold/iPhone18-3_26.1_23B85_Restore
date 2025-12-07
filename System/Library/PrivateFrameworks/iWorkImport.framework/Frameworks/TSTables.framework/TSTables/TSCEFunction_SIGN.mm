@interface TSCEFunction_SIGN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SIGN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v27 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v27);
  v13 = v27;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v15 = objc_msgSend_zero(TSCENumberValue, v10, v11, v12);
    if (objc_msgSend_gt_(v9, v16, v15, v17) || (v14 = v15, objc_msgSend_lt_(v9, v18, v15, v19)))
    {
      TSUDecimal::operator=();
      v14 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v20, &v26, v21);
    }

    TSCEFormat::TSCEFormat(&v25, 256);
    TSCEFormat::TSCEFormat(&v26, &v25);
    objc_msgSend_setFormat_(v14, v22, &v26, v23);
  }

  return v14;
}

@end