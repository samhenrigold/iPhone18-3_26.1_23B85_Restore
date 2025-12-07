@interface TSCEFunction_IPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v103, spec, v8);

  v9 = *(*arguments + 8);
  v102 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 1, &v102);
  v12 = v102;
  v101[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v101[1] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_36;
  }

  v19 = *(*arguments + 16);
  v100 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 2, &v100);
  v12 = v100;
  v99[0] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  v99[1] = v25;
  if (!v12)
  {
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v89 = objc_msgSend_functionName(spec, v27, v28, v29);
      v32 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v38, v89, 2, 3, 1, 1);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v39, v32, v40);
      v12 = 0;
      goto LABEL_34;
    }

    v30 = **arguments;
    v98 = 0;
    v89 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 0, &v98);
    v12 = v98;
    v97[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35);
    v97[1] = v36;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v36, v12, v37);
LABEL_34:

      goto LABEL_35;
    }

    v41 = *(*arguments + 24);
    v96 = 0;
    v88 = v41;
    v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v42, context, spec, 3, &v96);
    v12 = v96;
    v87 = v43;
    sub_2213188C0(v103, v43);
    v95[0] = objc_msgSend_decimalRepresentation(v43, v44, v45, v46);
    v95[1] = v47;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v47, v12, v48);
LABEL_33:

      goto LABEL_34;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v51 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v51, v52, v53, v54) & 1) == 0)
      {
        v93 = 0;
        v85 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v55, context, spec, 4, &v93);
        v58 = v93;
        if (v58)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v56, v58, v57);

LABEL_25:
          goto LABEL_32;
        }

        sub_2213188C0(v103, v85);
        v94[0] = objc_msgSend_decimalRepresentation(v85, v59, v60, v61);
        v94[1] = v62;
      }
    }

    if (v104)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v49, v104, v50);
      v58 = 0;
LABEL_32:
      v12 = v58;
      goto LABEL_33;
    }

    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v67 = 0;
    }

    else
    {
      v51 = *(*arguments + 40);
      if (objc_msgSend_isTokenOrEmptyArg(v51, v63, v64, v65))
      {
        v67 = 0;
      }

      else
      {
        v92 = 0;
        v86 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v66, context, spec, 5, &v92);
        v58 = v92;
        if (v58)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v68, v58, v70);

          goto LABEL_25;
        }

        v91._decimal.w[0] = objc_msgSend_decimalRepresentation(v86, v68, v69, v70);
        v91._decimal.w[1] = v71;
        v67 = TSUDecimal::isZero(&v91) ^ 1;
      }
    }

    v90 = 0;
    InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v49, spec, v97, v101, v99, v95, v94, v67, &v90);
    v74 = v73;
    v58 = v90;
    v91._decimal.w[0] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
    v91._decimal.w[1] = v74;
    if (v58)
    {
      v77 = objc_msgSend_raiseErrorOrConvert_(context, v75, v58, v76);
    }

    else
    {
      v78 = [TSCENumberValue alloc];
      v82 = sub_2213189D8(v103, v79, v80, v81);
      v77 = objc_msgSend_initWithDecimal_baseUnit_(v78, v83, &v91, v82);
    }

    v18 = v77;
    goto LABEL_32;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_35:

LABEL_36:

  return v18;
}

@end