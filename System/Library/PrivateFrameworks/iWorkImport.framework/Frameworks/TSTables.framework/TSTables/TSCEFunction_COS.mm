@interface TSCEFunction_COS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v30 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v30);
  v13 = v30;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else if (objc_msgSend_hasUnits(v9, v10, v11, v12))
  {
    v18 = objc_msgSend_functionName(spec, v15, v16, v17);
    v20 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v19, v18, 1);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22);
  }

  else
  {
    v14 = objc_msgSend_cos(v9, v15, v16, v17);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v23, context, v24);
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    TSCEFormat::TSCEFormat(&v29, &v28);
    objc_msgSend_setFormat_(v14, v25, &v29, v26);
  }

  return v14;
}

@end