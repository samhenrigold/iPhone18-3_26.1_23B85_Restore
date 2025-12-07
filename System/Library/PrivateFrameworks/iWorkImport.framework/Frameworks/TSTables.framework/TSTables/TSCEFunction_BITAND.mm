@interface TSCEFunction_BITAND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BITAND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v11 = *(*arguments + 8);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  sub_22114F414(&v79, &v78);
  if (v11)
  {
    objc_msgSend_formatWithContext_(v11, v12, context, v13);
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  sub_22114F414(&v79, &v78);
  sub_221256020(&v79, &v78);
  v77 = 0;
  v15 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v77);
  v16 = v77;
  v76 = v16;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v17, context, spec, 1, &v76);
  v19 = v76;

  if (v19)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
LABEL_9:
    v24 = v23;
    goto LABEL_23;
  }

  v75._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v20, v21, v22);
  v75._decimal.w[1] = v25;
  v74._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v25, v26, v27);
  v74._decimal.w[1] = v28;
  if (TSUDecimal::isNegative(&v75))
  {
    v32 = objc_msgSend_functionName(spec, v29, v30, v31);
    v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v33, 1, v32, 1, 0.0);
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
  }

  else if (TSUDecimal::isNegative(&v74))
  {
    v32 = objc_msgSend_functionName(spec, v38, v39, v40);
    v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v41, 2, v32, 1, 0.0);
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v42, v34, v43);
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) != 0))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::split(&v75, &v75, &v73);
      TSUDecimal::split(&v74, &v74, &v72);
      if (TSUDecimal::isZero(&v73) & 1) != 0 || (TSUDecimal::isZero(&v72))
      {
        if (TSUDecimal::isZero(&v73))
        {
          if (TSUDecimal::isZero(&v72))
          {
            TSUDecimal::operator=();
            TSUDecimal::bitAnd(&v75, &v74, &v71);
            v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v56, &v71, &v78);
            goto LABEL_9;
          }

          v32 = objc_msgSend_functionName(spec, v53, v54, v55);
          v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v68, 2, v32);
          v37 = objc_msgSend_raiseErrorOrConvert_(context, v69, v34, v70);
        }

        else
        {
          v32 = objc_msgSend_functionName(spec, v50, v51, v52);
          v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v62, 1, v32);
          v37 = objc_msgSend_raiseErrorOrConvert_(context, v63, v34, v64);
        }
      }

      else
      {
        v32 = objc_msgSend_functionName(spec, v47, v48, v49);
        v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_argIndex2_functionName_(TSCEError, v65, 1, 2, v32);
        v37 = objc_msgSend_raiseErrorOrConvert_(context, v66, v34, v67);
      }
    }

    else
    {
      v32 = objc_msgSend_functionName(spec, v44, v45, v46);
      v34 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v57, v32, v58);
      v37 = objc_msgSend_raiseErrorOrConvert_(context, v59, v34, v60);
    }
  }

  v24 = v37;

LABEL_23:
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  return v24;
}

@end