@interface TSCEFunction_COVAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COVAR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v48 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, &v48);
  v10 = v48;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_7;
  }

  v15 = *(*arguments + 8);
  v47 = 0;
  v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v11, context, spec, 1, 1, &v47);
  v13 = v47;
  if (v13)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v13, v19);
  }

  else
  {
    v22 = objc_msgSend_count(v9, v17, v18, v19);
    if (v22 != objc_msgSend_count(v16, v23, v24, v25))
    {
      v35 = objc_msgSend_functionName(spec, v26, v27, v28);
      v38 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v36, v35, v37);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40);

      v13 = 0;
      goto LABEL_6;
    }

    v45 = 0;
    isSample_outError = objc_msgSend_covarianceWithVector_functionSpec_vector1_vector2_outStdDev_durationAllowed_isSample_outError_(TSCEFunction_CORREL, v26, context, spec, v9, v16, 0, 0, 0, &v45);
    v31 = v30;
    v13 = v45;
    v46[0] = isSample_outError;
    v46[1] = v31;
    if (v13)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v32, v13, v34);
    }

    else
    {
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v32, context, v34);
      }

      else
      {
        memset(&v43, 0, sizeof(v43));
      }

      if (v16)
      {
        objc_msgSend_formatWithContext_(v16, v32, context, v34);
      }

      else
      {
        memset(&v42, 0, sizeof(v42));
      }

      TSCEFormat::formatByMergingWithFormat(&v44, &v43, &v42, v33, v34);
      v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v41, v46, &v44);
    }
  }

  v14 = v20;
LABEL_6:

LABEL_7:

  return v14;
}

@end