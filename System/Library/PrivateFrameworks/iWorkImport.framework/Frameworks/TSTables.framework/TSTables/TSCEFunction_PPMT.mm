@interface TSCEFunction_PPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v113, spec, v8);

  v9 = *(*arguments + 8);
  v112 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 1, &v112);
  v12 = v112;
  v111[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v111[1] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_23;
  }

  v19 = *(*arguments + 16);
  v110 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 2, &v110);
  v12 = v110;
  v109[0] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  v109[1] = v25;
  if (!v12)
  {
    if ((TSUDecimal::operator<=() & 1) == 0)
    {
      v98 = objc_msgSend_functionName(spec, v27, v28, v29);
      v32 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v38, v98, 2, 3, 1, 1);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v39, v32, v40);
      v12 = 0;
      goto LABEL_21;
    }

    v30 = **arguments;
    v108 = 0;
    v98 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 0, &v108);
    v12 = v108;
    v107[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35);
    v107[1] = v36;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v36, v12, v37);
LABEL_21:

      goto LABEL_22;
    }

    v41 = *(*arguments + 24);
    v106 = 0;
    v97 = v41;
    v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v42, context, spec, 3, &v106);
    v12 = v106;
    v96 = v43;
    sub_2213188C0(v113, v43);
    v105[0] = objc_msgSend_decimalRepresentation(v43, v44, v45, v46);
    v105[1] = v47;
    if (v12)
    {
      v49 = objc_msgSend_raiseErrorOrConvert_(context, v47, v12, v48);
    }

    else
    {
      TSUDecimal::operator=();
      if (*(arguments + 1) - *arguments >= 0x21uLL)
      {
        v93 = *(*arguments + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v93, v52, v53, v54) & 1) == 0)
        {
          v103 = 0;
          v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v93, v55, context, spec, 4, &v103);
          v12 = v103;
          sub_2213188C0(v113, v56);
          v104[0] = objc_msgSend_decimalRepresentation(v56, v57, v58, v59);
          v104[1] = v60;
          if (v12)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v60, v12, v61);

            goto LABEL_20;
          }
        }
      }

      if (v114)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v114, v51);
        v12 = 0;
        goto LABEL_20;
      }

      if (*(arguments + 1) - *arguments < 0x29uLL)
      {
        v68 = 0;
      }

      else
      {
        v63 = *(*arguments + 40);
        if (objc_msgSend_isTokenOrEmptyArg(v63, v64, v65, v66))
        {
          v68 = 0;
        }

        else
        {
          v102 = 0;
          v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v63, v67, context, spec, 5, &v102);
          v12 = v102;
          if (v12)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v70, v12, v72);

            goto LABEL_20;
          }

          v94 = v69;
          v115._decimal.w[0] = objc_msgSend_decimalRepresentation(v69, v70, v71, v72);
          v115._decimal.w[1] = v73;
          v68 = TSUDecimal::isZero(&v115) ^ 1;
        }
      }

      v101 = 0;
      FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v50, spec, v107, v109, v105, v104, v68, &v101);
      v95 = v75;
      v76 = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
      v77 = v101;
      if (v77)
      {
        v12 = v77;
        v49 = objc_msgSend_raiseErrorOrConvert_(context, v78, v77, v79);
      }

      else
      {
        v100[0] = 0;
        LOBYTE(v92) = v68;
        InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v78, spec, v107, v111, v109, v105, v104, v92, v100);
        v82 = v81;
        v83 = v100[0];
        v12 = v83;
        v100[1] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
        v100[2] = v82;
        if (v83)
        {
          v49 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);
        }

        else
        {
          v86 = [TSCENumberValue alloc];
          v115._decimal.w[0] = v76;
          v115._decimal.w[1] = v95;
          TSUDecimal::operator-=();
          v99 = v115;
          v90 = sub_2213189D8(v113, v87, v88, v89);
          v49 = objc_msgSend_initWithDecimal_baseUnit_(v86, v91, &v99, v90);
        }
      }
    }

    v18 = v49;
LABEL_20:

    goto LABEL_21;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_22:

LABEL_23:

  return v18;
}

@end