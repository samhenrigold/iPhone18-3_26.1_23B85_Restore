@interface TSCEFunction_ATAN2
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ATAN2

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v42 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v42);
  v12 = v42;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
  }

  else
  {
    v41 = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v41);
    v15 = v41;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v19);
    }

    else
    {
      if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v18, v17, v19))
      {
        v40 = 0;
        v23 = objc_msgSend_atan2_outError_(v17, v20, v11, &v40);
        v15 = v40;
        if (v15)
        {
          v27 = objc_msgSend_raiseErrorOrConvert_(context, v24, v15, v26);
        }

        else
        {
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v24, context, v26);
          }

          else
          {
            memset(&v38, 0, sizeof(v38));
          }

          if (v9)
          {
            objc_msgSend_formatWithContext_(v9, v24, context, v26);
          }

          else
          {
            memset(&v37, 0, sizeof(v37));
          }

          TSCEFormat::formatByMergingWithFormat(&v36, &v38, &v37, v25, v26);
          TSCEFormat::TSCEFormat(&v39, &v36);
          objc_msgSend_setFormat_(v23, v33, &v39, v34);
          v27 = v23;
        }

        v16 = v27;
      }

      else
      {
        v23 = objc_msgSend_functionName(spec, v20, v21, v22);
        v30 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v28, v23, v29);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);

        v15 = 0;
      }
    }
  }

  return v16;
}

@end