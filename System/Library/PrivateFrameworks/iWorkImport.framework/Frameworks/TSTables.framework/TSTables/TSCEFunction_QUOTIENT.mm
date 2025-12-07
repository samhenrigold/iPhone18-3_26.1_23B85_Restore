@interface TSCEFunction_QUOTIENT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_QUOTIENT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v62 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v62);
  v12 = v62;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_12;
  }

  v61 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v61);
  v15 = v61;
  if (!v15)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v18, v17, v19))
    {
      v24 = objc_msgSend_zero(TSCENumberValue, v21, v22, v23);
      v60 = 0;
      v26 = objc_msgSend_eq_outError_(v17, v25, v24, &v60);
      v15 = v60;

      if (v26)
      {
        v30 = objc_msgSend_divideByZeroError(TSCEError, v27, v28, v29);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);

        goto LABEL_11;
      }

      if (v15)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(context, v27, v15, v29);
        goto LABEL_5;
      }

      v59._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v27, v28, v29);
      v59._decimal.w[1] = v40;
      v58._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v40, v41, v42);
      v58._decimal.w[1] = v43;
      TSUDecimal::operator=();
      if (TSUDecimal::divide(&v59, &v58, &v57) == 5)
      {
        v47 = objc_msgSend_divideByZeroError(TSCEError, v44, v45, v46);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v48, v47, v49);
      }

      else
      {
        TSUDecimal::roundTowardsZero(&v57);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v50, context, v52);
        }

        else
        {
          memset(&v55, 0, sizeof(v55));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v50, context, v52);
        }

        else
        {
          memset(&v54, 0, sizeof(v54));
        }

        TSCEFormat::formatByMergingWithFormat(v56, &v55, &v54, v51, v52);
        v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v53, &v57, v56);
      }
    }

    else
    {
      v33 = objc_msgSend_functionName(spec, v21, v22, v23);
      v36 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v34, v33, v35);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38);
    }

    v15 = 0;
    goto LABEL_11;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v19);
LABEL_5:
  v16 = v20;
LABEL_11:

LABEL_12:

  return v16;
}

@end