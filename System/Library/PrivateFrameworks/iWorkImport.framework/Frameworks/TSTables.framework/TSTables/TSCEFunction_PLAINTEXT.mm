@interface TSCEFunction_PLAINTEXT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PLAINTEXT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  if (objc_msgSend_deepType_(v7, v8, context, v9) == 7)
  {
    v22 = 0;
    v11 = &v22;
    v12 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v7, v10, context, spec, 0, &v22);
  }

  else
  {
    v21 = 0;
    v11 = &v21;
    v12 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v10, context, spec, 0, &v21);
  }

  v13 = v12;
  v16 = *v11;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v14, v16, v15);
  }

  else
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v14, context, v15);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v17 = objc_msgSend_stringValue_format_(TSCEStringValue, v14, v13, v20);
  }

  v18 = v17;

  return v18;
}

@end