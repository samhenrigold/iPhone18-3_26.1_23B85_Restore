@interface TSCEFunction_op_Power
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Power

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
    goto LABEL_12;
  }

  v31 = 0;
  v19 = objc_msgSend_power_outError_(v11, v16, v14, &v31);
  v15 = v31;
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
        TSCEFormat::formatByMergingWithFormat(&v27, &v29, &v28, v21, v22);
        TSCEFormat::TSCEFormat(&v30, &v27);
        objc_msgSend_setFormat_(v19, v24, &v30, v25);
        v23 = v19;
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
      if (v9)
      {
        goto LABEL_7;
      }
    }

    memset(&v28, 0, sizeof(v28));
    goto LABEL_10;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v22);
LABEL_11:
  v18 = v23;

LABEL_12:

  return v18;
}

@end