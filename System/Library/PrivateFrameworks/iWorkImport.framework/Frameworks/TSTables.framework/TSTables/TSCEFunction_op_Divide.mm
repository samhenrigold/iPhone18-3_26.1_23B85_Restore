@interface TSCEFunction_op_Divide
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Divide

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v36 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v36);
  v12 = v36;
  v35 = v12;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v35);
  v15 = v35;

  if (v15)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17);
    goto LABEL_12;
  }

  v34 = 0;
  v19 = objc_msgSend_divide_outError_(v11, v16, v14, &v34);
  v15 = v34;
  if (!v15)
  {
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v20, context, v22);
      if (v9)
      {
LABEL_7:
        objc_msgSend_formatWithContext_(v9, v20, context, v22);
LABEL_10:
        TSCEFormat::formatByMergingWithFormat(&v33, &v32, &v31, v21, v22);
        v27 = objc_msgSend_locale(context, v24, v25, v26);
        TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(&v32, &v33, v19, v27);
        TSCEFormat::operator=(&v33, &v32);

        TSCEFormat::TSCEFormat(&v32, &v33);
        objc_msgSend_setFormat_(v19, v28, &v32, v29);
        v23 = v19;
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
      if (v9)
      {
        goto LABEL_7;
      }
    }

    memset(&v31, 0, sizeof(v31));
    goto LABEL_10;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v22);
LABEL_11:
  v18 = v23;

LABEL_12:

  return v18;
}

@end