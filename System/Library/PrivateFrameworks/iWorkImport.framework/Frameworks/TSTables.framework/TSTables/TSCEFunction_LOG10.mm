@interface TSCEFunction_LOG10
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOG10

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v22 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v22);
  v13 = v22;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v14 = objc_msgSend_log10(v9, v10, v11, v12);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v15, context, v16);
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    TSCEFormat::TSCEFormat(&v21, &v20);
    objc_msgSend_setFormat_(v14, v17, &v21, v18);
  }

  return v14;
}

@end