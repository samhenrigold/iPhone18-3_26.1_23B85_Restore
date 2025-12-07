@interface TSCEFunction_EXACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EXACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v30 = 0;
  v10 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v30);
  v11 = v30;
  v12 = *(*arguments + 8);
  v29 = v11;
  v14 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 1, &v29);
  v15 = v29;

  if (v15)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18);
    goto LABEL_9;
  }

  if (!v8)
  {
    memset(&v27, 0, sizeof(v27));
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    memset(&v26, 0, sizeof(v26));
    goto LABEL_8;
  }

  objc_msgSend_formatWithContext_(v8, v16, context, v18);
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  objc_msgSend_formatWithContext_(v12, v16, context, v18);
LABEL_8:
  TSCEFormat::formatByMergingWithFormat(&v28, &v27, &v26, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v20, v14, v21);
  v19 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v23, isEqualToString, &v28);
LABEL_9:
  v24 = v19;

  return v24;
}

@end