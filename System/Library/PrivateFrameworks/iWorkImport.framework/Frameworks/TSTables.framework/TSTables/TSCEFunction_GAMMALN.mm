@interface TSCEFunction_GAMMALN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GAMMALN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v23 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v23);
  v13 = v23;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v15 = objc_msgSend_lgamma(v9, v10, v11, v12);

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v16, context, v17);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v15, v18, &v22, v19);
    v14 = v15;
    v9 = v14;
  }

  return v14;
}

@end