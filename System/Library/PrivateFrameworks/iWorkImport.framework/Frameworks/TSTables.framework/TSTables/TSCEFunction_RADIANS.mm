@interface TSCEFunction_RADIANS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RADIANS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v25 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v25);
  v12 = v25;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    TSUDecimal::operator=();
    v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v14, &v24, v15);
    v13 = objc_msgSend_multiply_context_(v9, v17, v16, context);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v18, context, v19);
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    TSCEFormat::TSCEFormat(&v24, &v23);
    objc_msgSend_setFormat_(v13, v20, &v24, v21);
  }

  return v13;
}

@end