@interface TSCEFunction_op_Multiply
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Multiply

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v33 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v33);
  v12 = v33;
  v32 = v12;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v32);
  v15 = v32;

  if (v15)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17);
    goto LABEL_9;
  }

  v18 = objc_msgSend_multiply_context_(v11, v16, v14, context);
  if (!v8)
  {
    memset(&v30, 0, sizeof(v30));
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    memset(&v29, 0, sizeof(v29));
    goto LABEL_8;
  }

  objc_msgSend_formatWithContext_(v8, v19, context, v21);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  objc_msgSend_formatWithContext_(v9, v19, context, v21);
LABEL_8:
  TSCEFormat::formatByMergingWithFormat(&v31, &v30, &v29, v20, v21);
  v25 = objc_msgSend_locale(context, v22, v23, v24);
  TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(&v30, &v31, v18, v25);
  TSCEFormat::operator=(&v31, &v30);

  TSCEFormat::TSCEFormat(&v30, &v31);
  objc_msgSend_setFormat_(v18, v26, &v30, v27);
LABEL_9:

  return v18;
}

@end