@interface TSCEFunction_TDIST
+ (double)probabilityWithX:(double)x V:(int)v tails:(double)tails;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TDIST

+ (double)probabilityWithX:(double)x V:(int)v tails:(double)tails
{
  pthread_mutex_lock(&stru_27CFB4098);
  sub_221250360(v, x);
  v9 = 1.0 - v8;
  pthread_mutex_unlock(&stru_27CFB4098);
  result = v9 + v9;
  if (tails != 2.0)
  {
    return v9;
  }

  return result;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v65 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v65);
  v11 = v65;
  v64._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v64._decimal.w[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_16;
  }

  v18 = *(*arguments + 8);
  v63 = 0;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v63);
  v11 = v63;
  v24 = objc_msgSend_trunc(v20, v21, v22, v23);

  v58._decimal.w[0] = objc_msgSend_decimalRepresentation(v24, v25, v26, v27);
  v58._decimal.w[1] = v28;
  v29 = TSUDecimal::truncateWithRounding(&v58);
  if (!v11)
  {
    v32 = v29;
    v33 = *(*arguments + 16);
    v62 = 0;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v34, context, spec, 2, &v62);
    v11 = v62;
    v61._decimal.w[0] = objc_msgSend_decimalRepresentation(v35, v36, v37, v38);
    v61._decimal.w[1] = v39;
    if (v11)
    {
      v41 = objc_msgSend_raiseErrorOrConvert_(context, v39, v11, v40);
    }

    else
    {
      TSUDecimal::operator=();
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator==() & 1) == 0)
        {
          v53 = objc_msgSend_functionName(spec, v42, v43, v44);
          v55 = objc_msgSend_invalidTailErrorForFunctionName_argumentNumber_(TSCEError, v54, v53, 3);
          v17 = objc_msgSend_raiseErrorOrConvert_(context, v56, v55, v57);

          goto LABEL_14;
        }
      }

      TSUDecimal::doubleValue(&v64);
      v46 = v45;
      TSUDecimal::doubleValue(&v61);
      objc_msgSend_probabilityWithX_V_tails_(TSCEFunction_TDIST, v47, v32, v48, v46, v49);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v50, context, v51);
      }

      else
      {
        v58 = 0;
        v59 = 0u;
      }

      v41 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v50, v60, &v58);
    }

    v17 = v41;
LABEL_14:

    goto LABEL_15;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v30, v11, v31);
LABEL_15:

LABEL_16:

  return v17;
}

@end