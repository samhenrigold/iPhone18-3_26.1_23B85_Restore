@interface TSCEFunction_MUNIT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MUNIT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v56 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, a2, context, spec, 0, &v56);
  v12 = v56;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
LABEL_3:
    v14 = v13;
    goto LABEL_13;
  }

  v18 = objc_msgSend_errorForDuration_argumentIndex_(v9, v10, spec, 1);
  if (v18)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v15, v18, v17);
    v12 = v18;
  }

  else
  {
    v19 = objc_msgSend_nativeType(**arguments, v15, v16, v17);
    if (v19 == 16 || v19 == 1)
    {
      v24 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v20, v21, v22);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v26);
    }

    else
    {
      v55._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v20, v21, v22);
      v55._decimal.w[1] = v28;
      v29 = TSUDecimal::truncatedIntegerValue(&v55);
      v33 = objc_msgSend_functionName(spec, v30, v31, v32);
      v12 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v34, v29, v29, v33);

      if (v12)
      {
        v13 = objc_msgSend_raiseErrorOrConvert_(context, v35, v12, v36);
        goto LABEL_3;
      }

      v24 = objc_opt_new();
      v40 = objc_msgSend_zero(TSCENumberValue, v37, v38, v39);
      v41 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v44 = objc_msgSend_initWithDecimal_(v41, v42, &v55, v43);
      LODWORD(v55._decimal.w[0]) = v29;
      HIDWORD(v55._decimal.w[0]) = v29;
      objc_msgSend_padUnsetWithValue_forDimensions_(v24, v45, v40, &v55);
      if (v29)
      {
        v47 = 0;
        do
        {
          v54[0] = v47;
          v54[1] = v47;
          objc_msgSend_setValue_atCoord_(v24, v46, v44, v54);
          ++v47;
        }

        while (v29 != v47);
      }

      v48 = [TSCEDenseGrid alloc];
      v51 = objc_msgSend_initWithValueGrid_(v48, v49, v24, v50);
      v14 = objc_msgSend_gridValue_(TSCEGridValue, v52, v51, v53);
    }

    v12 = 0;
  }

LABEL_13:

  return v14;
}

@end