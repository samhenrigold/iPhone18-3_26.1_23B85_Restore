@interface TSCEFunction_POWER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_POWER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v49 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v49);
  v12 = v49;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_23;
  }

  v48 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v48);
  v15 = v48;
  if (!v15)
  {
    if (objc_msgSend_isDuration(v11, v18, v19, v20))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v21, context, v23);
    }

    if (objc_msgSend_isDuration(v17, v21, v22, v23))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v24, context, v25);
    }

    v47 = 0;
    v26 = objc_msgSend_power_outError_(v11, v24, v17, &v47);
    v15 = v47;
    if (v15)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v27, v15, v29);
    }

    else
    {
      if ((objc_msgSend_isFinite(v26, v27, v28, v29) & 1) == 0)
      {
        v34 = objc_msgSend_functionName(spec, v31, v32, v33);
        v37 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v35, v34, v36);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v38, v37, v39);

LABEL_21:
        goto LABEL_22;
      }

      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v31, context, v33);
      }

      else
      {
        memset(&v45, 0, sizeof(v45));
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v31, context, v33);
      }

      else
      {
        memset(&v44, 0, sizeof(v44));
      }

      TSCEFormat::formatByMergingWithFormat(&v43, &v45, &v44, v32, v33);
      TSCEFormat::TSCEFormat(&v46, &v43);
      objc_msgSend_setFormat_(v26, v40, &v46, v41);
      v30 = v26;
    }

    v16 = v30;
    goto LABEL_21;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v20);
LABEL_22:

LABEL_23:

  return v16;
}

@end