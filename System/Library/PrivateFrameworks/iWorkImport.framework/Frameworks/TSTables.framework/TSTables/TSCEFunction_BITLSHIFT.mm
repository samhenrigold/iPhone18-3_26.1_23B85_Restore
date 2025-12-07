@interface TSCEFunction_BITLSHIFT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BITLSHIFT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v11 = *(*arguments + 8);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v71, 0, sizeof(v71));
  }

  sub_22114F414(&v72, &v71);
  if (v11)
  {
    objc_msgSend_formatWithContext_(v11, v12, context, v13);
  }

  else
  {
    memset(&v71, 0, sizeof(v71));
  }

  sub_22114F414(&v72, &v71);
  sub_221256020(&v72, &v71);
  v70 = 0;
  v15 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v70);
  v16 = v70;
  v69 = v16;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v17, context, spec, 1, &v69);
  v19 = v69;

  if (v19)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
LABEL_9:
    v24 = v23;
    goto LABEL_21;
  }

  v68._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v20, v21, v22);
  v68._decimal.w[1] = v25;
  v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v25, v26, v27);
  v67._decimal.w[1] = v28;
  if (TSUDecimal::isNegative(&v68))
  {
    v32 = objc_msgSend_functionName(spec, v29, v30, v31);
    v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v33, 1, v32, 1, 0.0);
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
  }

  else
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v32 = objc_msgSend_functionName(spec, v38, v39, v40);
      v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v51, 2, v32, 1, 1, -53.0, 53.0);
      v37 = objc_msgSend_raiseErrorOrConvert_(context, v52, v34, v53);
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::split(&v68, &v68, &v66);
      TSUDecimal::split(&v67, &v67, &v65);
      if (TSUDecimal::isZero(&v66) & 1) != 0 || (TSUDecimal::isZero(&v65))
      {
        if (TSUDecimal::isZero(&v66))
        {
          if (TSUDecimal::isZero(&v65))
          {
            TSUDecimal::operator=();
            TSUDecimal::bitLeftShift(&v68, &v67, &v64);
            v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v50, &v64, &v71);
            goto LABEL_9;
          }

          v32 = objc_msgSend_functionName(spec, v47, v48, v49);
          v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v61, 2, v32);
          v37 = objc_msgSend_raiseErrorOrConvert_(context, v62, v34, v63);
        }

        else
        {
          v32 = objc_msgSend_functionName(spec, v44, v45, v46);
          v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v55, 1, v32);
          v37 = objc_msgSend_raiseErrorOrConvert_(context, v56, v34, v57);
        }
      }

      else
      {
        v32 = objc_msgSend_functionName(spec, v41, v42, v43);
        v34 = objc_msgSend_invalidDecimalNumberErrorForArgument_argIndex2_functionName_(TSCEError, v58, 1, 2, v32);
        v37 = objc_msgSend_raiseErrorOrConvert_(context, v59, v34, v60);
      }
    }
  }

  v24 = v37;

LABEL_21:
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  return v24;
}

@end