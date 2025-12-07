@interface TSCEFunction_SLN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SLN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v56, spec, v8);

  v9 = **arguments;
  v55 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v55);
  v12 = v55;
  sub_2213188C0(v56, v11);
  v16 = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  if (v12)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18);
    goto LABEL_15;
  }

  v20 = v16;
  v21 = v17;
  v22 = *(*arguments + 8);
  v54 = 0;
  v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v54);
  v12 = v54;
  sub_2213188C0(v56, v24);
  v53[1] = objc_msgSend_decimalRepresentation(v24, v25, v26, v27);
  v53[2] = v28;
  if (!v12)
  {
    if (v57)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v28, v57, v29);
      v12 = 0;
      goto LABEL_14;
    }

    v30 = *(*arguments + 16);
    v53[0] = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, v53);
    v12 = v53[0];
    v52[2] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35);
    v52[3] = v36;
    if (v12)
    {
      v38 = objc_msgSend_raiseErrorOrConvert_(context, v36, v12, v37);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v42 = objc_msgSend_divideByZeroError(TSCEError, v39, v40, v41);
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v43, v42, v44);

LABEL_13:
        goto LABEL_14;
      }

      v58 = v20;
      v59 = v21;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v52[0] = v58;
      v52[1] = v59;
      v45 = [TSCENumberValue alloc];
      v49 = sub_2213189D8(v56, v46, v47, v48);
      v38 = objc_msgSend_initWithDecimal_baseUnit_(v45, v50, v52, v49);
    }

    v19 = v38;
    goto LABEL_13;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(context, v28, v12, v29);
LABEL_14:

LABEL_15:

  return v19;
}

@end