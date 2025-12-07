@interface TSCEFunction_EVEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EVEN

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

  else
  {
    objc_msgSend_doubleRepresentation(v9, v10, v11, v12);
    TSUDecimal::operator=();
    v17 = objc_msgSend_variantWithDecimal_(v9, v15, &v25, v16);

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v18, context, v19);
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    TSCEFormat::TSCEFormat(&v25, &v24);
    objc_msgSend_setFormat_(v17, v20, &v25, v21);
    v14 = v17;
    v9 = v14;
  }

  v22 = v14;

  return v22;
}

@end