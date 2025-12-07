@interface TSCEFunction_NOT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v17 = 0;
  v9 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v17);
  v12 = v17;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v10, context, v11);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    v13 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v10, v9 ^ 1u, v16);
  }

  v14 = v13;

  return v14;
}

@end