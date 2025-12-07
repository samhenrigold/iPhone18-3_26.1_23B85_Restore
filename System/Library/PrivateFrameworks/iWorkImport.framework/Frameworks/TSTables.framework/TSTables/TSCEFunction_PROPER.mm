@interface TSCEFunction_PROPER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PROPER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v11 = v7;
  v25 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v25);
    v12 = v25;
    if (v12)
    {
      v13 = v12;
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v8, v12, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v15 = objc_msgSend_locale(context, v8, v9, v10);
  v19 = objc_msgSend_locale(v15, v16, v17, v18);
  sub_2210787C4(&v26, v19, v24);
  v14 = sub_2210789F4(v24, v20, v21, v22);

  v13 = 0;
LABEL_6:

  return v14;
}

@end