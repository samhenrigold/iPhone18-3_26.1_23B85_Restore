@interface TSCEFunction_STANDARDIZE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_STANDARDIZE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v52 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v52);
  v11 = v52;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
  }

  else
  {
    v16 = *(*arguments + 8);
    v51 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v51);
    v19 = v51;
    if (v19)
    {
      v14 = v19;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);
    }

    else
    {
      v22 = *(*arguments + 16);
      v50 = 0;
      v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 2, &v50);
      v14 = v50;
      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v25, v14, v26);
      }

      else
      {
        if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v25, v18, v26) && (objc_msgSend_dimensionsMatchModuloCurrency_(v18, v27, v24, v29) & 1) != 0)
        {
          v49 = 0;
          v30 = objc_msgSend_subtract_functionSpec_outError_(v10, v27, v18, spec, &v49);
          v31 = v49;
          v48 = v31;
          v45 = v30;
          v33 = objc_msgSend_divide_outError_(v30, v32, v24, &v48);
          v14 = v48;

          if (v14)
          {
            v36 = objc_msgSend_raiseErrorOrConvert_(context, v34, v14, v35);
          }

          else
          {
            TSCEFormat::TSCEFormat(&v46, 256);
            TSCEFormat::TSCEFormat(&v47, &v46);
            objc_msgSend_setFormat_(v33, v42, &v47, v43);
            v36 = v33;
          }

          v15 = v36;
        }

        else
        {
          v33 = objc_msgSend_functionName(spec, v27, v28, v29);
          v39 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v37, v33, v38);
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);

          v14 = 0;
        }
      }
    }
  }

  return v15;
}

@end