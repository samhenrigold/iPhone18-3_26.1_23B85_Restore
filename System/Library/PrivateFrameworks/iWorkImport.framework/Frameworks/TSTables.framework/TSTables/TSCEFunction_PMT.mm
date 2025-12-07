@interface TSCEFunction_PMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v91, spec, v8);

  v9 = **arguments;
  v90 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v90);
  v12 = v90;
  v89[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v89[1] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_24;
  }

  v19 = *(*arguments + 8);
  v88 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, &v88);
  v12 = v88;
  v87[0] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  v87[1] = v25;
  if (!v12)
  {
    v27 = *(*arguments + 16);
    v86 = 0;
    v79 = v27;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, &v86);
    v12 = v86;
    sub_2213188C0(v91, v29);
    v85[0] = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
    v85[1] = v33;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v33, v12, v34);
LABEL_22:

      goto LABEL_23;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_15;
    }

    v78 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v78, v37, v38, v39) & 1) == 0)
    {
      v83 = 0;
      v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v78, v40, context, spec, 3, &v83);
      v42 = v83;
      sub_2213188C0(v91, v41);
      v84[0] = objc_msgSend_decimalRepresentation(v41, v43, v44, v45);
      v84[1] = v46;
      if (v42)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v46, v42, v47);

        goto LABEL_21;
      }
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
LABEL_15:
      v53 = 0;
    }

    else
    {
      v48 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v48, v49, v50, v51))
      {
        v53 = 0;
      }

      else
      {
        v82 = 0;
        v67 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v52, context, spec, 4, &v82);
        v42 = v82;
        if (v42)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v68, v42, v70);

          goto LABEL_21;
        }

        v81._decimal.w[0] = objc_msgSend_decimalRepresentation(v67, v68, v69, v70);
        v81._decimal.w[1] = v77;
        v53 = TSUDecimal::isZero(&v81) ^ 1;
      }
    }

    if (v92)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v35, v92, v36);
    }

    else
    {
      TSUDecimal::operator=();
      if (!TSUDecimal::operator==())
      {
        v80 = 0;
        FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v54, spec, v89, v87, v85, v84, v53, &v80);
        v63 = v62;
        v42 = v80;
        v81._decimal.w[0] = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
        v81._decimal.w[1] = v63;
        if (v42)
        {
          v66 = objc_msgSend_raiseErrorOrConvert_(context, v64, v42, v65);
        }

        else
        {
          v71 = [TSCENumberValue alloc];
          v75 = sub_2213189D8(v91, v72, v73, v74);
          v66 = objc_msgSend_initWithDecimal_baseUnit_(v71, v76, &v81, v75);
        }

        v18 = v66;
        goto LABEL_21;
      }

      v57 = objc_msgSend_divideByZeroError(TSCEError, v54, v55, v56);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v58, v57, v59);
    }

    v42 = 0;
LABEL_21:
    v12 = v42;
    goto LABEL_22;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_23:

LABEL_24:

  return v18;
}

@end