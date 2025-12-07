@interface TSCEFunction_MONTHNAME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MONTHNAME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v51 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v51);
  v10 = v51;
  v14 = objc_msgSend_trunc(v9, v11, v12, v13);

  if (v10)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v10, v17);
  }

  else
  {
    v46._decimal.w[0] = objc_msgSend_decimalRepresentation(v14, v15, v16, v17);
    v46._decimal.w[1] = v19;
    TSUDecimal::doubleValue(&v46);
    if (v23 < -2147483650.0 || v23 > 2147483650.0)
    {
      v32 = objc_msgSend_functionName(spec, v20, v21, v22);
      v40 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v41, 1, v32, 1, 1, -2147483650.0, 2147483650.0);
      v44 = objc_msgSend_raiseErrorOrConvert_(context, v42, v40, v43);
    }

    else
    {
      v24 = objc_msgSend_integer(v14, v20, v21, v22);
      v28 = objc_msgSend_locale(context, v25, v26, v27);
      v32 = objc_msgSend_standaloneMonthSymbols(v28, v29, v30, v31);

      v36 = objc_msgSend_count(v32, v33, v34, v35);
      v39 = v24 - 1;
      if (v36 <= v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = objc_msgSend_objectAtIndex_(v32, v37, v39, v38);
      }

      v46._decimal.w[0] = 0;
      LODWORD(v46._decimal.w[1]) = 0;
      BYTE4(v46._decimal.w[1]) = 0;
      v47 = 1057;
      v48 = 1;
      v49 = -50266102;
      v50 = 253;
      v44 = objc_msgSend_stringValue_format_(TSCEStringValue, v37, v40, &v46);
    }

    v18 = v44;
  }

  return v18;
}

@end